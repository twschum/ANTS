///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: myandor.v
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
//`timescale <time_units> / <precision>

module myandor(

input clk,
input[1:0] SW,
output wire [5:0] LED
               );        

assign LED[0] = SW[0] & SW[1]; //And
assign LED[1] = SW[0] ^ SW[1]; //Xor
assign LED[2] = SW[0] | SW[1]; //or

reg Q0, Q1, Q2;
//synchronize SW0 to the system clk with two flipflops connected in series
always@(posedge clk)
begin
Q0 <= SW[0];
Q1 <= Q0;
end

//count switch transitions
reg[2:0] count;
always@(posedge Q1)
begin
if (~SW[1])
   count <=0;
else
   count <= count +1;
end

assign LED[3] = ~count[0];
assign LED[4] = ~count[1];
assign LED[5] = ~count[2];

endmodule