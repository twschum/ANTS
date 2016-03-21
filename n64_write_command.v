
module n64_write_command(
    input reg [7:0] command_byte;
    input reg en;
    input clk;
    output reg data_out;
    output reg writing_data;
);

reg enabled;
reg [8:0] count;

parameter START = 100;
parameter DATA = 300;
parameter STOP = 400;

assign writing_data = enabled;

always @ (posedge clk) begin

    // latch the command byte when enable goes high
    if (en & ~enabled) begin
        enabled <= 1;
        index <= 0
        count <= 0;
    end

    // counter & reset logic
    if (enabled & count < STOP) begin
        count <= count + 1;

    else if (enabled & count == STOP & index == 8)
        enabled <= 0;

    else if (enabled & count == STOP)
        count <= 0;
        index <= index + 1;
    end

    // outputs based on current state (count)
    if (enabled) begin

        if (count < START) begin
            data_out <= 0;
        else if (count < DATA)
            data_out <= command_byte[index];
        else if (count < STOP)
            data_out <= 1;
        end

    else
        index <= 0;
        data_out <= 1;
    end

end

endmodule
