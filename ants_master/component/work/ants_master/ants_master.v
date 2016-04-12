//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Apr 12 02:17:21 2016
// Version: v11.5 SP3 11.5.3.10
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// ants_master
module ants_master(
    // Inputs
    MSS_RESET_N,
    SPI_0_DI,
    UART_0_RXD,
    UART_1_RXD,
    stop_y,
    // Outputs
    GPIO_0_OUT,
    GPIO_1_OUT,
    SPI_0_DO,
    UART_0_TXD,
    UART_1_TXD,
    x_servo_pwm,
    y_servo_pwm,
    // Inouts
    SPI_0_CLK,
    SPI_0_SS,
    fab_pin
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        MSS_RESET_N;
input        SPI_0_DI;
input        UART_0_RXD;
input        UART_1_RXD;
input  [1:0] stop_y;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       GPIO_0_OUT;
output       GPIO_1_OUT;
output       SPI_0_DO;
output       UART_0_TXD;
output       UART_1_TXD;
output       x_servo_pwm;
output       y_servo_pwm;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        SPI_0_CLK;
inout        SPI_0_SS;
inout        fab_pin;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          ants_master_MSS_0_FAB_CLK;
wire          ants_master_MSS_0_M2F_RESET_N;
wire          ants_master_MSS_0_MSS_MASTER_APB_PENABLE;
wire   [31:0] ants_master_MSS_0_MSS_MASTER_APB_PRDATA;
wire          ants_master_MSS_0_MSS_MASTER_APB_PREADY;
wire          ants_master_MSS_0_MSS_MASTER_APB_PSELx;
wire          ants_master_MSS_0_MSS_MASTER_APB_PSLVERR;
wire   [31:0] ants_master_MSS_0_MSS_MASTER_APB_PWDATA;
wire          ants_master_MSS_0_MSS_MASTER_APB_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          fab_pin;
wire          GPIO_0_OUT_net_0;
wire          GPIO_1_OUT_net_0;
wire          MSS_RESET_N;
wire          SPI_0_CLK;
wire          SPI_0_DI;
wire          SPI_0_DO_net_0;
wire          SPI_0_SS;
wire   [1:0]  stop_y;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          UART_1_RXD;
wire          UART_1_TXD_net_0;
wire          x_servo_pwm_net_0;
wire          y_servo_pwm_net_0;
wire          UART_1_TXD_net_1;
wire          UART_0_TXD_net_1;
wire          SPI_0_DO_net_1;
wire          GPIO_1_OUT_net_1;
wire          GPIO_0_OUT_net_1;
wire          x_servo_pwm_net_1;
wire          y_servo_pwm_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
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
wire   [31:20]ants_master_MSS_0_MSS_MASTER_APB_PADDR_0_31to20;
wire   [19:0] ants_master_MSS_0_MSS_MASTER_APB_PADDR_0_19to0;
wire   [31:0] ants_master_MSS_0_MSS_MASTER_APB_PADDR_0;
wire   [19:0] ants_master_MSS_0_MSS_MASTER_APB_PADDR;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign IADDR_const_net_0     = 32'h00000000;
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
assign UART_1_TXD_net_1  = UART_1_TXD_net_0;
assign UART_1_TXD        = UART_1_TXD_net_1;
assign UART_0_TXD_net_1  = UART_0_TXD_net_0;
assign UART_0_TXD        = UART_0_TXD_net_1;
assign SPI_0_DO_net_1    = SPI_0_DO_net_0;
assign SPI_0_DO          = SPI_0_DO_net_1;
assign GPIO_1_OUT_net_1  = GPIO_1_OUT_net_0;
assign GPIO_1_OUT        = GPIO_1_OUT_net_1;
assign GPIO_0_OUT_net_1  = GPIO_0_OUT_net_0;
assign GPIO_0_OUT        = GPIO_0_OUT_net_1;
assign x_servo_pwm_net_1 = x_servo_pwm_net_0;
assign x_servo_pwm       = x_servo_pwm_net_1;
assign y_servo_pwm_net_1 = y_servo_pwm_net_0;
assign y_servo_pwm       = y_servo_pwm_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign ants_master_MSS_0_MSS_MASTER_APB_PADDR_0_31to20 = 12'h0;
assign ants_master_MSS_0_MSS_MASTER_APB_PADDR_0_19to0 = ants_master_MSS_0_MSS_MASTER_APB_PADDR[19:0];
assign ants_master_MSS_0_MSS_MASTER_APB_PADDR_0 = { ants_master_MSS_0_MSS_MASTER_APB_PADDR_0_31to20, ants_master_MSS_0_MSS_MASTER_APB_PADDR_0_19to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------ants_master_MSS
ants_master_MSS ants_master_MSS_0(
        // Inputs
        .UART_0_RXD  ( UART_0_RXD ),
        .UART_1_RXD  ( UART_1_RXD ),
        .SPI_0_DI    ( SPI_0_DI ),
        .MSS_RESET_N ( MSS_RESET_N ),
        .MSSPREADY   ( ants_master_MSS_0_MSS_MASTER_APB_PREADY ),
        .MSSPSLVERR  ( ants_master_MSS_0_MSS_MASTER_APB_PSLVERR ),
        .MSSPRDATA   ( ants_master_MSS_0_MSS_MASTER_APB_PRDATA ),
        // Outputs
        .UART_0_TXD  ( UART_0_TXD_net_0 ),
        .UART_1_TXD  ( UART_1_TXD_net_0 ),
        .SPI_0_DO    ( SPI_0_DO_net_0 ),
        .M2F_RESET_N ( ants_master_MSS_0_M2F_RESET_N ),
        .GPIO_1_OUT  ( GPIO_1_OUT_net_0 ),
        .GPIO_0_OUT  ( GPIO_0_OUT_net_0 ),
        .MSSPSEL     ( ants_master_MSS_0_MSS_MASTER_APB_PSELx ),
        .MSSPENABLE  ( ants_master_MSS_0_MSS_MASTER_APB_PENABLE ),
        .MSSPWRITE   ( ants_master_MSS_0_MSS_MASTER_APB_PWRITE ),
        .FAB_CLK     ( ants_master_MSS_0_FAB_CLK ),
        .MSSPADDR    ( ants_master_MSS_0_MSS_MASTER_APB_PADDR ),
        .MSSPWDATA   ( ants_master_MSS_0_MSS_MASTER_APB_PWDATA ),
        // Inouts
        .SPI_0_CLK   ( SPI_0_CLK ),
        .SPI_0_SS    ( SPI_0_SS ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
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
        .PWRITE     ( ants_master_MSS_0_MSS_MASTER_APB_PWRITE ),
        .PENABLE    ( ants_master_MSS_0_MSS_MASTER_APB_PENABLE ),
        .PSEL       ( ants_master_MSS_0_MSS_MASTER_APB_PSELx ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
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
        .PADDR      ( ants_master_MSS_0_MSS_MASTER_APB_PADDR_0 ),
        .PWDATA     ( ants_master_MSS_0_MSS_MASTER_APB_PWDATA ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA ),
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA ),
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
        .PREADY     ( ants_master_MSS_0_MSS_MASTER_APB_PREADY ),
        .PSLVERR    ( ants_master_MSS_0_MSS_MASTER_APB_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
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
        .PRDATA     ( ants_master_MSS_0_MSS_MASTER_APB_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------n64_magic_box
n64_magic_box n64_magic_box_0(
        // Inputs
        .PCLK    ( ants_master_MSS_0_FAB_CLK ),
        .PRESERN ( ants_master_MSS_0_M2F_RESET_N ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PSEL    ( CoreAPB3_0_APBmslave0_PSELx ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PRDATA  ( CoreAPB3_0_APBmslave0_PRDATA ),
        // Inouts
        .fab_pin ( fab_pin ) 
        );

//--------servo_control
servo_control servo_control_0(
        // Inputs
        .PCLK        ( ants_master_MSS_0_FAB_CLK ),
        .PRESERN     ( ants_master_MSS_0_M2F_RESET_N ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA ),
        .stop_y      ( stop_y ),
        // Outputs
        .PREADY      ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .x_servo_pwm ( x_servo_pwm_net_0 ),
        .y_servo_pwm ( y_servo_pwm_net_0 ),
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );


endmodule
