
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
    input [1:0] stop_x, // stop_x[1] for forward stop switch; stop_x[0] for reverse stop switch
    input [1:0] stop_y, // stop_y[1] for upper stop switch; stop_y[0] for lower stop switch
    output x_servo_pwm,
    output y_servo_pwm
);

assign PSLVERR = 0;
assign PREADY = 1;

/*** ADDRESS COMMAND DECODING ***/
wire set_x;
wire set_x_neutral;
wire set_x_forward;
wire set_x_reverse;
wire read_forward_stop;
wire read_reverse_stop;

assign set_x             = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h100)); // WRITE DATA
assign set_x_neutral     = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h104)); // WRITE ANY
assign set_x_forward     = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h108)); // WRITE ANY
assign set_x_reverse     = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h10c)); // WRITE ANY
assign read_forward_stop = (PSEL && !PWRITE &&  (PADDR[12:0] == 12'h110));  // READ 
assign read_reverse_stop = (PSEL && !PWRITE &&  (PADDR[12:0] == 12'h114));  // READ 


wire set_y;
wire set_y_neutral;
wire set_y_forward;
wire set_y_reverse;
wire read_upper_stop;
wire read_lower_stop;

assign set_y            = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h140)); // WRITE DATA
assign set_y_neutral    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h144)); // WRITE ANY
assign set_y_forward    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h148)); // WRITE ANY
assign set_y_reverse    = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h14c)); // WRITE ANY
assign read_upper_stop  = (PSEL && !PWRITE &&  (PADDR[12:0] == 12'h150));  // READ 
assign read_lower_stop  = (PSEL && !PWRITE &&  (PADDR[12:0] == 12'h154));  // READ 

/*** END APB INTERFACE ***/


/*** KILL SWITCH LOGIC ***/
parameter NEUTRAL_PW = 150000;
wire y_up_more;
wire y_down_more;
wire x_forward_more;
wire x_reverse_more;

assign y_up_more = (set_y_reverse || (set_y && PWDATA < NEUTRAL_PW));
assign y_down_more = (set_y_forward || (set_y && PWDATA > NEUTRAL_PW));

assign x_forward_more = (set_x_forward || (set_x && PWDATA > NEUTRAL_PW));
assign x_reverse_more = (set_x_reverse || (set_x && PWDATA < NEUTRAL_PW));

wire set_y_neutral_or_stop;
assign set_y_neutral_or_stop = (set_y_neutral || 
                            ((!stop_y[1]) && (y_up_more)) || 
                            ((!stop_y[0]) && (y_down_more)) );

wire set_x_neutral_or_stop;
assign set_x_neutral_or_stop = (set_x_neutral || 
                            ((!stop_x[1]) && (x_forward_more)) || 
                            ((!stop_x[0]) && (x_reverse_more)) );


/*** TRACKING SERVO INSTANTIAIONS  ***/
_tracking_servo x_servo(
    .PCLK           (PCLK),
    .PRESERN        (PRESERN),
    .PWDATA         (PWDATA),
    .SET_PW         (set_x),
    .SET_PW_NEUTRAL (set_x_neutral_or_stop),
    .SET_PW_FORWARD (set_x_forward),
    .SET_PW_REVERSE (set_x_reverse),
    .pwm_signal     (x_servo_pwm)
);

_tracking_servo y_servo(
    .PCLK           (PCLK),
    .PRESERN        (PRESERN),
    .PWDATA         (PWDATA),
    .SET_PW         (set_y),
    .SET_PW_NEUTRAL (set_y_neutral_or_stop),
    .SET_PW_FORWARD (set_y_forward),
    .SET_PW_REVERSE (set_y_reverse),
    .pwm_signal     (y_servo_pwm)
);

/*** APB READ DATA LOGIC ***/
always @ (posedge PCLK) begin

    if (read_forward_stop)
        PRDATA <= stop_x[1];

    else if (read_reverse_stop)
        PRDATA <= stop_x[0];

    else if (read_upper_stop)
        PRDATA <= stop_y[1];

    else if (read_lower_stop)
        PRDATA <= stop_y[0];

    else
        PRDATA <= 32'hFFFFFFFF;
end

endmodule

/*** TRACKING SERVO MODULE ***/
/*
*   DEPRICATED because of mechanical issues :(
*
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
    output reg pwm_signal // the actual PWM signal
);

// all these values in cycles @ 100 MHz
// 1 cycle = 10 ns
// 100 cycles = 1 us
// 100 000 cycles = 1 ms
parameter PWM_PERIOD = 2000000; // 20ms
parameter PW_NEUTRAL = 150000;  // 1.5ms
parameter PW_FULL_REVERSE = 100000; // 1 ms (1.25)
parameter PW_FULL_FORWARD = 200000; // 2 ms (1.75)

reg [31:0] time_count;
reg [31:0] pw;
reg [31:0] next_pw;

initial begin
    pwm_signal = 0;
    time_count = 0;
    pw = PW_NEUTRAL;
    next_pw = PW_NEUTRAL;
end

always @ (posedge PCLK) begin

    if (~PRESERN) begin
        pwm_signal <= 0;
        time_count <= 0;
        pw <= PW_NEUTRAL;
        next_pw <= PW_NEUTRAL;
    end
    else begin

        /*** Commands, determine next period's pw ***/
            if (SET_PW_NEUTRAL) begin
                next_pw <= PW_NEUTRAL;
            end
            else if (SET_PW) begin
                next_pw <= PWDATA;
            end
            else if (SET_PW_FORWARD) begin
                next_pw <= PW_FULL_FORWARD;
            end
            else if (SET_PW_REVERSE) begin
                next_pw <= PW_FULL_REVERSE;
            end

        /*** PW ouput logic and period timer ***/
        if ((time_count > pw) && (time_count < PWM_PERIOD)) begin
            pwm_signal <= 0;
            time_count <= time_count + 1;
        end
        else if (time_count >= PWM_PERIOD) begin
            // setup next PWM_PERIOD
            time_count <= 0;
            pwm_signal <= 1;
            pw <= next_pw;
        end
        else begin
            time_count <= time_count + 1;
        end // period timer

    end // else, not in reset
end // end posedge clk
endmodule
