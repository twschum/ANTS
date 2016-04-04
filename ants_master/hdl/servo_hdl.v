
module servo_control(
    /*** APB3 BUS INTERFACE ***/
    input PCLK, // clock
    input PRESERN, // system reset (ACTIVE LOW)
    input PSEL, // peripheral select
    input PENABLE, // distinguishes access phase
    output wire PREADY, // peripheral ready signal
    output wire PSLVERR, // error signal
    input PWRITE, // distinguishes read and write cycles
    input [31:0] PADDR, // I/O address
    input wire [31:0] PWDATA, // data from processor to I/O device (32-bits)
    output reg [31:0] PRDATA, // data to processor from I/O device (32-bits)

    /*** I/O PORTS DECLARATION ***/
    output wire x_servo_pwm,
    output wire y_servo_pwm
);

assign PSLVERR = 0;
assign PREADY = 1;

/*** ADDRESS COMMAND DECODING ***/
wire set_x;
wire set_x_zero;
wire x_return_to_zero;
wire read_x_forward;
wire read_x_reverse;

assign set_x            = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h100)); // WRITE DATA to 100 - 'analog' currently not working
assign set_x_neutral    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h101)); // WRITE ANY to 101
assign set_x_forward    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h102)); // WRITE ANY to 102
assign set_x_reverse    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h103)); // WRITE ANY to 103
assign set_x_zero       = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h104)); // WRITE ANY to 104
assign x_return_to_zero = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h105)); // WRITE ANY to 105
assign read_x_forward  = (PSEL && !PWRITE && PENABLE && (PADDR[12:0] == 12'h108)); // READ from 108
assign read_x_reverse  = (PSEL && !PWRITE && PENABLE && (PADDR[12:0] == 12'h109)); // READ from 109

wire set_y;
wire set_y_zero;
wire y_return_to_zero;
wire read_y_forward;
wire read_y_reverse;

assign set_y            = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h110)); // WRITE DATA to 110 - 'analog' currently not working
assign set_y_neutral    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h111)); // WRITE ANY to 111
assign set_y_forward    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h112)); // WRITE ANY to 112
assign set_y_reverse    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h113)); // WRITE ANY to 113
assign set_y_zero       = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h114)); // WRITE ANY to 114
assign y_return_to_zero = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h115)); // WRITE ANY to 115
assign read_y_forward  = (PSEL && !PWRITE && PENABLE && (PADDR[12:0] == 12'h118)); // READ from 118
assign read_y_reverse  = (PSEL && !PWRITE && PENABLE && (PADDR[12:0] == 12'h119)); // READ from 119

/*** END APB INTERFACE ***/
/*** TRACKING SERVO INSTANTIAIONS  ***/
wire [31:0] x_forward_count;
wire [31:0] x_reverse_count;
wire [31:0] y_forward_count;
wire [31:0] y_reverse_count;
wire x_in_rtz_mode;
wire y_in_rtz_mode;

_tracking_servo x_servo(
    PCLK,
    PRESERN,
    PWDATA,
    set_x,
    set_x_neutral,
    set_x_forward,
    set_x_reverse,
    set_x_zero,
    x_return_to_zero,
    x_servo_pwm,
    x_in_rtz_mode,
    x_forward_count,
    x_reverse_count
);

_tracking_servo y_servo(
    PCLK,
    PRESERN,
    PWDATA,
    set_y,
    set_y_neutral,
    set_y_forward,
    set_y_reverse,
    set_y_zero,
    y_return_to_zero,
    y_servo_pwm,
    y_in_rtz_mode,
    y_forward_count,
    y_reverse_count
);

/*** APB READ DATA LOGIC ***/
always @ (posedge PCLK) begin

    if (read_x_forward)
        PRDATA <= x_forward_count;

    else if (read_y_forward)
        PRDATA <= y_forward_count;

    else if (read_x_reverse)
        PRDATA <= x_reverse_count;

    else if (read_y_reverse)
        PRDATA <= y_reverse_count;

    else
        PRDATA <= 32'hFFFFFFFF;
end

endmodule

/*** TRACKING SERVO MODULE ***/
/*
*   This servo controller functions just like the basic one, with the ability
*  to set a specific pulse width (in cycles) with SET_PW and the ported
*  PWDATA. The tracking feature is used when the servo is operated at
*  FULL_REVERSE and FULL_FORWARD pulse widths. For each period of PWM_PERIOD,
*  if the PW is either extreme, it will increment the related counter.
*  Calling SET_ZERO will zero those counters.

*   These counters enable the module to perform an automated RETURN_TO_ZERO
*  function, by using the values in those counters to cancel all the cycles
*  spent at the opposite maximum and bring the servo back to its zero
*  position. While this is happening, the module will set IN_RETURN_MODE
*  high, and ignore other commands to prevent bad things.

*   The module also stays synchronous to the PWM_PERIOD, such that regardless
*  of when a command was issued, it won't take effect until the next period.
*  While this makes it less responsive, and indeed multiple commands issued
*  quickly will overwrite each other, it prevents a clipped cycle.
*
*   Hard reset is supported via PRESERN.
*/
module _tracking_servo(
    input PCLK,
    input PRESERN,
    input wire [31:0] PWDATA,
    input SET_PW, // set specific value of the next pulse width (implies PWDATA valid)
    input SET_PW_NEUTRAL, // set next pw to neutral
    input SET_PW_FORWARD, // set next pw to full forward
    input SET_PW_REVERSE, // set next pw to full reverse
    input SET_ZERO, // set the current position as the zero point
    input RETURN_TO_ZERO, // command the module to return to the zero position

    output reg pwm_signal, // the actual PWM signal
    output reg in_return_mode, // high while executing RETURN_TO_ZERO (no other command will interrupt it)
    output reg [31:0] forward_count,
    output reg [31:0] reverse_count
);

// all these values in cycles @ 100 MHz
// 1 cycle = 10 ns
// 100 cycles = 1 us
// 100 000 cycles = 1 ms
parameter PWM_PERIOD = 2000000; // 20ms
parameter PW_NEUTRAL = 150000;  // 1.5ms
parameter PW_FULL_REVERSE = 100000; // 1ms
parameter PW_FULL_FORWARD = 200000; // 2 ms

reg [31:0] time_count;
reg [31:0] pw;
reg [31:0] next_pw;
reg zero_counts_next;

initial begin
    pwm_signal = 0;
    in_return_mode = 0;
    forward_count = 0;
    reverse_count = 0;
    time_count = 0;
    pw = PW_NEUTRAL;
    next_pw = PW_NEUTRAL;
    zero_counts_next = 0;
end


always @ (posedge PCLK) begin

    if (~PRESERN) begin
        pwm_signal <= 0;
        in_return_mode <= 0;
        forward_count <= 0;
        reverse_count <= 0;
        time_count <= 0;
        pw <= PW_NEUTRAL;
        next_pw <= PW_NEUTRAL;
        zero_counts_next <= 0;
    end

    else begin

        /*** Commands, determine next period's pw ***/
        if (!in_return_mode) begin
            if (SET_PW) begin
                next_pw <= PWDATA;
            end
            else if (SET_PW_NEUTRAL) begin
                next_pw <= PW_NEUTRAL;
            end
            else if (SET_PW_FORWARD) begin
                next_pw <= PW_FULL_REVERSE;
            end
            else if (SET_PW_REVERSE) begin
                next_pw <= PW_FULL_REVERSE;
            end
            else if (SET_ZERO) begin
                zero_counts_next <= 1;
            end
            else if (RETURN_TO_ZERO) begin
                // go into return mode, setting next_pw and the return mode flag
                if (forward_count > reverse_count) begin
                    next_pw <= PW_FULL_REVERSE;
                    in_return_mode <= 1;
                end
                else if (forward_count < reverse_count) begin
                    next_pw <= PW_FULL_FORWARD;
                    in_return_mode <= 1;
                end
                zero_counts_next <= 0; // let return win to simplify logic
                // else, ignore (already there!)
            end
        end // not in return mode

        /*** Period timer, tracking counts, and return to zero logic ***/
        if (time_count >= PWM_PERIOD) begin

            // setup next PWM_PERIOD
            time_count <= 0;
            pwm_signal <= 1;
            pw <= next_pw;

            // ending condition for return mode, or zero counts
            if (in_return_mode && (forward_count == reverse_count)) begin
                forward_count <= 0;
                reverse_count <= 0;
                in_return_mode <= 0;
            end
            else if (!in_return_mode && zero_counts_next) begin
                forward_count <= 0;
                reverse_count <= 0;
                zero_counts_next <= 0;
            end
            // if not at any reset conditions, update the counters
            else begin
                if (next_pw == PW_FULL_FORWARD) begin
                    forward_count <= forward_count + 1;
                end
                else if (next_pw == PW_FULL_REVERSE) begin
                    reverse_count <= reverse_count + 1;
                end
            end
        end
        else begin
            time_count <= time_count + 1;
        end // period timer

        /*** PW ouput logic ***/
        if (time_count > pw) begin
            pwm_signal <= 0;
        end

    end // else, not in reset

endmodule
