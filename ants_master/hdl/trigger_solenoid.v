
parameter ADDRESS = 8'h04;

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
    output reg trigger_signal
);
assign PSLVERR = 0;
assign PREADY = 1;
assign PRDATA = 32'b0;

wire write;
assign write = (PSEL && PWRITE && PENABLE && (PADDR[7:0] == ADDRESS));
/***END APB INTERFACE***/

reg [31:0] countdown = 0;

always @ (posedge PCLK) begin

    if (~PRESERN) begin
        trigger_signal <= 0;
        countdown <= 0;
    end
    else if (write) begin
        countdown <= PWDATA;
    end

    if (countdown > 0) begin
        countdown <= countdown - 1;
        trigger_signal <= 1;
    end
    else begin
        trigger_signal <= 0;
    end

end

