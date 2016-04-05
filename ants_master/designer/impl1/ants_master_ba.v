`timescale 1 ns/100 ps
// Version: v11.5 SP3 11.5.3.10
// File used only for Simulation


module ants_master(
       MSS_RESET_N,
       SPI_0_DI,
       UART_0_RXD,
       UART_1_RXD,
       GPIO_0_OUT,
       GPIO_1_OUT,
       SPI_0_DO,
       UART_0_TXD,
       UART_1_TXD,
       x_servo_pwm,
       y_servo_pwm,
       SPI_0_CLK,
       SPI_0_SS,
       fab_pin
    );
input  MSS_RESET_N;
input  SPI_0_DI;
input  UART_0_RXD;
input  UART_1_RXD;
output GPIO_0_OUT;
output GPIO_1_OUT;
output SPI_0_DO;
output UART_0_TXD;
output UART_1_TXD;
output x_servo_pwm;
output y_servo_pwm;
inout  SPI_0_CLK;
inout  SPI_0_SS;
inout  fab_pin;

    wire \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[0] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[1] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[2] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[3] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[4] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[5] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[6] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[7] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[8] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[9] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[10] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[11] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[12] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[13] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[14] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[15] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[16] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[17] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[18] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[19] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[20] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[21] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[22] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[23] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[24] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[25] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[26] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[27] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[28] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[29] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[30] , 
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[31] , FAB_CLK, 
        ants_master_MSS_0_M2F_RESET_N, 
        \CoreAPB3_0_APBmslave0_PADDR[0] , 
        \CoreAPB3_0_APBmslave0_PADDR[1] , 
        \CoreAPB3_0_APBmslave0_PADDR[2] , 
        \CoreAPB3_0_APBmslave0_PADDR[3] , 
        \CoreAPB3_0_APBmslave0_PADDR[4] , 
        \CoreAPB3_0_APBmslave0_PADDR[5] , 
        \CoreAPB3_0_APBmslave0_PADDR[6] , 
        \CoreAPB3_0_APBmslave0_PADDR[7] , 
        \CoreAPB3_0_APBmslave0_PADDR[8] , 
        \CoreAPB3_0_APBmslave0_PADDR[9] , 
        \CoreAPB3_0_APBmslave0_PADDR[10] , 
        \CoreAPB3_0_APBmslave0_PADDR[11] , 
        \CoreAPB3_0_APBmslave0_PADDR[12] , 
        CoreAPB3_0_APBmslave0_PENABLE, 
        \CoreAPB3_0_APBmslave0_PWDATA[0] , 
        \CoreAPB3_0_APBmslave0_PWDATA[1] , 
        \CoreAPB3_0_APBmslave0_PWDATA[2] , 
        \CoreAPB3_0_APBmslave0_PWDATA[3] , 
        \CoreAPB3_0_APBmslave0_PWDATA[4] , 
        \CoreAPB3_0_APBmslave0_PWDATA[5] , 
        \CoreAPB3_0_APBmslave0_PWDATA[6] , 
        \CoreAPB3_0_APBmslave0_PWDATA[7] , 
        \CoreAPB3_0_APBmslave0_PWDATA[8] , 
        \CoreAPB3_0_APBmslave0_PWDATA[9] , 
        \CoreAPB3_0_APBmslave0_PWDATA[10] , 
        \CoreAPB3_0_APBmslave0_PWDATA[11] , 
        \CoreAPB3_0_APBmslave0_PWDATA[12] , 
        \CoreAPB3_0_APBmslave0_PWDATA[13] , 
        \CoreAPB3_0_APBmslave0_PWDATA[14] , 
        \CoreAPB3_0_APBmslave0_PWDATA[15] , 
        \CoreAPB3_0_APBmslave0_PWDATA[16] , 
        \CoreAPB3_0_APBmslave0_PWDATA[17] , 
        \CoreAPB3_0_APBmslave0_PWDATA[18] , 
        \CoreAPB3_0_APBmslave0_PWDATA[19] , 
        \CoreAPB3_0_APBmslave0_PWDATA[20] , 
        \CoreAPB3_0_APBmslave0_PWDATA[21] , 
        \CoreAPB3_0_APBmslave0_PWDATA[22] , 
        \CoreAPB3_0_APBmslave0_PWDATA[23] , 
        \CoreAPB3_0_APBmslave0_PWDATA[24] , 
        \CoreAPB3_0_APBmslave0_PWDATA[25] , 
        \CoreAPB3_0_APBmslave0_PWDATA[26] , 
        \CoreAPB3_0_APBmslave0_PWDATA[27] , 
        \CoreAPB3_0_APBmslave0_PWDATA[28] , 
        \CoreAPB3_0_APBmslave0_PWDATA[29] , 
        \CoreAPB3_0_APBmslave0_PWDATA[30] , 
        \CoreAPB3_0_APBmslave0_PWDATA[31] , 
        CoreAPB3_0_APBmslave0_PWRITE, 
        \CoreAPB3_0_APBmslave0_PRDATA[0] , 
        \CoreAPB3_0_APBmslave0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave0_PRDATA[8] , 
        \CoreAPB3_0_APBmslave0_PRDATA[9] , 
        \CoreAPB3_0_APBmslave0_PRDATA[10] , 
        \CoreAPB3_0_APBmslave0_PRDATA[11] , 
        \CoreAPB3_0_APBmslave0_PRDATA[12] , 
        \CoreAPB3_0_APBmslave0_PRDATA[13] , 
        \CoreAPB3_0_APBmslave0_PRDATA[14] , 
        \CoreAPB3_0_APBmslave0_PRDATA[15] , 
        \CoreAPB3_0_APBmslave0_PRDATA[16] , 
        \CoreAPB3_0_APBmslave0_PRDATA[17] , 
        \CoreAPB3_0_APBmslave0_PRDATA[18] , 
        \CoreAPB3_0_APBmslave0_PRDATA[19] , 
        \CoreAPB3_0_APBmslave0_PRDATA[20] , 
        \CoreAPB3_0_APBmslave0_PRDATA[21] , 
        \CoreAPB3_0_APBmslave0_PRDATA[22] , 
        \CoreAPB3_0_APBmslave0_PRDATA[23] , 
        \CoreAPB3_0_APBmslave0_PRDATA[24] , 
        \CoreAPB3_0_APBmslave0_PRDATA[25] , 
        \CoreAPB3_0_APBmslave0_PRDATA[26] , 
        \CoreAPB3_0_APBmslave0_PRDATA[27] , 
        \CoreAPB3_0_APBmslave0_PRDATA[28] , 
        \CoreAPB3_0_APBmslave0_PRDATA[29] , 
        \CoreAPB3_0_APBmslave0_PRDATA[30] , 
        \CoreAPB3_0_APBmslave0_PRDATA[31] , 
        CoreAPB3_0_APBmslave0_PSELx, 
        \n64_magic_box_0.n64_serial_interface_0.fab_pin_1 , fab_pin_in, 
        x_servo_pwm_c, y_servo_pwm_c, CoreAPB3_0_APBmslave0_PSELx_0, 
        \servo_control_0/y_servo/time_count_41_0 , 
        \servo_control_0/y_servo/time_count[19]_net_1 , 
        \servo_control_0/y_servo/pw_1_sqmuxa , 
        \servo_control_0/y_servo/un1_time_countlto20_2 , 
        \servo_control_0/y_servo/time_count[20]_net_1 , 
        \servo_control_0/y_servo/un1_time_countlto20_1 , 
        \servo_control_0/y_servo/time_count[18]_net_1 , 
        \servo_control_0/y_servo/time_count[17]_net_1 , 
        \servo_control_0/y_servo/time_m6_0_a2_7 , 
        \servo_control_0/y_servo/time_m6_0_a2_2 , 
        \servo_control_0/y_servo/time_m6_0_a2_1 , 
        \servo_control_0/y_servo/time_count_c2 , 
        \servo_control_0/y_servo/time_m6_0_a2_6 , 
        \servo_control_0/y_servo/time_count[8]_net_1 , 
        \servo_control_0/y_servo/time_count[7]_net_1 , 
        \servo_control_0/y_servo/time_m6_0_a2_4 , 
        \servo_control_0/y_servo/time_count[5]_net_1 , 
        \servo_control_0/y_servo/time_count[4]_net_1 , 
        \servo_control_0/y_servo/time_count[9]_net_1 , 
        \servo_control_0/y_servo/time_count[10]_net_1 , 
        \servo_control_0/y_servo/time_count[11]_net_1 , 
        \servo_control_0/y_servo/time_count[3]_net_1 , 
        \servo_control_0/y_servo/time_count[6]_net_1 , 
        \servo_control_0/y_servo/un1_time_countlto14_2 , 
        \servo_control_0/y_servo/un1_time_countlto14_1 , 
        \servo_control_0/y_servo/time_count[13]_net_1 , 
        \servo_control_0/y_servo/time_count[14]_net_1 , 
        \servo_control_0/y_servo/time_count[12]_net_1 , 
        \servo_control_0/y_servo/un1_time_countlto9_0 , 
        \servo_control_0/y_servo/un1_time_count , 
        \servo_control_0/y_servo/time_count[16]_net_1 , 
        \servo_control_0/y_servo/un1_time_countlt16 , 
        \servo_control_0/y_servo/time_count_n19 , 
        \servo_control_0/y_servo/time_count_c18 , 
        \servo_control_0/y_servo/time_count_n18 , 
        \servo_control_0/y_servo/time_count_n18_tz , 
        \servo_control_0/y_servo/time_count_c16 , 
        \servo_control_0/y_servo/time_count_n17 , 
        \servo_control_0/y_servo/time_count_n15 , 
        \servo_control_0/y_servo/time_count_c14 , 
        \servo_control_0/y_servo/time_count[15]_net_1 , 
        \servo_control_0/y_servo/time_count_n13 , 
        \servo_control_0/y_servo/time_count_c12 , 
        \servo_control_0/y_servo/time_count_n11 , 
        \servo_control_0/y_servo/time_count_c10 , 
        \servo_control_0/y_servo/time_count_n10 , 
        \servo_control_0/y_servo/time_count_c9 , 
        \servo_control_0/y_servo/time_count_n9 , 
        \servo_control_0/y_servo/time_count_c8 , 
        \servo_control_0/y_servo/time_count_n8 , 
        \servo_control_0/y_servo/time_count_c7 , 
        \servo_control_0/y_servo/time_count_n7 , 
        \servo_control_0/y_servo/time_count_c6 , 
        \servo_control_0/y_servo/time_count_n6 , 
        \servo_control_0/y_servo/time_count_c5 , 
        \servo_control_0/y_servo/time_count_n5 , 
        \servo_control_0/y_servo/time_count_c4 , 
        \servo_control_0/y_servo/time_count_n4 , 
        \servo_control_0/y_servo/time_count_c3 , 
        \servo_control_0/y_servo/time_count_n3 , 
        \servo_control_0/y_servo/time_count_n20 , 
        \servo_control_0/y_servo/N_283 , 
        \servo_control_0/y_servo/time_count_n1 , 
        \servo_control_0/y_servo/time_count[1]_net_1 , 
        \servo_control_0/y_servo/time_count[0]_net_1 , 
        \servo_control_0/y_servo/time_count_n0 , 
        \servo_control_0/y_servo/un1_time_countlt14 , 
        \servo_control_0/y_servo/time_count[2]_net_1 , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] , 
        \servo_control_0/y_servo/N_41 , 
        \servo_control_0/y_servo/ACT_LT4_E[3] , 
        \servo_control_0/y_servo/ACT_LT4_E[10] , 
        \servo_control_0/y_servo/N_31 , \servo_control_0/y_servo/N_11 , 
        \servo_control_0/y_servo/time_count_n16 , 
        \servo_control_0/y_servo/time_count_n16_tz , 
        \servo_control_0/y_servo/time_count_n14 , 
        \servo_control_0/y_servo/time_count_n14_tz , 
        \servo_control_0/y_servo/time_count_n12 , 
        \servo_control_0/y_servo/time_count_n12_tz , 
        \servo_control_0/y_servo/time_count_n2 , 
        \servo_control_0/y_servo/time_count_n2_tz , 
        \servo_control_0/y_servo/N_322 , 
        \servo_control_0/y_servo/pwm_signal10 , 
        \servo_control_0/y_servo/pwm_signal_RNO_0_net_1 , 
        \servo_control_0/y_servo/DWACT_COMP0_E[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] , 
        \servo_control_0/x_servo/time_count_41_0 , 
        \servo_control_0/x_servo/time_count[19]_net_1 , 
        \servo_control_0/x_servo/pw_1_sqmuxa , 
        \servo_control_0/x_servo/un1_time_countlto20_2 , 
        \servo_control_0/x_servo/time_count[20]_net_1 , 
        \servo_control_0/x_servo/un1_time_countlto20_1 , 
        \servo_control_0/x_servo/time_count[18]_net_1 , 
        \servo_control_0/x_servo/time_count[17]_net_1 , 
        \servo_control_0/x_servo/time_m6_0_a2_7 , 
        \servo_control_0/x_servo/time_m6_0_a2_2 , 
        \servo_control_0/x_servo/time_m6_0_a2_1 , 
        \servo_control_0/x_servo/time_count_c2 , 
        \servo_control_0/x_servo/time_m6_0_a2_6 , 
        \servo_control_0/x_servo/time_count[8]_net_1 , 
        \servo_control_0/x_servo/time_count[7]_net_1 , 
        \servo_control_0/x_servo/time_m6_0_a2_4 , 
        \servo_control_0/x_servo/time_count[5]_net_1 , 
        \servo_control_0/x_servo/time_count[4]_net_1 , 
        \servo_control_0/x_servo/time_count[9]_net_1 , 
        \servo_control_0/x_servo/time_count[10]_net_1 , 
        \servo_control_0/x_servo/time_count[11]_net_1 , 
        \servo_control_0/x_servo/time_count[3]_net_1 , 
        \servo_control_0/x_servo/time_count[6]_net_1 , 
        \servo_control_0/x_servo/un1_time_countlto14_2 , 
        \servo_control_0/x_servo/un1_time_countlto14_1 , 
        \servo_control_0/x_servo/time_count[13]_net_1 , 
        \servo_control_0/x_servo/time_count[14]_net_1 , 
        \servo_control_0/x_servo/time_count[12]_net_1 , 
        \servo_control_0/x_servo/un1_time_countlto9_0 , 
        \servo_control_0/x_servo/un1_time_count , 
        \servo_control_0/x_servo/time_count[16]_net_1 , 
        \servo_control_0/x_servo/un1_time_countlt16 , 
        \servo_control_0/x_servo/time_count_n19 , 
        \servo_control_0/x_servo/time_count_c18 , 
        \servo_control_0/x_servo/time_count_n18 , 
        \servo_control_0/x_servo/time_count_n18_tz , 
        \servo_control_0/x_servo/time_count_c16 , 
        \servo_control_0/x_servo/time_count_n17 , 
        \servo_control_0/x_servo/time_count_n15 , 
        \servo_control_0/x_servo/time_count_c14 , 
        \servo_control_0/x_servo/time_count[15]_net_1 , 
        \servo_control_0/x_servo/time_count_n13 , 
        \servo_control_0/x_servo/time_count_c12 , 
        \servo_control_0/x_servo/time_count_n11 , 
        \servo_control_0/x_servo/time_count_c10 , 
        \servo_control_0/x_servo/time_count_n10 , 
        \servo_control_0/x_servo/time_count_c9 , 
        \servo_control_0/x_servo/time_count_n9 , 
        \servo_control_0/x_servo/time_count_c8 , 
        \servo_control_0/x_servo/time_count_n8 , 
        \servo_control_0/x_servo/time_count_c7 , 
        \servo_control_0/x_servo/time_count_n7 , 
        \servo_control_0/x_servo/time_count_c6 , 
        \servo_control_0/x_servo/time_count_n6 , 
        \servo_control_0/x_servo/time_count_c5 , 
        \servo_control_0/x_servo/time_count_n5 , 
        \servo_control_0/x_servo/time_count_c4 , 
        \servo_control_0/x_servo/time_count_n4 , 
        \servo_control_0/x_servo/time_count_c3 , 
        \servo_control_0/x_servo/time_count_n3 , 
        \servo_control_0/x_servo/time_count_n20 , 
        \servo_control_0/x_servo/N_283 , 
        \servo_control_0/x_servo/time_count_n1 , 
        \servo_control_0/x_servo/time_count[1]_net_1 , 
        \servo_control_0/x_servo/time_count[0]_net_1 , 
        \servo_control_0/x_servo/time_count_n0 , 
        \servo_control_0/x_servo/un1_time_countlt14 , 
        \servo_control_0/x_servo/time_count[2]_net_1 , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] , 
        \servo_control_0/x_servo/N_41 , 
        \servo_control_0/x_servo/ACT_LT4_E[3] , 
        \servo_control_0/x_servo/ACT_LT4_E[10] , 
        \servo_control_0/x_servo/N_31 , \servo_control_0/x_servo/N_11 , 
        \servo_control_0/x_servo/time_count_n16 , 
        \servo_control_0/x_servo/time_count_n16_tz , 
        \servo_control_0/x_servo/time_count_n14 , 
        \servo_control_0/x_servo/time_count_n14_tz , 
        \servo_control_0/x_servo/time_count_n12 , 
        \servo_control_0/x_servo/time_count_n12_tz , 
        \servo_control_0/x_servo/time_count_n2 , 
        \servo_control_0/x_servo/time_count_n2_tz , 
        \servo_control_0/x_servo/N_322 , 
        \servo_control_0/x_servo/pwm_signal10 , 
        \servo_control_0/x_servo/pwm_signal_RNO_net_1 , 
        \servo_control_0/x_servo/DWACT_COMP0_E[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] , 
        \ants_master_MSS_0/MSS_UART_1_TXD_D , 
        \ants_master_MSS_0/MSS_UART_1_RXD_Y , 
        \ants_master_MSS_0/MSS_UART_0_TXD_D , 
        \ants_master_MSS_0/MSS_UART_0_RXD_Y , 
        \ants_master_MSS_0/MSS_SPI_0_SS_Y , 
        \ants_master_MSS_0/SPI0SSO_net_0[0] , 
        \ants_master_MSS_0/MSS_SPI_0_SS_E , 
        \ants_master_MSS_0/MSS_SPI_0_DO_D , 
        \ants_master_MSS_0/MSS_SPI_0_DO_E , 
        \ants_master_MSS_0/MSS_SPI_0_DI_Y , 
        \ants_master_MSS_0/MSS_SPI_0_CLK_Y , 
        \ants_master_MSS_0/MSS_SPI_0_CLK_D , 
        \ants_master_MSS_0/MSS_RESET_0_MSS_RESET_N_Y , 
        \ants_master_MSS_0/GPO_net_0[1] , 
        \ants_master_MSS_0/GPO_net_0[0] , 
        \ants_master_MSS_0/MSS_ADLIB_INST_EMCCLK , PLLEN_VCC, 
        GLMUXINT_GND, \ants_master_MSS_0/GLA0 , 
        \ants_master_MSS_0/MSS_CCC_0/N_CLKA_RCOSC , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[0] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[1] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[2] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[3] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[4] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[5] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[6] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[7] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[8] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[9] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[10] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[11] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[12] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[13] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[14] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[15] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[16] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[17] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[18] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[19] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[20] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[21] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[22] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[23] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[24] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[25] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[26] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[27] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[28] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[29] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[30] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data[31] , 
        \n64_magic_box_0/n64_apb_interface_0_controller_reset , 
        \n64_magic_box_0/n64_apb_interface_0_polling_enable , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module_active , 
        \n64_magic_box_0/n64_serial_interface_0/read_module_begin , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[4] , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[16]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0_0 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_11 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_6 , 
        \n64_magic_box_0/n64_serial_interface_0/N_8 , 
        \n64_magic_box_0/n64_serial_interface_0/N_12 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_8 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_5 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_7 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_3 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_o3_0_0 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/send_reset5 , 
        \n64_magic_box_0/n64_serial_interface_0/prev_reset_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[5] , 
        \n64_magic_box_0/n64_serial_interface_0/N_13 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[5] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[7] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[7] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[9] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[9] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[10] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[10] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[15] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[15] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[16] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[16] , 
        \n64_magic_box_0/n64_serial_interface_0/N_7 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/N_9_0 , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa , 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/send_reset_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/data_in_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[0] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[1] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[2] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[3] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[4] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[5] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[6] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[7] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[8] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[9] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[10] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[11] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[12] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[13] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[14] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[15] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[16] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[17] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[18] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[19] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[20] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[21] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[22] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[23] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[24] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[25] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[26] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[27] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[28] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[29] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[30] , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[31] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[1] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[2] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[3] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[4] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[6] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[8] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[11] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[12] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[13] , 
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[14] , 
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[0]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/N_2 , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[10] , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[9] , 
        \n64_magic_box_0/n64_serial_interface_0/N_3 , 
        \n64_magic_box_0/n64_serial_interface_0/N_4 , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[8] , 
        \n64_magic_box_0/n64_serial_interface_0/N_5 , 
        \n64_magic_box_0/n64_serial_interface_0/N_7_0 , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[5] , 
        \n64_magic_box_0/n64_serial_interface_0/N_8_0 , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[3] , 
        \n64_magic_box_0/n64_serial_interface_0/N_10 , 
        \n64_magic_box_0/n64_serial_interface_0/N_11 , 
        \n64_magic_box_0/n64_serial_interface_0/N_12_0 , 
        \n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[1] , 
        \n64_magic_box_0/n64_serial_interface_0/N_13_0 , 
        \n64_magic_box_0/n64_serial_interface_0/N_15 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_2 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_174 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_176 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_177 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_179 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_180 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_183 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_184 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_186 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_187 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_190 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_192 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_193 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_194 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_199 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_200 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_201 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_202 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_203 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_205 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_198 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_189 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_182 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_178 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_204 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_197 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_196 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_195 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_191 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_188 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_185 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_181 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_175 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3_tz , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n2 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_173 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_96 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_91 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_133 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_1_sqmuxa , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_19_0 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[7]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_4 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_2 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n2 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c2 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n4 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c4 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n6 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n7 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c6 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/N_57 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/N_58 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n8 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_2[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_1[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_3[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_2[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_11[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_TMP[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_12_2[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17lt8 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_0_sqmuxa , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[8] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[7] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[6] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[5] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7[5] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[4] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[2] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[0] , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/I_37 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[0]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_0_sqmuxa_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_5 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_3_0 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_4 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_2 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto7_0 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3_0 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt8 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt6 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_4 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_2 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3_tz , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_c1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n2 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto3 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_66 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[7]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_67 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_68 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_69 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[6]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_71 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_70 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lt7 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_121 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_84 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/I_33 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_4_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_13_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_4_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_11_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_12_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_1_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_0_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_9_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_7_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_12_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_1_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_0_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_9_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_11_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_7_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_10_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_5_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/write_3_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_6 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_3 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_5 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_0 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_4 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_26 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_6 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_3 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_5 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_4 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6 , 
        \n64_magic_box_0/n64_apb_interface_0/write_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/N_109 , 
        \n64_magic_box_0/n64_apb_interface_0/N_110 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_net_1 , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0CTSnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0DSRnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0RTSnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0DTRnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0RInINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0DCDnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1CTSnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DSRnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1RInINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DCDnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0BCLKINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1BCLKINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1RTSnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DTRnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/TXEVINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/RXEVINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/VRONINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CALIBININT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CALIBOUTINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPREADYINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPSLVERRINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPSELINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPENABLEINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWRITEINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPSELINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPENABLEINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWRITEINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPREADYINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPSLVERRINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SLEEPINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/M2FRESETnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/WDINTINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABINTINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/F2MRESETnINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL0INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL1INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL2INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL0ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL1ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL2ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL3INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL4INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL5INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL3ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL4ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL5ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL6INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL7INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL6ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL7ENINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP0INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP1INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP2INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP3INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP4INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP5INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD0DINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD1DINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP6INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP7INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABACETRIGINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/VCC15GOODINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/VCC33GOODINT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/PUFABnINT_NET , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDIN_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SCLK_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLA_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/LOCK_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKB_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLB_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YB_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/MODE_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKC_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLC_INT , 
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YC_INT , 
        \x_servo_pwm_pad/U0/NET1 , \x_servo_pwm_pad/U0/NET2 , 
        \fab_pin_pad/U0/NET1 , \fab_pin_pad/U0/NET2 , 
        \fab_pin_pad/U0/NET3 , \y_servo_pwm_pad/U0/NET1 , 
        \y_servo_pwm_pad/U0/NET2 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GLMUXINT_GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign PLLEN_VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    OR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_11  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto3 )
        );
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_23  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_10 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[8] ));
    NOR3C \servo_control_0/y_servo/time_count_RNIC9V63[14]  (.A(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c12 ), .C(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c14 ));
    DFN1 \servo_control_0/x_servo/time_count[3]  (.D(
        \servo_control_0/x_servo/time_count_n3 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[3]_net_1 ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNIQSGC[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_3 )
        );
    IOPAD_TRI \ants_master_MSS_0/MSS_UART_1_TXD  (.D(
        \ants_master_MSS_0/MSS_UART_1_TXD_D ), .E(PLLEN_VCC), .PAD(
        UART_1_TXD));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid_RNO_1  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_5 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_57  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[29] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[28] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[30] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[28] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[29] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[30] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[29]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[28]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[30]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[28]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[29]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[30]INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_77  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET )
        , .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_3  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[3] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[3] ));
    NOR3C \servo_control_0/x_servo/time_count_RNI07N51[2]  (.A(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c2 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_179 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[26]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_200 ));
    NOR3A \servo_control_0/y_servo/pwm_signal10_0_I_75  (.A(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ));
    XA1 \servo_control_0/y_servo/time_count_RNO[3]  (.A(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c2 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n3 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_1  (
        .A(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_5 ), 
        .B(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_4 ), 
        .C(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_6 ), 
        .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable7 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_36  (.PIN4(GLMUXINT_GND)
        , .PIN5(PLLEN_VCC), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[0] ), .PIN1(), .PIN2()
        , .PIN3(\CoreAPB3_0_APBmslave0_PWDATA[0] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPSLVERRINT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPREADYINT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[0]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[18]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[19]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[0]INT_NET ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[5]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[5] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[6]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_180 ));
    DFN1 \servo_control_0/x_servo/time_count[10]  (.D(
        \servo_control_0/x_servo/time_count_n10 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[10]_net_1 ));
    AX1C \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_35  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[12] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[16]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[16] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[16] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_95  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/I2C1BCLKINT_NET ), 
        .PIN6INT(\ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET )
        , .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET ));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[2]  (.A(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n2_tz ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[14]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_188 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[21]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[21] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[21] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_25  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[25] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[25] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[20]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[20] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[20] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_28  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[28] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[28] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[12]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_186 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[12] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[14]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[14] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[24]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[24] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[24] ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_22  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[3] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_10 ));
    OA1 \servo_control_0/x_servo/pwm_signal10_0_I_106  (.A(
        \servo_control_0/x_servo/N_31 ), .B(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] ));
    AND2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_53  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_1_1[0] )
        );
    XA1 \servo_control_0/y_servo/time_count_RNO[8]  (.A(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c7 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n8 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[9]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_183 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[15]  (.A(
        \servo_control_0/x_servo/time_count_c14 ), .B(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n15 ));
    NOR3A \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_9  (
        .A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3_net_1 )
        , .B(\CoreAPB3_0_APBmslave0_PWDATA[26] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[27] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_9_net_1 )
        );
    NOR3A \servo_control_0/x_servo/pwm_signal10_0_I_83  (.A(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        );
    AO1 \servo_control_0/y_servo/pwm_signal10_0_I_139  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ), 
        .B(\servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] ), 
        .C(\servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/y_servo/DWACT_COMP0_E[2] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[5]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[5] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[5] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit  
        (.D(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ));
    OR3B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_1  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt6 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt8 )
        );
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/N_58 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_9  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1RInINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DSRnINT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DCDnINT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET ));
    NOR3C \servo_control_0/x_servo/time_count_RNIMDJA5[12]  (.A(
        \servo_control_0/x_servo/time_m6_0_a2_6 ), .B(
        \servo_control_0/x_servo/time_m6_0_a2_7 ), .C(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c12 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[5]  (.A(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c4 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n5 ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_1  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[29] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[28] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_1_net_1 )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNIPJUA3[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_8 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_7 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_11 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[4]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[4] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[4] ));
    AO1B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_5  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto7_0 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lt7 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6 )
        );
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[7] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        );
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_1  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[1] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[1] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[7]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[7]_net_1 )
        );
    NOR2B \servo_control_0/x_servo/time_count_RNO[12]  (.A(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n12_tz ), .Y(
        \servo_control_0/x_servo/time_count_n12 ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNO[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[0]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_0_sqmuxa )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[0] )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_178 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_92  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/N_58 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_51  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_1_1[0] )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_2[0] )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[16]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_190 ));
    NOR3A \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_2  (
        .A(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_0 ), 
        .B(\CoreAPB3_0_APBmslave0_PWDATA[6] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[7] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_5 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_173 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_94  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/I2C0BCLKINT_NET ), 
        .PIN6INT(\ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET )
        , .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_88  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[23]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[22]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[24]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[22]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[23]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[24]INT_NET ));
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNO_0[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_c1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3_tz )
        );
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[16]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[16] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[16] ));
    IOPAD_TRI \ants_master_MSS_0/MSS_GPIO_0_GPIO_1_OUT  (.D(
        \ants_master_MSS_0/GPO_net_0[1] ), .E(PLLEN_VCC), .PAD(
        GPIO_1_OUT));
    NOR3C \servo_control_0/y_servo/time_count_RNIP11M3[16]  (.A(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c14 ), .C(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c16 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[18]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_192 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[18] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_14  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[14] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[14] ));
    DFN1 \servo_control_0/x_servo/time_count[8]  (.D(
        \servo_control_0/x_servo/time_count_n8 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[8]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[11]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[11] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[11] ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_5  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[3] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[2] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_3 ));
    NOR3C \servo_control_0/x_servo/time_count_RNI8COS2[3]  (.A(
        \servo_control_0/x_servo/time_m6_0_a2_2 ), .B(
        \servo_control_0/x_servo/time_m6_0_a2_1 ), .C(
        \servo_control_0/x_servo/time_count_c2 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_7 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_39  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[8] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_4 ));
    OR2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_15  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_70 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n1 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        );
    NOR3A \servo_control_0/y_servo/pwm_signal10_0_I_83  (.A(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_91  (.PIN4(FAB_CLK), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET ), 
        .PIN5INT(), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[31]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[31]INT_NET ), 
        .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    AX1C \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_26  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[4] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[9] ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIJCR7[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_66  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL7ENINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL6ENINT_NET ), .PIN6INT()
        , .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL6INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL7INT_NET ), 
        .PIN3INT(GLMUXINT_GND));
    NOR3A \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_4  (
        .A(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_3 ), 
        .B(\CoreAPB3_0_APBmslave0_PWDATA[4] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[5] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_6 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in  
        (.D(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in_net_1 )
        );
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNO[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_121 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIE1NF[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_2 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_4 )
        );
    DFN1 \n64_magic_box_0/n64_serial_interface_0/write_module_begin  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_46  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(
        ants_master_MSS_0_M2F_RESET_N), .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[28]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[27]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[29]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[5]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/M2FRESETnINT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[6]INT_NET ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[16]  (.A(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c14 ), .C(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n16_tz ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_49  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_2[0] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_2[0] )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_3[0] )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNIMPPO5[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_4 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_5 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10 )
        );
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[5]  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[5] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[5] ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_27  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[4] ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_8_0 ));
    OR2 \servo_control_0/x_servo/pwm_signal10_0_I_88  (.A(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[3] ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_7  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[17] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[16] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_7_net_1 )
        );
    NOR3C \n64_magic_box_0/n64_apb_interface_0/write_12  (.A(
        \n64_magic_box_0/n64_apb_interface_0/write_1_net_1 ), .B(
        \n64_magic_box_0/n64_apb_interface_0/write_0_net_1 ), .C(
        \n64_magic_box_0/n64_apb_interface_0/write_9_net_1 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_12_net_1 ));
    NOR3C \servo_control_0/y_servo/time_count_RNIFQMF1[3]  (.A(
        \servo_control_0/y_servo/time_m6_0_a2_2 ), .B(
        \servo_control_0/y_servo/time_m6_0_a2_1 ), .C(
        \servo_control_0/y_servo/time_count_c2 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_7 ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNIGPS04[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 ));
    OR2 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid_RNIGM991_0  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_1_sqmuxa )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[27]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[27] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[27] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_23  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[23] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[23] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_17  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[17] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[17] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_177 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[3] )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[0]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[0] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[0] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_174 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[31]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[31] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[31] ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNO[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_58  (.PIN4(GLMUXINT_GND)
        , .PIN5(\ants_master_MSS_0_MSS_MASTER_APB_PRDATA[31] ), .PIN6(
        GLMUXINT_GND), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[31] ), 
        .PIN2(), .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[31]INT_NET ), 
        .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[31]INT_NET ), 
        .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_78  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET )
        , .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET ));
    NOR3A \n64_magic_box_0/n64_apb_interface_0/write_10  (.A(
        \n64_magic_box_0/n64_apb_interface_0/write_5_net_1 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[4] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_10_net_1 ));
    IOPAD_IN \ants_master_MSS_0/MSS_SPI_0_DI  (.PAD(SPI_0_DI), .Y(
        \ants_master_MSS_0/MSS_SPI_0_DI_Y ));
    OR3B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNIEVS52[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17lt8 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNI5IIN[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c4 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c5 )
        );
    AO1 \servo_control_0/y_servo/pwm_signal10_0_I_140  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ), 
        .B(\servo_control_0/y_servo/DWACT_COMP0_E[2] ), .C(
        \servo_control_0/y_servo/N_41 ), .Y(
        \servo_control_0/y_servo/pwm_signal10 ));
    AO1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read_RNO  
        (.A(\n64_magic_box_0/n64_serial_interface_0/read_module_begin )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read_RNO_net_1 )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[2]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[2] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[2] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIPIR7[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[7]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_2 )
        );
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c6 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_19_0 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/N_57 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n8 )
        );
    AOI1 \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[0]  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_7 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[3]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[3] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[3] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[4]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[4] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[4] ));
    NOR3C \servo_control_0/y_servo/time_count_RNI3LTN2[12]  (.A(
        \servo_control_0/y_servo/time_m6_0_a2_6 ), .B(
        \servo_control_0/y_servo/time_m6_0_a2_7 ), .C(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c12 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[18]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[18] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[18] ));
    RCOSC \ants_master_MSS_0/MSS_CCC_0/I_RCOSC  (.CLKOUT(
        \ants_master_MSS_0/MSS_CCC_0/N_CLKA_RCOSC ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_45  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[10] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_2 ));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[14]  (.A(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c12 ), .C(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n14_tz ));
    OA1 \servo_control_0/x_servo/pwm_signal10_0_I_137  (.A(
        \servo_control_0/x_servo/N_11 ), .B(
        \servo_control_0/x_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ));
    DFN1E0 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_121 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        );
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_18  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[9]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[9] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_30  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[5] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ));
    DFN1 \servo_control_0/y_servo/time_count[12]  (.D(
        \servo_control_0/y_servo/time_count_n12 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[12]_net_1 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[19]  (.A(
        \servo_control_0/y_servo/time_count_c18 ), .B(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n19 ));
    AO1A \servo_control_0/y_servo/time_count_RNI11E63[16]  (.A(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .B(
        \servo_control_0/y_servo/un1_time_countlt16 ), .C(
        \servo_control_0/y_servo/un1_time_countlto20_2 ), .Y(
        \servo_control_0/y_servo/un1_time_count ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[1]  
        (.D(\n64_magic_box_0/n64_serial_interface_0/write_module/I_33 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[1]_net_1 )
        );
    NOR3C \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_1  
        (.A(\n64_magic_box_0/n64_apb_interface_0/polling_enable6_5 ), 
        .B(\n64_magic_box_0/n64_apb_interface_0/polling_enable6_4 ), 
        .C(\n64_magic_box_0/n64_apb_interface_0/polling_enable6_6 ), 
        .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable6 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNIBD1V[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_205 ));
    OA1 \servo_control_0/y_servo/pwm_signal10_0_I_106  (.A(
        \servo_control_0/y_servo/N_31 ), .B(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] ));
    NOR2 \servo_control_0/x_servo/time_count_RNI36ST[11]  (.A(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto14_1 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[17]  (.A(
        \servo_control_0/x_servo/time_count_c16 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n17 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[10]  (.A(
        \servo_control_0/y_servo/time_count_c9 ), .B(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n10 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNI72N9_0  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/read_module_begin ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        );
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[10]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[10] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[10] ));
    NOR2B \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_5  
        (.A(\CoreAPB3_0_APBmslave0_PWDATA[3] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[2] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_3 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[1]  (.A(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n1 ));
    DFN1 \servo_control_0/y_servo/time_count[19]  (.D(
        \servo_control_0/y_servo/time_count_n19 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[19]_net_1 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIGE08[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_5 )
        );
    NOR3B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNINHTN1[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_2 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_4 )
        );
    IOPAD_TRI \ants_master_MSS_0/MSS_GPIO_0_GPIO_0_OUT  (.D(
        \ants_master_MSS_0/GPO_net_0[0] ), .E(PLLEN_VCC), .PAD(
        GPIO_0_OUT));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI56F6_0[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        );
    NOR3A \servo_control_0/y_servo/pwm_signal10_0_I_76  (.A(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        );
    OR3 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNII4VA1[13]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_o3_0_0 )
        , .Y(\n64_magic_box_0/n64_serial_interface_0/N_12 ));
    OR3B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_4  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_2 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_4 )
        );
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[9]  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[9] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[9] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[23]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_197 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_8  (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_15 ));
    NOR2B \servo_control_0/y_servo/time_count_RNILLND1[6]  (.A(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c5 ), .Y(
        \servo_control_0/y_servo/time_count_c6 ));
    AND2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_21  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[3] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[15]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[15] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 ));
    IOBI_IB_OB_EB \fab_pin_pad/U0/U1  (.D(GLMUXINT_GND), .E(
        \n64_magic_box_0.n64_serial_interface_0.fab_pin_1 ), .YIN(
        \fab_pin_pad/U0/NET3 ), .DOUT(\fab_pin_pad/U0/NET1 ), .EOUT(
        \fab_pin_pad/U0/NET2 ), .Y(fab_pin_in));
    OR2 \servo_control_0/y_servo/pwm_signal10_0_I_88  (.A(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[3] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_86  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[17]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[16]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[18]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[16]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[17]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[18]INT_NET ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[12]  (.A(
        \servo_control_0/y_servo/time_m6_0_a2_6 ), .B(
        \servo_control_0/y_servo/time_m6_0_a2_7 ), .C(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n12_tz ));
    OA1 \servo_control_0/y_servo/pwm_signal10_0_I_137  (.A(
        \servo_control_0/y_servo/N_11 ), .B(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ));
    NOR3A \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_4  (
        .A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1_net_1 )
        , .B(\CoreAPB3_0_APBmslave0_PWDATA[14] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[15] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_4_net_1 )
        );
    AX1C \servo_control_0/x_servo/time_count_RNO[20]  (.A(
        \servo_control_0/x_servo/time_count_c18 ), .B(
        \servo_control_0/x_servo/time_count_41_0 ), .C(
        \servo_control_0/x_servo/N_283 ), .Y(
        \servo_control_0/x_servo/time_count_n20 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO[18]  (.A(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n18_tz ), .Y(
        \servo_control_0/x_servo/time_count_n18 ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[14]  (.A(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n14_tz ), .Y(
        \servo_control_0/y_servo/time_count_n14 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[6]  (.A(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c5 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n6 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[4] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[17]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_191 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[17] ));
    NOR3A \servo_control_0/x_servo/pwm_signal10_0_I_75  (.A(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/write_module/enabled  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        );
    AND2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_1  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[0]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_TMP[0] )
        );
    NOR3B \servo_control_0/y_servo/pwm_signal10_0_I_115  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
        , .B(\servo_control_0/y_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ));
    DFN1 \servo_control_0/x_servo/time_count[12]  (.D(
        \servo_control_0/x_servo/time_count_n12 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[12]_net_1 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNO[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7[5] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[5] )
        );
    NOR2B \servo_control_0/x_servo/time_count_RNI715P[3]  (.A(
        \servo_control_0/x_servo/time_count[3]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[6]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[6] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_176 ));
    NOR3A \servo_control_0/x_servo/pwm_signal10_0_I_76  (.A(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/polling_enable  (.D(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_apb_interface_0_polling_enable ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNIOG47[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_5 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_8 )
        );
    NOR3C \servo_control_0/y_servo/time_count_RNI33JJ[2]  (.A(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c2 ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNO[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_12_2[0] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[7] )
        );
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .C(\n64_magic_box_0/n64_serial_interface_0/read_module/N_96 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[4]_net_1 )
        );
    XA1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c4 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n5 )
        );
    XA1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c6 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[7]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n7 )
        );
    OR2 \servo_control_0/x_servo/pwm_signal10_0_I_62  (.A(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .Y(
        \servo_control_0/x_servo/N_41 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[13]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_187 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_176 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[2] )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[18]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[18] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[18] ));
    XA1 \servo_control_0/y_servo/time_count_RNO[9]  (.A(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c8 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n9 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/write  (.A(
        \n64_magic_box_0/n64_apb_interface_0/write_11_net_1 ), .B(
        \n64_magic_box_0/n64_apb_interface_0/write_10_net_1 ), .C(
        \n64_magic_box_0/n64_apb_interface_0/write_12_net_1 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_net_1 ));
    DFN1 \servo_control_0/y_servo/time_count[5]  (.D(
        \servo_control_0/y_servo/time_count_n5 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[5]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[3]_net_1 )
        );
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_33  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[13]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[13] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[13] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_56  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[26] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[25] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[27] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[25] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[26] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[27] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[26]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[25]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[27]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[25]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[26]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[27]INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_76  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET )
        , .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_2  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[2] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[2] ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[5] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        );
    XA1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n4 )
        );
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[8]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[8] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ));
    DFN1 \servo_control_0/y_servo/time_count[18]  (.D(
        \servo_control_0/y_servo/time_count_n18 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[18]_net_1 ));
    OA1B \servo_control_0/y_servo/pwm_signal10_0_I_95  (.A(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/y_servo/ACT_LT4_E[3] ), .C(
        \servo_control_0/y_servo/ACT_LT4_E[10] ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[13]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_187 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[13] ));
    NOR2B \n64_magic_box_0/n64_apb_interface_0/write_7  (.A(
        CoreAPB3_0_APBmslave0_PSELx_0), .B(
        CoreAPB3_0_APBmslave0_PENABLE), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_7_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_20  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[0]INT_NET ), .PIN6INT(), 
        .PIN1INT(), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    NOR2B \servo_control_0/y_servo/pwm_signal_RNO  (.A(
        \servo_control_0/y_servo/N_322 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pwm_signal_RNO_0_net_1 ));
    DFN1 \servo_control_0/y_servo/time_count[7]  (.D(
        \servo_control_0/y_servo/time_count_n7 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[7]_net_1 ));
    AND2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_15  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[1] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[4]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[4] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[1]  (.D(
        \servo_control_0/x_servo/time_count_n1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[1]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[28]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_202 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n3 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[3]_net_1 )
        );
    XA1 \servo_control_0/y_servo/time_count_RNO[7]  (.A(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c6 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n7 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[1]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[1]_net_1 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[12]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[12] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[12] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_24  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[24] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[24] ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_32  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_7_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[11] ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_7  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto7_0 )
        );
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_40  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_4 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[14] ));
    DFN1 \servo_control_0/x_servo/time_count[6]  (.D(
        \servo_control_0/x_servo/time_count_n6 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[6]_net_1 ));
    NOR3C \servo_control_0/x_servo/time_count_RNISTSU1[7]  (.A(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/x_servo/time_m6_0_a2_4 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_6 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[20]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_194 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n5 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 )
        );
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_4  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[4] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[4] ));
    NOR3C \servo_control_0/y_servo/time_count_RNIAU254[17]  (.A(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c16 ), .C(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c18 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_30  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[30] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[30] ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_12  
        (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_1_net_1 )
        , .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_0_net_1 )
        , .C(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_9_net_1 )
        , .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_12_net_1 )
        );
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[12]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[12] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/read_module/working  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[2]_net_1 )
        );
    DFN1 \servo_control_0/x_servo/time_count[4]  (.D(
        \servo_control_0/x_servo/time_count_n4 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[4]_net_1 ));
    IOPAD_BI \ants_master_MSS_0/MSS_SPI_0_SS  (.D(
        \ants_master_MSS_0/SPI0SSO_net_0[0] ), .E(
        \ants_master_MSS_0/MSS_SPI_0_SS_E ), .Y(
        \ants_master_MSS_0/MSS_SPI_0_SS_Y ), .PAD(SPI_0_SS));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO_0[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .Y(\n64_magic_box_0/n64_serial_interface_0/read_module/N_91 )
        );
    XA1 \servo_control_0/y_servo/time_count_RNO[13]  (.A(
        \servo_control_0/y_servo/time_count_c12 ), .B(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n13 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_27  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[27] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[27] ));
    IOPAD_TRI \x_servo_pwm_pad/U0/U0  (.D(\x_servo_pwm_pad/U0/NET1 ), 
        .E(\x_servo_pwm_pad/U0/NET2 ), .PAD(x_servo_pwm));
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[15]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[15] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[15] ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[16]  (.A(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n16_tz ), .Y(
        \servo_control_0/y_servo/time_count_n16 ));
    AND3 \servo_control_0/x_servo/pwm_signal10_0_I_113  (.A(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[9]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[9] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[9] ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid_RNO_2  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[3]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_3 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[3]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[3] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[3] ));
    DFN1 \servo_control_0/y_servo/time_count[14]  (.D(
        \servo_control_0/y_servo/time_count_n14 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[14]_net_1 ));
    DFN1 \servo_control_0/y_servo/time_count[16]  (.D(
        \servo_control_0/y_servo/time_count_n16 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[16]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[18]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_192 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_19  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_11 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[6] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        );
    OR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid_RNIGM991  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_1_sqmuxa )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ));
    IOPAD_IN \ants_master_MSS_0/MSS_UART_1_RXD  (.PAD(UART_1_RXD), .Y(
        \ants_master_MSS_0/MSS_UART_1_RXD_Y ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_2  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[17]INT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[16]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[18]INT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[16]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[17]INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[18]INT_NET ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/write_3  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[6] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[5] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_3_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[19]  (.D(
        \servo_control_0/x_servo/time_count_n19 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[19]_net_1 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_36  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_5 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[0] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[0] ));
    NOR2B \servo_control_0/x_servo/time_count_RNI14ST[11]  (.A(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_2 ));
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_14  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[6]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[2]_net_1 )
        , .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_69 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[11]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_185 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[11] ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNO[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3_tz )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3 )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[0]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_174 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[0] )
        );
    DFN1 \n64_magic_box_0/n64_serial_interface_0/sync_reg[0]  (.D(
        fab_pin_in), .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[0]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[29]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_203 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[16]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[16] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[16] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_10  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[10] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[10] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_19  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[19] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[19] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[10]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_184 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[31]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_205 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[31] ));
    AO1 \servo_control_0/x_servo/pwm_signal10_0_I_107  (.A(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ), 
        .B(\servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] ), 
        .C(\servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_9  (.A(
        \n64_magic_box_0/n64_serial_interface_0/N_15 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[3] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_12  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[12] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[12] ));
    AO1C 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_8  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto3 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lt7 )
        );
    XA1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n2 )
        );
    MSS_CCC_GL_IF \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_TILE3  (
        .PIN2(GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), 
        .PIN1(), .PIN5(), .PIN2INT(), .PIN3INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .PIN4INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .PIN1INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .PIN5INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLC_INT ));
    IOPAD_IN \ants_master_MSS_0/MSS_UART_0_RXD  (.PAD(UART_0_RXD), .Y(
        \ants_master_MSS_0/MSS_UART_0_RXD_Y ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_37  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_5 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[13] ));
    NOR3C \servo_control_0/x_servo/time_count_RNITNF86[14]  (.A(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c12 ), .C(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c14 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[4]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[4]_net_1 )
        );
    NOR3C \servo_control_0/y_servo/time_count_RNI12M01[7]  (.A(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/y_servo/time_m6_0_a2_4 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_6 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[14]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_188 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[14] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[24]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[24] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[24] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[20]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_194 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[20] ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3_tz )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3 ));
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_2  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_4 )
        , .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/write_module/N_84 ));
    AO1 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNICQKU1[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_9_0 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/N_12 ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/N_13 ));
    XA1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n1 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[27]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[27] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[27] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[19]  (.A(
        \servo_control_0/x_servo/time_count_c18 ), .B(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n19 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[26]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_200 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[26] ));
    OA1C \servo_control_0/y_servo/pwm_signal_RNO_0  (.A(
        \servo_control_0/y_servo/un1_time_count ), .B(y_servo_pwm_c), 
        .C(\servo_control_0/y_servo/pwm_signal10 ), .Y(
        \servo_control_0/y_servo/N_322 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_42  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_2[0] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_1_1[0] )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_11[0] )
        );
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_43  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_3 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[15] ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI12F6_2[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[5]_net_1 )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[15]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[15] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[15] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]  
        (.D(\n64_magic_box_0/n64_serial_interface_0/read_module/N_173 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[19]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[19] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[19] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_21  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[1]INT_NET ), .PIN6INT(), 
        .PIN1INT(), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO_0[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .Y(\n64_magic_box_0/n64_serial_interface_0/read_module/N_96 )
        );
    AX1C \servo_control_0/y_servo/time_count_RNO[20]  (.A(
        \servo_control_0/y_servo/time_count_c18 ), .B(
        \servo_control_0/y_servo/time_count_41_0 ), .C(
        \servo_control_0/y_servo/N_283 ), .Y(
        \servo_control_0/y_servo/time_count_n20 ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNIQSGC[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_1 )
        );
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNI1TFT[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3_0 )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_182 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[1]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[1]_net_1 )
        );
    NOR3A \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_11  
        (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_7_net_1 )
        , .B(\CoreAPB3_0_APBmslave0_PWDATA[18] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[19] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_11_net_1 )
        );
    NOR2 \servo_control_0/x_servo/pwm_signal10_0_I_94  (.A(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[10] ));
    DFN1 \servo_control_0/y_servo/time_count[0]  (.D(
        \servo_control_0/y_servo/time_count_n0 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[0]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[0]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[0] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[0] ));
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .C(\n64_magic_box_0/n64_serial_interface_0/read_module/N_91 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n1 ));
    IOTRI_OB_EB \x_servo_pwm_pad/U0/U1  (.D(x_servo_pwm_c), .E(
        PLLEN_VCC), .DOUT(\x_servo_pwm_pad/U0/NET1 ), .EOUT(
        \x_servo_pwm_pad/U0/NET2 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_10  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[19]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_193 ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/write_0  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[12] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[11] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_0_net_1 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_24  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[3] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[4] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[11]  (.A(
        \servo_control_0/x_servo/time_count_c10 ), .B(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n11 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNIVQFT[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_c1 )
        );
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_9  
        (.A(\n64_magic_box_0/n64_serial_interface_0/write_module/N_66 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_67 ), 
        .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_68 ));
    IOPAD_TRI \y_servo_pwm_pad/U0/U0  (.D(\y_servo_pwm_pad/U0/NET1 ), 
        .E(\y_servo_pwm_pad/U0/NET2 ), .PAD(y_servo_pwm));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]  
        (.D(\n64_magic_box_0/n64_serial_interface_0/write_module/I_37 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]_net_1 )
        );
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_42  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[9] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_3 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[7]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[7] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[25]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[25] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[25] ));
    NOR2B \servo_control_0/x_servo/time_count_RNIRG6H3[8]  (.A(
        \servo_control_0/x_servo/time_count_c7 ), .B(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c8 ));
    NOR2A \servo_control_0/x_servo/time_count_RNO[0]  (.A(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n0 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[5]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[5] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[5] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n2 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        );
    DFN1 \servo_control_0/y_servo/time_count[17]  (.D(
        \servo_control_0/y_servo/time_count_n17 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[17]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid_RNO  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_2 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_5 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5 )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_179 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[5] )
        );
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[8] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]_net_1 )
        );
    DFN1 \servo_control_0/y_servo/time_count[13]  (.D(
        \servo_control_0/y_servo/time_count_n13 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[13]_net_1 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[15]  (.A(
        \servo_control_0/y_servo/time_count_c14 ), .B(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n15 ));
    AO1 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNO  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/read_module_begin ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNO_net_1 )
        );
    AOI1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNIV5EQ  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_2 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index5 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_1_sqmuxa )
        );
    DFN1 \servo_control_0/x_servo/time_count[2]  (.D(
        \servo_control_0/x_servo/time_count_n2 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[2]_net_1 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_5  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[5] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[5] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[10]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[10] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[10] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[13]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[13] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[13] ));
    NOR2B \servo_control_0/y_servo/time_count_RNO_0[11]  (.A(
        \servo_control_0/y_servo/time_count_c9 ), .B(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c10 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[1]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[1] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[1] ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_31  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_7_0 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[10]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[10] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[2] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_33  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PADDR[10] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PADDR[11] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[10]INT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[9]INT_NET )
        , .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[11]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[9]INT_NET )
        , .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[10]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[11]INT_NET ));
    NOR3B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIOEPB[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[3]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_3 )
        );
    IOPAD_BI \ants_master_MSS_0/MSS_SPI_0_CLK  (.D(
        \ants_master_MSS_0/MSS_SPI_0_CLK_D ), .E(
        \ants_master_MSS_0/MSS_SPI_0_SS_E ), .Y(
        \ants_master_MSS_0/MSS_SPI_0_CLK_Y ), .PAD(SPI_0_CLK));
    OA1B \servo_control_0/x_servo/pwm_signal10_0_I_95  (.A(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/x_servo/ACT_LT4_E[3] ), .C(
        \servo_control_0/x_servo/ACT_LT4_E[10] ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ));
    NOR3A \n64_magic_box_0/n64_apb_interface_0/write_9  (.A(
        \n64_magic_box_0/n64_apb_interface_0/write_3_net_1 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[7] ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_9_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[10]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[10] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[10] ));
    DFN1 \servo_control_0/y_servo/time_count[3]  (.D(
        \servo_control_0/y_servo/time_count_n3 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[3]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_39  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[8] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[7] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[9] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[7] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[8] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[9] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[8]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[7]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[9]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[7]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[8]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[9]INT_NET ));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[16]  (.A(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c14 ), .C(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n16_tz ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNIDQUR[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_2 )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[28]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[28] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[28] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n2 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]_net_1 )
        );
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_31  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[31] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[31] ));
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_12  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[7]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[3]_net_1 )
        , .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_66 ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/write_5  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[2] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[1] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_5_net_1 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[4]  (.A(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c3 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n4 ));
    MSS_CCC_IF \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_TILE0  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN2INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), 
        .PIN3INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), 
        .PIN4INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), 
        .PIN1INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[29]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_203 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[29] ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_46  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_2 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[16]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[16] ));
    DFN1 \servo_control_0/x_servo/time_count[9]  (.D(
        \servo_control_0/x_servo/time_count_n9 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[9]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[25]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_199 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[25] ));
    IOTRI_OB_EB \y_servo_pwm_pad/U0/U1  (.D(y_servo_pwm_c), .E(
        PLLEN_VCC), .DOUT(\y_servo_pwm_pad/U0/NET1 ), .EOUT(
        \y_servo_pwm_pad/U0/NET2 ));
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO_0[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3_tz )
        );
    XA1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[6]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c5 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n6 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[31]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[31] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[31] ));
    DFN1 \servo_control_0/x_servo/time_count[14]  (.D(
        \servo_control_0/x_servo/time_count_n14 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[14]_net_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNIKSJ43[7]  (.A(
        \servo_control_0/x_servo/time_count_c6 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c7 ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[2]  (.A(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n2_tz ));
    AO1C \servo_control_0/y_servo/time_count_RNI9F4R[8]  (.A(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/y_servo/un1_time_countlto9_0 ), .C(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlt14 ));
    AO1 \servo_control_0/y_servo/pwm_signal10_0_I_107  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ), 
        .B(\servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] ), 
        .C(\servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[12]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[12] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[12] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNIVHPI  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        );
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI56F6_1[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[6]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[6] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[6] ));
    NOR2B \servo_control_0/x_servo/time_count_RNO[2]  (.A(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n2_tz ), .Y(
        \servo_control_0/x_servo/time_count_n2 ));
    NOR2B \servo_control_0/x_servo/time_count_RNIEJ3E6[16]  (.A(
        \servo_control_0/x_servo/un1_time_count ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_1_sqmuxa ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_13  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_13_0 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[0]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/N_7 ), .CLK(FAB_CLK), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/send_reset  (.D(
        \n64_magic_box_0/n64_serial_interface_0/send_reset5 ), .CLK(
        FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/send_reset_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_43  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_1[0] )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_2[0] )
        );
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_45  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_11[0] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_12_2[0] )
        );
    XA1 \servo_control_0/y_servo/time_count_RNO[1]  (.A(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n1 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_11  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[11] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[11] ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNO[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_2[0] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[4] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[6]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[6]_net_1 )
        );
    AO1 \servo_control_0/x_servo/pwm_signal10_0_I_138  (.A(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ), 
        .B(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ), 
        .C(\servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_0  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[31] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[30] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_0_net_1 )
        );
    MSS_CCC_GL_IF \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_TILE2  (
        .PIN2(GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), 
        .PIN1(), .PIN5(), .PIN2INT(), .PIN3INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKB_INT ), .PIN4INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/MODE_INT ), .PIN1INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YB_INT ), .PIN5INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLB_INT ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[11] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[10] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2_net_1 )
        );
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_16  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[16] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[16] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[22]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_196 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[22] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_63  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/VCC15GOODINT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/VCC33GOODINT_NET ), .PIN3INT(
        GLMUXINT_GND));
    AX1C \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_12  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[4] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_8  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[8] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[8] ));
    OA1B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNO  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNO_net_1 )
        );
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[3]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[3] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n8 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_43  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[19]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[18]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[20]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPREADYINT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPSLVERRINT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET ));
    DFN1 \servo_control_0/y_servo/time_count[8]  (.D(
        \servo_control_0/y_servo/time_count_n8 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[8]_net_1 ));
    NOR2B \servo_control_0/y_servo/time_count_RNI45QQ1[8]  (.A(
        \servo_control_0/y_servo/time_count_c7 ), .B(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c8 ));
    DFN1 \servo_control_0/y_servo/pwm_signal  (.D(
        \servo_control_0/y_servo/pwm_signal_RNO_0_net_1 ), .CLK(
        FAB_CLK), .Q(y_servo_pwm_c));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_49  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[5]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[4]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[6]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[4]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[5]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[6]INT_NET ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_20  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[20] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[20] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_29  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[29] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[29] ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNO[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_c1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n2 )
        );
    OA1C \servo_control_0/x_servo/pwm_signal_RNO_0  (.A(
        \servo_control_0/x_servo/un1_time_count ), .B(x_servo_pwm_c), 
        .C(\servo_control_0/x_servo/pwm_signal10 ), .Y(
        \servo_control_0/x_servo/N_322 ));
    OR2 \servo_control_0/y_servo/pwm_signal10_0_I_62  (.A(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .Y(
        \servo_control_0/y_servo/N_41 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[26]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[26] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[26] ));
    NOR2B \servo_control_0/x_servo/time_count_RNO_1[20]  (.A(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_283 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[8]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[8] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[8] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[2]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[2] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[2] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[6]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[6] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[6] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_22  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[22] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[22] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_30  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \CoreAPB3_0_APBmslave0_PADDR[0] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PADDR[1] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PADDR[2] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[1]INT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[0]INT_NET )
        , .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[2]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[0]INT_NET )
        , .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[1]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[2]INT_NET )
        );
    DFN1 \servo_control_0/x_servo/time_count[16]  (.D(
        \servo_control_0/x_servo/time_count_n16 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[16]_net_1 ));
    AND3 \servo_control_0/x_servo/pwm_signal10_0_I_78  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ), 
        .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        , .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        , .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ));
    DFN1 \servo_control_0/x_servo/time_count[11]  (.D(
        \servo_control_0/x_servo/time_count_n11 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[11]_net_1 ));
    NOR2B \servo_control_0/y_servo/time_count_RNIFF671[5]  (.A(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c4 ), .Y(
        \servo_control_0/y_servo/time_count_c5 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[26]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[26] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[26] ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_2  
        (.A(\CoreAPB3_0_APBmslave0_PWDATA[6] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[7] ), .C(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_0 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_5 ));
    AO1 \servo_control_0/y_servo/pwm_signal10_0_I_138  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ), 
        .B(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ), 
        .C(\servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] ));
    XA1 \servo_control_0/y_servo/time_count_RNO[11]  (.A(
        \servo_control_0/y_servo/time_count_c10 ), .B(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n11 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO_0[11]  (.A(
        \servo_control_0/x_servo/time_count_c9 ), .B(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c10 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_181 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIATMF[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c2 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[3]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c3 )
        );
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_41  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[9] ));
    OR2A \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO  (
        .A(ants_master_MSS_0_M2F_RESET_N), .B(
        \n64_magic_box_0/n64_apb_interface_0/N_109 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_net_1 )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[19]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[19] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[19] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[7]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_181 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[7] )
        );
    DFN1 \servo_control_0/y_servo/time_count[11]  (.D(
        \servo_control_0/y_servo/time_count_n11 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[11]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[9]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_183 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[9] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[28]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_202 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[28] ));
    OR2B \servo_control_0/x_servo/time_count_RNIFIST[17]  (.A(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto20_1 ));
    NOR3C \servo_control_0/x_servo/time_count_RNIFMN51[4]  (.A(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_4 ));
    NOR3C \servo_control_0/x_servo/time_count_RNI86C67[16]  (.A(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c14 ), .C(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c16 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[8]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[8] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[8] ));
    DFN1E0 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]_net_1 )
        );
    BUFF \ants_master_MSS_0/MSS_ADLIB_INST_RNIRLU3  (.A(
        CoreAPB3_0_APBmslave0_PSELx), .Y(CoreAPB3_0_APBmslave0_PSELx_0)
        );
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNIQENO  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_net_1 )
        , .Y(\n64_magic_box_0.n64_serial_interface_0.fab_pin_1 ));
    OR3B \servo_control_0/x_servo/time_count_RNIP0QR1[20]  (.A(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/x_servo/un1_time_countlto20_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto20_2 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO[16]  (.A(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n16_tz ), .Y(
        \servo_control_0/x_servo/time_count_n16 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_16  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[1] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_12_0 ));
    AOI1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_2 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_133 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO_net_1 )
        );
    MSS_APB_IP #( .ACT_CONFIG(0), .ACT_FCLK(100000000), .ACT_DIE("IP4X3M1")
        , .ACT_PKG("fg484") )  
        \ants_master_MSS_0/MSS_ADLIB_INST/U_CORE  (.FCLK(
        \ants_master_MSS_0/GLA0 ), .MACCLKCCC(GLMUXINT_GND), .RCOSC(
        GLMUXINT_GND), .MACCLK(GLMUXINT_GND), .PLLLOCK(GLMUXINT_GND), 
        .MSSRESETn(\ants_master_MSS_0/MSS_RESET_0_MSS_RESET_N_Y ), 
        .GPOE({nc0, nc1, nc2, nc3, nc4, nc5, nc6, nc7, nc8, nc9, nc10, 
        nc11, nc12, nc13, nc14, nc15, nc16, nc17, nc18, nc19, nc20, 
        nc21, nc22, nc23, nc24, nc25, nc26, nc27, nc28, nc29, nc30, 
        nc31}), .SPI0DO(\ants_master_MSS_0/MSS_SPI_0_DO_D ), .SPI0DOE(
        \ants_master_MSS_0/MSS_SPI_0_DO_E ), .SPI0DI(
        \ants_master_MSS_0/MSS_SPI_0_DI_Y ), .SPI0CLKI(
        \ants_master_MSS_0/MSS_SPI_0_CLK_Y ), .SPI0CLKO(
        \ants_master_MSS_0/MSS_SPI_0_CLK_D ), .SPI0MODE(
        \ants_master_MSS_0/MSS_SPI_0_SS_E ), .SPI0SSI(
        \ants_master_MSS_0/MSS_SPI_0_SS_Y ), .SPI0SSO({nc32, nc33, 
        nc34, nc35, 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET , 
        \ants_master_MSS_0/SPI0SSO_net_0[0] }), .UART0TXD(
        \ants_master_MSS_0/MSS_UART_0_TXD_D ), .UART0RXD(
        \ants_master_MSS_0/MSS_UART_0_RXD_Y ), .I2C0SDAI(GLMUXINT_GND), 
        .I2C0SDAO(), .I2C0SCLI(GLMUXINT_GND), .I2C0SCLO(), .SPI1DO(), 
        .SPI1DOE(), .SPI1DI(GLMUXINT_GND), .SPI1CLKI(GLMUXINT_GND), 
        .SPI1CLKO(), .SPI1MODE(), .SPI1SSI(GLMUXINT_GND), .SPI1SSO({
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET , nc36}), 
        .UART1TXD(\ants_master_MSS_0/MSS_UART_1_TXD_D ), .UART1RXD(
        \ants_master_MSS_0/MSS_UART_1_RXD_Y ), .I2C1SDAI(GLMUXINT_GND), 
        .I2C1SDAO(), .I2C1SCLI(GLMUXINT_GND), .I2C1SCLO(), .MACTXD({
        nc37, nc38}), .MACRXD({GLMUXINT_GND, GLMUXINT_GND}), .MACTXEN()
        , .MACCRSDV(GLMUXINT_GND), .MACRXER(GLMUXINT_GND), .MACMDI(
        GLMUXINT_GND), .MACMDO(), .MACMDEN(), .MACMDC(), .EMCCLK(
        \ants_master_MSS_0/MSS_ADLIB_INST_EMCCLK ), .EMCCLKRTN(
        \ants_master_MSS_0/MSS_ADLIB_INST_EMCCLK ), .EMCRDB({
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), 
        .EMCAB({nc39, nc40, nc41, nc42, nc43, nc44, nc45, nc46, nc47, 
        nc48, nc49, nc50, nc51, nc52, nc53, nc54, nc55, nc56, nc57, 
        nc58, nc59, nc60, nc61, nc62, nc63, nc64}), .EMCWDB({nc65, 
        nc66, nc67, nc68, nc69, nc70, nc71, nc72, nc73, nc74, nc75, 
        nc76, nc77, nc78, nc79, nc80}), .EMCRWn(), .EMCCS0n(), 
        .EMCCS1n(), .EMCOEN0n(), .EMCOEN1n(), .EMCBYTEN({nc81, nc82}), 
        .EMCDBOE(), .ADC0(GLMUXINT_GND), .ADC1(GLMUXINT_GND), .ADC2(
        GLMUXINT_GND), .ADC3(GLMUXINT_GND), .ADC4(GLMUXINT_GND), .ADC5(
        GLMUXINT_GND), .ADC6(GLMUXINT_GND), .ADC7(GLMUXINT_GND), .ADC8(
        GLMUXINT_GND), .ADC9(GLMUXINT_GND), .ADC10(GLMUXINT_GND), 
        .ADC11(GLMUXINT_GND), .SDD0(), .SDD1(), .SDD2(), .ABPS0(
        GLMUXINT_GND), .ABPS1(GLMUXINT_GND), .ABPS2(GLMUXINT_GND), 
        .ABPS3(GLMUXINT_GND), .ABPS4(GLMUXINT_GND), .ABPS5(
        GLMUXINT_GND), .ABPS6(GLMUXINT_GND), .ABPS7(GLMUXINT_GND), 
        .ABPS8(GLMUXINT_GND), .ABPS9(GLMUXINT_GND), .ABPS10(
        GLMUXINT_GND), .ABPS11(GLMUXINT_GND), .TM0(GLMUXINT_GND), .TM1(
        GLMUXINT_GND), .TM2(GLMUXINT_GND), .TM3(GLMUXINT_GND), .TM4(
        GLMUXINT_GND), .TM5(GLMUXINT_GND), .CM0(GLMUXINT_GND), .CM1(
        GLMUXINT_GND), .CM2(GLMUXINT_GND), .CM3(GLMUXINT_GND), .CM4(
        GLMUXINT_GND), .CM5(GLMUXINT_GND), .GNDTM0(GLMUXINT_GND), 
        .GNDTM1(GLMUXINT_GND), .GNDTM2(GLMUXINT_GND), .VAREF0(
        GLMUXINT_GND), .VAREF1(GLMUXINT_GND), .VAREF2(GLMUXINT_GND), 
        .VAREFOUT(), .GNDVAREF(GLMUXINT_GND), .PUn(GLMUXINT_GND), 
        .MSSPADDR({
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[0]INT_NET }), 
        .MSSPWDATA({
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[0]INT_NET }), 
        .MSSPRDATA({
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[0]INT_NET }), 
        .FABPADDR({
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[0]INT_NET }), 
        .FABPWDATA({
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[0]INT_NET }), 
        .FABPRDATA({
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[0]INT_NET }), 
        .DMAREADY({
        \ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET }), 
        .MSSINT({\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[0]INT_NET }), .GPI({
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[16]INT_NET , 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[0]INT_NET }), .GPO({
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[16]INT_NET , nc83, nc84, 
        nc85, nc86, nc87, nc88, nc89, nc90, nc91, nc92, nc93, nc94, 
        nc95, nc96, \ants_master_MSS_0/GPO_net_0[1] , 
        \ants_master_MSS_0/GPO_net_0[0] }), .MACM2FTXD({nc97, nc98}), 
        .MACF2MRXD({GLMUXINT_GND, GLMUXINT_GND}), .ACEFLAGS({
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET }), 
        .UART0CTSn(\ants_master_MSS_0/MSS_ADLIB_INST/UART0CTSnINT_NET )
        , .UART0DSRn(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0DSRnINT_NET ), 
        .UART0RTSn(\ants_master_MSS_0/MSS_ADLIB_INST/UART0RTSnINT_NET )
        , .UART0DTRn(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0DTRnINT_NET ), 
        .UART0RIn(\ants_master_MSS_0/MSS_ADLIB_INST/UART0RInINT_NET ), 
        .UART0DCDn(\ants_master_MSS_0/MSS_ADLIB_INST/UART0DCDnINT_NET )
        , .UART1CTSn(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1CTSnINT_NET ), 
        .UART1DSRn(\ants_master_MSS_0/MSS_ADLIB_INST/UART1DSRnINT_NET )
        , .UART1RIn(\ants_master_MSS_0/MSS_ADLIB_INST/UART1RInINT_NET )
        , .UART1DCDn(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DCDnINT_NET ), 
        .I2C0SMBALERTNO(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET ), 
        .I2C0BCLK(\ants_master_MSS_0/MSS_ADLIB_INST/I2C0BCLKINT_NET ), 
        .I2C0SMBALERTNI(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET ), 
        .I2C0SMBUSNI(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET ), 
        .I2C1SMBALERTNO(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET ), 
        .I2C1BCLK(\ants_master_MSS_0/MSS_ADLIB_INST/I2C1BCLKINT_NET ), 
        .I2C1SMBALERTNI(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET ), 
        .I2C1SMBUSNI(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET ), 
        .UART1RTSn(\ants_master_MSS_0/MSS_ADLIB_INST/UART1RTSnINT_NET )
        , .UART1DTRn(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), .TXEV(
        \ants_master_MSS_0/MSS_ADLIB_INST/TXEVINT_NET ), .RXEV(
        \ants_master_MSS_0/MSS_ADLIB_INST/RXEVINT_NET ), .VRON(
        \ants_master_MSS_0/MSS_ADLIB_INST/VRONINT_NET ), .MACM2FTXEN(), 
        .MACF2MCRSDV(GLMUXINT_GND), .MACM2FMDEN(), .MACF2MRXER(
        GLMUXINT_GND), .MACM2FMDO(), .MACF2MMDI(GLMUXINT_GND), 
        .MACM2FMDC(), .I2C0SMBUSNO(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET ), 
        .I2C1SMBUSNO(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET ), 
        .CALIBOUT(\ants_master_MSS_0/MSS_ADLIB_INST/CALIBOUTINT_NET ), 
        .CALIBIN(\ants_master_MSS_0/MSS_ADLIB_INST/CALIBININT_NET ), 
        .LVTTL0(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL0INT_NET ), 
        .LVTTL1(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL1INT_NET ), 
        .LVTTL2(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL2INT_NET ), 
        .LVTTL0EN(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL0ENINT_NET ), 
        .LVTTL1EN(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL1ENINT_NET ), 
        .LVTTL2EN(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL2ENINT_NET ), 
        .LVTTL3(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL3INT_NET ), 
        .LVTTL4(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL4INT_NET ), 
        .LVTTL5(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL5INT_NET ), 
        .LVTTL3EN(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL3ENINT_NET ), 
        .LVTTL4EN(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL4ENINT_NET ), 
        .LVTTL5EN(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL5ENINT_NET ), 
        .LVTTL6(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL6INT_NET ), 
        .LVTTL7(\ants_master_MSS_0/MSS_ADLIB_INST/LVTTL7INT_NET ), 
        .LVTTL8(), .LVTTL6EN(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL6ENINT_NET ), .LVTTL7EN(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL7ENINT_NET ), .LVTTL8EN(
        ), .LVTTL9(), .LVTTL10(), .LVTTL11(), .LVTTL9EN(), .LVTTL10EN()
        , .LVTTL11EN(), .CMP0(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP0INT_NET ), .CMP1(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP1INT_NET ), .CMP2(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP2INT_NET ), .CMP3(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP3INT_NET ), .CMP4(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP4INT_NET ), .CMP5(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP5INT_NET ), .FABSDD0D(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD0DINT_NET ), .FABSDD1D(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD1DINT_NET ), .FABSDD2D(
        ), .CMP6(\ants_master_MSS_0/MSS_ADLIB_INST/CMP6INT_NET ), 
        .CMP7(\ants_master_MSS_0/MSS_ADLIB_INST/CMP7INT_NET ), .CMP8(), 
        .FABACETRIG(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABACETRIGINT_NET ), .CMP9(), 
        .FABSDD0CLK(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), 
        .FABSDD1CLK(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), 
        .FABSDD2CLK(), .VCC15GOOD(
        \ants_master_MSS_0/MSS_ADLIB_INST/VCC15GOODINT_NET ), 
        .VCC33GOOD(\ants_master_MSS_0/MSS_ADLIB_INST/VCC33GOODINT_NET )
        , .PUFABn(\ants_master_MSS_0/MSS_ADLIB_INST/PUFABnINT_NET ), 
        .MSSPREADY(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPREADYINT_NET )
        , .MSSPSLVERR(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPSLVERRINT_NET ), 
        .MSSPSEL(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPSELINT_NET ), 
        .MSSPENABLE(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPENABLEINT_NET ), 
        .MSSPWRITE(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPWRITEINT_NET )
        , .FABPSEL(\ants_master_MSS_0/MSS_ADLIB_INST/FABPSELINT_NET ), 
        .FABPENABLE(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPENABLEINT_NET ), 
        .FABPWRITE(\ants_master_MSS_0/MSS_ADLIB_INST/FABPWRITEINT_NET )
        , .FABPREADY(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPREADYINT_NET ), 
        .FABPSLVERR(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPSLVERRINT_NET ), 
        .DEEPSLEEP(\ants_master_MSS_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET )
        , .SLEEP(\ants_master_MSS_0/MSS_ADLIB_INST/SLEEPINT_NET ), 
        .M2FRESETn(\ants_master_MSS_0/MSS_ADLIB_INST/M2FRESETnINT_NET )
        , .WDINT(\ants_master_MSS_0/MSS_ADLIB_INST/WDINTINT_NET ), 
        .FABINT(\ants_master_MSS_0/MSS_ADLIB_INST/FABINTINT_NET ), 
        .F2MRESETn(\ants_master_MSS_0/MSS_ADLIB_INST/F2MRESETnINT_NET )
        , .SYNCCLKFDBK(
        \ants_master_MSS_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET ), .CMP10(
        ), .CMP11());
    NOR2B \servo_control_0/y_servo/time_count_RNI992D[3]  (.A(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_1 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNI4EGR[6]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c5 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c6 )
        );
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[0]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[0] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[0]_net_1 )
        );
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI56F6_2[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[25]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[25] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[25] ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_28  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_8_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[10] ));
    AOI1B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_0_sqmuxa_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt8 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_84 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_net_1 )
        );
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_44  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_TMP[0] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_1[0] )
        );
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[25] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[24] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3_net_1 )
        );
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_37  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_1[0] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/I_37 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[8]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_182 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[8] )
        );
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_17  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_12_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[6] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/command_byte[1]  (
        .D(\n64_magic_box_0/n64_serial_interface_0/send_reset_net_1 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        );
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[11]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[11] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[1]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[1] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[1] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_35  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[16]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[15]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[17]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[15]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[16]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[17]INT_NET ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[1]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[1] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[21]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[21] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[21] ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable6_0  (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_12_net_1 )
        , .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_13_net_1 )
        , .C(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_26 ), 
        .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_0 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[3]  (.A(
        \servo_control_0/x_servo/time_count[3]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c2 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n3 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[25]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_199 ));
    NOR2B \servo_control_0/y_servo/time_count_RNO_1[20]  (.A(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/N_283 ));
    IOPAD_TRI \ants_master_MSS_0/MSS_SPI_0_DO  (.D(
        \ants_master_MSS_0/MSS_SPI_0_DO_D ), .E(
        \ants_master_MSS_0/MSS_SPI_0_DO_E ), .PAD(SPI_0_DO));
    OR2 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO_0  
        (.A(\n64_magic_box_0/n64_serial_interface_0/read_module_begin )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/read_module/N_133 ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_4  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[23] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[22] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_4_net_1 )
        );
    NOR3 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_3  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt6 )
        );
    DFN1 \n64_magic_box_0/n64_serial_interface_0/prev_reset  (.D(
        \n64_magic_box_0/n64_apb_interface_0_controller_reset ), .CLK(
        FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/prev_reset_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_60  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABINTINT_NET ), .PIN6INT(), 
        .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        GLMUXINT_GND));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[18]  (.A(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c16 ), .C(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n18_tz ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_83  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[12]  (.A(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n12_tz ), .Y(
        \servo_control_0/y_servo/time_count_n12 ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[14]  (.A(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c12 ), .C(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n14_tz ));
    NOR2 \servo_control_0/y_servo/pwm_signal10_0_I_17  (.A(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ));
    MSS_CCC_GL_IF \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_TILE1  (
        .PIN2(GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), 
        .PIN1(), .PIN5(FAB_CLK), .PIN2INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT ), .PIN3INT(), 
        .PIN4INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/LOCK_INT ), .PIN5INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLA_INT ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_3  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[20]INT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[19]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[21]INT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[19]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[20]INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[21]INT_NET ));
    MSS_CCC_IP #( .VCOFREQUENCY(-1.000000) )  
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_MSSCCC  (.CLKA(
        \ants_master_MSS_0/MSS_CCC_0/N_CLKA_RCOSC ), .EXTFB(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT ), .GLA(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLA_INT ), .GLAMSS(
        \ants_master_MSS_0/GLA0 ), .LOCK(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/LOCK_INT ), .LOCKMSS(), 
        .CLKB(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKB_INT ), .GLB(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLB_INT ), .YB(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YB_INT ), .CLKC(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .GLC(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLC_INT ), .YC(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .MACCLK(), 
        .SDIN(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), .SCLK(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), .SSHIFT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), .SUPDATE(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .MODE(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/MODE_INT ), .SDOUT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ), .PLLEN(
        PLLEN_VCC), .OADIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .OADIVHALF(GLMUXINT_GND), 
        .OADIVRST(GLMUXINT_GND), .OAMUX({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .BYPASSA(PLLEN_VCC), .DLYGLA({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), 
        .DLYGLAMSS({GLMUXINT_GND, PLLEN_VCC, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .DLYGLAFAB({GLMUXINT_GND, 
        PLLEN_VCC, PLLEN_VCC, PLLEN_VCC, PLLEN_VCC}), .OBDIV({
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC})
        , .OBDIVHALF(GLMUXINT_GND), .OBDIVRST(GLMUXINT_GND), .OBMUX({
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), .BYPASSB(PLLEN_VCC)
        , .DLYGLB({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .OCDIV({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC}), .OCDIVHALF(
        GLMUXINT_GND), .OCDIVRST(GLMUXINT_GND), .OCMUX({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .BYPASSC(PLLEN_VCC), .DLYGLC({
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .FINDIV({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, GLMUXINT_GND})
        , .FBDIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, GLMUXINT_GND}), .FBDLY({
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        PLLEN_VCC}), .FBSEL({GLMUXINT_GND, PLLEN_VCC}), .XDLYSEL(
        GLMUXINT_GND), .VCOSEL({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .GLMUXINT(GLMUXINT_GND), .GLMUXSEL({
        GLMUXINT_GND, GLMUXINT_GND}), .GLMUXCFG({GLMUXINT_GND, 
        GLMUXINT_GND}));
    NOR3 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNIV2U91[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17lt8 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_89  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[26]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[25]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[27]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[25]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[26]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[27]INT_NET ));
    XA1 \servo_control_0/x_servo/time_count_RNO[8]  (.A(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c7 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n8 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/sync_reg[1]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[0]_net_1 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[1]_net_1 ));
    NOR2 \servo_control_0/y_servo/time_count_RNIGG2D[7]  (.A(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto9_0 ));
    AND3 \servo_control_0/y_servo/pwm_signal10_0_I_78  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ), 
        .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        , .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        , .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_40  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[11] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[10] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[12] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[10] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[11] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[12] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[11]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[10]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[12]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[10]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[11]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[12]INT_NET ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[2]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[2] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNI9NEB2[5]  (.A(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c4 ), .Y(
        \servo_control_0/x_servo/time_count_c5 ));
    NOR2A \servo_control_0/x_servo/pwm_signal10_0_I_84  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        , .B(\servo_control_0/x_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_32  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \CoreAPB3_0_APBmslave0_PADDR[6] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PADDR[7] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[7]INT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[6]INT_NET )
        , .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[8]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[6]INT_NET )
        , .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[7]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[8]INT_NET )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/controller_reset  (.D(
        \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_apb_interface_0_controller_reset ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNIJFI3[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_5 )
        );
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n2 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[5]  (.A(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c4 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n5 ));
    NOR3B \n64_magic_box_0/n64_apb_interface_0/write_11  (.A(
        CoreAPB3_0_APBmslave0_PWRITE), .B(
        \n64_magic_box_0/n64_apb_interface_0/write_7_net_1 ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[0] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_11_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[23]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[23] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[23] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_34  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \CoreAPB3_0_APBmslave0_PADDR[12] ), .PIN2(), .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[13]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[12]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[14]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[12]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[13]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[14]INT_NET ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[9]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[9] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[9] ));
    NOR2 \servo_control_0/y_servo/pwm_signal10_0_I_94  (.A(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[10] ));
    MX2 \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_0  (.A(
        \n64_magic_box_0/n64_apb_interface_0_polling_enable ), .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7 ), .S(
        \n64_magic_box_0/n64_apb_interface_0/write_net_1 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/N_110 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/data_in  (.D(
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[1]_net_1 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[20]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[20] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[20] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_175 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_4  
        (.A(\CoreAPB3_0_APBmslave0_PWDATA[4] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[5] ), .C(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_3 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_6 ));
    IOPAD_IN \ants_master_MSS_0/MSS_RESET_0_MSS_RESET_N  (.PAD(
        MSS_RESET_N), .Y(\ants_master_MSS_0/MSS_RESET_0_MSS_RESET_N_Y )
        );
    NOR3A \servo_control_0/y_servo/pwm_signal10_0_I_77  (.A(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[15]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_189 ));
    NOR3A \servo_control_0/y_servo/time_count_RNIE43U[14]  (.A(
        \servo_control_0/y_servo/un1_time_countlto14_1 ), .B(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto14_2 ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/write_1  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[10] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/write_1_net_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO_0[20]  (.A(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_41_0 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[22]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_196 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_31  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PADDR[4] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PADDR[5] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[4]INT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[3]INT_NET )
        , .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[5]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[3]INT_NET )
        , .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[4]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPADDR[5]INT_NET )
        );
    NOR2B \servo_control_0/y_servo/time_count_RNISS8K1[7]  (.A(
        \servo_control_0/y_servo/time_count_c6 ), .B(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c7 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[28]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[28] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[28] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n6 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_53  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[17] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[16] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[18] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[16] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[17] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[18] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[17]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[16]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[18]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[16]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[17]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[18]INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_73  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABACETRIGINT_NET ), 
        .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP6INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP7INT_NET ), .PIN3INT(
        GLMUXINT_GND));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_5  (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[1] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_65  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/PUFABnINT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    NOR3B \servo_control_0/x_servo/pwm_signal10_0_I_115  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
        , .B(\servo_control_0/x_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ));
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_32  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_2[0] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7[5] )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_59  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_79  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET ));
    AO1C \servo_control_0/x_servo/time_count_RNI5ULK1[8]  (.A(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/x_servo/un1_time_countlto9_0 ), .C(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlt14 ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[13] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[12] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1_net_1 )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0  
        (.D(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        );
    NOR2B \servo_control_0/x_servo/pwm_signal_RNO  (.A(
        \servo_control_0/x_servo/N_322 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pwm_signal_RNO_net_1 ));
    XA1B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c2 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[3]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n3 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_45  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[25]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[24]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[26]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[2]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[3]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[4]INT_NET ));
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_13  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[5]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[1]_net_1 )
        , .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_67 ));
    OR2 \n64_magic_box_0/n64_serial_interface_0/long_count_RNID9I3[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_8 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_7  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[7] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[7] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[22]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[22] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[22] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_21  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[21] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[21] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[27]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_201 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[27] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_6  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[29]INT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[28]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[30]INT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[28]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[29]INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[30]INT_NET ));
    NOR2B \servo_control_0/y_servo/time_count_RNI3E1F[11]  (.A(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_2 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI553I[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        );
    OR2 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNI9IFL[11]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_o3_0_0 )
        );
    AX1C \servo_control_0/x_servo/time_count_RNO_0[12]  (.A(
        \servo_control_0/x_servo/time_m6_0_a2_6 ), .B(
        \servo_control_0/x_servo/time_m6_0_a2_7 ), .C(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n12_tz ));
    NOR2B \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_3  
        (.A(\CoreAPB3_0_APBmslave0_PWDATA[1] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[0] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_4 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_37  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[2] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[1] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[3] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[1] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[2] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[3] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[2]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[1]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[3]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[1]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[2]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[3]INT_NET ));
    AO1 \servo_control_0/x_servo/pwm_signal10_0_I_105  (.A(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/N_31 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNI72N9  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/read_module_begin ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO_0[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[7]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_19_0 )
        );
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI12F6_1[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        );
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_26  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[26] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[26] ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNITDS52[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_3_0 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[3]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_5 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_62  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL1ENINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL0ENINT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL2ENINT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL0INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL1INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL2INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_4  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[23]INT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[22]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[24]INT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[22]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[23]INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[24]INT_NET ));
    DFN1 \servo_control_0/y_servo/time_count[1]  (.D(
        \servo_control_0/y_servo/time_count_n1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[1]_net_1 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26  (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3_net_1 )
        , .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2_net_1 )
        , .C(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_4_net_1 )
        , .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_26 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[12]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_186 ));
    DFN1 \servo_control_0/x_servo/time_count[5]  (.D(
        \servo_control_0/x_servo/time_count_n5 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[5]_net_1 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIE4PB[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c2 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_80  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_64  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL4ENINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL3ENINT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL5ENINT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL3INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL4INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/LVTTL5INT_NET ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[9] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[8] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_42  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        CoreAPB3_0_APBmslave0_PSELx), .PIN2(
        CoreAPB3_0_APBmslave0_PENABLE), .PIN3(
        CoreAPB3_0_APBmslave0_PWRITE), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPENABLEINT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPSELINT_NET ), 
        .PIN6INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPWRITEINT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPSELINT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPENABLEINT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPWRITEINT_NET ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_0  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_0_sqmuxa_1 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[7]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[7] ), .CLK(
        FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[7] ));
    NOR2B \servo_control_0/y_servo/time_count_RNO_0[20]  (.A(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_41_0 ));
    DFN1 \servo_control_0/y_servo/time_count[6]  (.D(
        \servo_control_0/y_servo/time_count_n6 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[6]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_44  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[22]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[21]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[23]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/SLEEPINT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[0]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[1]INT_NET ));
    DFN1 \servo_control_0/x_servo/time_count[17]  (.D(
        \servo_control_0/x_servo/time_count_n17 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[17]_net_1 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_6  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[6] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[6] ));
    DFN1 \servo_control_0/x_servo/time_count[7]  (.D(
        \servo_control_0/x_servo/time_count_n7 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[7]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_61  (.PIN4(GLMUXINT_GND)
        , .PIN5(PLLEN_VCC), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/F2MRESETnINT_NET ), 
        .PIN6INT(\ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET )
        , .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        GLMUXINT_GND));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[23]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_197 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[23] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[11]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[11] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[11] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[14]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[14] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[14] ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[18]  (.A(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n18_tz ), .Y(
        \servo_control_0/y_servo/time_count_n18 ));
    NOR2A \servo_control_0/y_servo/time_count_RNO[0]  (.A(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n0 ));
    DFN1 \servo_control_0/y_servo/time_count[4]  (.D(
        \servo_control_0/y_servo/time_count_n4 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[4]_net_1 ));
    DFN1 \servo_control_0/y_servo/time_count[15]  (.D(
        \servo_control_0/y_servo/time_count_n15 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[15]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[30]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[30] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[30] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_41  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[14] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[13] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[15] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[13] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[14] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[15] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[14]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[13]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[15]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[13]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[14]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[15]INT_NET ));
    DFN1E0 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 )
        );
    OR3 \servo_control_0/x_servo/pwm_signal10_0_I_136  (.A(
        \servo_control_0/x_servo/time_count[2]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .Y(
        \servo_control_0/x_servo/N_11 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module_begin ));
    AX1C \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_7  (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[2] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_15  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[15] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[15] ));
    IOPAD_TRI \ants_master_MSS_0/MSS_UART_0_TXD  (.D(
        \ants_master_MSS_0/MSS_UART_0_TXD_D ), .E(PLLEN_VCC), .PAD(
        UART_0_TXD));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_18  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[18] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[18] ));
    NOR2B \servo_control_0/x_servo/time_count_RNIE91O2[6]  (.A(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c5 ), .Y(
        \servo_control_0/x_servo/time_count_c6 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNO_1[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/N_57 )
        );
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[7]  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[7] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[7] ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_29  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[5] ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNI7NKJ[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c4 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[23]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[23] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[23] ));
    NOR2A \n64_magic_box_0/n64_serial_interface_0/send_reset_RNO  (.A(
        \n64_magic_box_0/n64_apb_interface_0_controller_reset ), .B(
        \n64_magic_box_0/n64_serial_interface_0/prev_reset_net_1 ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/send_reset5 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNISUGC[10]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0_0 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[14]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[14] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[14] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI553I_0[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        );
    AND2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_44  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[9] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[10] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[17]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[17] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[17] ));
    NOR3C \servo_control_0/y_servo/time_count_RNIIIJJ[4]  (.A(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_4 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_67  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_50  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[8]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[7]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[9]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[7]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[8]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[9]INT_NET ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[29]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[29] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[29] ));
    NOR2 \servo_control_0/y_servo/time_count_RNI5G1F[11]  (.A(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto14_1 ));
    NOR3B 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNI1L551[16]  
        (.A(\n64_magic_box_0/n64_apb_interface_0_polling_enable ), .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[16]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_6 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_85  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET ));
    AND3 \servo_control_0/y_servo/pwm_signal10_0_I_113  (.A(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
        );
    NOR2B \servo_control_0/y_servo/time_count_RNISMCA3[16]  (.A(
        \servo_control_0/y_servo/un1_time_count ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_1_sqmuxa ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI12F6[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[6]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_180 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[6] )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_47  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[31]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[30]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[0]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[0]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[7]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/WDINTINT_NET ));
    NOR3A \servo_control_0/x_servo/time_count_RNIAGOR1[14]  (.A(
        \servo_control_0/x_servo/un1_time_countlto14_1 ), .B(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto14_2 ));
    DFN1E0 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n2 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_93  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET )
        , .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/CALIBOUTINT_NET ));
    AO1 \servo_control_0/x_servo/pwm_signal10_0_I_140  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ), 
        .B(\servo_control_0/x_servo/DWACT_COMP0_E[2] ), .C(
        \servo_control_0/x_servo/N_41 ), .Y(
        \servo_control_0/x_servo/pwm_signal10 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_net_1 )
        );
    XA1 \servo_control_0/y_servo/time_count_RNO[4]  (.A(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c3 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n4 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNI103G[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_3 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_7 )
        );
    DFN1 \servo_control_0/y_servo/time_count[20]  (.D(
        \servo_control_0/y_servo/time_count_n20 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[20]_net_1 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNIOTNI2  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_0_sqmuxa )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[22]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[22] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[22] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[6]  (.A(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c5 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n6 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_8  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0DCDnINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0RInINT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1CTSnINT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/UART0RTSnINT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/UART0DTRnINT_NET ));
    XA1 \servo_control_0/y_servo/time_count_RNO[17]  (.A(
        \servo_control_0/y_servo/time_count_c16 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .C(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n17 ));
    XOR2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_33  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_TMP[0] )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/I_33 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[10]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_184 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[10] ));
    OR3 \servo_control_0/y_servo/pwm_signal10_0_I_136  (.A(
        \servo_control_0/y_servo/time_count[2]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .Y(
        \servo_control_0/y_servo/N_11 ));
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_6  
        (.A(\n64_magic_box_0/n64_serial_interface_0/write_module/N_68 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_71 ), 
        .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_2 )
        );
    NOR2B \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO  (.A(
        \n64_magic_box_0/n64_apb_interface_0/N_110 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_net_1 )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[16]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_190 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[16] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[4]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_178 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[4] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[30]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_204 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[30] ));
    NOR2B \servo_control_0/x_servo/time_count_RNI36PT3[9]  (.A(
        \servo_control_0/x_servo/time_count_c8 ), .B(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c9 ));
    NOR2B \servo_control_0/y_servo/time_count_RNIAAL01[4]  (.A(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c3 ), .Y(
        \servo_control_0/y_servo/time_count_c4 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[15]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[15] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[15] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_82  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNO[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[8]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_3[0] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[8] )
        );
    NOR2B \servo_control_0/y_servo/time_count_RNO[2]  (.A(
        \servo_control_0/y_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n2_tz ), .Y(
        \servo_control_0/y_servo/time_count_n2 ));
    NOR3 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNIOPM9[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_3 )
        );
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI56F6[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[1]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_175 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[1] )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_38  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[5] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[4] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[6] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[4] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[5] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[6] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[5]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[4]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[6]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[4]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[5]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[6]INT_NET ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[21]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_195 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[30]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[30] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[30] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[21]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_195 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[21] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[7]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[7] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[7] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_84  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET ));
    AO1B \servo_control_0/y_servo/time_count_RNIDFO02[15]  (.A(
        \servo_control_0/y_servo/un1_time_countlto14_2 ), .B(
        \servo_control_0/y_servo/un1_time_countlt14 ), .C(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlt16 ));
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_205 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[5]_net_1 )
        );
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNINOM9[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_2 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_55  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[23] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[22] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[24] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[22] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[23] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[24] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[23]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[22]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[24]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[22]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[23]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[24]INT_NET ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_20  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_11 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[7] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[13]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[13] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_75  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET )
        );
    AO1B \servo_control_0/x_servo/time_count_RNI4LCV3[15]  (.A(
        \servo_control_0/x_servo/un1_time_countlto14_2 ), .B(
        \servo_control_0/x_servo/un1_time_countlt14 ), .C(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlt16 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[17]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[17] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(\n64_magic_box_0/n64_serial_interface_0_button_data[17] ));
    AO1 \servo_control_0/y_servo/pwm_signal10_0_I_105  (.A(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/N_31 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[9]  (.A(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c8 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n9 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[27]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_201 ));
    AND2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_38  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[8] ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNO[6]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_11[0] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[6] )
        );
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNI03NJ2[16]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_6 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_8 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/N_12 ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_11 )
        );
    NOR2B \servo_control_0/y_servo/time_count_RNI664Q[3]  (.A(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c2 ), .Y(
        \servo_control_0/y_servo/time_count_c3 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in_RNIVSD8  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in_net_1 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        );
    XA1 \servo_control_0/x_servo/time_count_RNO[13]  (.A(
        \servo_control_0/x_servo/time_count_c12 ), .B(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n13 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[7]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n7 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[7]_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_81  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET ));
    NOR2B \servo_control_0/x_servo/time_count_RNI56SU1[4]  (.A(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c3 ), .Y(
        \servo_control_0/x_servo/time_count_c4 ));
    NOR2B \servo_control_0/x_servo/time_count_RNI2M9I1[3]  (.A(
        \servo_control_0/x_servo/time_count[3]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c2 ), .Y(
        \servo_control_0/x_servo/time_count_c3 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[24]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_198 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[24] ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_13  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[13] ), .B(
        CoreAPB3_0_APBmslave0_PSELx_0), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[13] ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_13  
        (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5_net_1 )
        , .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_4_net_1 )
        , .C(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_11_net_1 )
        , .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_13_net_1 )
        );
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNIMPT91[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[0]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10_3_0 )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_177 ));
    DFN1 \servo_control_0/x_servo/time_count[20]  (.D(
        \servo_control_0/x_servo/time_count_n20 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[20]_net_1 ));
    DFN1 \servo_control_0/x_servo/pwm_signal  (.D(
        \servo_control_0/x_servo/pwm_signal_RNO_net_1 ), .CLK(FAB_CLK), 
        .Q(x_servo_pwm_c));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_5  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[26]INT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[25]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[27]INT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[25]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[26]INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[27]INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_7  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0CTSnINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[31]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART0DSRnINT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[31]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIMUG31[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_4 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_3 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa_5 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa )
        );
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNIFOFL[16]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[16]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        );
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid_RNO_0  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_1 )
        );
    NOR2A \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_3  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[0] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[1] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_4 ));
    OR3B \servo_control_0/y_servo/time_count_RNITK4U[20]  (.A(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/y_servo/un1_time_countlto20_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto20_2 ));
    NOR2 \servo_control_0/x_servo/pwm_signal10_0_I_17  (.A(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ));
    NOR2B \servo_control_0/y_servo/time_count_RNIDEB12[9]  (.A(
        \servo_control_0/y_servo/time_count_c8 ), .B(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c9 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[7]  (.A(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c6 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n7 ));
    OR2B \servo_control_0/y_servo/time_count_RNIHS1F[17]  (.A(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto20_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_52  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[14]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[13]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[15]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[13]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[14]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[15]INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_72  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD1DINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD0DINT_NET ), .PIN6INT()
        , .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/CMP3INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/CMP4INT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/CMP5INT_NET ));
    DFN1 \servo_control_0/x_servo/time_count[0]  (.D(
        \servo_control_0/x_servo/time_count_n0 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[0]_net_1 ));
    AO1 \n64_magic_box_0/n64_serial_interface_0/long_count_RNIUM47[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/N_8 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_9_0 ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[18]  (.A(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c16 ), .C(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n18_tz ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_net_1 )
        );
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_RNO[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_1[0] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[2] )
        );
    DFN1 \servo_control_0/y_servo/time_count[2]  (.D(
        \servo_control_0/y_servo/time_count_n2 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[2]_net_1 ));
    AO1A \servo_control_0/x_servo/time_count_RNIJT4A6[16]  (.A(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .B(
        \servo_control_0/x_servo/un1_time_countlt16 ), .C(
        \servo_control_0/x_servo/un1_time_countlto20_2 ), .Y(
        \servo_control_0/x_servo/un1_time_count ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI12F6_0[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        );
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNI2QVQ1[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3_0 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_87  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[20]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[19]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[21]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[19]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[20]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[21]INT_NET ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[11]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_19_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_185 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_54  (.PIN4(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[20] ), .PIN5(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[19] ), .PIN6(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[21] ), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[19] ), .PIN2(
        \CoreAPB3_0_APBmslave0_PWDATA[20] ), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[21] ), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[20]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[19]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPRDATA[21]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[19]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[20]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/MSSPWDATA[21]INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_74  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), 
        .PIN6INT(), .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), 
        .PIN3INT(GLMUXINT_GND));
    NOR2B \servo_control_0/x_servo/time_count_RNO[14]  (.A(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n14_tz ), .Y(
        \servo_control_0/x_servo/time_count_n14 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNIGJ07  
        (.A(\n64_magic_box_0/n64_serial_interface_0/read_module_begin )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/read_module/index5 )
        );
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_14  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_13_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[5] ));
    DFN1 \servo_control_0/y_servo/time_count[10]  (.D(
        \servo_control_0/y_servo/time_count_n10 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[10]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[17]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_191 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_90  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[29]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[28]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[30]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[28]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[29]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[30]INT_NET ));
    DFN1 \servo_control_0/x_servo/time_count[13]  (.D(
        \servo_control_0/x_servo/time_count_n13 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[13]_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[18]  (.D(
        \servo_control_0/x_servo/time_count_n18 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[18]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[24]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_198 ));
    NOR2 \servo_control_0/x_servo/time_count_RNIE85P[7]  (.A(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto9_0 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_51  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[11]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[10]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[12]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[10]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[11]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[12]INT_NET ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n4 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_71  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP0INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP1INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/CMP2INT_NET ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_10  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/VRONINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/RXEVINT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/CALIBININT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1RTSnINT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/TXEVINT_NET ));
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_10  
        (.A(\n64_magic_box_0/n64_serial_interface_0/write_module/N_69 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_70 ), 
        .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_71 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[29]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data[29] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[29] ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[21] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[20] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5_net_1 )
        );
    NOR3A \servo_control_0/x_servo/pwm_signal10_0_I_77  (.A(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[19]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_193 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[19] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[16]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[16] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[16]_net_1 ));
    NOR2A \servo_control_0/y_servo/pwm_signal10_0_I_84  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        , .B(\servo_control_0/y_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNIQNND4  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        );
    MX2 \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_0  (
        .A(\n64_magic_box_0/n64_apb_interface_0_controller_reset ), .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6 ), .S(
        \n64_magic_box_0/n64_apb_interface_0/write_net_1 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/N_109 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[4]_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[15]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_189 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[15] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[10]  (.A(
        \servo_control_0/x_servo/time_count_c9 ), .B(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .C(
        \servo_control_0/x_servo/pw_1_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n10 ));
    IOPAD_BI \fab_pin_pad/U0/U0  (.D(\fab_pin_pad/U0/NET1 ), .E(
        \fab_pin_pad/U0/NET2 ), .Y(\fab_pin_pad/U0/NET3 ), .PAD(
        fab_pin));
    DFN1 \servo_control_0/y_servo/time_count[9]  (.D(
        \servo_control_0/y_servo/time_count_n9 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[9]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[5]_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]_net_1 )
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_48  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[2]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[1]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPWDATA[3]INT_NET ), 
        .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[1]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[2]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPRDATA[3]INT_NET ));
    DFN1 \servo_control_0/x_servo/time_count[15]  (.D(
        \servo_control_0/x_servo/time_count_n15 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[15]_net_1 ));
    NOR3C \servo_control_0/x_servo/time_count_RNINO848[17]  (.A(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c16 ), .C(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c18 ));
    NOR2B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_9  (.A(
        \CoreAPB3_0_APBmslave0_PRDATA[9] ), .B(
        CoreAPB3_0_APBmslave0_PSELx), .Y(
        \ants_master_MSS_0_MSS_MASTER_APB_PRDATA[9] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[30]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_39_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_204 ));
    AO1 \servo_control_0/x_servo/pwm_signal10_0_I_139  (.A(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ), 
        .B(\servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] ), 
        .C(\servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/x_servo/DWACT_COMP0_E[2] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
