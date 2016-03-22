
module n64_write_command(
    input [7:0] command_byte_in,
    input en,
    input clk,
    output writing_data,
    output reg data_out,
    output reg begin_read
);

reg enabled;
reg [3:0] index;
reg [8:0] count;
reg [7:0] command_byte;

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
        command_byte <= { command_byte_in };
    end

    // counter & reset logic
    if (enabled) begin
        if (count < STOP)
            count <= count + 1;

        else if ((count == START) && (index == 9)) begin
            enabled <= 0;
            begin_read <= 1;
        end

        else if ((count == STOP) && (index != 9)) begin
            count <= 0;
            index <= index + 1;
        end
        else if (count > STOP)
            count <= 0;
    end

    // outputs based on current state (count)
    if (enabled) begin
        if (count < START)
            data_out <= 0;
        else if (count < DATA)
            data_out <= command_byte[7-index];
        else if (count < STOP)
            data_out <= 1;

    end
    else begin// idle / disabled state
        index <= 0;
        data_out <= 1;
        count <= 0;
        begin_read <= 0;
    end

end
endmodule

