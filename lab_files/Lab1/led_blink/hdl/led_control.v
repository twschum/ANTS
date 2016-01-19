///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: led_control.v
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

module led_control(
    input wire reset,
    input wire clock,
    output wire [7:0] LED
    );

    reg[0:0] direction;
    reg[7:0] state, next_state;
    wire reset_act = ~reset;
    
    parameter zero =    8'b11111110;
    parameter one =     8'b11111101;
    parameter two =     8'b11111011;
    parameter three =   8'b11110111;
    parameter four =    8'b11101111;
    parameter five =    8'b11011111;
    parameter six =     8'b10111111;
    parameter seven =   8'b01111111;
    parameter UP =   1'b0;
    parameter DOWN = 1'b1;
    
    initial 
    begin
        direction = UP;
        state = zero; 
    end

    
    // Next state logic
    always @* 
    begin
        case(state)
        zero:
            next_state = one;
        one:
            if(direction == UP)
                next_state = two;
            else
                next_state = zero;
        two:
            if(direction == UP)
                next_state = three;
            else
                next_state = one;
        three:
            if(direction == UP)
                next_state = four;
            else
                next_state = two;
        four:
            if(direction == UP)
                next_state = five;
            else
                next_state = three;
        five:
            if(direction == UP)
                next_state = six;
            else
                next_state = four;
        six:
            if(direction == UP)
                next_state = seven;
            else
                next_state = five;
        seven:
            next_state = six;
        default:
            next_state = zero;
        endcase
    end

    // clocked next state 
    always @ (posedge clock) 
    begin
        if (state == zero)
            direction <= UP;
        else if (state == seven)
            direction <= DOWN;
          
        if (reset_act)
            state <= zero;
        else
            state <= next_state;
    end
        
    // LED output logic
    assign LED = state;

endmodule


module clk_div_25M (
    input wire in_clk,
    output reg[0:0] out_clk );
   
    reg [25:0] count;
    always @ (posedge in_clk)
    begin
        if (count == 25000000)
            count <= 0;
        else
            count <= count + 1;
    end
    
    always @ *
    begin
        if (count == 25000000)
            out_clk = 1;
        else
            out_clk = 0;
    end

endmodule