
module n64_write_command(
    input [7:0] command_byte,
    input en,
    input clk,
    output writing_data,
    output reg data_out
);

reg enabled;
reg [3:0] index;
reg [8:0] count;
reg [8:0] command_byte_plus_stop;

parameter START = 100;
parameter DATA = 300;
parameter STOP = 400;

assign writing_data = enabled;

always @ (posedge clk) begin

    // latch the command byte when enable goes high
    if (en & ~enabled) begin
        enabled <= 1;
        index <= 0;
        count <= 0;
        command_byte_plus_stop <= { 1'b1, command_byte };
    end

    // counter & reset logic
    if (enabled & count < STOP)
        count <= count + 1;

    else if (enabled & count == STOP & index == 9)
        enabled <= 0;

    else if (enabled & count == STOP & index != 9) begin
        count <= 0;
        index <= index + 1;
    end

    // outputs based on current state (count)
    if (enabled) begin

        if (count < START)
            data_out <= 0;
        else if (count < DATA)
            data_out <= command_byte_plus_stop[index];
        else if (count < STOP)
            data_out <= 1;

    end
    else // idle / disabled state
        index <= 0;
        data_out <= 1;
        count <= 0;
    end

end

endmodule

