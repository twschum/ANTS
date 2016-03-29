///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: solenoid_control.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 





module trigger_solenoid(
    /*** APB3 BUS INTERFACE ***/
    input PCLK, // clock
    input PRESERN, // system reset
    input PSEL, // peripheral select
    input PENABLE, // distinguishes access phase
    output wire PREADY, // peripheral ready signal
    output wire PSLVERR, // error signal
    input PWRITE, // distinguishes read and write cycles
    input [31:0] PADDR, // I/O address
    input wire [31:0] PWDATA, // data from processor to I/O device (32 bits)
    output reg [31:0] PRDATA, // data to processor from I/O device (32-bits)

    /*** I/O PORTS DECLARATION ***/
    output reg trigger_signal,
    
    //DEBUG

    output reg correct
);
assign PSLVERR = 0;
assign PREADY = 1;

parameter ADDR = 12'h100;

initial begin 
    PRDATA <= 32'b0;
end

wire write;
assign write = (PSEL && PWRITE && PENABLE && (PADDR[11:0] == ADDR));
/***END APB INTERFACE***/

reg [31:0] countdown = 0;

always @ (posedge PCLK) begin

    if (~PRESERN) begin
        trigger_signal <= 0;
        countdown <= 0;
    end
    else if (write && (countdown == 0)) begin
        countdown <= 32'd50000000;
        trigger_signal <= 0;
    end
    else if (countdown > 0) begin
        countdown <= countdown - 1;
        trigger_signal <= 1;
    end
    else begin
        trigger_signal <= 0;
    end

    if (countdown < 32'd200000) begin
        correct <= 1;
    end
    else begin
        correct <= 0;
    end

end

endmodule

