//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Mar 22 18:57:10 2016
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// n64ControlLibero
module n64ControlLibero(
    // Inputs
    MSS_RESET_N,
    UART_0_RXD,
    // Outputs
    UART_0_TXD,
    data_out,
    enable_write_mod_wire,
    write_module_active,
    // Inouts
    fab_pin
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  MSS_RESET_N;
input  UART_0_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output UART_0_TXD;
output data_out;
output enable_write_mod_wire;
output write_module_active;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  fab_pin;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire          data_out_net_0;
wire          enable_write_mod_wire_net_0;
wire          fab_pin;
wire          MSS_RESET_N;
wire          n64ControlLibero_MSS_0_FAB_CLK;
wire          n64ControlLibero_MSS_0_M2F_RESET_N;
wire          n64ControlLibero_MSS_0_MSS_MASTER_APB_PENABLE;
wire   [31:0] n64ControlLibero_MSS_0_MSS_MASTER_APB_PRDATA;
wire          n64ControlLibero_MSS_0_MSS_MASTER_APB_PREADY;
wire          n64ControlLibero_MSS_0_MSS_MASTER_APB_PSELx;
wire          n64ControlLibero_MSS_0_MSS_MASTER_APB_PSLVERR;
wire   [31:0] n64ControlLibero_MSS_0_MSS_MASTER_APB_PWDATA;
wire          n64ControlLibero_MSS_0_MSS_MASTER_APB_PWRITE;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          write_module_active_net_0;
wire          UART_0_TXD_net_1;
wire          data_out_net_1;
wire          enable_write_mod_wire_net_1;
wire          write_module_active_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] PRDATAS1_const_net_0;
wire   [31:0] PRDATAS2_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:20]n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0_31to20;
wire   [19:0] n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0_19to0;
wire   [31:0] n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0;
wire   [19:0] n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS1_const_net_0  = 32'h00000000;
assign PRDATAS2_const_net_0  = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS5_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign UART_0_TXD_net_1            = UART_0_TXD_net_0;
assign UART_0_TXD                  = UART_0_TXD_net_1;
assign data_out_net_1              = data_out_net_0;
assign data_out                    = data_out_net_1;
assign enable_write_mod_wire_net_1 = enable_write_mod_wire_net_0;
assign enable_write_mod_wire       = enable_write_mod_wire_net_1;
assign write_module_active_net_1   = write_module_active_net_0;
assign write_module_active         = write_module_active_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0_31to20 = 12'h0;
assign n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0_19to0 = n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR[19:0];
assign n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0 = { n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0_31to20, n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0_19to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 0 ),
        .APBSLOT2ENABLE  ( 0 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 18 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 12 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 2 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PWRITE ),
        .PENABLE    ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PENABLE ),
        .PSEL       ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PSELx ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PREADYS1   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS1  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS2   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS2  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR_0 ),
        .PWDATA     ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PWDATA ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA ),
        .PRDATAS1   ( PRDATAS1_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS2   ( PRDATAS2_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PREADY ),
        .PSLVERR    ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     (  ),
        .PSELS2     (  ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------n64_magic_box
n64_magic_box n64_magic_box_0(
        // Inputs
        .PCLK                  ( n64ControlLibero_MSS_0_FAB_CLK ),
        .PRESERN               ( n64ControlLibero_MSS_0_M2F_RESET_N ),
        .PENABLE_1             ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE_1              ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PSEL_1                ( CoreAPB3_0_APBmslave0_PSELx ),
        .PADDR_1               ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA_1              ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY_1              ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR_1             ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .data_out              ( data_out_net_0 ),
        .PRDATA_1              ( CoreAPB3_0_APBmslave0_PRDATA ),
        .enable_write_mod_wire ( enable_write_mod_wire_net_0 ),
        .write_module_active   ( write_module_active_net_0 ),
        // Inouts
        .fab_pin               ( fab_pin ) 
        );

//--------n64ControlLibero_MSS
n64ControlLibero_MSS n64ControlLibero_MSS_0(
        // Inputs
        .UART_0_RXD  ( UART_0_RXD ),
        .MSS_RESET_N ( MSS_RESET_N ),
        .MSSPREADY   ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PREADY ),
        .MSSPSLVERR  ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PSLVERR ),
        .MSSPRDATA   ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PRDATA ),
        // Outputs
        .UART_0_TXD  ( UART_0_TXD_net_0 ),
        .MSSPSEL     ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PSELx ),
        .MSSPENABLE  ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PENABLE ),
        .MSSPWRITE   ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PWRITE ),
        .FAB_CLK     ( n64ControlLibero_MSS_0_FAB_CLK ),
        .M2F_RESET_N ( n64ControlLibero_MSS_0_M2F_RESET_N ),
        .MSSPADDR    ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PADDR ),
        .MSSPWDATA   ( n64ControlLibero_MSS_0_MSS_MASTER_APB_PWDATA ) 
        );


endmodule
