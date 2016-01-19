//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jan 12 17:10:56 2016
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// led_blink
module led_blink(
    // Inputs
    reset,
    // Outputs
    LED
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [7:0] LED;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [0:0] clk_div_25M_0_out_clk;
wire   [7:0] LED_net_0;
wire         led_blink_MSS_0_FAB_CLK;
wire         reset;
wire   [7:0] LED_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign LED_net_1 = LED_net_0;
assign LED[7:0]  = LED_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------clk_div_25M
clk_div_25M clk_div_25M_0(
        // Inputs
        .in_clk  ( led_blink_MSS_0_FAB_CLK ),
        // Outputs
        .out_clk ( clk_div_25M_0_out_clk ) 
        );

//--------led_blink_MSS
led_blink_MSS led_blink_MSS_0(
        // Outputs
        .FAB_CLK ( led_blink_MSS_0_FAB_CLK ) 
        );

//--------led_control
led_control led_control_0(
        // Inputs
        .reset ( reset ),
        .clock ( clk_div_25M_0_out_clk ),
        // Outputs
        .LED   ( LED_net_0 ) 
        );


endmodule
