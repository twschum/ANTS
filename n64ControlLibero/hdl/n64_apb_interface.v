///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: n64_apb_interface.v
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

module n64_apb_interface(
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
output reg polling_enable,
output reg controller_reset,
input [31:0] button_data
);
assign PSLVERR = 0;
assign PREADY = 1;
wire write;
wire read;

assign write = (PSEL && PWRITE && PENABLE && (PADDR[7:0] == 8'h00));
assign read = (PSEL && !PWRITE && PENABLE && (PADDR[7:0] == 8'h00));

/***END APB INTERFACE***/


always @ (posedge PCLK) begin

    if (~PRESERN) begin            // go to reset state
        polling_enable <= 1'b0;   // no polling
        controller_reset <= 1'b1; // send one 'FF' reset to controller
    end
    else if (write) begin
        if (PWDATA == 32'hFF) begin
            polling_enable <= 1'b0;   // no polling
            controller_reset <= 1'b1; // send 'FF' reset
        end
        else if (PWDATA == 32'h01) begin
            polling_enable <= 1'b1;   // poll controller continuously
            controller_reset <= 1'b0; // no reset byte
        end
        else begin
            polling_enable <= 0;
            controller_reset <= 0;
        end
    end
    PRDATA <= button_data;

end
endmodule

