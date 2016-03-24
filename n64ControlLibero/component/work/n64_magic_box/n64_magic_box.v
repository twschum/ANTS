//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Mar 24 12:58:59 2016
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// n64_magic_box
module n64_magic_box(
    // Inputs
    PADDR_1,
    PCLK,
    PENABLE_1,
    PRESERN,
    PSEL_1,
    PWDATA_1,
    PWRITE_1,
    // Outputs
    PRDATA_1,
    PREADY_1,
    PSLVERR_1,
    next_state0,
    next_state1,
    next_state2,
    state0,
    state1,
    state2,
    // Inouts
    fab_pin
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] PADDR_1;
input         PCLK;
input         PENABLE_1;
input         PRESERN;
input         PSEL_1;
input  [31:0] PWDATA_1;
input         PWRITE_1;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] PRDATA_1;
output        PREADY_1;
output        PSLVERR_1;
output        next_state0;
output        next_state1;
output        next_state2;
output        state0;
output        state1;
output        state2;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         fab_pin;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] PADDR_1;
wire          PENABLE_1;
wire   [31:0] BIF_1_1_PRDATA;
wire          BIF_1_1_PREADY;
wire          PSEL_1;
wire          BIF_1_1_PSLVERR;
wire   [31:0] PWDATA_1;
wire          PWRITE_1;
wire          controller_reset;
wire          fab_pin;
wire   [31:0] n64_serial_interface_0_button_data;
wire          next_state0_net_0;
wire          next_state1_net_0;
wire          next_state2_net_0;
wire          PCLK;
wire          polling_enable;
wire          PRESERN;
wire          state0_net_0;
wire          state1_net_0;
wire          state2_net_0;
wire          BIF_1_1_PREADY_net_0;
wire          BIF_1_1_PSLVERR_net_0;
wire   [31:0] BIF_1_1_PRDATA_net_0;
wire          next_state0_net_1;
wire          next_state1_net_1;
wire          next_state2_net_1;
wire          state0_net_1;
wire          state1_net_1;
wire          state2_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign BIF_1_1_PREADY_net_0  = BIF_1_1_PREADY;
assign PREADY_1              = BIF_1_1_PREADY_net_0;
assign BIF_1_1_PSLVERR_net_0 = BIF_1_1_PSLVERR;
assign PSLVERR_1             = BIF_1_1_PSLVERR_net_0;
assign BIF_1_1_PRDATA_net_0  = BIF_1_1_PRDATA;
assign PRDATA_1[31:0]        = BIF_1_1_PRDATA_net_0;
assign next_state0_net_1     = next_state0_net_0;
assign next_state0           = next_state0_net_1;
assign next_state1_net_1     = next_state1_net_0;
assign next_state1           = next_state1_net_1;
assign next_state2_net_1     = next_state2_net_0;
assign next_state2           = next_state2_net_1;
assign state0_net_1          = state0_net_0;
assign state0                = state0_net_1;
assign state1_net_1          = state1_net_0;
assign state1                = state1_net_1;
assign state2_net_1          = state2_net_0;
assign state2                = state2_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------n64_apb_interface
n64_apb_interface n64_apb_interface_0(
        // Inputs
        .PCLK             ( PCLK ),
        .PRESERN          ( PRESERN ),
        .PSEL             ( PSEL_1 ),
        .PENABLE          ( PENABLE_1 ),
        .PWRITE           ( PWRITE_1 ),
        .PADDR            ( PADDR_1 ),
        .PWDATA           ( PWDATA_1 ),
        .button_data      ( n64_serial_interface_0_button_data ),
        // Outputs
        .PREADY           ( BIF_1_1_PREADY ),
        .PSLVERR          ( BIF_1_1_PSLVERR ),
        .polling_enable   ( polling_enable ),
        .controller_reset ( controller_reset ),
        .PRDATA           ( BIF_1_1_PRDATA ) 
        );

//--------n64_serial_interface
n64_serial_interface n64_serial_interface_0(
        // Inputs
        .clk              ( PCLK ),
        .polling_enable   ( polling_enable ),
        .controller_reset ( controller_reset ),
        // Outputs
        .button_data      ( n64_serial_interface_0_button_data ),
        .next_state0      ( next_state0_net_0 ),
        .next_state1      ( next_state1_net_0 ),
        .next_state2      ( next_state2_net_0 ),
        .state0           ( state0_net_0 ),
        .state1           ( state1_net_0 ),
        .state2           ( state2_net_0 ),
        // Inouts
        .fab_pin          ( fab_pin ) 
        );


endmodule
