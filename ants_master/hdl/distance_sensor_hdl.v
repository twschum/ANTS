
/// Verilog module to interface with distance sensor
///     Colleen 
///     4/2/2016

module Dsensor( 

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
   
    input sensor_pwm // input pwm from distance sensor
    );

wire [31:0] distance_count;
wire valid_read;

assign valid_read = (PSEL && !PWRITE && (PADDR[12:0] == 12'h200));
assign PSLVERR = 0;
assign PREADY = 1;

_get_distance dist1( 
    .PCLK(PCLK),
    .PRESERN(PRESERN),
    .sensor_pwm(sensor_pwm),
    .distance_count(distance_count)
);

/*** APB READ DATA LOGIC ***/
always @ (posedge PCLK) begin

    if (valid_read)
        PRDATA <= distance_count;
    else
        PRDATA <= 32'hFFFFFFFF;
end
endmodule



// Module to calculate the distance in 'clock counts' based on the distance sensor pwm input signal
module _get_distance(
    input PCLK,
    input PRESERN,
    input sensor_pwm,
    
    output reg [31:0] distance_count
    );

reg [31:0] clk_count; 
reg [31:0] next_distance_count;

parameter DSENSE_PERIOD = 5000000; // 50 ms = distance sensor period (20Hz)
parameter SEND_DIST     = 2500000;


initial begin
    clk_count             <= 0;
    distance_count        <= 0;
    next_distance_count   <= 0;
end


always @ (posedge PCLK) begin

    if (~PRESERN) begin
        clk_count <= 0;
        distance_count <= 0;
        next_distance_count <= 0;
    end
    else begin
        
        if(clk_count < SEND_DIST) begin
            if(sensor_pwm) begin
                next_distance_count <= next_distance_count + 1;
            end
            clk_count <= clk_count+1;
        end
        else if(clk_count == SEND_DIST) begin 
            distance_count <= next_distance_count; // write to final distance
            clk_count <= clk_count+1;
        end
        else if(clk_count < DSENSE_PERIOD) begin
            clk_count <= clk_count+1;
        end else begin //(clk_count >= DSENSE_PERIOD)
            clk_count <= 0;
            next_distance_count <= 0;
        end


    end //else, !reset case
end // always @ PCLK

endmodule