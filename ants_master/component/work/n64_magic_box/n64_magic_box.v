//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Apr 12 13:10:58 2016
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// n64_magic_box
module n64_magic_box(
    // Inputs
    PADDR,
    PCLK,
    PENABLE,
    PRESERN,
    PSEL,
    PWDATA,
    PWRITE,
    // Outputs
    PRDATA,
    PREADY,
    PSLVERR,
    cDataSync,
    dataBit,
    dataValid,
    // Inouts
    fab_pin
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] PADDR;
input         PCLK;
input         PENABLE;
input         PRESERN;
input         PSEL;
input  [31:0] PWDATA;
input         PWRITE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] PRDATA;
output        PREADY;
output        PSLVERR;
output        cDataSync;
output        dataBit;
output        dataValid;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         fab_pin;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] PADDR;
wire          PENABLE;
wire   [31:0] BIF_1_PRDATA;
wire          BIF_1_PREADY;
wire          PSEL;
wire          BIF_1_PSLVERR;
wire   [31:0] PWDATA;
wire          PWRITE;
wire          cDataSync_net_0;
wire          dataBit_net_0;
wire          dataValid_net_0;
wire          fab_pin;
wire          n64_apb_interface_0_controller_reset;
wire          n64_apb_interface_0_polling_enable;
wire   [31:0] n64_serial_interface_0_button_data;
wire          PCLK;
wire          PRESERN;
wire          BIF_1_PREADY_net_0;
wire          BIF_1_PSLVERR_net_0;
wire          cDataSync_net_1;
wire   [31:0] BIF_1_PRDATA_net_0;
wire          dataValid_net_1;
wire          dataBit_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign BIF_1_PREADY_net_0  = BIF_1_PREADY;
assign PREADY              = BIF_1_PREADY_net_0;
assign BIF_1_PSLVERR_net_0 = BIF_1_PSLVERR;
assign PSLVERR             = BIF_1_PSLVERR_net_0;
assign cDataSync_net_1     = cDataSync_net_0;
assign cDataSync           = cDataSync_net_1;
assign BIF_1_PRDATA_net_0  = BIF_1_PRDATA;
assign PRDATA[31:0]        = BIF_1_PRDATA_net_0;
assign dataValid_net_1     = dataValid_net_0;
assign dataValid           = dataValid_net_1;
assign dataBit_net_1       = dataBit_net_0;
assign dataBit             = dataBit_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------n64_apb_interface
n64_apb_interface n64_apb_interface_0(
        // Inputs
        .PCLK             ( PCLK ),
        .PRESERN          ( PRESERN ),
        .PSEL             ( PSEL ),
        .PENABLE          ( PENABLE ),
        .PWRITE           ( PWRITE ),
        .PADDR            ( PADDR ),
        .PWDATA           ( PWDATA ),
        .button_data      ( n64_serial_interface_0_button_data ),
        // Outputs
        .PREADY           ( BIF_1_PREADY ),
        .PSLVERR          ( BIF_1_PSLVERR ),
        .polling_enable   ( n64_apb_interface_0_polling_enable ),
        .controller_reset ( n64_apb_interface_0_controller_reset ),
        .PRDATA           ( BIF_1_PRDATA ) 
        );

//--------n64_serial_interface
n64_serial_interface n64_serial_interface_0(
        // Inputs
        .clk              ( PCLK ),
        .polling_enable   ( n64_apb_interface_0_polling_enable ),
        .controller_reset ( n64_apb_interface_0_controller_reset ),
        // Outputs
        .button_data      ( n64_serial_interface_0_button_data ),
        .cDataSync        ( cDataSync_net_0 ),
        .dataBit          ( dataBit_net_0 ),
        .dataValid        ( dataValid_net_0 ),
        // Inouts
        .fab_pin          ( fab_pin ) 
        );


endmodule
