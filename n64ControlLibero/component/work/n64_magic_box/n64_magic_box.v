//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Mar 24 14:07:00 2016
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
    read_bit_data_valid,
    read_data_bit,
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
output        read_bit_data_valid;
output        read_data_bit;
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
wire          PCLK;
wire          polling_enable;
wire          PRESERN;
wire          read_bit_data_valid_net_0;
wire          read_data_bit_net_0;
wire          BIF_1_1_PREADY_net_0;
wire          BIF_1_1_PSLVERR_net_0;
wire   [31:0] BIF_1_1_PRDATA_net_0;
wire          read_bit_data_valid_net_1;
wire          read_data_bit_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign BIF_1_1_PREADY_net_0      = BIF_1_1_PREADY;
assign PREADY_1                  = BIF_1_1_PREADY_net_0;
assign BIF_1_1_PSLVERR_net_0     = BIF_1_1_PSLVERR;
assign PSLVERR_1                 = BIF_1_1_PSLVERR_net_0;
assign BIF_1_1_PRDATA_net_0      = BIF_1_1_PRDATA;
assign PRDATA_1[31:0]            = BIF_1_1_PRDATA_net_0;
assign read_bit_data_valid_net_1 = read_bit_data_valid_net_0;
assign read_bit_data_valid       = read_bit_data_valid_net_1;
assign read_data_bit_net_1       = read_data_bit_net_0;
assign read_data_bit             = read_data_bit_net_1;
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
        .clk                 ( PCLK ),
        .polling_enable      ( polling_enable ),
        .controller_reset    ( controller_reset ),
        // Outputs
        .button_data         ( n64_serial_interface_0_button_data ),
        .read_data_bit       ( read_data_bit_net_0 ),
        .read_bit_data_valid ( read_bit_data_valid_net_0 ),
        // Inouts
        .fab_pin             ( fab_pin ) 
        );


endmodule
