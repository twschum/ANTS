//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Mar 22 18:56:35 2016
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
    data_out,
    enable_write_mod_wire,
    write_module_active,
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
output        data_out;
output        enable_write_mod_wire;
output        write_module_active;
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
wire          data_out_net_0;
wire          enable_write_mod_wire_net_0;
wire          fab_pin;
wire   [31:0] n64_serial_interface_0_button_data;
wire          PCLK;
wire          polling_enable;
wire          PRESERN;
wire          write_module_active_net_0;
wire          BIF_1_1_PREADY_net_0;
wire          BIF_1_1_PSLVERR_net_0;
wire          data_out_net_1;
wire   [31:0] BIF_1_1_PRDATA_net_0;
wire          enable_write_mod_wire_net_1;
wire          write_module_active_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign BIF_1_1_PREADY_net_0        = BIF_1_1_PREADY;
assign PREADY_1                    = BIF_1_1_PREADY_net_0;
assign BIF_1_1_PSLVERR_net_0       = BIF_1_1_PSLVERR;
assign PSLVERR_1                   = BIF_1_1_PSLVERR_net_0;
assign data_out_net_1              = data_out_net_0;
assign data_out                    = data_out_net_1;
assign BIF_1_1_PRDATA_net_0        = BIF_1_1_PRDATA;
assign PRDATA_1[31:0]              = BIF_1_1_PRDATA_net_0;
assign enable_write_mod_wire_net_1 = enable_write_mod_wire_net_0;
assign enable_write_mod_wire       = enable_write_mod_wire_net_1;
assign write_module_active_net_1   = write_module_active_net_0;
assign write_module_active         = write_module_active_net_1;
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
        .clk                      ( PCLK ),
        .polling_enable           ( polling_enable ),
        .controller_reset         ( controller_reset ),
        // Outputs
        .button_data              ( n64_serial_interface_0_button_data ),
        .data_out                 ( data_out_net_0 ),
        .write_module_begin_DEBUG ( enable_write_mod_wire_net_0 ),
        .write_module_active      ( write_module_active_net_0 ),
        // Inouts
        .fab_pin                  ( fab_pin ) 
        );


endmodule
