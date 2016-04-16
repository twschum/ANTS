module LED( 
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
       
    output reg [23:0] LED;
   );


always @(posedge PCLK) begin
    if(~PRESERN) begin
        LED <= 0;
    end

end

endmodule

