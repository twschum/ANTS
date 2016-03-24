
module n64_read_controller(
    input enable,
    input clk,
    input data_in,
    output reg error,
    output reg working,
    output reg [31:0] con_data,

    //DEBUG
    output wire next_state0,
    output wire next_state1,
    output wire next_state2,
    output wire state0,
    output wire state1,
    output wire state2
);

parameter Wait = 3'b000;
parameter Zero = 3'b001;
parameter One = 3'b010;
parameter Check = 3'b011;
parameter End = 3'b100;
parameter Error = 3'b101;

reg [2:0] next_state = End;
reg [2:0] state = End;
//DEBUG
assign next_state0 = next_state[0];
assign next_state1 = next_state[1];
assign next_state2 = next_state[2];
assign state0 = state[0];
assign state1 = state[1];
assign state2 = state[2];

reg [5:0] bits = 0;//number of bits read in so far
reg [9:0] ones = 0;
reg [9:0] zeros = 0;
reg [4:0] pos = 0;

//taking action based on state
always @ (posedge clk) begin
    case (state)
    Wait: begin
        pos <= 0;
        ones <= 0;
        zeros <= 0;
        error <= 0;
        bits <= 0;
        working <= 1;
        con_data [31:0] <= 32'b0;
    end
    Zero: begin
        zeros <= zeros + 1;
    end
    One: begin
        ones <= ones + 1;
    end
    Check: begin
        if (ones < 600) begin //did not hit end of word or error case
            if (ones >= zeros)
                con_data[pos] <= 1;
            else if (ones < zeros)
                con_data <= 0;
        end
        else if (ones >= 600) begin//hit EoW or error case
            if ((ones - 200) >= zeros)
                con_data[pos] <= 1;
            else if (ones < zeros)
                con_data <= 0;
        end
        if (bits < 32) begin
            ones <= 0;
            zeros <= 0;
            bits <= bits + 1;
        end
    end
    End: begin
        working <= 0;
    end
    Error: begin
        error <= 1;
        working <= 0;
    end
    endcase
end

//switch state
always @(posedge clk) begin
    state = next_state;
end

//Next State Logic
always @ (posedge clk) begin
    case(state)
    Wait: begin
        if (data_in == 0)
            next_state <= Zero;
        else
            next_state <= Wait;
    end
    Zero: begin
        if (data_in == 0)
            next_state <= Zero;
        else
            next_state <= One;
    end
    One: begin
        if (data_in == 1 && ones <= 600)
            next_state <= One;
        else
            next_state <= Check;
    end
    Check: begin
        if (bits >= 30)
            next_state <= End;
        else if (ones >= 600)
            next_state <= Error;
        else
            next_state <= Zero;
    end
    End: begin
        if (enable == 1)
            next_state <= Wait;
        else
            next_state <= End;
    end
    Error: begin
        if (enable == 1)
            next_state <= Wait;
        else
            next_state <= Error;
    end
    endcase
end

endmodule

