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
output reg x_servo_pwm,
output reg y_servo_pwm
);

assign PSLVERR = 0;
assign PREADY = 1;
assign PRDATA = 32'h00000000;

wire write_x;
wire write_y;
assign write_x = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h100));
assign write_y = (PSEL && PWRITE && PENABLE && (PADDR[12:0] == 12'h104));
/***END APB INTERFACE***/

// all these values in cycles @ 100 MHz
// 1 cycle = 10 ns
// 100 cycles = 1 us
reg [31:0] x_value;
reg [31:0] y_value;
reg [31:0] count;

initial begin
    x_value = 150000; // 1500 us
    y_value = 150000;
    count = 0;
    x_servo_pwm = 1;
    y_servo_pwm = 1;
end

parameter pwm_period = 2000000; // 20ms = 20 * 1000 * 100

always @ (posedge PCLK) begin

    // pulse width parameters
    if (~PRESERN) begin
        x_value <= 150000;
        y_value <= 150000;
        count <= 0;
        x_servo_pwm <= 1;
        y_servo_pwm <= 1;
    end
    else if (write_x) begin
        x_value <= PWDATA;
    end
    else if (write_y) begin
        y_value <= PWDATA;
    end

    // PWM output
    if (count >= pwm_period) begin
        count <= 0;
        x_servo_pwm <= 1;
        y_servo_pwm <= 1;
    end
    else begin
        count <= count + 1;
    end

    if (count > x_value) begin
        x_servo_pwm <= 0;
    end
    else begin
        x_servo_pwm <= 1;
    end

    if (count > y_value) begin
        y_servo_pwm <= 0;
    end
    else begin
        y_servo_pwm <= 1;
    end
end

endmodule
