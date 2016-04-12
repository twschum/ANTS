///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: n64_read_module.v
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

module n64_read_module(
    input enable,
    input clk,
    input data_in,
    output reg error,
    output reg working,
    output reg [31:0] con_data,
    //DEBUG
    output wire data_bit, 
    output wire data_valid
);

initial begin
    working = 0;
    error = 0;
    con_data[31:0] = 0;
end

reg [5:0] index = 5'b0;

always @ (posedge clk) begin
    if (~working && enable) begin
        index <= 0;
        working <= 1;
    end
    if (index == 32) begin
        index <= 0;
        working <= 0;
    end
    if (data_valid) begin
        con_data[index] <= data_bit;
        index <= index + 1;
    end
end


//DEBUG wire data_bit, data_valid;

_read_bit read_bit0 (
    data_in,
    working,
    clk,
    data_bit,
    data_valid
);

endmodule

module _read_bit(
    input wire data_in,
    input wire enable,
    input wire clk,
    output reg data_bit,
    output reg data_valid
);

reg last_value_in = 0;
reg [8:0] count = 9'b0;

always @ (posedge clk) begin
    last_value_in <= data_in;
end 

always @ (posedge clk) begin
    if (enable) begin
        if (last_value_in && ~data_in) begin
            count <= 9'b0;
        end
        else begin
            count <= count + 1;
        end
        if (count == 200) begin
            data_bit <= data_in;
        end
        if (count == 210) begin
            data_valid <= 1;
        end
        else begin
            data_valid <= 0;
        end
    end
end

endmodule


