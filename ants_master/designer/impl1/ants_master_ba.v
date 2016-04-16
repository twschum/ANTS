`timescale 1 ns/100 ps
// Version: v11.5 SP3 11.5.3.10
// File used only for Simulation


module ants_master(
       MSS_RESET_N,
       SPI_1_DI,
       UART_0_RXD,
       UART_1_RXD,
       VAREF0,
       sensor_pwm,
       stop_x,
       stop_y,
       GPIO_0_OUT,
       GPIO_1_OUT,
       SDD_0,
       SPI_1_DO,
       UART_0_TXD,
       UART_1_TXD,
       x_servo_pwm,
       y_servo_pwm,
       SPI_1_CLK,
       SPI_1_SS,
       fab_pin
    );
input  MSS_RESET_N;
input  SPI_1_DI;
input  UART_0_RXD;
input  UART_1_RXD;
input  VAREF0;
input  sensor_pwm;
input  [1:0] stop_x;
input  [1:0] stop_y;
output GPIO_0_OUT;
output GPIO_1_OUT;
output SDD_0;
output SPI_1_DO;
output UART_0_TXD;
output UART_1_TXD;
output x_servo_pwm;
output y_servo_pwm;
inout  SPI_1_CLK;
inout  SPI_1_SS;
inout  fab_pin;

    wire FAB_CLK, ants_master_MSS_0_M2F_RESET_N, 
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
        ants_master_MSS_0_MSS_MASTER_APB_PSELx, 
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
        \CoreAPB3_0_APBmslave1_PRDATA[0] , 
        \CoreAPB3_0_APBmslave1_PRDATA[2] , 
        \CoreAPB3_0_APBmslave2_PRDATA[0] , 
        \CoreAPB3_0_APBmslave2_PRDATA[1] , 
        \CoreAPB3_0_APBmslave2_PRDATA[2] , 
        \CoreAPB3_0_APBmslave2_PRDATA[3] , 
        \CoreAPB3_0_APBmslave2_PRDATA[4] , 
        \CoreAPB3_0_APBmslave2_PRDATA[5] , 
        \CoreAPB3_0_APBmslave2_PRDATA[6] , 
        \CoreAPB3_0_APBmslave2_PRDATA[7] , 
        \CoreAPB3_0_APBmslave2_PRDATA[8] , 
        \CoreAPB3_0_APBmslave2_PRDATA[9] , 
        \CoreAPB3_0_APBmslave2_PRDATA[10] , 
        \CoreAPB3_0_APBmslave2_PRDATA[11] , 
        \CoreAPB3_0_APBmslave2_PRDATA[12] , 
        \CoreAPB3_0_APBmslave2_PRDATA[13] , 
        \CoreAPB3_0_APBmslave2_PRDATA[14] , 
        \CoreAPB3_0_APBmslave2_PRDATA[15] , 
        \CoreAPB3_0_APBmslave2_PRDATA[16] , 
        \CoreAPB3_0_APBmslave2_PRDATA[17] , 
        \CoreAPB3_0_APBmslave2_PRDATA[18] , 
        \CoreAPB3_0_APBmslave2_PRDATA[19] , 
        \CoreAPB3_0_APBmslave2_PRDATA[20] , 
        \CoreAPB3_0_APBmslave2_PRDATA[21] , 
        \CoreAPB3_0_APBmslave2_PRDATA[22] , 
        \CoreAPB3_0_APBmslave2_PRDATA[23] , 
        \CoreAPB3_0_APBmslave2_PRDATA[24] , 
        \CoreAPB3_0_APBmslave2_PRDATA[25] , 
        \CoreAPB3_0_APBmslave2_PRDATA[26] , 
        \CoreAPB3_0_APBmslave2_PRDATA[27] , 
        \CoreAPB3_0_APBmslave2_PRDATA[28] , 
        \CoreAPB3_0_APBmslave2_PRDATA[29] , 
        \CoreAPB3_0_APBmslave2_PRDATA[30] , 
        \CoreAPB3_0_APBmslave2_PRDATA[31] , N_7, N_9, N_11, N_13, 
        \PRDATA_0_iv_i[4] , \PRDATA_0_iv_i[5] , \PRDATA_0_iv_i[6] , 
        \PRDATA_0_iv_i[7] , N_24, N_26, N_28, N_30, N_32, N_34, N_36, 
        N_38, N_40, N_42, N_44, N_46, N_48, N_50, N_52, N_54, N_56, 
        N_58, N_60, N_62, N_64, N_66, N_68, N_70, 
        \n64_magic_box_0.n64_serial_interface_0.fab_pin_1 , fab_pin_in, 
        sensor_pwm_c, \stop_x_c[0] , \stop_x_c[1] , \stop_y_c[0] , 
        \stop_y_c[1] , x_servo_pwm_c, y_servo_pwm_c, 
        \servo_control_0.un3_y_down_morelto13 , 
        \servo_control_0.un3_y_down_morelto31_1 , 
        \servo_control_0.un3_y_down_morelto31_2 , 
        \servo_control_0.un3_y_down_morelto31_4 , 
        \servo_control_0.un3_y_down_morelto31_5 , 
        \servo_control_0.un3_y_down_morelto31_6 , 
        \servo_control_0.un3_y_down_morelto31_7 , 
        \Dsensor_0.valid_read_5 , \Dsensor_0.valid_read_9 , N_16_mux, 
        \n64_magic_box_0.n64_apb_interface_0.write , 
        \CoreAPB3_0.m13_1 , \servo_control_0.un3_y_down_morelt8_3_0 , 
        \servo_control_0.un3_y_down_morelt8_3_1 , 
        \CoreAPB3_0_APBmslave0_PADDR_0[8] , 
        \ants_master_MSS_0/MSS_ADLIB_INST_MSSPADDR[9] , 
        \ants_master_MSS_0/MSS_ADLIB_INST_M2FRESETn , 
        \ants_master_MSS_0/MSS_UART_1_TXD_D , 
        \ants_master_MSS_0/MSS_UART_1_RXD_Y , 
        \ants_master_MSS_0/MSS_UART_0_TXD_D , 
        \ants_master_MSS_0/MSS_UART_0_RXD_Y , 
        \ants_master_MSS_0/MSS_SPI_1_SS_Y , 
        \ants_master_MSS_0/SPI1SSO_net_0[0] , 
        \ants_master_MSS_0/MSS_SPI_1_SS_E , 
        \ants_master_MSS_0/MSS_SPI_1_DO_D , 
        \ants_master_MSS_0/MSS_SPI_1_DO_E , 
        \ants_master_MSS_0/MSS_SPI_1_DI_Y , 
        \ants_master_MSS_0/MSS_SPI_1_CLK_Y , 
        \ants_master_MSS_0/MSS_SPI_1_CLK_D , 
        \ants_master_MSS_0/MSS_RESET_0_MSS_RESET_N_Y , 
        \ants_master_MSS_0/GPO_net_0[1] , 
        \ants_master_MSS_0/GPO_net_0[0] , 
        \ants_master_MSS_0/MSS_ADLIB_INST_EMCCLK , PLLEN_VCC, 
        GLMUXINT_GND, \ants_master_MSS_0/GLA0 , 
        \ants_master_MSS_0/MSS_ACE_0_SDD0_D , 
        \ants_master_MSS_0/MSS_ACE_0_VAREF0_Y , 
        \ants_master_MSS_0/MSS_CCC_0/N_CLKA_RCOSC , 
        \servo_control_0/set_y_0 , \servo_control_0/N_71 , 
        \servo_control_0/set_x_neutral_or_stop_0_a2_0_0 , 
        \servo_control_0/un1_read_lower_stop_1_i_a2_4_net_1 , 
        \servo_control_0/un1_read_lower_stop_1_i_a2_5_net_1 , 
        \servo_control_0/PRDATA_6_iv_0_a4_3_0[0]_net_1 , 
        \servo_control_0/un3_y_down_morelt31_3 , 
        \servo_control_0/un3_y_down_morelt31_2_net_1 , 
        \servo_control_0/un3_y_down_morelt31_1_net_1 , 
        \servo_control_0/un3_y_down_morelt3_0_net_1 , 
        \servo_control_0/un1_read_lower_stop_1_i_a2_3_net_1 , 
        \servo_control_0/un1_read_lower_stop_1_i_a2_1_net_1 , 
        \servo_control_0/N_43 , \servo_control_0/N_46_2 , 
        \servo_control_0/set_x_neutral_or_stop , 
        \servo_control_0/N_44 , \servo_control_0/N_45 , 
        \servo_control_0/N_69 , \servo_control_0/N_73 , 
        \servo_control_0/N_70 , \servo_control_0/un3_y_down_morelto31 , 
        \servo_control_0/N_49 , \servo_control_0/un3_y_up_morelt31 , 
        \servo_control_0/un3_y_down_morelt31_net_1 , 
        \servo_control_0/N_46 , 
        \servo_control_0/set_y_neutral_or_stop , 
        \servo_control_0/N_47 , \servo_control_0/N_48 , 
        \servo_control_0/N_41 , \servo_control_0/N_61 , 
        \servo_control_0/un3_y_down_morelto16 , 
        \servo_control_0/un3_y_up_morelt16 , 
        \servo_control_0/un3_y_up_morelt13 , 
        \servo_control_0/un3_y_down_morelto8_net_1 , 
        \servo_control_0/un3_y_down_morelto10 , \servo_control_0/N_28 , 
        \servo_control_0/N_29 , \servo_control_0/N_30 , 
        \servo_control_0/PRDATA_6_iv[0] , \servo_control_0/N_68 , 
        \servo_control_0/set_y , 
        \servo_control_0/un3_y_down_morelt10_net_1 , 
        \servo_control_0/un3_y_down_morelt13_net_1 , 
        \servo_control_0/un3_y_down_morelt16_net_1 , 
        \servo_control_0/set_y_reverse , \servo_control_0/set_x , 
        \servo_control_0/set_x_reverse , 
        \servo_control_0/x_servo/pw_0_sqmuxa_0 , 
        \servo_control_0/x_servo/un1_time_count , 
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 , 
        \servo_control_0/x_servo/N_22 , 
        \servo_control_0/x_servo/N_22_0 , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] , 
        \servo_control_0/x_servo/DWACT_COMP0_E[0] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] , 
        \servo_control_0/x_servo/N_41 , 
        \servo_control_0/x_servo/pw[23]_net_1 , 
        \servo_control_0/x_servo/N_37 , 
        \servo_control_0/x_servo/pw[22]_net_1 , 
        \servo_control_0/x_servo/pw[21]_net_1 , 
        \servo_control_0/x_servo/un1_time_countlto20_2 , 
        \servo_control_0/x_servo/time_count[20]_net_1 , 
        \servo_control_0/x_servo/time_count[19]_net_1 , 
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
        \servo_control_0/x_servo/next_pw_4_sqmuxa , 
        \servo_control_0/x_servo/N_23 , 
        \servo_control_0/x_servo/time_count[16]_net_1 , 
        \servo_control_0/x_servo/un1_time_countlt16 , 
        \servo_control_0/x_servo/time_count_n20 , 
        \servo_control_0/x_servo/time_count_47_0 , 
        \servo_control_0/x_servo/time_count_c18 , 
        \servo_control_0/x_servo/time_count_n5 , 
        \servo_control_0/x_servo/time_count_c4 , 
        \servo_control_0/x_servo/time_count_n6 , 
        \servo_control_0/x_servo/time_count_c5 , 
        \servo_control_0/x_servo/pw_0_sqmuxa , 
        \servo_control_0/x_servo/time_count_n7 , 
        \servo_control_0/x_servo/time_count_c6 , 
        \servo_control_0/x_servo/time_count_n8 , 
        \servo_control_0/x_servo/time_count_c7 , 
        \servo_control_0/x_servo/time_count_n9 , 
        \servo_control_0/x_servo/time_count_c8 , 
        \servo_control_0/x_servo/time_count_n10 , 
        \servo_control_0/x_servo/time_count_c9 , 
        \servo_control_0/x_servo/time_count_n11 , 
        \servo_control_0/x_servo/time_count_c10 , 
        \servo_control_0/x_servo/time_count_n15 , 
        \servo_control_0/x_servo/time_count_c14 , 
        \servo_control_0/x_servo/time_count[15]_net_1 , 
        \servo_control_0/x_servo/time_count_n16 , 
        \servo_control_0/x_servo/time_count_n16_tz , 
        \servo_control_0/x_servo/time_count_n19 , 
        \servo_control_0/x_servo/time_count_n18 , 
        \servo_control_0/x_servo/time_count_n18_tz , 
        \servo_control_0/x_servo/time_count_c16 , 
        \servo_control_0/x_servo/time_count_n17 , 
        \servo_control_0/x_servo/time_count_n14 , 
        \servo_control_0/x_servo/time_count_n14_tz , 
        \servo_control_0/x_servo/time_count_c12 , 
        \servo_control_0/x_servo/time_count_n13 , 
        \servo_control_0/x_servo/time_count_n12 , 
        \servo_control_0/x_servo/time_count_n12_tz , 
        \servo_control_0/x_servo/time_count_n4 , 
        \servo_control_0/x_servo/time_count_c3 , 
        \servo_control_0/x_servo/time_count_n3 , 
        \servo_control_0/x_servo/time_count_n2 , 
        \servo_control_0/x_servo/time_count_n2_tz , 
        \servo_control_0/x_servo/time_count[1]_net_1 , 
        \servo_control_0/x_servo/time_count[0]_net_1 , 
        \servo_control_0/x_servo/time_count[2]_net_1 , 
        \servo_control_0/x_servo/next_pw_4[0] , 
        \servo_control_0/x_servo/next_pw_4[1] , 
        \servo_control_0/x_servo/next_pw_4[2] , 
        \servo_control_0/x_servo/next_pw_4[3] , 
        \servo_control_0/x_servo/next_pw_4[13] , 
        \servo_control_0/x_servo/next_pw_4[20] , 
        \servo_control_0/x_servo/next_pw_4[30] , 
        \servo_control_0/x_servo/next_pw_4[31] , 
        \servo_control_0/x_servo/pw_RNO[0]_net_1 , 
        \servo_control_0/x_servo/N_234 , 
        \servo_control_0/x_servo/pw_RNO[1]_net_1 , 
        \servo_control_0/x_servo/N_235 , 
        \servo_control_0/x_servo/pw_RNO[2]_net_1 , 
        \servo_control_0/x_servo/N_236 , 
        \servo_control_0/x_servo/pw_RNO[3]_net_1 , 
        \servo_control_0/x_servo/N_237 , 
        \servo_control_0/x_servo/pw_RNO[13]_net_1 , 
        \servo_control_0/x_servo/N_247 , 
        \servo_control_0/x_servo/pw_RNO[21]_net_1 , 
        \servo_control_0/x_servo/N_255 , 
        \servo_control_0/x_servo/pw_RNO[22]_net_1 , 
        \servo_control_0/x_servo/N_256 , 
        \servo_control_0/x_servo/pw_RNO[5]_net_1 , 
        \servo_control_0/x_servo/N_239 , 
        \servo_control_0/x_servo/pw_RNO[7]_net_1 , 
        \servo_control_0/x_servo/N_241 , 
        \servo_control_0/x_servo/next_pw[0]_net_1 , 
        \servo_control_0/x_servo/pw[0]_net_1 , 
        \servo_control_0/x_servo/next_pw[1]_net_1 , 
        \servo_control_0/x_servo/pw[1]_net_1 , 
        \servo_control_0/x_servo/next_pw[2]_net_1 , 
        \servo_control_0/x_servo/pw[2]_net_1 , 
        \servo_control_0/x_servo/next_pw[3]_net_1 , 
        \servo_control_0/x_servo/pw[3]_net_1 , 
        \servo_control_0/x_servo/next_pw[5]_net_1 , 
        \servo_control_0/x_servo/pw[5]_net_1 , 
        \servo_control_0/x_servo/next_pw[7]_net_1 , 
        \servo_control_0/x_servo/pw[7]_net_1 , 
        \servo_control_0/x_servo/next_pw[13]_net_1 , 
        \servo_control_0/x_servo/pw[13]_net_1 , 
        \servo_control_0/x_servo/next_pw[21]_net_1 , 
        \servo_control_0/x_servo/next_pw[22]_net_1 , 
        \servo_control_0/x_servo/next_pw_4[7] , 
        \servo_control_0/x_servo/N_24 , 
        \servo_control_0/x_servo/un1_time_countlt14 , 
        \servo_control_0/x_servo/time_count_n1 , 
        \servo_control_0/x_servo/time_count_n0 , 
        \servo_control_0/x_servo/N_262 , 
        \servo_control_0/x_servo/next_pw[28]_net_1 , 
        \servo_control_0/x_servo/pw[28]_net_1 , 
        \servo_control_0/x_servo/N_258 , 
        \servo_control_0/x_servo/next_pw[24]_net_1 , 
        \servo_control_0/x_servo/pw[24]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[28]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[24]_net_1 , 
        \servo_control_0/x_servo/next_pw_4[25] , 
        \servo_control_0/x_servo/next_pw_4[23] , 
        \servo_control_0/x_servo/next_pw_4[26] , 
        \servo_control_0/x_servo/next_pw_4[27] , 
        \servo_control_0/x_servo/next_pw_4[28] , 
        \servo_control_0/x_servo/next_pw_4[29] , 
        \servo_control_0/x_servo/N_233 , 
        \servo_control_0/x_servo/I_140 , 
        \servo_control_0/x_servo/pwm_signal_RNO_net_1 , 
        \servo_control_0/x_servo/pw_RNO[23]_net_1 , 
        \servo_control_0/x_servo/N_257 , 
        \servo_control_0/x_servo/pw_RNO[25]_net_1 , 
        \servo_control_0/x_servo/N_259 , 
        \servo_control_0/x_servo/pw_RNO[29]_net_1 , 
        \servo_control_0/x_servo/N_263 , 
        \servo_control_0/x_servo/next_pw[23]_net_1 , 
        \servo_control_0/x_servo/next_pw[25]_net_1 , 
        \servo_control_0/x_servo/pw[25]_net_1 , 
        \servo_control_0/x_servo/next_pw[29]_net_1 , 
        \servo_control_0/x_servo/pw[29]_net_1 , 
        \servo_control_0/x_servo/N_6 , \servo_control_0/x_servo/N_265 , 
        \servo_control_0/x_servo/next_pw[31]_net_1 , 
        \servo_control_0/x_servo/pw[31]_net_1 , 
        \servo_control_0/x_servo/N_264 , 
        \servo_control_0/x_servo/next_pw[30]_net_1 , 
        \servo_control_0/x_servo/pw[30]_net_1 , 
        \servo_control_0/x_servo/N_252 , 
        \servo_control_0/x_servo/next_pw[18]_net_1 , 
        \servo_control_0/x_servo/pw[18]_net_1 , 
        \servo_control_0/x_servo/N_250 , 
        \servo_control_0/x_servo/next_pw[16]_net_1 , 
        \servo_control_0/x_servo/pw[16]_net_1 , 
        \servo_control_0/x_servo/N_246 , 
        \servo_control_0/x_servo/next_pw[12]_net_1 , 
        \servo_control_0/x_servo/pw[12]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[31]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[30]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[18]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[16]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[12]_net_1 , 
        \servo_control_0/x_servo/next_pw_4[24] , 
        \servo_control_0/x_servo/next_pw_4[22] , 
        \servo_control_0/x_servo/next_pw_4[21] , 
        \servo_control_0/x_servo/next_pw_4[19] , 
        \servo_control_0/x_servo/next_pw_4[18] , 
        \servo_control_0/x_servo/next_pw_4[12] , 
        \servo_control_0/x_servo/pw_RNO[27]_net_1 , 
        \servo_control_0/x_servo/N_261 , 
        \servo_control_0/x_servo/next_pw[27]_net_1 , 
        \servo_control_0/x_servo/pw[27]_net_1 , 
        \servo_control_0/x_servo/N_240 , 
        \servo_control_0/x_servo/next_pw[6]_net_1 , 
        \servo_control_0/x_servo/pw[6]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[6]_net_1 , 
        \servo_control_0/x_servo/next_pw_4[17] , 
        \servo_control_0/x_servo/N_8 , 
        \servo_control_0/x_servo/next_pw_4[14] , 
        \servo_control_0/x_servo/next_pw_4[11] , 
        \servo_control_0/x_servo/N_12 , \servo_control_0/x_servo/N_14 , 
        \servo_control_0/x_servo/next_pw_4[8] , 
        \servo_control_0/x_servo/next_pw_4[6] , 
        \servo_control_0/x_servo/next_pw_4[5] , 
        \servo_control_0/x_servo/next_pw_4[4] , 
        \servo_control_0/x_servo/N_251 , 
        \servo_control_0/x_servo/next_pw[17]_net_1 , 
        \servo_control_0/x_servo/pw[17]_net_1 , 
        \servo_control_0/x_servo/N_249 , 
        \servo_control_0/x_servo/next_pw[15]_net_1 , 
        \servo_control_0/x_servo/pw[15]_net_1 , 
        \servo_control_0/x_servo/N_248 , 
        \servo_control_0/x_servo/next_pw[14]_net_1 , 
        \servo_control_0/x_servo/pw[14]_net_1 , 
        \servo_control_0/x_servo/N_245 , 
        \servo_control_0/x_servo/next_pw[11]_net_1 , 
        \servo_control_0/x_servo/pw[11]_net_1 , 
        \servo_control_0/x_servo/N_244 , 
        \servo_control_0/x_servo/next_pw[10]_net_1 , 
        \servo_control_0/x_servo/pw[10]_net_1 , 
        \servo_control_0/x_servo/N_243 , 
        \servo_control_0/x_servo/next_pw[9]_net_1 , 
        \servo_control_0/x_servo/pw[9]_net_1 , 
        \servo_control_0/x_servo/N_242 , 
        \servo_control_0/x_servo/next_pw[8]_net_1 , 
        \servo_control_0/x_servo/pw[8]_net_1 , 
        \servo_control_0/x_servo/N_238 , 
        \servo_control_0/x_servo/next_pw[4]_net_1 , 
        \servo_control_0/x_servo/pw[4]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[17]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[14]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[11]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[8]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[4]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[15]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[10]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[9]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[26]_net_1 , 
        \servo_control_0/x_servo/N_260 , 
        \servo_control_0/x_servo/next_pw[26]_net_1 , 
        \servo_control_0/x_servo/pw[26]_net_1 , 
        \servo_control_0/x_servo/N_254 , 
        \servo_control_0/x_servo/next_pw[20]_net_1 , 
        \servo_control_0/x_servo/pw[20]_net_1 , 
        \servo_control_0/x_servo/N_253 , 
        \servo_control_0/x_servo/next_pw[19]_net_1 , 
        \servo_control_0/x_servo/pw[19]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[20]_net_1 , 
        \servo_control_0/x_servo/pw_RNO[19]_net_1 , 
        \servo_control_0/x_servo/DWACT_COMP0_E[1] , 
        \servo_control_0/x_servo/DWACT_COMP0_E[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[1] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[0] , 
        \servo_control_0/x_servo/N_11 , \servo_control_0/x_servo/N_10 , 
        \servo_control_0/x_servo/N_9 , \servo_control_0/x_servo/N_6_0 , 
        \servo_control_0/x_servo/N_8_0 , \servo_control_0/x_servo/N_7 , 
        \servo_control_0/x_servo/N_5 , \servo_control_0/x_servo/N_2 , 
        \servo_control_0/x_servo/N_3 , \servo_control_0/x_servo/N_4 , 
        \servo_control_0/x_servo/N_21 , \servo_control_0/x_servo/N_20 , 
        \servo_control_0/x_servo/N_19 , \servo_control_0/x_servo/N_16 , 
        \servo_control_0/x_servo/N_18 , \servo_control_0/x_servo/N_17 , 
        \servo_control_0/x_servo/N_15 , 
        \servo_control_0/x_servo/N_12_0 , 
        \servo_control_0/x_servo/N_13 , 
        \servo_control_0/x_servo/N_14_0 , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[4] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[1] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[2] , 
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] , 
        \servo_control_0/x_servo/N_31 , 
        \servo_control_0/x_servo/N_30_0 , 
        \servo_control_0/x_servo/N_29 , \servo_control_0/x_servo/N_26 , 
        \servo_control_0/x_servo/N_28_0 , 
        \servo_control_0/x_servo/N_27 , \servo_control_0/x_servo/N_25 , 
        \servo_control_0/x_servo/N_22_1 , 
        \servo_control_0/x_servo/N_23_0 , 
        \servo_control_0/x_servo/N_24_0 , 
        \servo_control_0/x_servo/ACT_LT4_E[3] , 
        \servo_control_0/x_servo/ACT_LT4_E[6] , 
        \servo_control_0/x_servo/ACT_LT4_E[10] , 
        \servo_control_0/x_servo/ACT_LT4_E[7] , 
        \servo_control_0/x_servo/ACT_LT4_E[8] , 
        \servo_control_0/x_servo/ACT_LT4_E[5] , 
        \servo_control_0/x_servo/ACT_LT4_E[0] , 
        \servo_control_0/x_servo/ACT_LT4_E[1] , 
        \servo_control_0/x_servo/ACT_LT4_E[2] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[2] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[2] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[3] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[4] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[5] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[6] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[7] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[8] , 
        \servo_control_0/x_servo/N_36 , 
        \servo_control_0/x_servo/N_38_0 , 
        \servo_control_0/x_servo/N_34 , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] , 
        \servo_control_0/x_servo/DWACT_BL_ANDTREE_0_DWACT_BL_ANDTREE_0_E[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[3] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_3[0] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[2] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_2[1] , 
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_2[0] , 
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 , 
        \servo_control_0/y_servo/N_22_0 , 
        \servo_control_0/y_servo/pw_0_sqmuxa_1 , 
        \servo_control_0/y_servo/un1_time_count , 
        \servo_control_0/y_servo/pw_0_sqmuxa_0 , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] , 
        \servo_control_0/y_servo/DWACT_COMP0_E[0] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] , 
        \servo_control_0/y_servo/N_41 , 
        \servo_control_0/y_servo/pw[23]_net_1 , 
        \servo_control_0/y_servo/N_37 , 
        \servo_control_0/y_servo/pw[22]_net_1 , 
        \servo_control_0/y_servo/pw[21]_net_1 , 
        \servo_control_0/y_servo/un1_time_countlto20_2 , 
        \servo_control_0/y_servo/time_count[20]_net_1 , 
        \servo_control_0/y_servo/time_count[19]_net_1 , 
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
        \servo_control_0/y_servo/N_22 , 
        \servo_control_0/y_servo/time_count[16]_net_1 , 
        \servo_control_0/y_servo/un1_time_countlt16 , 
        \servo_control_0/y_servo/next_pw_4_sqmuxa , 
        \servo_control_0/y_servo/N_23 , 
        \servo_control_0/y_servo/time_count_n20 , 
        \servo_control_0/y_servo/time_count_47_0 , 
        \servo_control_0/y_servo/pw_0_sqmuxa , 
        \servo_control_0/y_servo/time_count_c18 , 
        \servo_control_0/y_servo/time_count_n19 , 
        \servo_control_0/y_servo/time_count_n18 , 
        \servo_control_0/y_servo/time_count_n18_tz , 
        \servo_control_0/y_servo/time_count_c16 , 
        \servo_control_0/y_servo/time_count_n17 , 
        \servo_control_0/y_servo/time_count_n16 , 
        \servo_control_0/y_servo/time_count_c15 , 
        \servo_control_0/y_servo/time_count_n15 , 
        \servo_control_0/y_servo/time_count_c14 , 
        \servo_control_0/y_servo/time_count[15]_net_1 , 
        \servo_control_0/y_servo/time_count_n14 , 
        \servo_control_0/y_servo/time_count_n14_tz , 
        \servo_control_0/y_servo/time_count_c12 , 
        \servo_control_0/y_servo/time_count_n13 , 
        \servo_control_0/y_servo/time_count_n12 , 
        \servo_control_0/y_servo/time_count_n12_tz , 
        \servo_control_0/y_servo/time_count_n11 , 
        \servo_control_0/y_servo/time_count_c10 , 
        \servo_control_0/y_servo/time_count_n10 , 
        \servo_control_0/y_servo/time_count_c9 , 
        \servo_control_0/y_servo/time_count_n9 , 
        \servo_control_0/y_servo/time_count_c8 , 
        \servo_control_0/y_servo/time_count_n8 , 
        \servo_control_0/y_servo/time_count_n8_tz , 
        \servo_control_0/y_servo/time_count_c6 , 
        \servo_control_0/y_servo/time_count_n7 , 
        \servo_control_0/y_servo/time_count_n6 , 
        \servo_control_0/y_servo/time_count_n6_tz , 
        \servo_control_0/y_servo/time_count_c4 , 
        \servo_control_0/y_servo/time_count_n5 , 
        \servo_control_0/y_servo/time_count_n4 , 
        \servo_control_0/y_servo/time_count_n4_tz , 
        \servo_control_0/y_servo/time_count_n3 , 
        \servo_control_0/y_servo/time_count_n2 , 
        \servo_control_0/y_servo/time_count_n2_tz , 
        \servo_control_0/y_servo/time_count[1]_net_1 , 
        \servo_control_0/y_servo/time_count[0]_net_1 , 
        \servo_control_0/y_servo/time_count[2]_net_1 , 
        \servo_control_0/y_servo/next_pw_4[3] , 
        \servo_control_0/y_servo/next_pw_4[18] , 
        \servo_control_0/y_servo/next_pw_4[21] , 
        \servo_control_0/y_servo/next_pw_4[24] , 
        \servo_control_0/y_servo/next_pw_4[26] , 
        \servo_control_0/y_servo/next_pw_4[27] , 
        \servo_control_0/y_servo/next_pw_4[29] , 
        \servo_control_0/y_servo/next_pw_4[30] , 
        \servo_control_0/y_servo/pw_RNO_0[1]_net_1 , 
        \servo_control_0/y_servo/N_235 , 
        \servo_control_0/y_servo/pw_RNO_0[3]_net_1 , 
        \servo_control_0/y_servo/N_237 , 
        \servo_control_0/y_servo/pw_RNO_0[9]_net_1 , 
        \servo_control_0/y_servo/N_243 , 
        \servo_control_0/y_servo/pw_RNO_0[12]_net_1 , 
        \servo_control_0/y_servo/N_246 , 
        \servo_control_0/y_servo/pw_RNO_0[15]_net_1 , 
        \servo_control_0/y_servo/N_249 , 
        \servo_control_0/y_servo/pw_RNO_0[21]_net_1 , 
        \servo_control_0/y_servo/N_255 , 
        \servo_control_0/y_servo/pw_RNO_0[22]_net_1 , 
        \servo_control_0/y_servo/N_256 , 
        \servo_control_0/y_servo/pw_RNO_0[23]_net_1 , 
        \servo_control_0/y_servo/N_257 , 
        \servo_control_0/y_servo/pw_RNO_0[24]_net_1 , 
        \servo_control_0/y_servo/N_258 , 
        \servo_control_0/y_servo/pw_RNO_0[25]_net_1 , 
        \servo_control_0/y_servo/N_259 , 
        \servo_control_0/y_servo/pw_RNO_0[26]_net_1 , 
        \servo_control_0/y_servo/N_260 , 
        \servo_control_0/y_servo/pw_RNO_0[29]_net_1 , 
        \servo_control_0/y_servo/N_263 , 
        \servo_control_0/y_servo/pw_RNO_0[5]_net_1 , 
        \servo_control_0/y_servo/N_239 , 
        \servo_control_0/y_servo/pw_RNO_0[11]_net_1 , 
        \servo_control_0/y_servo/N_245 , 
        \servo_control_0/y_servo/next_pw[1]_net_1 , 
        \servo_control_0/y_servo/pw[1]_net_1 , 
        \servo_control_0/y_servo/next_pw[3]_net_1 , 
        \servo_control_0/y_servo/pw[3]_net_1 , 
        \servo_control_0/y_servo/next_pw[5]_net_1 , 
        \servo_control_0/y_servo/pw[5]_net_1 , 
        \servo_control_0/y_servo/next_pw[9]_net_1 , 
        \servo_control_0/y_servo/pw[9]_net_1 , 
        \servo_control_0/y_servo/next_pw[11]_net_1 , 
        \servo_control_0/y_servo/pw[11]_net_1 , 
        \servo_control_0/y_servo/next_pw[12]_net_1 , 
        \servo_control_0/y_servo/pw[12]_net_1 , 
        \servo_control_0/y_servo/next_pw[15]_net_1 , 
        \servo_control_0/y_servo/pw[15]_net_1 , 
        \servo_control_0/y_servo/next_pw[21]_net_1 , 
        \servo_control_0/y_servo/next_pw[22]_net_1 , 
        \servo_control_0/y_servo/next_pw[23]_net_1 , 
        \servo_control_0/y_servo/next_pw[24]_net_1 , 
        \servo_control_0/y_servo/pw[24]_net_1 , 
        \servo_control_0/y_servo/next_pw[25]_net_1 , 
        \servo_control_0/y_servo/pw[25]_net_1 , 
        \servo_control_0/y_servo/next_pw[26]_net_1 , 
        \servo_control_0/y_servo/pw[26]_net_1 , 
        \servo_control_0/y_servo/next_pw[29]_net_1 , 
        \servo_control_0/y_servo/pw[29]_net_1 , 
        \servo_control_0/y_servo/next_pw_4[5] , 
        \servo_control_0/y_servo/N_24 , 
        \servo_control_0/y_servo/next_pw_4[11] , 
        \servo_control_0/y_servo/next_pw_4[17] , 
        \servo_control_0/y_servo/pw_RNO_0[10]_net_1 , 
        \servo_control_0/y_servo/N_244 , 
        \servo_control_0/y_servo/pw_RNO_0[4]_net_1 , 
        \servo_control_0/y_servo/N_238 , 
        \servo_control_0/y_servo/pw_RNO_0[14]_net_1 , 
        \servo_control_0/y_servo/N_248 , 
        \servo_control_0/y_servo/next_pw[4]_net_1 , 
        \servo_control_0/y_servo/pw[4]_net_1 , 
        \servo_control_0/y_servo/next_pw[10]_net_1 , 
        \servo_control_0/y_servo/pw[10]_net_1 , 
        \servo_control_0/y_servo/next_pw[14]_net_1 , 
        \servo_control_0/y_servo/pw[14]_net_1 , 
        \servo_control_0/y_servo/N_236 , 
        \servo_control_0/y_servo/next_pw[2]_net_1 , 
        \servo_control_0/y_servo/pw[2]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[2]_net_1 , 
        \servo_control_0/y_servo/N_265 , 
        \servo_control_0/y_servo/next_pw[31]_net_1 , 
        \servo_control_0/y_servo/pw[31]_net_1 , 
        \servo_control_0/y_servo/N_264 , 
        \servo_control_0/y_servo/next_pw[30]_net_1 , 
        \servo_control_0/y_servo/pw[30]_net_1 , 
        \servo_control_0/y_servo/N_253 , 
        \servo_control_0/y_servo/next_pw[19]_net_1 , 
        \servo_control_0/y_servo/pw[19]_net_1 , 
        \servo_control_0/y_servo/N_251 , 
        \servo_control_0/y_servo/next_pw[17]_net_1 , 
        \servo_control_0/y_servo/pw[17]_net_1 , 
        \servo_control_0/y_servo/N_234 , 
        \servo_control_0/y_servo/next_pw[0]_net_1 , 
        \servo_control_0/y_servo/pw[0]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[17]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[31]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[30]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[19]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[0]_net_1 , 
        \servo_control_0/y_servo/next_pw_4[31] , 
        \servo_control_0/y_servo/next_pw_4[25] , 
        \servo_control_0/y_servo/next_pw_4[23] , 
        \servo_control_0/y_servo/next_pw_4[22] , 
        \servo_control_0/y_servo/next_pw_4[20] , 
        \servo_control_0/y_servo/next_pw_4[19] , 
        \servo_control_0/y_servo/next_pw_4[1] , 
        \servo_control_0/y_servo/N_6 , 
        \servo_control_0/y_servo/next_pw_4[14] , 
        \servo_control_0/y_servo/N_12 , 
        \servo_control_0/y_servo/next_pw_4[4] , 
        \servo_control_0/y_servo/next_pw_4[8] , 
        \servo_control_0/y_servo/next_pw_4[7] , 
        \servo_control_0/y_servo/N_262 , 
        \servo_control_0/y_servo/next_pw[28]_net_1 , 
        \servo_control_0/y_servo/pw[28]_net_1 , 
        \servo_control_0/y_servo/N_261 , 
        \servo_control_0/y_servo/next_pw[27]_net_1 , 
        \servo_control_0/y_servo/pw[27]_net_1 , 
        \servo_control_0/y_servo/N_250 , 
        \servo_control_0/y_servo/next_pw[16]_net_1 , 
        \servo_control_0/y_servo/pw[16]_net_1 , 
        \servo_control_0/y_servo/N_242 , 
        \servo_control_0/y_servo/next_pw[8]_net_1 , 
        \servo_control_0/y_servo/pw[8]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[8]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[28]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[27]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[16]_net_1 , 
        \servo_control_0/y_servo/next_pw_4[28] , 
        \servo_control_0/y_servo/next_pw_4[12] , 
        \servo_control_0/y_servo/next_pw_4[2] , 
        \servo_control_0/y_servo/next_pw_4[0] , 
        \servo_control_0/y_servo/time_count_n1 , 
        \servo_control_0/y_servo/time_count_n0 , 
        \servo_control_0/y_servo/un1_time_countlt14 , 
        \servo_control_0/y_servo/N_254 , 
        \servo_control_0/y_servo/next_pw[20]_net_1 , 
        \servo_control_0/y_servo/pw[20]_net_1 , 
        \servo_control_0/y_servo/N_252 , 
        \servo_control_0/y_servo/next_pw[18]_net_1 , 
        \servo_control_0/y_servo/pw[18]_net_1 , 
        \servo_control_0/y_servo/N_247 , 
        \servo_control_0/y_servo/next_pw[13]_net_1 , 
        \servo_control_0/y_servo/pw[13]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[20]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[18]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[13]_net_1 , 
        \servo_control_0/y_servo/pwm_signal_RNO_0_net_1 , 
        \servo_control_0/y_servo/N_233 , 
        \servo_control_0/y_servo/I_140_0 , 
        \servo_control_0/y_servo/next_pw_4[13] , 
        \servo_control_0/y_servo/N_8 , \servo_control_0/y_servo/N_14 , 
        \servo_control_0/y_servo/next_pw_4[6] , 
        \servo_control_0/y_servo/N_241 , 
        \servo_control_0/y_servo/next_pw[7]_net_1 , 
        \servo_control_0/y_servo/pw[7]_net_1 , 
        \servo_control_0/y_servo/N_240 , 
        \servo_control_0/y_servo/next_pw[6]_net_1 , 
        \servo_control_0/y_servo/pw[6]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[7]_net_1 , 
        \servo_control_0/y_servo/pw_RNO_0[6]_net_1 , 
        \servo_control_0/y_servo/DWACT_COMP0_E[1] , 
        \servo_control_0/y_servo/DWACT_COMP0_E[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[1] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[0] , 
        \servo_control_0/y_servo/N_11 , \servo_control_0/y_servo/N_10 , 
        \servo_control_0/y_servo/N_9 , \servo_control_0/y_servo/N_6_0 , 
        \servo_control_0/y_servo/N_8_0 , \servo_control_0/y_servo/N_7 , 
        \servo_control_0/y_servo/N_5 , \servo_control_0/y_servo/N_2 , 
        \servo_control_0/y_servo/N_3 , \servo_control_0/y_servo/N_4 , 
        \servo_control_0/y_servo/N_21 , \servo_control_0/y_servo/N_20 , 
        \servo_control_0/y_servo/N_19 , \servo_control_0/y_servo/N_16 , 
        \servo_control_0/y_servo/N_18 , \servo_control_0/y_servo/N_17 , 
        \servo_control_0/y_servo/N_15 , 
        \servo_control_0/y_servo/N_12_0 , 
        \servo_control_0/y_servo/N_13 , 
        \servo_control_0/y_servo/N_14_0 , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[4] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[1] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[2] , 
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] , 
        \servo_control_0/y_servo/N_31 , 
        \servo_control_0/y_servo/N_30_0 , 
        \servo_control_0/y_servo/N_29 , \servo_control_0/y_servo/N_26 , 
        \servo_control_0/y_servo/N_28_0 , 
        \servo_control_0/y_servo/N_27 , \servo_control_0/y_servo/N_25 , 
        \servo_control_0/y_servo/N_22_1 , 
        \servo_control_0/y_servo/N_23_0 , 
        \servo_control_0/y_servo/N_24_0 , 
        \servo_control_0/y_servo/ACT_LT4_E[3] , 
        \servo_control_0/y_servo/ACT_LT4_E[6] , 
        \servo_control_0/y_servo/ACT_LT4_E[10] , 
        \servo_control_0/y_servo/ACT_LT4_E[7] , 
        \servo_control_0/y_servo/ACT_LT4_E[8] , 
        \servo_control_0/y_servo/ACT_LT4_E[5] , 
        \servo_control_0/y_servo/ACT_LT4_E[0] , 
        \servo_control_0/y_servo/ACT_LT4_E[1] , 
        \servo_control_0/y_servo/ACT_LT4_E[2] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[2] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[2] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[3] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[4] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[5] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[6] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[7] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[8] , 
        \servo_control_0/y_servo/N_36 , 
        \servo_control_0/y_servo/N_38_0 , 
        \servo_control_0/y_servo/N_34 , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] , 
        \servo_control_0/y_servo/DWACT_BL_ANDTREE_0_DWACT_BL_ANDTREE_0_E[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[3] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_3[0] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[2] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_2[1] , 
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_2[0] , 
        \CoreAPB3_0/m13_5_net_1 , \CoreAPB3_0/m13_4_net_1 , 
        \CoreAPB3_0/m13_3_net_1 , \CoreAPB3_0/u_mux_p_to_b3/N_71_0 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[5]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[4]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[1]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[0]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_84 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[3]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[7]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[2]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[10]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[14]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[31]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_114 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[8]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[29]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[28]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[27]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[30]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[11]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[9]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[6]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[26]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[25]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[24]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[23]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[22]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[21]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[20]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[19]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[18]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[17]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[16]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[15]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[13]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[12]_net_1 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_127 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_115 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_71 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_109 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_106 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_85 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_88 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_91 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_94 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_97 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_100 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_103 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_112 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_118 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_121 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_124 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_130 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_133 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_136 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_139 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_142 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_145 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_148 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_151 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_154 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_157 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_160 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_163 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_166 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_169 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_172 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_175 , 
        \CoreAPB3_0/u_mux_p_to_b3/N_178 , 
        \Dsensor_0/valid_read_5_0_0_net_1 , 
        \Dsensor_0/valid_read_2_net_1 , 
        \Dsensor_0/valid_read_6_0_net_1 , 
        \Dsensor_0/valid_read_0_net_1 , \Dsensor_0/valid_read_6_net_1 , 
        \Dsensor_0/valid_read_5_0_net_1 , 
        \Dsensor_0/valid_read_9_1_net_1 , 
        \Dsensor_0/PRDATA_RNO[0]_net_1 , \Dsensor_0/distance_count[0] , 
        \Dsensor_0/PRDATA_RNO[1]_net_1 , \Dsensor_0/distance_count[1] , 
        \Dsensor_0/PRDATA_RNO[2]_net_1 , \Dsensor_0/distance_count[2] , 
        \Dsensor_0/PRDATA_RNO[3]_net_1 , \Dsensor_0/distance_count[3] , 
        \Dsensor_0/PRDATA_RNO[4]_net_1 , \Dsensor_0/distance_count[4] , 
        \Dsensor_0/PRDATA_RNO[5]_net_1 , \Dsensor_0/distance_count[5] , 
        \Dsensor_0/PRDATA_RNO[6]_net_1 , \Dsensor_0/distance_count[6] , 
        \Dsensor_0/PRDATA_RNO[7]_net_1 , \Dsensor_0/distance_count[7] , 
        \Dsensor_0/PRDATA_RNO[8]_net_1 , \Dsensor_0/distance_count[8] , 
        \Dsensor_0/PRDATA_RNO[9]_net_1 , \Dsensor_0/distance_count[9] , 
        \Dsensor_0/PRDATA_RNO[10]_net_1 , 
        \Dsensor_0/distance_count[10] , 
        \Dsensor_0/PRDATA_RNO[11]_net_1 , 
        \Dsensor_0/distance_count[11] , 
        \Dsensor_0/PRDATA_RNO[12]_net_1 , 
        \Dsensor_0/distance_count[12] , 
        \Dsensor_0/PRDATA_RNO[13]_net_1 , 
        \Dsensor_0/distance_count[13] , 
        \Dsensor_0/PRDATA_RNO[14]_net_1 , 
        \Dsensor_0/distance_count[14] , 
        \Dsensor_0/PRDATA_RNO[15]_net_1 , 
        \Dsensor_0/distance_count[15] , 
        \Dsensor_0/PRDATA_RNO[16]_net_1 , 
        \Dsensor_0/distance_count[16] , 
        \Dsensor_0/PRDATA_RNO[17]_net_1 , 
        \Dsensor_0/distance_count[17] , 
        \Dsensor_0/PRDATA_RNO[18]_net_1 , 
        \Dsensor_0/distance_count[18] , 
        \Dsensor_0/PRDATA_RNO[19]_net_1 , 
        \Dsensor_0/distance_count[19] , 
        \Dsensor_0/PRDATA_RNO[20]_net_1 , 
        \Dsensor_0/distance_count[20] , 
        \Dsensor_0/PRDATA_RNO[21]_net_1 , 
        \Dsensor_0/distance_count[21] , 
        \Dsensor_0/PRDATA_RNO[24]_net_1 , 
        \Dsensor_0/distance_count[24] , 
        \Dsensor_0/PRDATA_RNO[25]_net_1 , 
        \Dsensor_0/distance_count[25] , 
        \Dsensor_0/PRDATA_RNO[26]_net_1 , 
        \Dsensor_0/distance_count[26] , 
        \Dsensor_0/PRDATA_RNO[27]_net_1 , 
        \Dsensor_0/distance_count[27] , 
        \Dsensor_0/PRDATA_RNO[28]_net_1 , 
        \Dsensor_0/distance_count[28] , 
        \Dsensor_0/PRDATA_RNO[29]_net_1 , 
        \Dsensor_0/distance_count[29] , 
        \Dsensor_0/PRDATA_RNO[30]_net_1 , 
        \Dsensor_0/distance_count[30] , 
        \Dsensor_0/PRDATA_RNO[31]_net_1 , 
        \Dsensor_0/distance_count[31] , 
        \Dsensor_0/PRDATA_RNO[23]_net_1 , 
        \Dsensor_0/distance_count[23] , 
        \Dsensor_0/PRDATA_RNO[22]_net_1 , 
        \Dsensor_0/distance_count[22] , 
        \Dsensor_0/dist1/next_distance_count9_0 , 
        \Dsensor_0/dist1/un1_clk_count_1 , 
        \Dsensor_0/dist1/un1_next_distance_count_1 , 
        \Dsensor_0/dist1/N_146_i_0_0 , 
        \Dsensor_0/dist1/clk_count_RNIDF52A[17]_net_1 , 
        \Dsensor_0/dist1/next_distance_count_RNID8GC5[19]_net_1 , 
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 , 
        \Dsensor_0/dist1/next_distance_counte_i_0 , 
        \Dsensor_0/dist1/next_distance_countlde_a0_0_net_1 , 
        \Dsensor_0/dist1/clk_m6_0_a2_7 , 
        \Dsensor_0/dist1/clk_m6_0_a2_4 , 
        \Dsensor_0/dist1/clk_m6_0_a2_3 , 
        \Dsensor_0/dist1/clk_m6_0_a2_5 , 
        \Dsensor_0/dist1/clk_count[21]_net_1 , 
        \Dsensor_0/dist1/clk_count[20]_net_1 , 
        \Dsensor_0/dist1/clk_m6_0_a2_2 , 
        \Dsensor_0/dist1/clk_count[22]_net_1 , 
        \Dsensor_0/dist1/clk_count[23]_net_1 , 
        \Dsensor_0/dist1/clk_count[19]_net_1 , 
        \Dsensor_0/dist1/clk_count[17]_net_1 , 
        \Dsensor_0/dist1/clk_count[18]_net_1 , 
        \Dsensor_0/dist1/clk_count[15]_net_1 , 
        \Dsensor_0/dist1/clk_count[16]_net_1 , 
        \Dsensor_0/dist1/clk_m6_0_a2_10_6 , 
        \Dsensor_0/dist1/clk_count[6]_net_1 , 
        \Dsensor_0/dist1/clk_count[5]_net_1 , 
        \Dsensor_0/dist1/clk_m6_0_a2_10_4 , 
        \Dsensor_0/dist1/clk_m6_0_a2_10_5 , 
        \Dsensor_0/dist1/clk_count[11]_net_1 , 
        \Dsensor_0/dist1/clk_count[10]_net_1 , 
        \Dsensor_0/dist1/clk_m6_0_a2_10_2 , 
        \Dsensor_0/dist1/clk_count[8]_net_1 , 
        \Dsensor_0/dist1/clk_count[13]_net_1 , 
        \Dsensor_0/dist1/clk_count[7]_net_1 , 
        \Dsensor_0/dist1/clk_count[12]_net_1 , 
        \Dsensor_0/dist1/clk_count[9]_net_1 , 
        \Dsensor_0/dist1/clk_N_3_mux , \Dsensor_0/dist1/clk_m1_0_a2_2 , 
        \Dsensor_0/dist1/clk_N_13_mux , 
        \Dsensor_0/dist1/clk_m6_0_a2_4_0 , 
        \Dsensor_0/dist1/clk_count[14]_net_1 , 
        \Dsensor_0/dist1/clk_count_c13 , \Dsensor_0/dist1/N_11 , 
        \Dsensor_0/dist1/N_26 , \Dsensor_0/dist1/N_15 , 
        \Dsensor_0/dist1/clk_count_c19 , 
        \Dsensor_0/dist1/clk_count_n20_i_0 , 
        \Dsensor_0/dist1/clk_count_c4 , \Dsensor_0/dist1/clk_count_n8 , 
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 , 
        \Dsensor_0/dist1/clk_count_n8_tz , 
        \Dsensor_0/dist1/clk_count_c6 , \Dsensor_0/dist1/clk_count_n9 , 
        \Dsensor_0/dist1/clk_count_c8 , 
        \Dsensor_0/dist1/clk_count_n10 , 
        \Dsensor_0/dist1/clk_count_n10_tz , 
        \Dsensor_0/dist1/clk_count_n11 , 
        \Dsensor_0/dist1/clk_count_c10 , 
        \Dsensor_0/dist1/clk_count_n12 , 
        \Dsensor_0/dist1/clk_count_c11 , 
        \Dsensor_0/dist1/clk_count_n13 , 
        \Dsensor_0/dist1/clk_count_c12 , 
        \Dsensor_0/dist1/clk_count_n15 , 
        \Dsensor_0/dist1/clk_count_n15_tz , 
        \Dsensor_0/dist1/clk_count_n16 , 
        \Dsensor_0/dist1/clk_count_c15 , 
        \Dsensor_0/dist1/clk_count_n17 , 
        \Dsensor_0/dist1/clk_count_c16 , 
        \Dsensor_0/dist1/clk_count_n18 , 
        \Dsensor_0/dist1/clk_count_c17 , 
        \Dsensor_0/dist1/clk_count_n19 , 
        \Dsensor_0/dist1/clk_count_c18 , 
        \Dsensor_0/dist1/clk_count_n30 , 
        \Dsensor_0/dist1/clk_count_c29 , 
        \Dsensor_0/dist1/clk_count[30]_net_1 , 
        \Dsensor_0/dist1/clk_count_n29 , 
        \Dsensor_0/dist1/clk_count_c28 , 
        \Dsensor_0/dist1/clk_count[29]_net_1 , 
        \Dsensor_0/dist1/clk_count_n26 , \Dsensor_0/dist1/N_21 , 
        \Dsensor_0/dist1/clk_count[26]_net_1 , 
        \Dsensor_0/dist1/clk_count_n25 , 
        \Dsensor_0/dist1/clk_count_n25_tz , 
        \Dsensor_0/dist1/clk_count[24]_net_1 , 
        \Dsensor_0/dist1/clk_count[25]_net_1 , 
        \Dsensor_0/dist1/clk_count_n24 , 
        \Dsensor_0/dist1/clk_count_n28 , 
        \Dsensor_0/dist1/clk_count[28]_net_1 , 
        \Dsensor_0/dist1/clk_count[27]_net_1 , 
        \Dsensor_0/dist1/clk_count_c3 , 
        \Dsensor_0/dist1/clk_count[4]_net_1 , 
        \Dsensor_0/dist1/clk_count_c2 , 
        \Dsensor_0/dist1/clk_count[3]_net_1 , 
        \Dsensor_0/dist1/clk_count[1]_net_1 , 
        \Dsensor_0/dist1/clk_count[0]_net_1 , 
        \Dsensor_0/dist1/clk_count[2]_net_1 , 
        \Dsensor_0/dist1/clk_count_n31 , 
        \Dsensor_0/dist1/clk_count_127_0 , \Dsensor_0/dist1/N_276 , 
        \Dsensor_0/dist1/clk_N_13_mux_0 , 
        \Dsensor_0/dist1/clk_m1_0_a2_1 , 
        \Dsensor_0/dist1/next_distance_count_n20_0_a4_0_1 , 
        \Dsensor_0/dist1/next_distance_count[19]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[20]_net_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_11_7 , 
        \Dsensor_0/dist1/next_m6_0_a2_11_5 , 
        \Dsensor_0/dist1/next_m6_0_a2_11_4 , 
        \Dsensor_0/dist1/next_m6_0_a2_4 , 
        \Dsensor_0/dist1/next_m4_0_a2_1 , 
        \Dsensor_0/dist1/next_distance_count[25]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[28]_net_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_11_1 , 
        \Dsensor_0/dist1/next_distance_count[24]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[21]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[26]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[27]_net_1 , 
        \Dsensor_0/dist1/next_m4_0_a2_4 , 
        \Dsensor_0/dist1/next_m4_0_a2_0 , 
        \Dsensor_0/dist1/next_m4_0_a2_2 , 
        \Dsensor_0/dist1/next_distance_count[11]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[22]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[23]_net_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_17_6 , 
        \Dsensor_0/dist1/next_distance_count[15]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[14]_net_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_17_4 , 
        \Dsensor_0/dist1/next_m6_0_a2_17_5 , 
        \Dsensor_0/dist1/next_distance_count[18]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[17]_net_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_17_2 , 
        \Dsensor_0/dist1/next_distance_count[13]_net_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_4_1 , 
        \Dsensor_0/dist1/next_distance_count[12]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[16]_net_1 , 
        \Dsensor_0/dist1/next_m3_0_a2_4 , 
        \Dsensor_0/dist1/next_m3_0_a2_1 , 
        \Dsensor_0/dist1/next_m3_0_a2_0 , 
        \Dsensor_0/dist1/next_m3_0_a2_2 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_29 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_21 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_20 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_27 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_24 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_25 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_13 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_12 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_23 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_5 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_4 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_19 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_1 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_0 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_17 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_15 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_10 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_8 , 
        \Dsensor_0/dist1/next_distance_count[7]_net_1 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_7 , 
        \Dsensor_0/dist1/un1_next_distance_count_1_3 , 
        \Dsensor_0/dist1/next_distance_count[29]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[30]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[9]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[8]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[3]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[2]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[5]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[4]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[6]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[1]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[0]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[31]_net_1 , 
        \Dsensor_0/dist1/next_distance_count[10]_net_1 , 
        \Dsensor_0/dist1/un1_clk_count_1_29 , 
        \Dsensor_0/dist1/un1_clk_count_1_23 , 
        \Dsensor_0/dist1/un1_clk_count_1_22 , 
        \Dsensor_0/dist1/un1_clk_count_1_26 , 
        \Dsensor_0/dist1/un1_clk_count_1_28 , 
        \Dsensor_0/dist1/un1_clk_count_1_17 , 
        \Dsensor_0/dist1/un1_clk_count_1_16 , 
        \Dsensor_0/dist1/un1_clk_count_1_25 , 
        \Dsensor_0/dist1/un1_clk_count_1_9 , 
        \Dsensor_0/dist1/un1_clk_count_1_8 , 
        \Dsensor_0/dist1/un1_clk_count_1_21 , 
        \Dsensor_0/dist1/un1_clk_count_1_5 , 
        \Dsensor_0/dist1/un1_clk_count_1_4 , 
        \Dsensor_0/dist1/un1_clk_count_1_19 , 
        \Dsensor_0/dist1/un1_clk_count_1_15 , 
        \Dsensor_0/dist1/un1_clk_count_1_13 , 
        \Dsensor_0/dist1/un1_clk_count_1_11 , 
        \Dsensor_0/dist1/un1_clk_count_1_7 , 
        \Dsensor_0/dist1/un1_clk_count_1_3 , 
        \Dsensor_0/dist1/un1_clk_count_1_1 , 
        \Dsensor_0/dist1/clk_count[31]_net_1 , 
        \Dsensor_0/dist1/clk_m6_0_a2_11_7 , 
        \Dsensor_0/dist1/clk_m6_0_a2_11_5 , 
        \Dsensor_0/dist1/clk_m6_0_a2_11_4 , 
        \Dsensor_0/dist1/clk_m6_0_a2_11_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_5_7 , 
        \Dsensor_0/dist1/next_m6_0_a2_5_2 , 
        \Dsensor_0/dist1/next_m6_0_a2_5_1 , 
        \Dsensor_0/dist1/next_m6_0_a2_5_4 , 
        \Dsensor_0/dist1/next_m6_0_a2_5_6 , 
        \Dsensor_0/dist1/next_distance_count_c1 , 
        \Dsensor_0/dist1/next_m6_0_a2_4_5 , 
        \Dsensor_0/dist1/next_m6_0_a2_4_4 , 
        \Dsensor_0/dist1/next_N_7_mux_0_1 , 
        \Dsensor_0/dist1/next_N_13_mux , 
        \Dsensor_0/dist1/next_distance_count_c25 , 
        \Dsensor_0/dist1/next_N_13_mux_0 , \Dsensor_0/dist1/N_146_i_0 , 
        \Dsensor_0/dist1/next_distance_counte_i , 
        \Dsensor_0/dist1/N_40 , \Dsensor_0/dist1/N_41 , 
        \Dsensor_0/dist1/next_distance_count_RNO_3[20]_net_1 , 
        \Dsensor_0/dist1/next_distance_count9 , \Dsensor_0/dist1/N_13 , 
        \Dsensor_0/dist1/N_374 , 
        \Dsensor_0/dist1/next_distance_count_c2 , 
        \Dsensor_0/dist1/next_distance_count_n31 , 
        \Dsensor_0/dist1/next_distance_count_n31_tz , 
        \Dsensor_0/dist1/next_distance_count_c29 , 
        \Dsensor_0/dist1/next_distance_count_n19 , 
        \Dsensor_0/dist1/N_38 , 
        \Dsensor_0/dist1/next_distance_count_n2 , 
        \Dsensor_0/dist1/next_distance_count_n5 , 
        \Dsensor_0/dist1/N_376 , 
        \Dsensor_0/dist1/next_distance_count_n13 , 
        \Dsensor_0/dist1/next_distance_count_n13_tz , 
        \Dsensor_0/dist1/N_31 , 
        \Dsensor_0/dist1/next_distance_count_n4 , 
        \Dsensor_0/dist1/N_375 , 
        \Dsensor_0/dist1/next_distance_count_n7 , 
        \Dsensor_0/dist1/next_distance_count_n7_tz , 
        \Dsensor_0/dist1/N_377 , 
        \Dsensor_0/dist1/next_distance_count_n6 , 
        \Dsensor_0/dist1/next_distance_count_n10 , 
        \Dsensor_0/dist1/N_29 , 
        \Dsensor_0/dist1/next_distance_count_n12 , 
        \Dsensor_0/dist1/next_distance_count_n8 , 
        \Dsensor_0/dist1/N_379 , 
        \Dsensor_0/dist1/next_distance_count_n11 , 
        \Dsensor_0/dist1/next_distance_count_n9 , 
        \Dsensor_0/dist1/next_distance_count_n9_tz , 
        \Dsensor_0/dist1/next_distance_count_n15 , 
        \Dsensor_0/dist1/next_distance_count_n15_tz , 
        \Dsensor_0/dist1/N_33 , 
        \Dsensor_0/dist1/next_distance_count_n24 , 
        \Dsensor_0/dist1/next_distance_count_c23 , 
        \Dsensor_0/dist1/next_distance_count_n26 , 
        \Dsensor_0/dist1/next_distance_count_n25 , 
        \Dsensor_0/dist1/next_distance_count_c24 , 
        \Dsensor_0/dist1/next_distance_count_n27 , 
        \Dsensor_0/dist1/next_distance_count_n27_tz , 
        \Dsensor_0/dist1/next_distance_count_n28 , 
        \Dsensor_0/dist1/next_distance_count_c27 , 
        \Dsensor_0/dist1/next_distance_count_n29 , 
        \Dsensor_0/dist1/next_distance_count_n29_tz , 
        \Dsensor_0/dist1/next_distance_count_n30 , 
        \Dsensor_0/dist1/clk_count_n2 , 
        \Dsensor_0/dist1/clk_count_n2_tz , 
        \Dsensor_0/dist1/clk_count_n3 , \Dsensor_0/dist1/clk_count_n4 , 
        \Dsensor_0/dist1/clk_count_n5 , \Dsensor_0/dist1/clk_count_n6 , 
        \Dsensor_0/dist1/clk_count_n6_tz , 
        \Dsensor_0/dist1/clk_count_n7 , 
        \Dsensor_0/dist1/clk_count_n14 , 
        \Dsensor_0/dist1/clk_count_n23 , \Dsensor_0/dist1/N_18 , 
        \Dsensor_0/dist1/clk_count_n22 , \Dsensor_0/dist1/N_17 , 
        \Dsensor_0/dist1/next_distance_count_n21 , 
        \Dsensor_0/dist1/next_distance_count_n21_tz , 
        \Dsensor_0/dist1/next_distance_count_n23 , 
        \Dsensor_0/dist1/next_distance_count_c22 , 
        \Dsensor_0/dist1/next_distance_count_n22 , 
        \Dsensor_0/dist1/next_distance_count_c21 , 
        \Dsensor_0/dist1/next_distance_count_n17 , 
        \Dsensor_0/dist1/next_distance_count_n18 , 
        \Dsensor_0/dist1/next_distance_count_n18_tz , 
        \Dsensor_0/dist1/next_distance_count_n16 , 
        \Dsensor_0/dist1/N_35 , 
        \Dsensor_0/dist1/next_distance_count_n14 , 
        \Dsensor_0/dist1/distance_count_RNO[0]_net_1 , 
        \Dsensor_0/dist1/N_277 , 
        \Dsensor_0/dist1/distance_count_RNO[1]_net_1 , 
        \Dsensor_0/dist1/N_278 , 
        \Dsensor_0/dist1/distance_count_RNO[2]_net_1 , 
        \Dsensor_0/dist1/N_279 , 
        \Dsensor_0/dist1/distance_count_RNO[3]_net_1 , 
        \Dsensor_0/dist1/N_280 , 
        \Dsensor_0/dist1/distance_count_RNO[4]_net_1 , 
        \Dsensor_0/dist1/N_281 , 
        \Dsensor_0/dist1/distance_count_RNO[5]_net_1 , 
        \Dsensor_0/dist1/N_282 , 
        \Dsensor_0/dist1/distance_count_RNO[6]_net_1 , 
        \Dsensor_0/dist1/N_283 , 
        \Dsensor_0/dist1/distance_count_RNO[7]_net_1 , 
        \Dsensor_0/dist1/N_284 , 
        \Dsensor_0/dist1/distance_count_RNO[8]_net_1 , 
        \Dsensor_0/dist1/N_285 , 
        \Dsensor_0/dist1/distance_count_RNO[9]_net_1 , 
        \Dsensor_0/dist1/N_286 , 
        \Dsensor_0/dist1/distance_count_RNO[10]_net_1 , 
        \Dsensor_0/dist1/N_287 , 
        \Dsensor_0/dist1/distance_count_RNO[11]_net_1 , 
        \Dsensor_0/dist1/N_288 , 
        \Dsensor_0/dist1/distance_count_RNO[12]_net_1 , 
        \Dsensor_0/dist1/N_289 , 
        \Dsensor_0/dist1/distance_count_RNO[13]_net_1 , 
        \Dsensor_0/dist1/N_290 , 
        \Dsensor_0/dist1/distance_count_RNO[15]_net_1 , 
        \Dsensor_0/dist1/N_292 , 
        \Dsensor_0/dist1/distance_count_RNO[24]_net_1 , 
        \Dsensor_0/dist1/N_301 , 
        \Dsensor_0/dist1/distance_count_RNO[25]_net_1 , 
        \Dsensor_0/dist1/N_302 , 
        \Dsensor_0/dist1/distance_count_RNO[26]_net_1 , 
        \Dsensor_0/dist1/N_303 , 
        \Dsensor_0/dist1/distance_count_RNO[27]_net_1 , 
        \Dsensor_0/dist1/N_304 , 
        \Dsensor_0/dist1/distance_count_RNO[28]_net_1 , 
        \Dsensor_0/dist1/N_305 , 
        \Dsensor_0/dist1/distance_count_RNO[29]_net_1 , 
        \Dsensor_0/dist1/N_306 , 
        \Dsensor_0/dist1/distance_count_RNO[30]_net_1 , 
        \Dsensor_0/dist1/N_307 , 
        \Dsensor_0/dist1/distance_count_RNO[31]_net_1 , 
        \Dsensor_0/dist1/N_308 , \Dsensor_0/dist1/N_373 , 
        \Dsensor_0/dist1/next_distance_count_n1 , 
        \Dsensor_0/dist1/clk_count_n0 , \Dsensor_0/dist1/clk_count_n1 , 
        \Dsensor_0/dist1/distance_count_RNO[19]_net_1 , 
        \Dsensor_0/dist1/N_296 , 
        \Dsensor_0/dist1/next_distance_count_n20 , 
        \Dsensor_0/dist1/N_300 , \Dsensor_0/dist1/N_299 , 
        \Dsensor_0/dist1/N_298 , \Dsensor_0/dist1/N_297 , 
        \Dsensor_0/dist1/N_295 , \Dsensor_0/dist1/N_294 , 
        \Dsensor_0/dist1/N_293 , \Dsensor_0/dist1/N_291 , 
        \Dsensor_0/dist1/distance_count_RNO[23]_net_1 , 
        \Dsensor_0/dist1/distance_count_RNO[22]_net_1 , 
        \Dsensor_0/dist1/distance_count_RNO[21]_net_1 , 
        \Dsensor_0/dist1/distance_count_RNO[20]_net_1 , 
        \Dsensor_0/dist1/distance_count_RNO[18]_net_1 , 
        \Dsensor_0/dist1/distance_count_RNO[17]_net_1 , 
        \Dsensor_0/dist1/distance_count_RNO[16]_net_1 , 
        \Dsensor_0/dist1/distance_count_RNO[14]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[0] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[1] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[2] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[3] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[4] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[5] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[6] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[7] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[8] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[9] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[10] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[11] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[12] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[13] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[14] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[15] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[16] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[17] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[18] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[19] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[20] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[21] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[22] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[23] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[24] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[25] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[26] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[27] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[28] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[29] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[30] , 
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[31] , 
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
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa , 
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
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_2 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_177 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_193 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_174 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_178 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_179 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_180 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_181 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_186 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_187 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_194 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_195 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_196 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_197 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_204 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_203 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_202 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_201 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_200 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_199 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_198 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_192 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_191 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_190 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_189 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_188 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_185 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_184 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_183 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_182 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_176 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_175 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n2 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n3_tz , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n4 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n4_tz , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data[31] , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_133 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_1_sqmuxa , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index5 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_205 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_173 , 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n1 , 
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
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count17lt8 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_0_sqmuxa , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active , 
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
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_4 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_2 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt8 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out12lt6 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled10 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3_tz , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_c1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n2 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_84 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_70 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[4]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto3 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lt7 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNO_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_68 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_71 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_69 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[6]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[2]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_66 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_67 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[5]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[1]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[7]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[3]_net_1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_121 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n1 , 
        \n64_magic_box_0/n64_serial_interface_0/write_module/I_33 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_2_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_4_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_4 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_26 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_30 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_2 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_5 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_2 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_3 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6 , 
        \n64_magic_box_0/n64_apb_interface_0/N_75 , 
        \n64_magic_box_0/n64_apb_interface_0/N_76 , 
        \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_net_1 , 
        \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_net_1 , 
        \stop_y_pad[0]/U0/NET1 , 
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
        \stop_x_pad[1]/U0/NET1 , 
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
        \sensor_pwm_pad/U0/NET1 , \x_servo_pwm_pad/U0/NET1 , 
        \x_servo_pwm_pad/U0/NET2 , \stop_y_pad[1]/U0/NET1 , 
        \stop_x_pad[0]/U0/NET1 , \fab_pin_pad/U0/NET1 , 
        \fab_pin_pad/U0/NET2 , \fab_pin_pad/U0/NET3 , 
        \y_servo_pwm_pad/U0/NET1 , \y_servo_pwm_pad/U0/NET2 , 
        AFLSDF_VCC, AFLSDF_GND;
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
    AO1 \servo_control_0/y_servo/next_pw_RNO[7]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[7] ), .B(
        \servo_control_0/set_y_0 ), .C(\servo_control_0/y_servo/N_24 ), 
        .Y(\servo_control_0/y_servo/next_pw_4[7] ));
    OR2A \servo_control_0/x_servo/next_pw_4_0_o2_0[17]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/set_x_neutral_or_stop ), .Y(
        \servo_control_0/x_servo/N_22 ));
    NOR3A \servo_control_0/un1_read_lower_stop_1_i_a2_4  (.A(
        \servo_control_0/un1_read_lower_stop_1_i_a2_1_net_1 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[1] ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[12] ), .Y(
        \servo_control_0/un1_read_lower_stop_1_i_a2_4_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[3]  (.D(
        \servo_control_0/x_servo/time_count_n3 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[3]_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[12]  (.A(
        \servo_control_0/y_servo/N_246 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[12]_net_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIQLNU4[23]  (.A(
        \Dsensor_0/dist1/next_distance_count_c22 ), .B(
        \Dsensor_0/dist1/next_distance_count[23]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c23 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[16]  (.D(
        \Dsensor_0/dist1/next_distance_count_n16 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[16]_net_1 ));
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_118  (.A(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/x_servo/pw[5]_net_1 ), .Y(
        \servo_control_0/x_servo/N_14_0 ));
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
    DFN1E0 \servo_control_0/y_servo/next_pw[6]  (.D(
        \servo_control_0/y_servo/next_pw_4[6] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[6]_net_1 ));
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
    DFN1 \Dsensor_0/PRDATA[11]  (.D(\Dsensor_0/PRDATA_RNO[11]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[11] ));
    OA1B \Dsensor_0/dist1/next_distance_count_RNO_3[20]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1 ), .B(
        \Dsensor_0/dist1/un1_next_distance_count_1 ), .C(sensor_pwm_c), 
        .Y(\Dsensor_0/dist1/next_distance_count_RNO_3[20]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[9]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[9] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_112 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_57  (.PIN4(N_66), .PIN5(
        N_64), .PIN6(N_68), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[28] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[29] ), .PIN3(
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
    DFN1E0 \servo_control_0/y_servo/next_pw[22]  (.D(
        \servo_control_0/y_servo/next_pw_4[22] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[22]_net_1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[27]  (.A(
        \servo_control_0/x_servo/N_261 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[27]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_77  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET )
        , .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIVF8R[9]  (.A(
        \Dsensor_0/dist1/next_distance_count[9]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[8]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_8 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[26]  (.D(
        \Dsensor_0/dist1/next_distance_count_n26 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[26]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[1]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_88 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[1]_net_1 ), .Y(N_9));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[12]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_121 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[12]_net_1 ), .Y(N_32)
        );
    NOR3C \servo_control_0/x_servo/time_count_RNI07N51[2]  (.A(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c2 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_179 ));
    OR3B \Dsensor_0/PRDATA_RNO[8]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[8] ), .Y(
        \Dsensor_0/PRDATA_RNO[8]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[26]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_163 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[26]_net_1 ), .Y(N_60)
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[26]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_200 ));
    AO1 \servo_control_0/x_servo/un1_pw_0_I_107  (.A(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[1] ), 
        .B(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[2] ), 
        .C(\servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ));
    XA1 \servo_control_0/y_servo/time_count_RNO[3]  (.A(
        \servo_control_0/y_servo/time_count_c2 ), .B(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n3 ));
    NOR3A \Dsensor_0/dist1/clk_count_RNIG5M51[22]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_7 ), .B(
        \Dsensor_0/dist1/clk_count[22]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[25]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_19 ));
    DFN1 \servo_control_0/x_servo/pw[17]  (.D(
        \servo_control_0/x_servo/pw_RNO[17]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[17]_net_1 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_1  (
        .A(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_4 ), 
        .B(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_3 ), 
        .C(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_5 ), 
        .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable7 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[1]  (.A(
        \Dsensor_0/dist1/clk_count[1]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[0]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_36  (.PIN4(GLMUXINT_GND)
        , .PIN5(PLLEN_VCC), .PIN6(N_7), .PIN1(), .PIN2(), .PIN3(
        \CoreAPB3_0_APBmslave0_PWDATA[0] ), .PIN4INT(
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
    DFN1E0 \servo_control_0/y_servo/next_pw[14]  (.D(
        \servo_control_0/y_servo/next_pw_4[14] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[14]_net_1 ));
    AO1C \servo_control_0/x_servo/time_count_RNI5ULK1[10]  (.A(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/x_servo/un1_time_countlto9_0 ), .C(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlt14 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[5]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[5] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[28]  (.A(
        \Dsensor_0/dist1/next_distance_count_c27 ), .B(
        \Dsensor_0/dist1/next_distance_count[28]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n28 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[27]  (.D(
        \servo_control_0/y_servo/next_pw_4[27] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[27]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[6]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_180 ));
    DFN1 \servo_control_0/x_servo/time_count[10]  (.D(
        \servo_control_0/x_servo/time_count_n10 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[10]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[30]  (.D(
        \servo_control_0/x_servo/next_pw_4[30] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[30]_net_1 ));
    AX1C \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_35  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[12] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[16]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[16] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[16] ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_72  (.A(
        \servo_control_0/y_servo/pw[13]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[3] ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_123  (.A(
        \servo_control_0/x_servo/pw[9]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/N_19 ));
    DFN1 \Dsensor_0/dist1/distance_count[17]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[17]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[17] ));
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
    OR2A \servo_control_0/y_servo/un1_pw_0_I_134  (.A(
        \servo_control_0/y_servo/pw[4]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .Y(
        \servo_control_0/y_servo/N_9 ));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[2]  (.A(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n2_tz ));
    DFN1E0 \servo_control_0/x_servo/next_pw[5]  (.D(
        \servo_control_0/x_servo/next_pw_4[5] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[5]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[14]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_188 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[21]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[21] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[18] ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[5]  (.A(
        \Dsensor_0/dist1/N_282 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[5]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO_0[20]  (.A(
        \Dsensor_0/dist1/clk_count_c18 ), .B(
        \Dsensor_0/dist1/clk_count[19]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c19 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[15]  (.A(
        \servo_control_0/y_servo/next_pw[15]_net_1 ), .B(
        \servo_control_0/y_servo/pw[15]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_249 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[20]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[20] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[20] ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[24]  (.A(
        \Dsensor_0/distance_count[24] ), .B(
        \Dsensor_0/dist1/next_distance_count[24]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_301 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[28]  (.A(
        \servo_control_0/y_servo/N_262 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[28]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[12]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_186 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[12] ));
    OR3B \Dsensor_0/PRDATA_RNO[10]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[10] ), .Y(
        \Dsensor_0/PRDATA_RNO[10]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[14]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[14] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[24]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[24] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[31] ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_22  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[3] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_10 ));
    AX1C \Dsensor_0/dist1/next_distance_count_RNO_0[31]  (.A(
        \Dsensor_0/dist1/next_distance_count_c29 ), .B(
        \Dsensor_0/dist1/next_distance_count[30]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[31]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n31_tz ));
    DFN1 \Dsensor_0/dist1/distance_count[3]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[3] ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_117  (.A(
        \servo_control_0/x_servo/pw[7]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/x_servo/N_13 ));
    AND2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_53  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_1_1[0] )
        );
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[15]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[15] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[15]_net_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0  (.A(
        sensor_pwm_c), .B(ants_master_MSS_0_M2F_RESET_N), .Y(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[8]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n8_tz ), .Y(
        \servo_control_0/y_servo/time_count_n8 ));
    DFN1 \Dsensor_0/PRDATA[19]  (.D(\Dsensor_0/PRDATA_RNO[19]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[19] ));
    DFN1 \servo_control_0/x_servo/pw[27]  (.D(
        \servo_control_0/x_servo/pw_RNO[27]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[27]_net_1 ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_6  (.A(
        \servo_control_0/y_servo/pw[20]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_2[1] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[9]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_183 ));
    NOR3 \servo_control_0/y_servo/un1_pw_0_I_14  (.A(
        \servo_control_0/y_servo/pw[29]_net_1 ), .B(
        \servo_control_0/y_servo/pw[30]_net_1 ), .C(
        \servo_control_0/y_servo/pw[28]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[3] ));
    DFN1 \Dsensor_0/PRDATA[9]  (.D(\Dsensor_0/PRDATA_RNO[9]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[9] ));
    OA1B \Dsensor_0/dist1/clk_count_RNO[20]  (.A(
        \Dsensor_0/dist1/clk_count[20]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c19 ), .C(
        \Dsensor_0/dist1/clk_count_n20_i_0 ), .Y(
        \Dsensor_0/dist1/N_15 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[15]  (.A(
        \servo_control_0/x_servo/time_count_c14 ), .B(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n15 ));
    DFN1 \Dsensor_0/dist1/distance_count[4]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[4] ));
    NOR2B \servo_control_0/x_servo/pw_RNO[18]  (.A(
        \servo_control_0/x_servo/N_252 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[18]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[5]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[5] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[5] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit  
        (.D(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ));
    OR2 \servo_control_0/un3_y_down_morelt31_4  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[24] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[25] ), .Y(
        \servo_control_0.un3_y_down_morelto31_4 ));
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
    NOR2B \servo_control_0/y_servo/pw_RNO[15]  (.A(
        \servo_control_0/y_servo/N_249 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[15]_net_1 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[13]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[13] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[13] ));
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
    DFN1 \Dsensor_0/dist1/distance_count[5]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[5] ));
    NOR2B \servo_control_0/y_servo/pw_RNO[29]  (.A(
        \servo_control_0/y_servo/N_263 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[29]_net_1 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[11]  (.A(
        \Dsensor_0/dist1/next_N_13_mux ), .B(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n11 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[5]  (.A(
        \servo_control_0/y_servo/time_count_c4 ), .B(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n5 ));
    NOR2A \servo_control_0/set_x_0_a4  (.A(\servo_control_0/N_70 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .Y(\servo_control_0/set_x ));
    DFN1 \Dsensor_0/dist1/distance_count[10]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[10] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[6]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[6] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_103 ));
    AO1C \servo_control_0/x_servo/un1_pw_0_I_104  (.A(
        \servo_control_0/x_servo/pw[13]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/x_servo/N_25 ), .Y(
        \servo_control_0/x_servo/N_30_0 ));
    NOR3C \servo_control_0/y_servo/time_count_RNI12M01[8]  (.A(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/y_servo/time_m6_0_a2_4 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_6 ));
    AO1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_o5_0[0]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(N_16_mux), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ));
    OA1A \servo_control_0/y_servo/un1_pw_0_I_121  (.A(
        \servo_control_0/y_servo/pw[8]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/y_servo/N_13 ), .Y(
        \servo_control_0/y_servo/N_17 ));
    AO1C \servo_control_0/x_servo/un1_pw_0_I_57  (.A(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/x_servo/pw[20]_net_1 ), .C(
        \servo_control_0/x_servo/N_34 ), .Y(
        \servo_control_0/x_servo/N_36 ));
    AO1A \servo_control_0/x_servo/next_pw_RNO[6]  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[6] ), .C(
        \servo_control_0/x_servo/N_23 ), .Y(
        \servo_control_0/x_servo/next_pw_4[6] ));
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
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[4] )
        );
    DFN1 \Dsensor_0/dist1/clk_count[11]  (.D(
        \Dsensor_0/dist1/clk_count_n11 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[11]_net_1 ));
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
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[7]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[7]_net_1 )
        );
    NOR3B \servo_control_0/y_servo/next_pw_RNO[25]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[25] ), .C(
        \servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[25] ));
    NOR2B \servo_control_0/x_servo/time_count_RNO[12]  (.A(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .B(
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
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_178 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[28]  (.A(
        \Dsensor_0/dist1/clk_count[28]_net_1 ), .B(
        \Dsensor_0/dist1/clk_N_3_mux ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n28 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_92  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    DFN1E0 \servo_control_0/y_servo/next_pw[3]  (.D(
        \servo_control_0/y_servo/next_pw_4[3] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[3]_net_1 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_97  (.A(
        \servo_control_0/x_servo/pw[12]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/N_23_0 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/N_58 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 )
        );
    OA1 \servo_control_0/un3_y_down_morelto17  (.A(
        \servo_control_0/un3_y_down_morelt16_net_1 ), .B(
        \servo_control_0/un3_y_down_morelto16 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[17] ), .Y(
        \servo_control_0/un3_y_down_morelt31_net_1 ));
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
    DFN1 \Dsensor_0/dist1/distance_count[16]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[16]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[16] ));
    OR2 \servo_control_0/un3_y_down_morelt31_1_0  (.A(
        \servo_control_0.un3_y_down_morelto31_7 ), .B(
        \servo_control_0.un3_y_down_morelto31_4 ), .Y(
        \servo_control_0/un3_y_down_morelt31_1_net_1 ));
    DFN1 \Dsensor_0/PRDATA[22]  (.D(\Dsensor_0/PRDATA_RNO[22]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[22] ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI52I9[13]  (.A(
        \Dsensor_0/dist1/next_m3_0_a2_1 ), .B(
        \Dsensor_0/dist1/next_m3_0_a2_0 ), .C(
        \Dsensor_0/dist1/next_m3_0_a2_2 ), .Y(
        \Dsensor_0/dist1/next_m3_0_a2_4 ));
    DFN1 \servo_control_0/x_servo/pw[1]  (.D(
        \servo_control_0/x_servo/pw_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[1]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[16]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_190 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[2]  (.D(
        \Dsensor_0/dist1/next_distance_count_n2 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[2]_net_1 ));
    NOR3 \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_2  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[3] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[2] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[1] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_3 ));
    XA1A \servo_control_0/x_servo/un1_pw_0_I_114  (.A(
        \servo_control_0/x_servo/pw[8]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[4] ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1] ));
    OR3B \Dsensor_0/PRDATA_RNO[2]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[2] ), .Y(
        \Dsensor_0/PRDATA_RNO[2]_net_1 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNIK3Q4[20]  (.A(
        \Dsensor_0/dist1/next_distance_count[18]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[20]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_4_4 ));
    NOR3 \servo_control_0/y_servo/un1_pw_0_I_15  (.A(
        \servo_control_0/y_servo/pw[26]_net_1 ), .B(
        \servo_control_0/y_servo/pw[27]_net_1 ), .C(
        \servo_control_0/y_servo/pw[25]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[2] )
        );
    OR2A \servo_control_0/y_servo/next_pw_4_0_o2_0[17]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/set_y_neutral_or_stop ), .Y(
        \servo_control_0/y_servo/N_22 ));
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
    DFN1E0 \servo_control_0/x_servo/next_pw[3]  (.D(
        \servo_control_0/x_servo/next_pw_4[3] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[3]_net_1 ));
    OA1B \servo_control_0/x_servo/next_pw_RNO[9]  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[9] ), .C(
        \servo_control_0/x_servo/N_23 ), .Y(
        \servo_control_0/x_servo/N_14 ));
    IOPAD_TRI \ants_master_MSS_0/MSS_SPI_1_DO  (.D(
        \ants_master_MSS_0/MSS_SPI_1_DO_D ), .E(
        \ants_master_MSS_0/MSS_SPI_1_DO_E ), .PAD(SPI_1_DO));
    MX2 \servo_control_0/y_servo/pw_RNO_0[14]  (.A(
        \servo_control_0/y_servo/next_pw[14]_net_1 ), .B(
        \servo_control_0/y_servo/pw[14]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_248 ));
    DFN1 \servo_control_0/y_servo/pw[18]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[18]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[18]_net_1 ));
    AOI1A \servo_control_0/x_servo/next_pw_RNO[16]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[16] ), .B(
        \servo_control_0/set_x ), .C(\servo_control_0/x_servo/N_22 ), 
        .Y(\servo_control_0/x_servo/N_6 ));
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
    DFN1E0 \servo_control_0/y_servo/next_pw[2]  (.D(
        \servo_control_0/y_servo/next_pw_4[2] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[2]_net_1 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNILSV15[24]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_4 ), .B(
        \Dsensor_0/dist1/next_m4_0_a2_4 ), .C(
        \Dsensor_0/dist1/next_N_13_mux ), .Y(
        \Dsensor_0/dist1/next_distance_count_c25 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[30]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[30] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[30]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[16]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_133 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[16]_net_1 ), .Y(N_40)
        );
    DFN1E0 \servo_control_0/x_servo/next_pw[13]  (.D(
        \servo_control_0/x_servo/next_pw_4[13] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[13]_net_1 ));
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
    DFN1 \servo_control_0/y_servo/pw[16]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[16]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[16]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNI5POU2[10]  (.A(
        \Dsensor_0/dist1/clk_m6_0_a2_10_6 ), .B(
        \Dsensor_0/dist1/clk_m6_0_a2_10_5 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_4_0 ));
    NOR2B \servo_control_0/y_servo/time_count_RNIP11M3[16]  (.A(
        \servo_control_0/y_servo/time_count_c15 ), .B(
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
    XA1 \Dsensor_0/dist1/clk_count_RNO[14]  (.A(
        \Dsensor_0/dist1/clk_count_c13 ), .B(
        \Dsensor_0/dist1/clk_count[14]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n14 ));
    AOI1A \servo_control_0/y_servo/un1_pw_0_I_91  (.A(
        \servo_control_0/y_servo/pw[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .C(
        \servo_control_0/y_servo/ACT_LT4_E[5] ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[6] ));
    OA1 \servo_control_0/un3_y_down_morelto11  (.A(
        \servo_control_0/un3_y_down_morelt10_net_1 ), .B(
        \servo_control_0/un3_y_down_morelto10 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[11] ), .Y(
        \servo_control_0/un3_y_down_morelt13_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[8]  (.D(
        \servo_control_0/x_servo/time_count_n8 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[8]_net_1 ));
    DFN1 \servo_control_0/x_servo/pw[18]  (.D(
        \servo_control_0/x_servo/pw_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[18]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[11]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[11] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[11] ));
    NOR3C \Dsensor_0/dist1/clk_count_RNIBV921[2]  (.A(
        \Dsensor_0/dist1/clk_count[1]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[0]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[2]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c2 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[27]  (.A(
        \servo_control_0/x_servo/next_pw[27]_net_1 ), .B(
        \servo_control_0/x_servo/pw[27]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_261 ));
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
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_74  (.A(
        \servo_control_0/y_servo/pw[11]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[1] ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIN78R[4]  (.A(
        \Dsensor_0/dist1/next_distance_count[5]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[4]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_4 ));
    NOR2 \Dsensor_0/dist1/clk_count_RNIJROI[10]  (.A(
        \Dsensor_0/dist1/clk_count[11]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[10]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_9 ));
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
    DFN1E0 \Dsensor_0/dist1/next_distance_count[31]  (.D(
        \Dsensor_0/dist1/next_distance_count_n31 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[31]_net_1 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[15]  (.D(
        \Dsensor_0/dist1/next_distance_count_n15 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ));
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
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIM073[24]  (.A(
        \Dsensor_0/dist1/next_distance_count[24]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m4_0_a2_2 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI67GM1[4]  (.A(
        \Dsensor_0/dist1/next_distance_count[5]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[4]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_c1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_5_6 ));
    AX1C \Dsensor_0/dist1/clk_count_RNO_0[15]  (.A(
        \Dsensor_0/dist1/clk_count[14]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c13 ), .C(
        \Dsensor_0/dist1/clk_count[15]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n15_tz ));
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
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_4  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[5] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[4] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_2 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[19]  (.A(
        \servo_control_0/y_servo/next_pw[19]_net_1 ), .B(
        \servo_control_0/y_servo/pw[19]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_253 ));
    NOR2B \servo_control_0/x_servo/time_count_RNI14ST[10]  (.A(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_2 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in  
        (.D(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in_net_1 )
        );
    DFN1E0 \Dsensor_0/dist1/next_distance_count[25]  (.D(
        \Dsensor_0/dist1/next_distance_count_n25 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[25]_net_1 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNO[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count18 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_121 ));
    NOR2 \Dsensor_0/valid_read_5  (.A(\CoreAPB3_0_APBmslave0_PADDR[5] )
        , .B(\CoreAPB3_0_APBmslave0_PADDR[6] ), .Y(
        \Dsensor_0.valid_read_5 ));
    DFN1 \Dsensor_0/dist1/distance_count[19]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[19]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[19] ));
    DFN1E0 \servo_control_0/y_servo/next_pw[1]  (.D(
        \servo_control_0/y_servo/next_pw_4[1] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[1]_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[20]  (.A(
        \servo_control_0/y_servo/N_254 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[20]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[28]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[28]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[28]_net_1 ));
    DFN1 \servo_control_0/x_servo/pw[9]  (.D(
        \servo_control_0/x_servo/pw_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[9]_net_1 ));
    OR2A \servo_control_0/y_servo/pw_RNO[6]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_240 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[6]_net_1 ));
    DFN1 \Dsensor_0/PRDATA[24]  (.D(\Dsensor_0/PRDATA_RNO[24]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[24] ));
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
    DFN1 \servo_control_0/x_servo/pw[2]  (.D(
        \servo_control_0/x_servo/pw_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[2]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[26]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[26]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[26]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/write_module_begin  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin_net_1 )
        );
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[14]  (.A(
        \Dsensor_0/distance_count[14] ), .B(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_291 ));
    DFN1 \servo_control_0/x_servo/pw[28]  (.D(
        \servo_control_0/x_servo/pw_RNO[28]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[28]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_46  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(
        \ants_master_MSS_0/MSS_ADLIB_INST_M2FRESETn ), .PIN3(), 
        .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[28]INT_NET ), 
        .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[27]INT_NET ), 
        .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPADDR[29]INT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[5]INT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/M2FRESETnINT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSINT[6]INT_NET ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_49  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_2[0] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_pog_array_2[0] )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_g_array_3[0] )
        );
    MX2 \servo_control_0/y_servo/pw_RNO_0[31]  (.A(
        \servo_control_0/y_servo/next_pw[31]_net_1 ), .B(
        \servo_control_0/y_servo/pw[31]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_265 ));
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
    DFN1 \servo_control_0/y_servo/pw[15]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[15]_net_1 ));
    DFN1 \Dsensor_0/dist1/distance_count[9]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[9] ));
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[5]  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[5] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[5] ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[0]  (.A(
        \servo_control_0/y_servo/next_pw[0]_net_1 ), .B(
        \servo_control_0/y_servo/pw[0]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_234 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[30]  (.A(
        \servo_control_0/x_servo/N_264 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[30]_net_1 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_27  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[4] ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_8_0 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI3OK71[20]  (.A(
        \Dsensor_0/dist1/clk_count[4]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[20]_net_1 ), .C(
        \Dsensor_0/dist1/clk_m6_0_a2_11_1 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_11_4 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[11]  (.A(
        \servo_control_0/x_servo/next_pw[11]_net_1 ), .B(
        \servo_control_0/x_servo/pw[11]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_245 ));
    DFN1 \Dsensor_0/PRDATA[17]  (.D(\Dsensor_0/PRDATA_RNO[17]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[17] ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[18]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n18_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n18 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[23]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[23] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[23]_net_1 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[24]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[24] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[24] ));
    NOR3 \servo_control_0/x_servo/un1_pw_0_I_45  (.A(
        \servo_control_0/x_servo/pw[25]_net_1 ), .B(
        \servo_control_0/x_servo/pw[26]_net_1 ), .C(
        \servo_control_0/x_servo/pw[24]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[1]  (.A(
        \servo_control_0/set_x ), .B(\CoreAPB3_0_APBmslave0_PWDATA[1] )
        , .C(\servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[1] ));
    DFN1E0 \servo_control_0/y_servo/next_pw[12]  (.D(
        \servo_control_0/y_servo/next_pw_4[12] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[12]_net_1 ));
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
    AND3 \servo_control_0/y_servo/un1_pw_0_I_75  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[6] ), .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[7] ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[8] ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ));
    OA1A \servo_control_0/x_servo/un1_pw_0_I_125  (.A(
        \servo_control_0/x_servo/N_16 ), .B(
        \servo_control_0/x_servo/N_18 ), .C(
        \servo_control_0/x_servo/N_17 ), .Y(
        \servo_control_0/x_servo/N_21 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[27]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[27] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[28] ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIFV7R_0[1]  (.A(
        \Dsensor_0/dist1/next_distance_count[1]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[0]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_1 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[2]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[2] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[2]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_177 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[3] )
        );
    NOR3C \Dsensor_0/dist1/next_distance_count_RNICPQB5[19]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_24 ), .B(
        \Dsensor_0/dist1/un1_next_distance_count_1_25 ), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1_29 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1 ));
    DFN1 \Dsensor_0/dist1/clk_count[14]  (.D(
        \Dsensor_0/dist1/clk_count_n14 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[14]_net_1 ));
    AO1 \servo_control_0/y_servo/next_pw_RNO[4]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[4] ), .B(\servo_control_0/set_y )
        , .C(\servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[4] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[2]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[2] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_91 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIO0S81[2]  (.A(
        \Dsensor_0/dist1/next_distance_count_c1 ), .B(
        \Dsensor_0/dist1/next_distance_count[2]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c2 ));
    OR2A \Dsensor_0/dist1/clk_count_RNO_0[23]  (.A(
        \Dsensor_0/dist1/clk_count[22]_net_1 ), .B(
        \Dsensor_0/dist1/N_17 ), .Y(\Dsensor_0/dist1/N_18 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[0]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[0] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[0] )
        );
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[0]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_174 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[31]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[31] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[24] ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_119  (.A(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .B(
        \servo_control_0/y_servo/pw[9]_net_1 ), .Y(
        \servo_control_0/y_servo/N_15 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[3]  (.A(
        \servo_control_0/y_servo/N_237 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[3]_net_1 ));
    NOR2 \Dsensor_0/valid_read_9_1  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[2] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[1] ), .Y(
        \Dsensor_0/valid_read_9_1_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNI7TUN4[4]  (.A(
        \Dsensor_0/dist1/clk_m6_0_a2_4_0 ), .B(
        \Dsensor_0/dist1/clk_count_c4 ), .Y(
        \Dsensor_0/dist1/clk_count_c13 ));
    DFN1 \servo_control_0/y_servo/pw[25]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[25]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[25]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[17]  (.D(
        \servo_control_0/y_servo/next_pw_4[17] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[17]_net_1 ));
    AO1C \servo_control_0/un3_y_up_morelto17  (.A(
        \servo_control_0/un3_y_down_morelto16 ), .B(
        \servo_control_0/un3_y_up_morelt16 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[17] ), .Y(
        \servo_control_0/un3_y_up_morelt31 ));
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
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_70  (.A(
        \servo_control_0/y_servo/pw[15]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[5] ));
    DFN1 \Dsensor_0/PRDATA[2]  (.D(\Dsensor_0/PRDATA_RNO[2]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[2] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_58  (.PIN4(GLMUXINT_GND)
        , .PIN5(N_70), .PIN6(GLMUXINT_GND), .PIN1(
        \CoreAPB3_0_APBmslave0_PWDATA[31] ), .PIN2(), .PIN3(), 
        .PIN4INT(), .PIN5INT(
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
    NOR2B \servo_control_0/y_servo/pw_RNO[9]  (.A(
        \servo_control_0/y_servo/N_243 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[9]_net_1 ));
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
    OR2B \Dsensor_0/dist1/next_distance_count_RNI41FB4[11]  (.A(
        \Dsensor_0/dist1/next_N_13_mux ), .B(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ), .Y(
        \Dsensor_0/dist1/N_31 ));
    NOR3 \servo_control_0/x_servo/next_pw_4_sqmuxa_0_a2  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \servo_control_0/x_servo/N_22 ), .C(\servo_control_0/N_70 ), 
        .Y(\servo_control_0/x_servo/next_pw_4_sqmuxa ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNI5IIN[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c4 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_c5 )
        );
    XA1 \Dsensor_0/dist1/clk_count_RNO[11]  (.A(
        \Dsensor_0/dist1/clk_count_c10 ), .B(
        \Dsensor_0/dist1/clk_count[11]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n11 ));
    AO1C \servo_control_0/x_servo/un1_pw_0_I_120  (.A(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/x_servo/pw[6]_net_1 ), .C(
        \servo_control_0/x_servo/N_14_0 ), .Y(
        \servo_control_0/x_servo/N_16 ));
    AO1 \servo_control_0/y_servo/next_pw_RNO[8]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[8] ), .B(
        \servo_control_0/set_y_0 ), .C(\servo_control_0/y_servo/N_23 ), 
        .Y(\servo_control_0/y_servo/next_pw_4[8] ));
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
    OR3B \servo_control_0/PRDATA_6_iv_0_a4_3[0]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[4] ), .B(
        \servo_control_0/PRDATA_6_iv_0_a4_3_0[0]_net_1 ), .C(
        CoreAPB3_0_APBmslave0_PWRITE), .Y(\servo_control_0/N_41 ));
    DFN1 \Dsensor_0/PRDATA[23]  (.D(\Dsensor_0/PRDATA_RNO[23]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[23] ));
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_118  (.A(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/y_servo/pw[5]_net_1 ), .Y(
        \servo_control_0/y_servo/N_14_0 ));
    OA1B \servo_control_0/x_servo/next_pw_RNO[10]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[10] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .C(
        \servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/N_12 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[2]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[2] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[2] )
        );
    DFN1 \Dsensor_0/dist1/distance_count[23]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[23]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[23] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_RNIPIR7[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[7]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_2 )
        );
    NOR3B \servo_control_0/x_servo/next_pw_RNO[18]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[18] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[18] ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[5]  (.A(
        \Dsensor_0/dist1/clk_count_c4 ), .B(
        \Dsensor_0/dist1/clk_count[5]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n5 ));
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
    IOPAD_IN_U \stop_y_pad[1]/U0/U0  (.PAD(stop_y[1]), .Y(
        \stop_y_pad[1]/U0/NET1 ));
    AOI1 \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[0]  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_7 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[24]  (.A(
        \Dsensor_0/dist1/clk_N_13_mux ), .B(
        \Dsensor_0/dist1/clk_count[24]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n24 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[3]  (.A(
        \Dsensor_0/dist1/next_distance_count[3]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count_c2 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(\Dsensor_0/dist1/N_374 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[3]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[3] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[3] )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[4]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[4] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[4] ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_2  (
        .A(\servo_control_0.un3_y_down_morelto31_1 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[16] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_2_net_1 )
        );
    DFN1 \Dsensor_0/dist1/distance_count[1]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[1] ));
    NOR3C \servo_control_0/y_servo/time_count_RNI3LTN2[12]  (.A(
        \servo_control_0/y_servo/time_m6_0_a2_6 ), .B(
        \servo_control_0/y_servo/time_m6_0_a2_7 ), .C(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c12 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[18]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[18] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[18] ));
    RCOSC \ants_master_MSS_0/MSS_CCC_0/I_RCOSC  (.CLKOUT(
        \ants_master_MSS_0/MSS_CCC_0/N_CLKA_RCOSC ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_45  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[10] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_2 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIJ38R[2]  (.A(
        \Dsensor_0/dist1/next_distance_count[2]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[3]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_5_2 ));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[14]  (.A(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c12 ), .C(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n14_tz ));
    NOR2B \servo_control_0/x_servo/pw_RNO[29]  (.A(
        \servo_control_0/x_servo/N_263 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[29]_net_1 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[26]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[26] ), .C(
        \servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[26] ));
    DFN1E0 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_121 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        );
    NOR3C \Dsensor_0/dist1/clk_count_RNIBQ7S[23]  (.A(
        \Dsensor_0/dist1/clk_count[22]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[23]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[19]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_4 ));
    OR3 \servo_control_0/set_y_neutral_or_stop_0  (.A(
        \servo_control_0/N_46 ), .B(\servo_control_0/N_47 ), .C(
        \servo_control_0/N_48 ), .Y(
        \servo_control_0/set_y_neutral_or_stop ));
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
    NOR3C \Dsensor_0/dist1/clk_count_RNI0II51[18]  (.A(
        \Dsensor_0/dist1/clk_count[19]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[18]_net_1 ), .C(
        \Dsensor_0/dist1/clk_m6_0_a2_2 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_11_5 ));
    DFN1 \servo_control_0/y_servo/time_count[12]  (.D(
        \servo_control_0/y_servo/time_count_n12 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[12]_net_1 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[25]  (.A(
        \servo_control_0/y_servo/next_pw[25]_net_1 ), .B(
        \servo_control_0/y_servo/pw[25]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_259 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[19]  (.A(
        \servo_control_0/y_servo/time_count_c18 ), .B(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n19 ));
    OR3B \Dsensor_0/PRDATA_RNO[30]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[30] ), .Y(
        \Dsensor_0/PRDATA_RNO[30]_net_1 ));
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
    OA1A \servo_control_0/y_servo/un1_pw_0_I_101  (.A(
        \servo_control_0/y_servo/pw[13]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/y_servo/N_23_0 ), .Y(
        \servo_control_0/y_servo/N_27 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_1  
        (.A(\n64_magic_box_0/n64_apb_interface_0/polling_enable6_2 ), 
        .B(\n64_magic_box_0/n64_apb_interface_0/polling_enable6_1 ), 
        .C(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_4 ), 
        .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable6 ));
    DFN1 \servo_control_0/x_servo/pw[19]  (.D(
        \servo_control_0/x_servo/pw_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[19]_net_1 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[26]  (.A(
        \Dsensor_0/dist1/next_distance_count_c25 ), .B(
        \Dsensor_0/dist1/next_distance_count[26]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n26 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[22]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[22] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[22] ));
    NOR2 \servo_control_0/x_servo/time_count_RNI36ST[11]  (.A(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto14_1 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[10]  (.D(
        \Dsensor_0/dist1/next_distance_count_n10 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[10]_net_1 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[17]  (.A(
        \servo_control_0/x_servo/time_count_c16 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n17 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[1]  (.A(
        \Dsensor_0/dist1/N_278 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[1]_net_1 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_117  (.A(
        \servo_control_0/y_servo/pw[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/y_servo/N_13 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[10]  (.A(
        \servo_control_0/y_servo/time_count_c9 ), .B(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
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
    XA1 \servo_control_0/x_servo/time_count_RNO[1]  (.A(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n1 ));
    DFN1 \servo_control_0/y_servo/time_count[19]  (.D(
        \servo_control_0/y_servo/time_count_n19 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[19]_net_1 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[9]  (.A(
        \Dsensor_0/dist1/clk_count_c8 ), .B(
        \Dsensor_0/dist1/clk_count[9]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n9 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[20]  (.D(
        \Dsensor_0/dist1/next_distance_count_n20 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[20]_net_1 ));
    AO1B \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_o5[0]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(N_16_mux), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ));
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
    NOR3A \Dsensor_0/dist1/next_distance_count_RNIKUUHF[19]  (.A(
        \Dsensor_0/dist1/next_distance_countlde_a0_0_net_1 ), .B(
        \Dsensor_0/dist1/un1_clk_count_1 ), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1 ), .Y(
        \Dsensor_0/dist1/next_distance_counte_i ));
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
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[4]  (.A(
        \Dsensor_0/distance_count[4] ), .B(
        \Dsensor_0/dist1/next_distance_count[4]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_281 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO_0[31]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[30]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_127_0 ));
    OR2 \servo_control_0/un3_y_down_morelt31_6  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[28] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[29] ), .Y(
        \servo_control_0.un3_y_down_morelto31_6 ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIO163_0[13]  (.A(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_15 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIO163[13]  (.A(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m3_0_a2_2 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[13]  (.A(
        \Dsensor_0/dist1/N_290 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[13]_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[1]  (.A(
        \servo_control_0/y_servo/N_235 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[1]_net_1 ));
    IOPAD_TRI \ants_master_MSS_0/MSS_GPIO_0_GPIO_0_OUT  (.D(
        \ants_master_MSS_0/GPO_net_0[0] ), .E(PLLEN_VCC), .PAD(
        GPIO_0_OUT));
    DFN1E0 \servo_control_0/x_servo/next_pw[11]  (.D(
        \servo_control_0/x_servo/next_pw_4[11] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[11]_net_1 ));
    IOIN_IB \stop_x_pad[0]/U0/U1  (.YIN(\stop_x_pad[0]/U0/NET1 ), .Y(
        \stop_x_c[0] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNIQS5G[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data[31] )
        );
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI56F6_0[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        );
    OAI1 \servo_control_0/un3_y_up_morelto11  (.A(
        \servo_control_0/un3_y_down_morelto8_net_1 ), .B(
        \servo_control_0/un3_y_down_morelto10 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[11] ), .Y(
        \servo_control_0/un3_y_up_morelt13 ));
    AX1C \Dsensor_0/dist1/clk_count_RNO_0[10]  (.A(
        \Dsensor_0/dist1/clk_count[9]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c8 ), .C(
        \Dsensor_0/dist1/clk_count[10]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n10_tz ));
    DFN1 \Dsensor_0/dist1/clk_count[28]  (.D(
        \Dsensor_0/dist1/clk_count_n28 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[28]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[26]  (.D(
        \servo_control_0/y_servo/next_pw_4[26] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[26]_net_1 ));
    DFN1 \servo_control_0/x_servo/pw[29]  (.D(
        \servo_control_0/x_servo/pw_RNO[29]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[29]_net_1 ));
    DFN1 \Dsensor_0/dist1/clk_count[25]  (.D(
        \Dsensor_0/dist1/clk_count_n25 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[25]_net_1 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[19]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[19] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[19]_net_1 ));
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
    OR3B \Dsensor_0/PRDATA_RNO[21]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[21] ), .Y(
        \Dsensor_0/PRDATA_RNO[21]_net_1 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[19]  (.A(
        \servo_control_0/x_servo/next_pw[19]_net_1 ), .B(
        \servo_control_0/x_servo/pw[19]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_253 ));
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[9]  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[9] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[9] ));
    NOR2B \Dsensor_0/valid_read_0  (.A(\Dsensor_0.valid_read_9 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .Y(
        \Dsensor_0/valid_read_0_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[23]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_197 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_8  (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_15 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[22]  (.A(
        \Dsensor_0/dist1/next_distance_count_c21 ), .B(
        \Dsensor_0/dist1/next_distance_count[22]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n22 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[27]  (.A(
        \Dsensor_0/dist1/N_304 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[27]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[31]  (.D(
        \servo_control_0/y_servo/next_pw_4[31] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[31]_net_1 ));
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
    DFN1E0 \servo_control_0/y_servo/next_pw[28]  (.D(
        \servo_control_0/y_servo/next_pw_4[28] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[28]_net_1 ));
    OA1 \servo_control_0/y_servo/un1_pw_0_I_126  (.A(
        \servo_control_0/y_servo/N_21 ), .B(
        \servo_control_0/y_servo/N_20 ), .C(
        \servo_control_0/y_servo/N_19 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[0] ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[18]  (.A(
        \servo_control_0/x_servo/next_pw[18]_net_1 ), .B(
        \servo_control_0/x_servo/pw[18]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_252 ));
    AX1 \Dsensor_0/dist1/next_distance_count_RNO_0[7]  (.A(
        \Dsensor_0/dist1/N_377 ), .B(
        \Dsensor_0/dist1/next_distance_count[6]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[7]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n7_tz ));
    BUFF \ants_master_MSS_0/MSS_ADLIB_INST_RNIRLU3_1  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .Y(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ));
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
    NOR3 \servo_control_0/x_servo/un1_pw_0_I_15  (.A(
        \servo_control_0/x_servo/pw[26]_net_1 ), .B(
        \servo_control_0/x_servo/pw[27]_net_1 ), .C(
        \servo_control_0/x_servo/pw[25]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[2] )
        );
    AX1C \servo_control_0/y_servo/time_count_RNO_0[12]  (.A(
        \servo_control_0/y_servo/time_m6_0_a2_6 ), .B(
        \servo_control_0/y_servo/time_m6_0_a2_7 ), .C(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n12_tz ));
    DFN1E0 \servo_control_0/x_servo/next_pw[6]  (.D(
        \servo_control_0/x_servo/next_pw_4[6] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[6]_net_1 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[21]  (.A(
        \Dsensor_0/dist1/clk_N_13_mux_0 ), .B(
        \Dsensor_0/dist1/clk_count[21]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/N_13 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[29]  (.D(
        \servo_control_0/y_servo/next_pw_4[29] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[29]_net_1 ));
    DFN1 \Dsensor_0/PRDATA[21]  (.D(\Dsensor_0/PRDATA_RNO[21]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[21] ));
    AO1C \servo_control_0/y_servo/time_count_RNI9F4R[10]  (.A(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/y_servo/un1_time_countlto9_0 ), .C(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlt14 ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[8]  (.A(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c6 ), .C(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n8_tz ));
    IOPAD_BI \ants_master_MSS_0/MSS_SPI_1_CLK  (.D(
        \ants_master_MSS_0/MSS_SPI_1_CLK_D ), .E(
        \ants_master_MSS_0/MSS_SPI_1_SS_E ), .Y(
        \ants_master_MSS_0/MSS_SPI_1_CLK_Y ), .PAD(SPI_1_CLK));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_73  (.A(
        \servo_control_0/x_servo/pw[12]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[2] ));
    XA1A \servo_control_0/y_servo/un1_pw_0_I_114  (.A(
        \servo_control_0/y_servo/pw[8]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[4] ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[20]  (.A(
        \servo_control_0/x_servo/time_count_47_0 ), .B(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n20 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[3]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[3] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[3]_net_1 ));
    NOR3B \servo_control_0/set_y_neutral_or_stop_0_a4_0  (.A(
        \servo_control_0/N_73 ), .B(\servo_control_0/N_71 ), .C(
        \stop_y_c[0] ), .Y(\servo_control_0/N_47 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[28]  (.A(
        \Dsensor_0/dist1/N_305 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[28]_net_1 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[24]  (.A(
        \servo_control_0/y_servo/next_pw[24]_net_1 ), .B(
        \servo_control_0/y_servo/pw[24]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_258 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO[18]  (.A(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n18_tz ), .Y(
        \servo_control_0/x_servo/time_count_n18 ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[14]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n14_tz ), .Y(
        \servo_control_0/y_servo/time_count_n14 ));
    OR3B \Dsensor_0/PRDATA_RNO[15]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[15] ), .Y(
        \Dsensor_0/PRDATA_RNO[15]_net_1 ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[6]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n6_tz ), .Y(
        \servo_control_0/y_servo/time_count_n6 ));
    AND3 \servo_control_0/x_servo/un1_pw_0_I_18  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_3[0] )
        , .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[1] )
        , .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[2] )
        , .Y(
        \servo_control_0/x_servo/DWACT_BL_ANDTREE_0_DWACT_BL_ANDTREE_0_E[0] )
        );
    NOR2B \servo_control_0/x_servo/pw_RNO[13]  (.A(
        \servo_control_0/x_servo/N_247 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[13]_net_1 ));
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
    DFN1 \Dsensor_0/PRDATA[7]  (.D(\Dsensor_0/PRDATA_RNO[7]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[7] ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/write_module/enabled  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        );
    NOR2 \servo_control_0/y_servo/un1_pw_0_I_58  (.A(
        \servo_control_0/y_servo/pw[22]_net_1 ), .B(
        \servo_control_0/y_servo/pw[21]_net_1 ), .Y(
        \servo_control_0/y_servo/N_37 ));
    NOR3A \servo_control_0/set_x_neutral_or_stop_0_a4_1  (.A(
        \servo_control_0/N_69 ), .B(\CoreAPB3_0_APBmslave0_PADDR[3] ), 
        .C(\CoreAPB3_0_APBmslave0_PADDR[6] ), .Y(
        \servo_control_0/N_45 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[17]  (.D(
        \Dsensor_0/dist1/next_distance_count_n17 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI4RJ25[17]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_23 ), .B(
        \Dsensor_0/dist1/un1_clk_count_1_22 ), .C(
        \Dsensor_0/dist1/un1_clk_count_1_26 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_29 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[20]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[20] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[20] ));
    AND2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_7_I_1  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[0]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_0_sqmuxa )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/DWACT_ADD_CI_0_TMP[0] )
        );
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIN063[16]  (.A(
        \Dsensor_0/dist1/next_distance_count[16]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m3_0_a2_0 ));
    DFN1 \Dsensor_0/dist1/distance_count[30]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[30]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[30] ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[28]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[28] ), .C(
        \servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[28] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[24]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_157 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[24]_net_1 ), .Y(N_56)
        );
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_98  (.A(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/y_servo/pw[10]_net_1 ), .Y(
        \servo_control_0/y_servo/N_24_0 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[27]  (.D(
        \Dsensor_0/dist1/next_distance_count_n27 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[27]_net_1 ));
    OR2A \servo_control_0/x_servo/pw_RNO[6]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_240 ), .Y(
        \servo_control_0/x_servo/pw_RNO[6]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[23]  (.D(
        \servo_control_0/x_servo/next_pw_4[23] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[23]_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[12]  (.D(
        \servo_control_0/x_servo/time_count_n12 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[12]_net_1 ));
    OR3 \servo_control_0/un3_y_down_morelt31  (.A(
        \servo_control_0/un3_y_down_morelt31_2_net_1 ), .B(
        \servo_control_0/un3_y_down_morelt31_1_net_1 ), .C(
        \servo_control_0/un3_y_down_morelt31_3 ), .Y(
        \servo_control_0/un3_y_down_morelto31 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[29]  (.A(
        \servo_control_0/y_servo/next_pw[29]_net_1 ), .B(
        \servo_control_0/y_servo/pw[29]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_263 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[10]  (.A(
        \Dsensor_0/dist1/N_287 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[10]_net_1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[10]  (.A(
        \servo_control_0/x_servo/N_244 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[10]_net_1 ));
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
    AO1C \servo_control_0/y_servo/un1_pw_0_I_122  (.A(
        \servo_control_0/y_servo/pw[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/y_servo/N_12_0 ), .Y(
        \servo_control_0/y_servo/N_18 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO[15]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_n15_tz ), .Y(
        \Dsensor_0/dist1/clk_count_n15 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[27]  (.A(
        \servo_control_0/y_servo/N_261 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[27]_net_1 ));
    AX1 \Dsensor_0/dist1/next_distance_count_RNO_0[21]  (.A(
        \Dsensor_0/dist1/N_31 ), .B(\Dsensor_0/dist1/next_m6_0_a2_4 ), 
        .C(\Dsensor_0/dist1/next_distance_count[21]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n21_tz ));
    AO1C \servo_control_0/un3_y_up_morelto14  (.A(
        \servo_control_0.un3_y_down_morelto13 ), .B(
        \servo_control_0/un3_y_up_morelt13 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[14] ), .Y(
        \servo_control_0/un3_y_up_morelt16 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[6]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[6] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[25]  (.D(
        \servo_control_0/y_servo/next_pw_4[25] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[25]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_176 ));
    DFN1 \Dsensor_0/PRDATA[29]  (.D(\Dsensor_0/PRDATA_RNO[29]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[29] ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[27]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[27] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[27] ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[31]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[31] ), .C(
        \servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[31] ));
    OA1 \servo_control_0/un3_y_down_morelto8  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[0] ), .B(
        \servo_control_0/un3_y_down_morelt3_0_net_1 ), .C(
        \servo_control_0/un3_y_down_morelto8_net_1 ), .Y(
        \servo_control_0/un3_y_down_morelt10_net_1 ));
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
    DFN1 \Dsensor_0/PRDATA[8]  (.D(\Dsensor_0/PRDATA_RNO[8]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[8] ));
    DFN1 \Dsensor_0/dist1/clk_count[23]  (.D(
        \Dsensor_0/dist1/clk_count_n23 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[23]_net_1 ));
    DFN1 \Dsensor_0/PRDATA[4]  (.D(\Dsensor_0/PRDATA_RNO[4]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[4] ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[25]  (.A(
        \Dsensor_0/dist1/N_302 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[25]_net_1 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[13]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[13] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[13] ));
    AO1C \servo_control_0/x_servo/un1_pw_0_I_131  (.A(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/x_servo/pw[1]_net_1 ), .C(
        \servo_control_0/x_servo/N_4 ), .Y(
        \servo_control_0/x_servo/N_6_0 ));
    DFN1 \servo_control_0/y_servo/pw[30]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[30]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[30]_net_1 ));
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_92  (.A(
        \servo_control_0/x_servo/pw[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[7] ));
    DFN1 \Dsensor_0/dist1/clk_count[10]  (.D(
        \Dsensor_0/dist1/clk_count_n10 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[10]_net_1 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[14]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[14] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[14]_net_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[29]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n29_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n29 ));
    NOR3C \servo_control_0/y_servo/time_count_RNI33JJ[2]  (.A(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c2 ));
    OR2A \servo_control_0/x_servo/pw_RNO[14]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_248 ), .Y(
        \servo_control_0/x_servo/pw_RNO[14]_net_1 ));
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
    NOR2B \Dsensor_0/dist1/clk_count_RNIT5PI[17]  (.A(
        \Dsensor_0/dist1/clk_count[14]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[17]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_11_1 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n4_tz )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n4 ));
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
    DFN1E0 \servo_control_0/y_servo/next_pw[5]  (.D(
        \servo_control_0/y_servo/next_pw_4[5] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[5]_net_1 ));
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
    DFN1E0 \Dsensor_0/dist1/next_distance_count[8]  (.D(
        \Dsensor_0/dist1/next_distance_count_n8 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[8]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNIGCNR8[14]  (.A(
        \Dsensor_0/dist1/clk_m1_0_a2_2 ), .B(
        \Dsensor_0/dist1/clk_N_13_mux ), .Y(
        \Dsensor_0/dist1/clk_N_3_mux ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[21]  (.A(
        \servo_control_0/x_servo/next_pw[21]_net_1 ), .B(
        \servo_control_0/x_servo/pw[21]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_255 ));
    NOR3A \Dsensor_0/dist1/next_distance_count_RNIBUB6[11]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_15 ), .B(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_23 ));
    DFN1 \Dsensor_0/dist1/clk_count[19]  (.D(
        \Dsensor_0/dist1/clk_count_n19 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[19]_net_1 ));
    NOR2A \servo_control_0/un1_read_lower_stop_1_i_a2_1  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .Y(
        \servo_control_0/un1_read_lower_stop_1_i_a2_1_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[13]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
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
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[21] ));
    AND3 \servo_control_0/x_servo/un1_pw_0_I_75  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[6] ), .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[7] ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[8] ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ));
    XA1 \servo_control_0/y_servo/time_count_RNO[9]  (.A(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c8 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/time_count_n9 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIG5EJ4[13]  (.A(
        \Dsensor_0/dist1/next_m3_0_a2_4 ), .B(
        \Dsensor_0/dist1/next_N_13_mux ), .Y(
        \Dsensor_0/dist1/next_N_7_mux_0_1 ));
    DFN1 \servo_control_0/y_servo/time_count[5]  (.D(
        \servo_control_0/y_servo/time_count_n5 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[5]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[10]  (.D(
        \servo_control_0/x_servo/N_12 ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[10]_net_1 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNII5C6[18]  (.A(
        \Dsensor_0/dist1/next_distance_count[18]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ), .C(
        \Dsensor_0/dist1/next_m6_0_a2_17_2 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_17_5 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[3]_net_1 )
        );
    DFN1 \Dsensor_0/PRDATA[10]  (.D(\Dsensor_0/PRDATA_RNO[10]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[10] ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[25]  (.A(
        \Dsensor_0/distance_count[25] ), .B(
        \Dsensor_0/dist1/next_distance_count[25]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_302 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[3]  (.A(
        \servo_control_0/x_servo/N_237 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[3]_net_1 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_33  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[9]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[13]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[13] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[13] ));
    NOR3 \servo_control_0/y_servo/un1_pw_0_I_28  (.A(
        \servo_control_0/y_servo/pw[28]_net_1 ), .B(
        \servo_control_0/y_servo/pw[27]_net_1 ), .C(
        \servo_control_0/y_servo/pw[29]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        );
    NOR3C \Dsensor_0/dist1/next_distance_count_RNIULG6[28]  (.A(
        \Dsensor_0/dist1/next_distance_count[25]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[28]_net_1 ), .C(
        \Dsensor_0/dist1/next_m6_0_a2_11_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_11_4 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_56  (.PIN4(N_60), .PIN5(
        N_58), .PIN6(N_62), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[25] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[26] ), .PIN3(
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
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_67  (.A(
        \servo_control_0/y_servo/pw[14]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[4] ));
    NOR2B \servo_control_0/x_servo/pw_RNO[25]  (.A(
        \servo_control_0/x_servo/N_259 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[25]_net_1 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[5] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[5]_net_1 )
        );
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[8]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[8] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[8]_net_1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[9]  (.A(
        \servo_control_0/x_servo/N_243 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[9]_net_1 ));
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
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[29]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_172 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[29]_net_1 ), .Y(N_66)
        );
    DFN1 \servo_control_0/y_servo/time_count[18]  (.D(
        \servo_control_0/y_servo/time_count_n18 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[18]_net_1 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[16]  (.A(
        \servo_control_0/x_servo/next_pw[16]_net_1 ), .B(
        \servo_control_0/x_servo/pw[16]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_250 ));
    OR3B \Dsensor_0/PRDATA_RNO[4]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[4] ), .Y(
        \Dsensor_0/PRDATA_RNO[4]_net_1 ));
    AND3 \servo_control_0/x_servo/un1_pw_0_I_78  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ), 
        .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        , .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        , .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ));
    NOR2B \servo_control_0/x_servo/pw_RNO[16]  (.A(
        \servo_control_0/x_servo/N_250 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[16]_net_1 ));
    DFN1 \Dsensor_0/dist1/clk_count[12]  (.D(
        \Dsensor_0/dist1/clk_count_n12 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[12]_net_1 ));
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[16]  (.A(
        \Dsensor_0/dist1/N_35 ), .B(
        \Dsensor_0/dist1/next_distance_count[16]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n16 ));
    DFN1 \Dsensor_0/dist1/clk_count[31]  (.D(
        \Dsensor_0/dist1/clk_count_n31 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[31]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[13]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_187 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[13] ));
    DFN1 \servo_control_0/x_servo/pw[4]  (.D(
        \servo_control_0/x_servo/pw_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[4]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_20  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[0]INT_NET ), .PIN6INT(), 
        .PIN1INT(), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    NOR2B \servo_control_0/y_servo/pwm_signal_RNO  (.A(
        \servo_control_0/y_servo/N_233 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pwm_signal_RNO_0_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[30]  (.D(
        \servo_control_0/y_servo/next_pw_4[30] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[30]_net_1 ));
    NOR2A \Dsensor_0/dist1/next_distance_count_RNID8GC5[19]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1 ), .B(sensor_pwm_c), 
        .Y(\Dsensor_0/dist1/next_distance_count_RNID8GC5[19]_net_1 ));
    DFN1 \servo_control_0/y_servo/time_count[7]  (.D(
        \servo_control_0/y_servo/time_count_n7 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[7]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[13]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[13]_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[30]  (.A(
        \servo_control_0/y_servo/N_264 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[30]_net_1 ));
    NOR2B \servo_control_0/set_x_reverse_0_a2  (.A(
        \servo_control_0/N_61 ), .B(\CoreAPB3_0_APBmslave0_PADDR[2] ), 
        .Y(\servo_control_0/N_69 ));
    AND2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_15  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[1] ));
    OR3B \Dsensor_0/PRDATA_RNO[29]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[29] ), .Y(
        \Dsensor_0/PRDATA_RNO[29]_net_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[3]  (.A(
        \Dsensor_0/distance_count[3] ), .B(
        \Dsensor_0/dist1/next_distance_count[3]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_280 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[13]  (.A(
        \servo_control_0/y_servo/N_247 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[13]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[11]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[11]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[11]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[4]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[4] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIV863[16]  (.A(
        \Dsensor_0/dist1/next_distance_count[19]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[16]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_4_1 ));
    DFN1 \servo_control_0/y_servo/pw[8]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[8]_net_1 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI21OA5[15]  (.A(
        \Dsensor_0/dist1/clk_count[14]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c13 ), .C(
        \Dsensor_0/dist1/clk_count[15]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c15 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[18]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[18] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[18]_net_1 ));
    DFN1 \servo_control_0/x_servo/pw[3]  (.D(
        \servo_control_0/x_servo/pw_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[3]_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[1]  (.D(
        \servo_control_0/x_servo/time_count_n1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[1]_net_1 ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_69  (.A(
        \servo_control_0/y_servo/pw[16]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[6] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[28]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_202 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[21]  (.A(
        \Dsensor_0/dist1/N_298 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[21]_net_1 ));
    NOR3 \servo_control_0/x_servo/un1_pw_0_I_14  (.A(
        \servo_control_0/x_servo/pw[29]_net_1 ), .B(
        \servo_control_0/x_servo/pw[30]_net_1 ), .C(
        \servo_control_0/x_servo/pw[28]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[3] ));
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
        \servo_control_0/y_servo/time_count_c6 ), .B(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n7 ));
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_129  (.A(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .B(
        \servo_control_0/x_servo/pw[0]_net_1 ), .Y(
        \servo_control_0/x_servo/N_4 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[1]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[1]_net_1 )
        );
    OR3B \Dsensor_0/PRDATA_RNO[24]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[24] ), .Y(
        \Dsensor_0/PRDATA_RNO[24]_net_1 ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIT883[25]  (.A(
        \Dsensor_0/dist1/next_distance_count[26]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[25]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_7 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO_0[13]  (.A(
        \Dsensor_0/dist1/clk_count_c11 ), .B(
        \Dsensor_0/dist1/clk_count[12]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c12 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNIE4OP6[18]  (.A(
        \Dsensor_0/dist1/clk_m6_0_a2_11_7 ), .B(
        \Dsensor_0/dist1/clk_m6_0_a2_4_0 ), .Y(
        \Dsensor_0/dist1/clk_N_13_mux_0 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[12]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[12] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[12] ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[1]  (.A(
        \Dsensor_0/dist1/next_distance_count[1]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[0]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n1 ));
    OA1 \servo_control_0/set_x_neutral_or_stop_0_a4_2  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[2] ), .B(\servo_control_0/N_49 ), 
        .C(\servo_control_0/N_61 ), .Y(\servo_control_0/N_46_2 ));
    NOR3 \CoreAPB3_0/m13_3  (.A(\CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[0] ), .Y(\CoreAPB3_0/m13_3_net_1 )
        );
    NOR2B \servo_control_0/set_y_reverse_0_a4  (.A(
        \servo_control_0/N_69 ), .B(\CoreAPB3_0_APBmslave0_PADDR[6] ), 
        .Y(\servo_control_0/set_y_reverse ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_32  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_7_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[11] ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_7  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[6]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[7]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_count_6lto7_0 )
        );
    NOR3C \Dsensor_0/dist1/clk_count_RNISPU63[8]  (.A(
        \Dsensor_0/dist1/clk_count[7]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c6 ), .C(
        \Dsensor_0/dist1/clk_count[8]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c8 ));
    NOR3C \servo_control_0/y_servo/time_count_RNIAU254[18]  (.A(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c16 ), .C(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c18 ));
    IOPAD_IN_U \stop_y_pad[0]/U0/U0  (.PAD(stop_y[0]), .Y(
        \stop_y_pad[0]/U0/NET1 ));
    OR2A \Dsensor_0/dist1/next_distance_count_RNID6442[4]  (.A(
        \Dsensor_0/dist1/next_distance_count[4]_net_1 ), .B(
        \Dsensor_0/dist1/N_375 ), .Y(\Dsensor_0/dist1/N_376 ));
    DFN1 \servo_control_0/y_servo/pw[23]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[23]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[23]_net_1 ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_40  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_4 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[14] ));
    DFN1 \servo_control_0/x_servo/pw[10]  (.D(
        \servo_control_0/x_servo/pw_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[10]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[14]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_127 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[14]_net_1 ), .Y(N_36)
        );
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[12]  (.A(
        \Dsensor_0/dist1/N_31 ), .B(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n12 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[28]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_169 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[28]_net_1 ), .Y(N_64)
        );
    OR2A \servo_control_0/x_servo/pw_RNO[17]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_251 ), .Y(
        \servo_control_0/x_servo/pw_RNO[17]_net_1 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_128  (.A(
        \servo_control_0/x_servo/pw[2]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/x_servo/N_3 ));
    DFN1 \Dsensor_0/dist1/distance_count[8]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[8] ));
    DFN1 \servo_control_0/y_servo/pw[21]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[21]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[21]_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[6]  (.D(
        \servo_control_0/x_servo/time_count_n6 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[6]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO[25]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_n25_tz ), .Y(
        \Dsensor_0/dist1/clk_count_n25 ));
    OA1A \servo_control_0/y_servo/un1_pw_0_I_62  (.A(
        \servo_control_0/y_servo/N_36 ), .B(
        \servo_control_0/y_servo/N_38_0 ), .C(
        \servo_control_0/y_servo/N_37 ), .Y(
        \servo_control_0/y_servo/N_41 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[30]  (.A(
        \Dsensor_0/dist1/next_distance_count_c29 ), .B(
        \Dsensor_0/dist1/next_distance_count[30]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n30 ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_73  (.A(
        \servo_control_0/y_servo/pw[12]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[2] ));
    DFN1E0 \servo_control_0/y_servo/next_pw[16]  (.D(
        \servo_control_0/y_servo/N_6 ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[16]_net_1 ));
    NOR3C \servo_control_0/x_servo/time_count_RNISTSU1[7]  (.A(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/x_servo/time_m6_0_a2_4 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_6 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[4]  (.D(
        \Dsensor_0/dist1/next_distance_count_n4 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[4]_net_1 ));
    AND2A \servo_control_0/y_servo/un1_pw_0_I_87  (.A(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .B(
        \servo_control_0/y_servo/pw[16]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[2] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[20]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_194 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[0]  (.A(
        \Dsensor_0/distance_count[0] ), .B(
        \Dsensor_0/dist1/next_distance_count[0]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_277 ));
    NOR3 \servo_control_0/y_servo/un1_pw_0_I_16  (.A(
        \servo_control_0/y_servo/pw[24]_net_1 ), .B(
        \servo_control_0/y_servo/pw[23]_net_1 ), .C(
        \servo_control_0/y_servo/pw[22]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[1] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n5 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[5]_net_1 )
        );
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIN283_0[22]  (.A(
        \Dsensor_0/dist1/next_distance_count[22]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[23]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_10 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[1]  (.A(
        \servo_control_0/y_servo/next_pw[1]_net_1 ), .B(
        \servo_control_0/y_servo/pw[1]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_235 ));
    DFN1 \servo_control_0/x_servo/pw[11]  (.D(
        \servo_control_0/x_servo/pw_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[11]_net_1 ));
    OR2B \servo_control_0/x_servo/time_count_RNIFIST[18]  (.A(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto20_1 ));
    OR3B \Dsensor_0/PRDATA_RNO[12]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[12] ), .Y(
        \Dsensor_0/PRDATA_RNO[12]_net_1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[1]  (.A(
        \servo_control_0/x_servo/N_235 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[1]_net_1 ));
    NOR3B \servo_control_0/PRDATA_6_iv_0_a4_3_0[0]  (.A(
        \servo_control_0/un1_read_lower_stop_1_i_a2_4_net_1 ), .B(
        \servo_control_0/un1_read_lower_stop_1_i_a2_5_net_1 ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .Y(
        \servo_control_0/PRDATA_6_iv_0_a4_3_0[0]_net_1 ));
    NOR3 \servo_control_0/x_servo/un1_pw_0_I_16  (.A(
        \servo_control_0/x_servo/pw[24]_net_1 ), .B(
        \servo_control_0/x_servo/pw[23]_net_1 ), .C(
        \servo_control_0/x_servo/pw[22]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[1] )
        );
    NOR3C \servo_control_0/x_servo/time_count_RNINO848[18]  (.A(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c16 ), .C(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c18 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIQ8P4[13]  (.A(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ), .B(
        \Dsensor_0/dist1/next_m6_0_a2_4_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_17_4 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[31]  (.A(
        \Dsensor_0/dist1/N_308 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[31]_net_1 ));
    AO1A \servo_control_0/x_servo/next_pw_RNO[8]  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[8] ), .C(
        \servo_control_0/x_servo/N_23 ), .Y(
        \servo_control_0/x_servo/next_pw_4[8] ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[9]  (.D(
        \Dsensor_0/dist1/next_distance_count_n9 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[9]_net_1 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[16]  (.A(
        \Dsensor_0/dist1/clk_count_c15 ), .B(
        \Dsensor_0/dist1/clk_count[16]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n16 ));
    AO1 \servo_control_0/y_servo/next_pw_RNO[5]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[5] ), .B(
        \servo_control_0/set_y_0 ), .C(\servo_control_0/y_servo/N_24 ), 
        .Y(\servo_control_0/y_servo/next_pw_4[5] ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[6]  (.A(
        \servo_control_0/x_servo/next_pw[6]_net_1 ), .B(
        \servo_control_0/x_servo/pw[6]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_240 ));
    NOR3A \Dsensor_0/dist1/clk_count_RNIUFI51[17]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_15 ), .B(
        \Dsensor_0/dist1/clk_count[17]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[18]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_23 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[12]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[12] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ));
    NOR3C \servo_control_0/x_servo/time_count_RNI86C67[15]  (.A(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c14 ), .C(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c16 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/read_module/working  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ));
    OA1 \servo_control_0/y_servo/un1_pw_0_I_106  (.A(
        \servo_control_0/y_servo/N_31 ), .B(
        \servo_control_0/y_servo/N_30_0 ), .C(
        \servo_control_0/y_servo/N_29 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[2] ));
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[6]  (.A(
        \Dsensor_0/dist1/N_377 ), .B(
        \Dsensor_0/dist1/next_distance_count[6]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n6 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[16]  (.A(
        \Dsensor_0/dist1/N_293 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[16]_net_1 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[4]  (.A(
        \servo_control_0/y_servo/next_pw[4]_net_1 ), .B(
        \servo_control_0/y_servo/pw[4]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_238 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[18]  (.D(
        \servo_control_0/y_servo/next_pw_4[18] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[18]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[2]_net_1 )
        );
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI5SBJ2[10]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_5_2 ), .B(
        \Dsensor_0/dist1/next_m6_0_a2_5_1 ), .C(
        \Dsensor_0/dist1/next_m6_0_a2_5_4 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_5_7 ));
    DFN1 \servo_control_0/x_servo/pw[20]  (.D(
        \servo_control_0/x_servo/pw_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[20]_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[4]  (.D(
        \servo_control_0/x_servo/time_count_n4 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[4]_net_1 ));
    DFN1 \Dsensor_0/PRDATA[27]  (.D(\Dsensor_0/PRDATA_RNO[27]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[27] ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[18]  (.D(
        \Dsensor_0/dist1/next_distance_count_n18 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[18]_net_1 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[10]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[10] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[10]_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[18]  (.A(
        \servo_control_0/y_servo/N_252 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[18]_net_1 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[23]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[23] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[23] ));
    DFN1E0 \servo_control_0/y_servo/next_pw[19]  (.D(
        \servo_control_0/y_servo/next_pw_4[19] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[19]_net_1 ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[4]  (.A(
        \servo_control_0/y_servo/time_count_c2 ), .B(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n4_tz ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[2]  (.A(
        \Dsensor_0/distance_count[2] ), .B(
        \Dsensor_0/dist1/next_distance_count[2]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_279 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[24]  (.A(
        \Dsensor_0/dist1/next_distance_count_c23 ), .B(
        \Dsensor_0/dist1/next_distance_count[24]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n24 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[13]  (.A(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c12 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n13 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[28]  (.D(
        \Dsensor_0/dist1/next_distance_count_n28 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[28]_net_1 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[29]  (.A(
        \servo_control_0/x_servo/next_pw[29]_net_1 ), .B(
        \servo_control_0/x_servo/pw[29]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_263 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[2]  (.A(
        \servo_control_0/y_servo/N_236 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[2]_net_1 ));
    OR3B \Dsensor_0/PRDATA_RNO[28]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[28] ), .Y(
        \Dsensor_0/PRDATA_RNO[28]_net_1 ));
    IOPAD_TRI \x_servo_pwm_pad/U0/U0  (.D(\x_servo_pwm_pad/U0/NET1 ), 
        .E(\x_servo_pwm_pad/U0/NET2 ), .PAD(x_servo_pwm));
    AOI1B \n64_magic_box_0/n64_serial_interface_0/long_count_RNO[15]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count11lto16_i_a3_0 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_13 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[15] ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[15] ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_127  (.A(
        \servo_control_0/x_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/x_servo/pw[1]_net_1 ), .Y(
        \servo_control_0/x_servo/N_2 ));
    DFN1 \servo_control_0/x_servo/pw[21]  (.D(
        \servo_control_0/x_servo/pw_RNO[21]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[21]_net_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[31]  (.A(
        \Dsensor_0/distance_count[31] ), .B(
        \Dsensor_0/dist1/next_distance_count[31]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_308 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[9]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_112 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[9]_net_1 ), .Y(N_26));
    DFN1E0 \servo_control_0/x_servo/next_pw[21]  (.D(
        \servo_control_0/x_servo/next_pw_4[21] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[21]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[8]  (.D(
        \servo_control_0/y_servo/next_pw_4[8] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[8]_net_1 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_70  (.A(
        \servo_control_0/x_servo/pw[15]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[5] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[23]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[23] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_154 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[16]  (.A(
        \servo_control_0/y_servo/time_count_c15 ), .B(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n16 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[0]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[0] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[0] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[9]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[9] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[9] ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_74  (.A(
        \servo_control_0/x_servo/pw[11]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[1] ));
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
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[19]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_142 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[19]_net_1 ), .Y(N_46)
        );
    AND3B \servo_control_0/y_servo/un1_pw_0_I_30  (.A(
        \servo_control_0/y_servo/pw[30]_net_1 ), .B(
        \servo_control_0/y_servo/pw[31]_net_1 ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        , .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ));
    AO1C \servo_control_0/y_servo/un1_pw_0_I_131  (.A(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/y_servo/pw[1]_net_1 ), .C(
        \servo_control_0/y_servo/N_4 ), .Y(
        \servo_control_0/y_servo/N_6_0 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[29]  (.A(
        \Dsensor_0/distance_count[29] ), .B(
        \Dsensor_0/dist1/next_distance_count[29]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_306 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[3]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[3] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[3] ));
    DFN1 \servo_control_0/y_servo/time_count[14]  (.D(
        \servo_control_0/y_servo/time_count_n14 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[14]_net_1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[22]  (.A(
        \servo_control_0/x_servo/N_256 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[22]_net_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[15]  (.A(
        \Dsensor_0/distance_count[15] ), .B(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_292 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[23]  (.A(
        \Dsensor_0/dist1/next_distance_count_c22 ), .B(
        \Dsensor_0/dist1/next_distance_count[23]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n23 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[28]  (.A(
        \servo_control_0/x_servo/next_pw[28]_net_1 ), .B(
        \servo_control_0/x_servo/pw[28]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_262 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[26]  (.A(
        \servo_control_0/y_servo/N_260 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[26]_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[22]  (.A(
        \Dsensor_0/dist1/N_299 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[22]_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[19]  (.A(
        \servo_control_0/y_servo/N_253 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[19]_net_1 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[3]  (.A(
        \Dsensor_0/dist1/clk_count_c2 ), .B(
        \Dsensor_0/dist1/clk_count[3]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n3 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI4BOC[11]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_13 ), .B(
        \Dsensor_0/dist1/un1_next_distance_count_1_12 ), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1_23 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_27 ));
    DFN1 \servo_control_0/x_servo/pw[6]  (.D(
        \servo_control_0/x_servo/pw_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[6]_net_1 ));
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[19]  (.A(
        \Dsensor_0/dist1/next_distance_count[19]_net_1 ), .B(
        \Dsensor_0/dist1/N_38 ), .C(\Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n19 ));
    DFN1 \Dsensor_0/dist1/clk_count[27]  (.D(\Dsensor_0/dist1/N_11 ), 
        .CLK(FAB_CLK), .Q(\Dsensor_0/dist1/clk_count[27]_net_1 ));
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
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_192 ));
    DFN1 \servo_control_0/x_servo/pw[0]  (.D(
        \servo_control_0/x_servo/pw_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[0]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNILSIE9[29]  (.A(
        \Dsensor_0/dist1/clk_count_c28 ), .B(
        \Dsensor_0/dist1/clk_count[29]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c29 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[11]  (.D(
        \Dsensor_0/dist1/next_distance_count_n11 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_19  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_11 ));
    OR3B \Dsensor_0/dist1/next_distance_count_RNO_0[16]  (.A(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ), .C(
        \Dsensor_0/dist1/N_33 ), .Y(\Dsensor_0/dist1/N_35 ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_82  (.A(
        \servo_control_0/y_servo/pw[15]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[0] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[13]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[13] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_124 ));
    AO1C \servo_control_0/y_servo/un1_pw_0_I_102  (.A(
        \servo_control_0/y_servo/pw[12]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .C(
        \servo_control_0/y_servo/N_22_1 ), .Y(
        \servo_control_0/y_servo/N_28_0 ));
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
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_71  (.A(
        \servo_control_0/x_servo/pw[10]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[0] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[17]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[17] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[17]_net_1 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[21]  (.D(
        \Dsensor_0/dist1/next_distance_count_n21 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[21]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[15]  (.D(
        \servo_control_0/y_servo/N_8 ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[15]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[22]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[22] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_151 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[3]  (.A(
        \servo_control_0/y_servo/next_pw[3]_net_1 ), .B(
        \servo_control_0/y_servo/pw[3]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_237 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[2]  (.A(
        \servo_control_0/x_servo/next_pw[2]_net_1 ), .B(
        \servo_control_0/x_servo/pw[2]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_236 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_2  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[17]INT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[16]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[18]INT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[16]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[17]INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[18]INT_NET ));
    DFN1 \servo_control_0/x_servo/time_count[19]  (.D(
        \servo_control_0/x_servo/time_count_n19 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[19]_net_1 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_36  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[6] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_5 ));
    AND3 \servo_control_0/y_servo/un1_pw_0_I_76  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[3] ), .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[4] ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[5] ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        );
    MX2 \servo_control_0/y_servo/pw_RNO_0[8]  (.A(
        \servo_control_0/y_servo/next_pw[8]_net_1 ), .B(
        \servo_control_0/y_servo/pw[8]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_242 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[29]  (.A(
        \Dsensor_0/dist1/N_306 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[29]_net_1 ));
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
    AND3 \servo_control_0/x_servo/un1_pw_0_I_76  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[3] ), .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[4] ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[5] ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        );
    MX2C \servo_control_0/PRDATA_1_RNO_1[0]  (.A(\stop_x_c[1] ), .B(
        \stop_x_c[0] ), .S(\CoreAPB3_0_APBmslave0_PADDR[2] ), .Y(
        \servo_control_0/N_28 ));
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
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_203 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[16]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[16] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[23] ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_2  (.A(
        \servo_control_0/y_servo/pw[19]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_2[0] ));
    NOR2 \Dsensor_0/dist1/clk_count_RNI4EQI[28]  (.A(
        \Dsensor_0/dist1/clk_count[28]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[19]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_13 ));
    OA1A \servo_control_0/x_servo/un1_pw_0_I_101  (.A(
        \servo_control_0/x_servo/pw[13]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/x_servo/N_23_0 ), .Y(
        \servo_control_0/x_servo/N_27 ));
    AND3B \Dsensor_0/valid_read_9  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[4] ), .C(
        \Dsensor_0/valid_read_9_1_net_1 ), .Y(\Dsensor_0.valid_read_9 )
        );
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI0P0T1[20]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_5 ), .B(
        \Dsensor_0/dist1/un1_next_distance_count_1_4 ), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1_19 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_25 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[10]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
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
    OR3B \Dsensor_0/PRDATA_RNO[13]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[13] ), .Y(
        \Dsensor_0/PRDATA_RNO[13]_net_1 ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_9  (.A(
        \n64_magic_box_0/n64_serial_interface_0/N_15 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[3] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[18]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_139 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[18]_net_1 ), .Y(N_44)
        );
    AO1C \servo_control_0/x_servo/un1_pw_0_I_124  (.A(
        \servo_control_0/x_servo/pw[8]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/x_servo/N_15 ), .Y(
        \servo_control_0/x_servo/N_20 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[8]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_109 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[8]_net_1 ), .Y(N_24));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[12]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[12] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_121 ));
    NOR3B \servo_control_0/y_servo/un1_pw_0_I_64  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ), 
        .B(\servo_control_0/y_servo/N_41 ), .C(
        \servo_control_0/y_servo/pw[23]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] ));
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
    DFN1 \servo_control_0/x_servo/pw[7]  (.D(
        \servo_control_0/x_servo/pw_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[7]_net_1 ));
    MSS_CCC_GL_IF \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_TILE3  (
        .PIN2(GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), 
        .PIN1(), .PIN5(), .PIN2INT(), .PIN3INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .PIN4INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .PIN1INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .PIN5INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLC_INT ));
    IOPAD_IN \ants_master_MSS_0/MSS_UART_0_RXD  (.PAD(UART_0_RXD), .Y(
        \ants_master_MSS_0/MSS_UART_0_RXD_Y ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_123  (.A(
        \servo_control_0/y_servo/pw[9]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/N_19 ));
    IOPAD_IN \sensor_pwm_pad/U0/U0  (.PAD(sensor_pwm), .Y(
        \sensor_pwm_pad/U0/NET1 ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_37  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_5 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[13] ));
    OR3B \Dsensor_0/PRDATA_RNO[17]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[17] ), .Y(
        \Dsensor_0/PRDATA_RNO[17]_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[4]  (.A(
        \Dsensor_0/dist1/N_281 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[4]_net_1 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[7]  (.A(
        \servo_control_0/y_servo/next_pw[7]_net_1 ), .B(
        \servo_control_0/y_servo/pw[7]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_241 ));
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
    XA1A \Dsensor_0/dist1/clk_count_RNO[26]  (.A(
        \Dsensor_0/dist1/N_21 ), .B(
        \Dsensor_0/dist1/clk_count[26]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n26 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_111  (.A(
        \servo_control_0/x_servo/pw[7]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[2] ));
    NOR3C \servo_control_0/set_x_neutral_or_stop_0_a2_0_0_0  (.A(
        \servo_control_0/un1_read_lower_stop_1_i_a2_4_net_1 ), .B(
        \servo_control_0/un1_read_lower_stop_1_i_a2_5_net_1 ), .C(
        CoreAPB3_0_APBmslave0_PWRITE), .Y(
        \servo_control_0/set_x_neutral_or_stop_0_a2_0_0 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[14]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_188 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[14] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[24]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[24] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[24] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[20]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_194 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[20] ));
    AO1 \servo_control_0/y_servo/next_pw_RNO[14]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[14] ), .B(
        \servo_control_0/set_y ), .C(\servo_control_0/y_servo/N_22 ), 
        .Y(\servo_control_0/y_servo/next_pw_4[14] ));
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
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[9]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n9_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n9 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[22]  (.A(
        \Dsensor_0/distance_count[22] ), .B(
        \Dsensor_0/dist1/next_distance_count[22]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_299 ));
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
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[27] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[27] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[19]  (.A(
        \servo_control_0/x_servo/time_count_c18 ), .B(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n19 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[26]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_200 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[26] ));
    AO1C \servo_control_0/y_servo/pwm_signal_RNO_0  (.A(
        \servo_control_0/y_servo/I_140_0 ), .B(y_servo_pwm_c), .C(
        \servo_control_0/y_servo/un1_time_count ), .Y(
        \servo_control_0/y_servo/N_233 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNIBT801[13]  (.A(
        \Dsensor_0/dist1/clk_count[8]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[13]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[7]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_10_4 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[10]  (.A(
        \servo_control_0/y_servo/N_244 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[10]_net_1 ));
    OA1A \servo_control_0/x_servo/un1_pw_0_I_136  (.A(
        \servo_control_0/x_servo/N_6_0 ), .B(
        \servo_control_0/x_servo/N_8_0 ), .C(
        \servo_control_0/x_servo/N_7 ), .Y(
        \servo_control_0/x_servo/N_11 ));
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
    XA1 \Dsensor_0/dist1/clk_count_RNO[4]  (.A(
        \Dsensor_0/dist1/clk_count_c3 ), .B(
        \Dsensor_0/dist1/clk_count[4]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n4 ));
    OR2A \servo_control_0/y_servo/pw_RNO[8]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_242 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[8]_net_1 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[21]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[21] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[21] ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI12F6_2[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        );
    MX2 \servo_control_0/y_servo/pw_RNO_0[13]  (.A(
        \servo_control_0/y_servo/next_pw[13]_net_1 ), .B(
        \servo_control_0/y_servo/pw[13]_net_1 ), .S(
        \servo_control_0/y_servo/un1_time_count ), .Y(
        \servo_control_0/y_servo/N_247 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        );
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_6  (.A(
        \servo_control_0/x_servo/pw[20]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_2[1] ));
    IOPAD_BI \ants_master_MSS_0/MSS_SPI_1_SS  (.D(
        \ants_master_MSS_0/SPI1SSO_net_0[0] ), .E(
        \ants_master_MSS_0/MSS_SPI_1_SS_E ), .Y(
        \ants_master_MSS_0/MSS_SPI_1_SS_Y ), .PAD(SPI_1_SS));
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
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[15] ));
    NOR3C \Dsensor_0/dist1/clk_count_RNIUJM51[25]  (.A(
        \Dsensor_0/dist1/clk_count[27]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[24]_net_1 ), .C(
        \Dsensor_0/dist1/clk_m1_0_a2_1 ), .Y(
        \Dsensor_0/dist1/clk_m1_0_a2_2 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]  
        (.D(\n64_magic_box_0/n64_serial_interface_0/read_module/N_173 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[19]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[19] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[19] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_21  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[1]INT_NET ), .PIN6INT(), 
        .PIN1INT(), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MX2 \servo_control_0/x_servo/pw_RNO_0[26]  (.A(
        \servo_control_0/x_servo/next_pw[26]_net_1 ), .B(
        \servo_control_0/x_servo/pw[26]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_260 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[14]  (.D(
        \servo_control_0/x_servo/next_pw_4[14] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[14]_net_1 ));
    AX1C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO_0[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n4_tz )
        );
    NOR3 \Dsensor_0/dist1/next_distance_count_RNIP80EF_0[19]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1 ), .B(sensor_pwm_c), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count9_0 ));
    NOR3A \Dsensor_0/dist1/next_distance_count_RNILDKIF_0[19]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \Dsensor_0/dist1/clk_count_RNIDF52A[17]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_RNID8GC5[19]_net_1 ), .Y(
        \Dsensor_0/dist1/N_146_i_0 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[20]  (.A(
        \servo_control_0/y_servo/time_count_47_0 ), .B(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n20 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[20]  (.D(
        \servo_control_0/x_servo/next_pw_4[20] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[20]_net_1 ));
    NOR2 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNIQSGC[2]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[15]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_1 )
        );
    DFN1 \Dsensor_0/PRDATA[6]  (.D(\Dsensor_0/PRDATA_RNO[6]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[6] ));
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[5]  (.A(
        \Dsensor_0/dist1/N_376 ), .B(
        \Dsensor_0/dist1/next_distance_count[5]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n5 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNITC2G2[6]  (.A(
        \Dsensor_0/dist1/clk_count[5]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c4 ), .C(
        \Dsensor_0/dist1/clk_count[6]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c6 ));
    NOR2B \servo_control_0/y_servo/un1_pw_0_I_65  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[2] ), 
        .B(\servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ), 
        .Y(\servo_control_0/y_servo/DWACT_COMP0_E[0] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_RNI1TFT[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/un1_index_3_0 )
        );
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIFV7R[1]  (.A(
        \Dsensor_0/dist1/next_distance_count[0]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[1]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[27]  (.A(
        \Dsensor_0/distance_count[27] ), .B(
        \Dsensor_0/dist1/next_distance_count[27]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_304 ));
    MX2 \servo_control_0/PRDATA_1_RNO_0[0]  (.A(\servo_control_0/N_28 )
        , .B(\servo_control_0/N_29 ), .S(
        \CoreAPB3_0_APBmslave0_PADDR[6] ), .Y(\servo_control_0/N_30 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[8]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
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
    AX1C \Dsensor_0/dist1/next_distance_count_RNO_0[27]  (.A(
        \Dsensor_0/dist1/next_distance_count[26]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count_c25 ), .C(
        \Dsensor_0/dist1/next_distance_count[27]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n27_tz ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[27]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n27_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n27 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIB3S94[4]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_5_7 ), .B(
        \Dsensor_0/dist1/next_m6_0_a2_5_6 ), .Y(
        \Dsensor_0/dist1/next_N_13_mux ));
    DFN1 \servo_control_0/y_servo/pw[17]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[17]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[17]_net_1 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[25]  (.A(
        \Dsensor_0/dist1/next_distance_count_c24 ), .B(
        \Dsensor_0/dist1/next_distance_count[25]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n25 ));
    DFN1 \Dsensor_0/dist1/distance_count[13]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[13] ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[7]  (.A(
        \Dsensor_0/dist1/clk_count_c6 ), .B(
        \Dsensor_0/dist1/clk_count[7]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n7 ));
    DFN1 \servo_control_0/y_servo/time_count[0]  (.D(
        \servo_control_0/y_servo/time_count_n0 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[0]_net_1 ));
    OR3C \Dsensor_0/dist1/clk_count_RNIF0S88[25]  (.A(
        \Dsensor_0/dist1/clk_count[24]_net_1 ), .B(
        \Dsensor_0/dist1/clk_N_13_mux ), .C(
        \Dsensor_0/dist1/clk_count[25]_net_1 ), .Y(
        \Dsensor_0/dist1/N_21 ));
    NOR3A \CoreAPB3_0/m2_e  (.A(ants_master_MSS_0_MSS_MASTER_APB_PSELx)
        , .B(\CoreAPB3_0_APBmslave0_PADDR[10] ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[11] ), .Y(N_16_mux));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[0]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[0] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[0] ));
    XA1A \servo_control_0/y_servo/un1_pw_0_I_84  (.A(
        \servo_control_0/y_servo/pw[18]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
        , .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[1] ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[19]  (.A(
        \Dsensor_0/distance_count[19] ), .B(
        \Dsensor_0/dist1/next_distance_count[19]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_296 ));
    IOTRI_OB_EB \x_servo_pwm_pad/U0/U1  (.D(x_servo_pwm_c), .E(
        PLLEN_VCC), .DOUT(\x_servo_pwm_pad/U0/NET1 ), .EOUT(
        \x_servo_pwm_pad/U0/NET2 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[8]  (.A(
        \Dsensor_0/distance_count[8] ), .B(
        \Dsensor_0/dist1/next_distance_count[8]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_285 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[10]  (.A(
        \servo_control_0/y_servo/next_pw[10]_net_1 ), .B(
        \servo_control_0/y_servo/pw[10]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_244 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_10  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ));
    NOR3B \servo_control_0/x_servo/un1_pw_0_I_17  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_2[1] ), .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_2[0] ), .C(
        \servo_control_0/x_servo/pw[21]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_3[0] )
        );
    AO1 \servo_control_0/x_servo/next_pw_RNO[7]  (.A(
        \servo_control_0/set_x ), .B(\CoreAPB3_0_APBmslave0_PWDATA[7] )
        , .C(\servo_control_0/x_servo/N_24 ), .Y(
        \servo_control_0/x_servo/next_pw_4[7] ));
    DFN1E0 \servo_control_0/x_servo/next_pw[7]  (.D(
        \servo_control_0/x_servo/next_pw_4[7] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[7]_net_1 ));
    NOR2A \servo_control_0/set_x_0_a2  (.A(\servo_control_0/N_68 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[6] ), .Y(\servo_control_0/N_70 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[19]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_193 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_24  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[2] ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[3] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[4] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[11]  (.A(
        \servo_control_0/x_servo/time_count_c10 ), .B(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
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
    DFN1 \Dsensor_0/dist1/distance_count[25]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[25]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[25] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[12]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[12] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[12]_net_1 ));
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[14]  (.A(
        \Dsensor_0/dist1/N_33 ), .B(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n14 ));
    MX2 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_9  
        (.A(\n64_magic_box_0/n64_serial_interface_0/write_module/N_66 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_67 ), 
        .S(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[1]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/N_68 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNIHK4K5[16]  (.A(
        \Dsensor_0/dist1/clk_count_c15 ), .B(
        \Dsensor_0/dist1/clk_count[16]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c16 ));
    OA1A \servo_control_0/x_servo/un1_pw_0_I_132  (.A(
        \servo_control_0/x_servo/pw[3]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/x_servo/N_3 ), .Y(
        \servo_control_0/x_servo/N_7 ));
    IOPAD_TRI \y_servo_pwm_pad/U0/U0  (.D(\y_servo_pwm_pad/U0/NET1 ), 
        .E(\y_servo_pwm_pad/U0/NET2 ), .PAD(y_servo_pwm));
    AX1C \Dsensor_0/dist1/clk_count_RNO_0[8]  (.A(
        \Dsensor_0/dist1/clk_count[7]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c6 ), .C(
        \Dsensor_0/dist1/clk_count[8]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n8_tz ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[29]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[29] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[29] ));
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
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[16]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[16] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[16]_net_1 ));
    IOPAD_IN_U \stop_x_pad[1]/U0/U0  (.PAD(stop_x[1]), .Y(
        \stop_x_pad[1]/U0/NET1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[7]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[7] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNITD8R[7]  (.A(
        \Dsensor_0/dist1/next_distance_count[7]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[8]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_5_1 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNIREC6[15]  (.A(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ), .C(
        \Dsensor_0/dist1/next_m6_0_a2_4_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_4_5 ));
    AO1 \servo_control_0/y_servo/next_pw_RNO[6]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[6] ), .B(
        \servo_control_0/set_y_0 ), .C(\servo_control_0/y_servo/N_23 ), 
        .Y(\servo_control_0/y_servo/next_pw_4[6] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[25]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[25] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[25] ));
    DFN1 \servo_control_0/y_servo/pw[27]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[27]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[27]_net_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNIRG6H3[8]  (.A(
        \servo_control_0/x_servo/time_count_c7 ), .B(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c8 ));
    NOR2A \servo_control_0/x_servo/time_count_RNO[0]  (.A(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count[0]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n0 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[12]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[12] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[12] ));
    NOR2B \servo_control_0/x_servo/pw_RNO[21]  (.A(
        \servo_control_0/x_servo/N_255 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[21]_net_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[13]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n13_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n13 ));
    NOR2A \Dsensor_0/dist1/next_distance_countlde_a0_0  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(sensor_pwm_c), .Y(
        \Dsensor_0/dist1/next_distance_countlde_a0_0_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[5]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[5] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[5] ));
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
    NOR3A \Dsensor_0/dist1/next_distance_count_RNIKUUHF_0[19]  (.A(
        \Dsensor_0/dist1/next_distance_countlde_a0_0_net_1 ), .B(
        \Dsensor_0/dist1/un1_clk_count_1 ), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1 ), .Y(
        \Dsensor_0/dist1/next_distance_counte_i_0 ));
    DFN1 \servo_control_0/y_servo/pw[1]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[1]_net_1 ));
    OR3 \servo_control_0/un3_y_down_morelt31_3_0  (.A(
        \servo_control_0.un3_y_down_morelto31_5 ), .B(
        \servo_control_0.un3_y_down_morelto31_6 ), .C(
        \servo_control_0.un3_y_down_morelto31_1 ), .Y(
        \servo_control_0/un3_y_down_morelt31_3 ));
    OR3B \Dsensor_0/PRDATA_RNO[20]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[20] ), .Y(
        \Dsensor_0/PRDATA_RNO[20]_net_1 ));
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
    MX2 \servo_control_0/x_servo/pw_RNO_0[10]  (.A(
        \servo_control_0/x_servo/next_pw[10]_net_1 ), .B(
        \servo_control_0/x_servo/pw[10]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_244 ));
    DFN1 \Dsensor_0/PRDATA[16]  (.D(\Dsensor_0/PRDATA_RNO[16]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[16] ));
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_85  (.A(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/y_servo/pw[15]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[0] ));
    NOR2B \servo_control_0/x_servo/pw_RNO[19]  (.A(
        \servo_control_0/x_servo/N_253 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[19]_net_1 ));
    DFN1 \Dsensor_0/dist1/distance_count[6]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[6] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[21]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[21] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[21]_net_1 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[15]  (.A(
        \servo_control_0/y_servo/time_count_c14 ), .B(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
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
    DFN1 \Dsensor_0/dist1/distance_count[21]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[21]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[21] ));
    NOR2B \servo_control_0/x_servo/pw_RNO[2]  (.A(
        \servo_control_0/x_servo/N_236 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[2]_net_1 ));
    DFN1 \Dsensor_0/dist1/clk_count[30]  (.D(
        \Dsensor_0/dist1/clk_count_n30 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[30]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[14]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[14]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[10]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[10] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[10] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[13]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[13] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[13] ));
    NOR2B \servo_control_0/y_servo/time_count_RNO_0[11]  (.A(
        \servo_control_0/y_servo/time_count_c9 ), .B(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c10 ));
    OR2 \servo_control_0/un3_y_down_morelt31_5  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[27] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[26] ), .Y(
        \servo_control_0.un3_y_down_morelto31_5 ));
    DFN1 \Dsensor_0/PRDATA[20]  (.D(\Dsensor_0/PRDATA_RNO[20]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[20] ));
    NOR3A \Dsensor_0/dist1/next_distance_count_RNIAPGA1[7]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_8 ), .B(
        \Dsensor_0/dist1/next_distance_count[24]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[7]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_20 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[0]  (.A(
        \servo_control_0/y_servo/N_234 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[0]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[1]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[1] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[1] ));
    DFN1 \servo_control_0/x_servo/pw[5]  (.D(
        \servo_control_0/x_servo/pw_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[5]_net_1 ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_80  (.A(
        \servo_control_0/y_servo/pw[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[2] ));
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
    OR3B \Dsensor_0/PRDATA_RNO[16]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[16] ), .Y(
        \Dsensor_0/PRDATA_RNO[16]_net_1 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[2]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[2] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[2] ));
    DFN1 \Dsensor_0/dist1/distance_count[0]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[0] ));
    DFN1 \Dsensor_0/dist1/clk_count[3]  (.D(
        \Dsensor_0/dist1/clk_count_n3 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[3]_net_1 ));
    NOR3C \Dsensor_0/valid_read_6  (.A(\Dsensor_0/valid_read_0_net_1 ), 
        .B(\Dsensor_0.valid_read_5 ), .C(\CoreAPB3_0.m13_1 ), .Y(
        \Dsensor_0/valid_read_6_net_1 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count_6[2] )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/count[2]_net_1 )
        );
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[12]  (.A(
        \Dsensor_0/distance_count[12] ), .B(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_289 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_33  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \ants_master_MSS_0/MSS_ADLIB_INST_MSSPADDR[9] ), .PIN2(
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
    DFN1 \Dsensor_0/dist1/clk_count[1]  (.D(
        \Dsensor_0/dist1/clk_count_n1 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[1]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[31]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_178 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[31]_net_1 ), .Y(N_70)
        );
    AND3 \servo_control_0/x_servo/un1_pw_0_I_77  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[0] ), .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[1] ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[2] ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        );
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
    NOR2A \servo_control_0/set_y_0_a4_0  (.A(\servo_control_0/N_71 ), 
        .B(\CoreAPB3_0_APBmslave0_PADDR[3] ), .Y(
        \servo_control_0/set_y_0 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[7]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n7_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n7 ));
    DFN1 \Dsensor_0/dist1/clk_count[16]  (.D(
        \Dsensor_0/dist1/clk_count_n16 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[16]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[10]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[10] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[10] ));
    DFN1 \servo_control_0/y_servo/time_count[3]  (.D(
        \servo_control_0/y_servo/time_count_n3 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[3]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_39  (.PIN4(N_24), .PIN5(
        \PRDATA_0_iv_i[7] ), .PIN6(N_26), .PIN1(
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
    OA1C \Dsensor_0/dist1/clk_count_RNO_0[27]  (.A(
        \Dsensor_0/dist1/clk_count[26]_net_1 ), .B(
        \Dsensor_0/dist1/N_21 ), .C(
        \Dsensor_0/dist1/clk_count[27]_net_1 ), .Y(
        \Dsensor_0/dist1/N_26 ));
    DFN1 \servo_control_0/y_servo/pw[9]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[9]_net_1 ));
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
    OA1A \servo_control_0/y_servo/un1_pw_0_I_125  (.A(
        \servo_control_0/y_servo/N_16 ), .B(
        \servo_control_0/y_servo/N_18 ), .C(
        \servo_control_0/y_servo/N_17 ), .Y(
        \servo_control_0/y_servo/N_21 ));
    DFN1 \servo_control_0/PRDATA_1[0]  (.D(
        \servo_control_0/PRDATA_6_iv[0] ), .CLK(FAB_CLK), .Q(
        \CoreAPB3_0_APBmslave1_PRDATA[0] ));
    DFN1 \servo_control_0/x_servo/pw[16]  (.D(
        \servo_control_0/x_servo/pw_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[16]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[28]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[28] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[27] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n2 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[2]_net_1 )
        );
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_0[0]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[0] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_84 ));
    DFN1 \servo_control_0/y_servo/pw[24]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[24]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[24]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[2]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[2]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[7]  (.D(
        \servo_control_0/y_servo/next_pw_4[7] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[7]_net_1 ));
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
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[1]  (.A(
        \Dsensor_0/distance_count[1] ), .B(
        \Dsensor_0/dist1/next_distance_count[1]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_278 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[13]  (.A(
        \Dsensor_0/dist1/clk_count_c12 ), .B(
        \Dsensor_0/dist1/clk_count[13]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n13 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[1]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[1] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[1]_net_1 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[14]  (.A(
        \servo_control_0/x_servo/next_pw[14]_net_1 ), .B(
        \servo_control_0/x_servo/pw[14]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_248 ));
    DFN1 \Dsensor_0/PRDATA[3]  (.D(\Dsensor_0/PRDATA_RNO[3]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[3] ));
    DFN1 \Dsensor_0/dist1/distance_count[28]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[28]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[28] ));
    NOR2 \Dsensor_0/dist1/clk_count_RNIO0PI[12]  (.A(
        \Dsensor_0/dist1/clk_count[14]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[12]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_8 ));
    DFN1 \servo_control_0/x_servo/pw[13]  (.D(
        \servo_control_0/x_servo/pw_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[13]_net_1 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[4]  (.A(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c3 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n4 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[17]  (.A(
        \Dsensor_0/distance_count[17] ), .B(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_294 ));
    DFN1 \servo_control_0/x_servo/pw[12]  (.D(
        \servo_control_0/x_servo/pw_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[12]_net_1 ));
    MSS_CCC_IF \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_TILE0  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN2INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), 
        .PIN3INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), 
        .PIN4INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), 
        .PIN1INT(\ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ));
    OA1A \servo_control_0/y_servo/un1_pw_0_I_136  (.A(
        \servo_control_0/y_servo/N_6_0 ), .B(
        \servo_control_0/y_servo/N_8_0 ), .C(
        \servo_control_0/y_servo/N_7 ), .Y(
        \servo_control_0/y_servo/N_11 ));
    DFN1 \Dsensor_0/dist1/clk_count[9]  (.D(
        \Dsensor_0/dist1/clk_count_n9 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[9]_net_1 ));
    AX1C \Dsensor_0/dist1/clk_count_RNO_0[6]  (.A(
        \Dsensor_0/dist1/clk_count[5]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c4 ), .C(
        \Dsensor_0/dist1/clk_count[6]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n6_tz ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_103  (.A(
        \servo_control_0/y_servo/pw[14]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/N_29 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[29]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_203 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[29] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[5]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[5] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[5]_net_1 ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_46  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_2 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[16]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[16] ));
    DFN1 \servo_control_0/x_servo/time_count[9]  (.D(
        \servo_control_0/x_servo/time_count_n9 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[9]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO_1[31]  (.A(
        \Dsensor_0/dist1/clk_count[31]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .Y(
        \Dsensor_0/dist1/N_276 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[5]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_100 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[5]_net_1 ), .Y(
        \PRDATA_0_iv_i[5] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[23]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_154 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[23]_net_1 ), .Y(N_54)
        );
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_71  (.A(
        \servo_control_0/y_servo/pw[10]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[0] ));
    NOR3B \Dsensor_0/valid_read_5_0  (.A(N_16_mux), .B(
        \Dsensor_0/valid_read_2_net_1 ), .C(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .Y(
        \Dsensor_0/valid_read_5_0_net_1 ));
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_63  (.A(
        \servo_control_0/x_servo/N_41 ), .B(
        \servo_control_0/x_servo/pw[23]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] ));
    NOR2 \Dsensor_0/dist1/clk_count_RNIU8RI[26]  (.A(
        \Dsensor_0/dist1/clk_count[26]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[24]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_5 ));
    AO1C \servo_control_0/y_servo/un1_pw_0_I_120  (.A(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/y_servo/pw[6]_net_1 ), .C(
        \servo_control_0/y_servo/N_14_0 ), .Y(
        \servo_control_0/y_servo/N_16 ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[30]  (.A(
        \Dsensor_0/dist1/clk_count_c29 ), .B(
        \Dsensor_0/dist1/clk_count[30]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n30 ));
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
    NOR3 \Dsensor_0/dist1/next_distance_count_RNIP80EF[19]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1 ), .B(sensor_pwm_c), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count9 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[20]  (.A(
        \Dsensor_0/distance_count[20] ), .B(
        \Dsensor_0/dist1/next_distance_count[20]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_297 ));
    DFN1 \servo_control_0/x_servo/pw[26]  (.D(
        \servo_control_0/x_servo/pw_RNO[26]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[26]_net_1 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[25]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[25] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[25] ));
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
    DFN1 \Dsensor_0/dist1/clk_count[0]  (.D(
        \Dsensor_0/dist1/clk_count_n0 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[0]_net_1 ));
    OR3B \Dsensor_0/PRDATA_RNO[6]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[6] ), .Y(
        \Dsensor_0/PRDATA_RNO[6]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[31]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[31] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[31] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[25]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[25] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[25]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[12]  (.D(
        \servo_control_0/x_servo/next_pw_4[12] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[12]_net_1 ));
    DFN1 \servo_control_0/x_servo/pw[23]  (.D(
        \servo_control_0/x_servo/pw_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[23]_net_1 ));
    DFN1 \servo_control_0/x_servo/time_count[14]  (.D(
        \servo_control_0/x_servo/time_count_n14 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[14]_net_1 ));
    AO1 \servo_control_0/y_servo/next_pw_RNO[17]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[17] ), .B(
        \servo_control_0/set_y_0 ), .C(\servo_control_0/y_servo/N_23 ), 
        .Y(\servo_control_0/y_servo/next_pw_4[17] ));
    NOR2B \servo_control_0/x_servo/time_count_RNIKSJ43[7]  (.A(
        \servo_control_0/x_servo/time_count_c6 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c7 ));
    DFN1 \servo_control_0/x_servo/pw[22]  (.D(
        \servo_control_0/x_servo/pw_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[22]_net_1 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[30]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[30] ), .C(
        \servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[30] ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[2]  (.A(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n2_tz ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[12]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[12] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[12] ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[17]  (.A(
        \Dsensor_0/dist1/next_N_7_mux_0_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n17 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[2]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_91 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[2]_net_1 ), .Y(N_11));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[15]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n15_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n15 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled_RNIVHPI  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        );
    NOR3A \Dsensor_0/dist1/clk_count_RNIUPOD1[8]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_11 ), .B(
        \Dsensor_0/dist1/clk_count[8]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[9]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_21 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNIIUT66[18]  (.A(
        \Dsensor_0/dist1/clk_count_c17 ), .B(
        \Dsensor_0/dist1/clk_count[18]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c18 ));
    OA1 \servo_control_0/x_servo/un1_pw_0_I_106  (.A(
        \servo_control_0/x_servo/N_31 ), .B(
        \servo_control_0/x_servo/N_30_0 ), .C(
        \servo_control_0/x_servo/N_29 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[2] ));
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
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[6] )
        );
    NOR2B \servo_control_0/x_servo/time_count_RNO[2]  (.A(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n2_tz ), .Y(
        \servo_control_0/x_servo/time_count_n2 ));
    NOR2B \servo_control_0/x_servo/time_count_RNIEJ3E6[16]  (.A(
        \servo_control_0/x_servo/un1_time_count ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ));
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
    NOR2B \Dsensor_0/dist1/distance_count_RNO[3]  (.A(
        \Dsensor_0/dist1/N_280 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[3]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNIV9RI[25]  (.A(
        \Dsensor_0/dist1/clk_count[25]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[26]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_m1_0_a2_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[17]  (.D(
        \servo_control_0/x_servo/next_pw_4[17] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[17]_net_1 ));
    OA1A \servo_control_0/y_servo/un1_pw_0_I_132  (.A(
        \servo_control_0/y_servo/pw[3]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/y_servo/N_3 ), .Y(
        \servo_control_0/y_servo/N_7 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[7]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[7] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_106 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[5]  (.A(
        \servo_control_0/x_servo/next_pw[5]_net_1 ), .B(
        \servo_control_0/x_servo/pw[5]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_239 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/send_reset  (.D(
        \n64_magic_box_0/n64_serial_interface_0/send_reset5 ), .CLK(
        FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/send_reset_net_1 ));
    OR2B \servo_control_0/y_servo/time_count_RNIHS1F[18]  (.A(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto20_1 ));
    OR2A \servo_control_0/x_servo/pw_RNO[8]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_242 ), .Y(
        \servo_control_0/x_servo/pw_RNO[8]_net_1 ));
    OR2 \Dsensor_0/dist1/next_distance_count_RNO[20]  (.A(
        \Dsensor_0/dist1/N_40 ), .B(\Dsensor_0/dist1/N_41 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n20 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNI19HT5[17]  (.A(
        \Dsensor_0/dist1/clk_count_c16 ), .B(
        \Dsensor_0/dist1/clk_count[17]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c17 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[3]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_94 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[3]_net_1 ), .Y(N_13));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[31]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[31] ), .C(
        \servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[31] ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_111  (.A(
        \servo_control_0/y_servo/pw[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[2] ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_69  (.A(
        \servo_control_0/x_servo/pw[16]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[6] ));
    OR2A \servo_control_0/x_servo/next_pw_4_0_o2[7]  (.A(
        \servo_control_0/N_70 ), .B(\servo_control_0/x_servo/N_22 ), 
        .Y(\servo_control_0/x_servo/N_24 ));
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
    NOR2B \Dsensor_0/dist1/clk_count_RNI61OD1[3]  (.A(
        \Dsensor_0/dist1/clk_count_c2 ), .B(
        \Dsensor_0/dist1/clk_count[3]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c3 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[12]  (.A(
        \servo_control_0/x_servo/next_pw[12]_net_1 ), .B(
        \servo_control_0/x_servo/pw[12]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_246 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[4]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[4] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[4]_net_1 ));
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
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/time_count_n1 ));
    OR2A \servo_control_0/y_servo/pw_RNO[17]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_251 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[17]_net_1 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[23]  (.A(
        \servo_control_0/y_servo/next_pw[23]_net_1 ), .B(
        \servo_control_0/y_servo/pw[23]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_257 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[3]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[3] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_94 ));
    OR3B \Dsensor_0/PRDATA_RNO[9]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[9] ), .Y(
        \Dsensor_0/PRDATA_RNO[9]_net_1 ));
    AND3B \servo_control_0/x_servo/un1_pw_0_I_30  (.A(
        \servo_control_0/x_servo/pw[30]_net_1 ), .B(
        \servo_control_0/x_servo/pw[31]_net_1 ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        , .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ));
    NOR3B \servo_control_0/set_x_neutral_or_stop_0_a2_0  (.A(
        \servo_control_0/set_x_neutral_or_stop_0_a2_0_0 ), .B(
        CoreAPB3_0_APBmslave0_PENABLE), .C(
        \CoreAPB3_0_APBmslave0_PADDR[4] ), .Y(\servo_control_0/N_61 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_116  (.A(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/x_servo/pw[6]_net_1 ), .Y(
        \servo_control_0/x_servo/N_12_0 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[31]  (.A(
        \servo_control_0/x_servo/next_pw[31]_net_1 ), .B(
        \servo_control_0/x_servo/pw[31]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_265 ));
    OR2A \servo_control_0/y_servo/next_pw_4_0_o2_0_0[17]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/set_y_neutral_or_stop ), .Y(
        \servo_control_0/y_servo/N_22_0 ));
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
    NOR3C \Dsensor_0/dist1/next_distance_count_RNICJ1H1[29]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_1 ), .B(
        \Dsensor_0/dist1/un1_next_distance_count_1_0 ), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1_17 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_24 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[21]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_148 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[21]_net_1 ), .Y(N_50)
        );
    NOR3C \servo_control_0/x_servo/un1_pw_0_I_65  (.A(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[2] ), 
        .B(\servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ), 
        .C(\servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[1] ), 
        .Y(\servo_control_0/x_servo/DWACT_COMP0_E[0] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[6]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/command_byte[1]_net_1 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/enabled4 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/command_byte[6]_net_1 )
        );
    AND3 \servo_control_0/x_servo/un1_pw_0_I_83  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[0] ), .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[1] ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[2] ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
        );
    XA1 \Dsensor_0/dist1/clk_count_RNO[19]  (.A(
        \Dsensor_0/dist1/clk_count_c18 ), .B(
        \Dsensor_0/dist1/clk_count[19]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n19 ));
    OR3B \servo_control_0/x_servo/time_count_RNIP0QR1[19]  (.A(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/x_servo/un1_time_countlto20_1 ), .Y(
        \servo_control_0/x_servo/un1_time_countlto20_2 ));
    OR3 \servo_control_0/un3_y_down_morelt3_0  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[3] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[2] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[1] ), .Y(
        \servo_control_0/un3_y_down_morelt3_0_net_1 ));
    MSS_CCC_GL_IF \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/U_TILE2  (
        .PIN2(GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), 
        .PIN1(), .PIN5(), .PIN2INT(), .PIN3INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/CLKB_INT ), .PIN4INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/MODE_INT ), .PIN1INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/YB_INT ), .PIN5INT(
        \ants_master_MSS_0/MSS_CCC_0/I_MSSCCC/GLB_INT ));
    NOR2B \servo_control_0/y_servo/pw_RNO[24]  (.A(
        \servo_control_0/y_servo/N_258 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[24]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[1]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[1] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_88 ));
    NOR2B \servo_control_0/y_servo/time_count_RNISMCA3_1[16]  (.A(
        \servo_control_0/y_servo/un1_time_count ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_0_sqmuxa ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[10] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[8] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2_net_1 )
        );
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
    AO1C \servo_control_0/x_servo/un1_pw_0_I_102  (.A(
        \servo_control_0/x_servo/pw[12]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .C(
        \servo_control_0/x_servo/N_22_1 ), .Y(
        \servo_control_0/x_servo/N_28_0 ));
    XA1A \Dsensor_0/dist1/clk_count_RNO[23]  (.A(
        \Dsensor_0/dist1/N_18 ), .B(
        \Dsensor_0/dist1/clk_count[23]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n23 ));
    AO1C \servo_control_0/y_servo/un1_pw_0_I_57  (.A(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/y_servo/pw[20]_net_1 ), .C(
        \servo_control_0/y_servo/N_34 ), .Y(
        \servo_control_0/y_servo/N_36 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[24]  (.D(
        \servo_control_0/x_servo/next_pw_4[24] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[24]_net_1 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_68  (.A(
        \servo_control_0/x_servo/pw[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[7] ));
    AO1A \servo_control_0/x_servo/next_pw_RNO[4]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[4] ), .C(
        \servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[4] ));
    NOR3C \CoreAPB3_0/m13_4  (.A(\Dsensor_0.valid_read_5 ), .B(
        \Dsensor_0.valid_read_9 ), .C(N_16_mux), .Y(
        \CoreAPB3_0/m13_4_net_1 ));
    AX1C \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_12  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[4]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[4] ));
    IOPAD_IN \ants_master_MSS_0/MSS_SPI_1_DI  (.PAD(SPI_1_DI), .Y(
        \ants_master_MSS_0/MSS_SPI_1_DI_Y ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[20]  (.A(
        \servo_control_0/y_servo/next_pw[20]_net_1 ), .B(
        \servo_control_0/y_servo/pw[20]_net_1 ), .S(
        \servo_control_0/y_servo/un1_time_count ), .Y(
        \servo_control_0/y_servo/N_254 ));
    NOR3B \servo_control_0/set_y_neutral_or_stop_0_a4  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[6] ), .B(\servo_control_0/N_46_2 )
        , .C(\stop_y_c[1] ), .Y(\servo_control_0/N_46 ));
    OR2B \Dsensor_0/dist1/clk_count_RNIPK537[21]  (.A(
        \Dsensor_0/dist1/clk_count[21]_net_1 ), .B(
        \Dsensor_0/dist1/clk_N_13_mux_0 ), .Y(\Dsensor_0/dist1/N_17 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[15]  (.A(
        \servo_control_0/x_servo/N_249 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[15]_net_1 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_97  (.A(
        \servo_control_0/y_servo/pw[12]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/y_servo/N_23_0 ));
    AO1 \servo_control_0/y_servo/next_pw_4_0_o2[17]  (.A(
        \servo_control_0/N_71 ), .B(\CoreAPB3_0_APBmslave0_PADDR[3] ), 
        .C(\servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/N_23 ));
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
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[31]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_205 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[13]  (.A(
        \servo_control_0/x_servo/next_pw[13]_net_1 ), .B(
        \servo_control_0/x_servo/pw[13]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_247 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[3]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[3] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[3]_net_1 ));
    NOR2 \CoreAPB3_0/m13_1  (.A(\CoreAPB3_0_APBmslave0_PADDR[12] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[7] ), .Y(\CoreAPB3_0.m13_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n8 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[8]_net_1 )
        );
    NOR2 \Dsensor_0/dist1/clk_count_RNIT5PI_0[15]  (.A(
        \Dsensor_0/dist1/clk_count[16]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[15]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_15 ));
    DFN1 \Dsensor_0/dist1/clk_count[21]  (.D(\Dsensor_0/dist1/N_13 ), 
        .CLK(FAB_CLK), .Q(\Dsensor_0/dist1/clk_count[21]_net_1 ));
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
    AO1 \servo_control_0/y_servo/un1_pw_0_I_140  (.A(
        \servo_control_0/y_servo/DWACT_COMP0_E[1] ), .B(
        \servo_control_0/y_servo/DWACT_COMP0_E[2] ), .C(
        \servo_control_0/y_servo/DWACT_COMP0_E[0] ), .Y(
        \servo_control_0/y_servo/I_140_0 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[13]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_124 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[13]_net_1 ), .Y(N_34)
        );
    AO1C \servo_control_0/x_servo/un1_pw_0_I_133  (.A(
        \servo_control_0/x_servo/pw[2]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[2]_net_1 ), .C(
        \servo_control_0/x_servo/N_2 ), .Y(
        \servo_control_0/x_servo/N_8_0 ));
    NOR3C \servo_control_0/y_servo/time_count_RNI45QQ1[8]  (.A(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c6 ), .C(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c8 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[5]  (.D(
        \Dsensor_0/dist1/next_distance_count_n5 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[5]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[23]  (.D(
        \servo_control_0/y_servo/next_pw_4[23] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[23]_net_1 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_112  (.A(
        \servo_control_0/x_servo/pw[9]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[4] ));
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
    DFN1 \Dsensor_0/dist1/clk_count[7]  (.D(
        \Dsensor_0/dist1/clk_count_n7 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[7]_net_1 ));
    OR3B \servo_control_0/y_servo/time_count_RNITK4U[19]  (.A(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .C(
        \servo_control_0/y_servo/un1_time_countlto20_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto20_2 ));
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
    AO1C \servo_control_0/x_servo/pwm_signal_RNO_0  (.A(
        \servo_control_0/x_servo/I_140 ), .B(x_servo_pwm_c), .C(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_233 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[2]  (.D(
        \servo_control_0/x_servo/next_pw_4[2] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[2]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[26]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[26] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[26] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[8]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[8] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[8] )
        );
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
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[2] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[2] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[6]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[6] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[6] ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[24]  (.A(
        \Dsensor_0/dist1/N_301 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[24]_net_1 ));
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
    MX2 \servo_control_0/x_servo/pw_RNO_0[9]  (.A(
        \servo_control_0/x_servo/next_pw[9]_net_1 ), .B(
        \servo_control_0/x_servo/pw[9]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_243 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[10]  (.A(
        \Dsensor_0/distance_count[10] ), .B(
        \Dsensor_0/dist1/next_distance_count[10]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_287 ));
    NOR3B \Dsensor_0/dist1/next_distance_count_RNI3JFR4[21]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_4 ), .B(
        \Dsensor_0/dist1/next_distance_count[21]_net_1 ), .C(
        \Dsensor_0/dist1/N_31 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c21 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_99  (.A(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .B(
        \servo_control_0/y_servo/pw[14]_net_1 ), .Y(
        \servo_control_0/y_servo/N_25 ));
    DFN1 \servo_control_0/y_servo/pw[10]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[10]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[29]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[29] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_172 ));
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_85  (.A(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .B(
        \servo_control_0/x_servo/pw[15]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[0] ));
    DFN1 \servo_control_0/x_servo/time_count[11]  (.D(
        \servo_control_0/x_servo/time_count_n11 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[11]_net_1 ));
    OR3B \Dsensor_0/PRDATA_RNO[7]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[7] ), .Y(
        \Dsensor_0/PRDATA_RNO[7]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[4]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_97 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[4]_net_1 ), .Y(
        \PRDATA_0_iv_i[4] ));
    OR2A \servo_control_0/y_servo/pw_RNO[5]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_239 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[5]_net_1 ));
    AO1A \servo_control_0/x_servo/next_pw_RNO[14]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[14] ), .C(
        \servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[14] ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[20]  (.A(
        \servo_control_0/x_servo/next_pw[20]_net_1 ), .B(
        \servo_control_0/x_servo/pw[20]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_254 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[15]  (.A(
        \servo_control_0/x_servo/next_pw[15]_net_1 ), .B(
        \servo_control_0/x_servo/pw[15]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_249 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[28]  (.A(
        \Dsensor_0/distance_count[28] ), .B(
        \Dsensor_0/dist1/next_distance_count[28]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_305 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[8]  (.A(
        \Dsensor_0/dist1/N_285 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[8]_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[17]  (.A(
        \Dsensor_0/dist1/N_294 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[17]_net_1 ));
    AND3 \servo_control_0/y_servo/un1_pw_0_I_18  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_3[0] )
        , .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[1] )
        , .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[2] )
        , .Y(
        \servo_control_0/y_servo/DWACT_BL_ANDTREE_0_DWACT_BL_ANDTREE_0_E[0] )
        );
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[26]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[26] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[29] ));
    NOR2B \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_2  
        (.A(\CoreAPB3_0_APBmslave0_PWDATA[2] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[1] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_2 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNI1API[17]  (.A(
        \Dsensor_0/dist1/clk_count[17]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[18]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_3 ));
    IOIN_IB \stop_y_pad[1]/U0/U1  (.YIN(\stop_y_pad[1]/U0/NET1 ), .Y(
        \stop_y_c[1] ));
    NOR2B \servo_control_0/y_servo/time_count_RNISMCA3_0[16]  (.A(
        \servo_control_0/y_servo/un1_time_count ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[0]  (.A(
        \servo_control_0/x_servo/N_234 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[0]_net_1 ));
    XA1 \servo_control_0/y_servo/time_count_RNO[11]  (.A(
        \servo_control_0/y_servo/time_count_c10 ), .B(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .C(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/time_count_n11 ));
    NOR2A \servo_control_0/set_y_0_a4  (.A(\servo_control_0/N_71 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .Y(\servo_control_0/set_y ));
    OA1A \servo_control_0/y_servo/un1_pw_0_I_105  (.A(
        \servo_control_0/y_servo/N_26 ), .B(
        \servo_control_0/y_servo/N_28_0 ), .C(
        \servo_control_0/y_servo/N_27 ), .Y(
        \servo_control_0/y_servo/N_31 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO_0[11]  (.A(
        \servo_control_0/x_servo/time_count_c9 ), .B(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c10 ));
    DFN1 \Dsensor_0/PRDATA[1]  (.D(\Dsensor_0/PRDATA_RNO[1]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[1] ));
    AOI1A \servo_control_0/x_servo/un1_pw_0_I_88  (.A(
        \servo_control_0/x_servo/ACT_LT4_E[0] ), .B(
        \servo_control_0/x_servo/ACT_LT4_E[1] ), .C(
        \servo_control_0/x_servo/ACT_LT4_E[2] ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[3] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_181 ));
    NOR3A \Dsensor_0/dist1/next_distance_count_RNIALHI[29]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_3 ), .B(
        \Dsensor_0/dist1/next_distance_count[29]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[30]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_17 ));
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
        \n64_magic_box_0/n64_apb_interface_0/N_75 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_net_1 )
        );
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[0]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[0] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_85 ));
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_92  (.A(
        \servo_control_0/y_servo/pw[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[7] ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[18]  (.A(
        \Dsensor_0/dist1/N_295 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[18]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[19]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[19] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_142 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[26]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[26] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[26] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[19]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[19] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[20] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[7]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_181 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[7] )
        );
    NOR3 \servo_control_0/y_servo/next_pw_4_sqmuxa_0_a2  (.A(
        \servo_control_0/N_71 ), .B(\servo_control_0/y_servo/N_22_0 ), 
        .C(\servo_control_0/set_y_reverse ), .Y(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ));
    DFN1 \servo_control_0/y_servo/time_count[11]  (.D(
        \servo_control_0/y_servo/time_count_n11 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[11]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[8]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[8] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_109 ));
    DFN1 \servo_control_0/y_servo/pw[20]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[20]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[20]_net_1 ));
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
    NOR3C \Dsensor_0/dist1/clk_count_RNII5K51[20]  (.A(
        \Dsensor_0/dist1/clk_count[21]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[20]_net_1 ), .C(
        \Dsensor_0/dist1/clk_m6_0_a2_2 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_5 ));
    NOR3C \servo_control_0/x_servo/time_count_RNIFMN51[4]  (.A(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .C(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/time_m6_0_a2_4 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[8]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[8] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[8] ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[29]  (.A(
        \Dsensor_0/dist1/clk_count_c28 ), .B(
        \Dsensor_0/dist1/clk_count[29]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n29 ));
    NOR3C \servo_control_0/y_servo/time_count_RNILLND1[5]  (.A(
        \servo_control_0/y_servo/time_count_c4 ), .B(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c6 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[11]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_118 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[11]_net_1 ), .Y(N_30)
        );
    AO1C \servo_control_0/y_servo/un1_pw_0_I_100  (.A(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .B(
        \servo_control_0/y_servo/pw[11]_net_1 ), .C(
        \servo_control_0/y_servo/N_24_0 ), .Y(
        \servo_control_0/y_servo/N_26 ));
    DFN1E0 
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_n3 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/index[3]_net_1 )
        );
    OR2A \servo_control_0/y_servo/pw_RNO[7]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_241 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[7]_net_1 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNIQENO  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module/write_module_active )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_net_1 )
        , .Y(\n64_magic_box_0.n64_serial_interface_0.fab_pin_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIVA83[27]  (.A(
        \Dsensor_0/dist1/next_distance_count[26]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[27]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_11_1 ));
    AX1C \Dsensor_0/dist1/next_distance_count_RNO_0[18]  (.A(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ), .B(
        \Dsensor_0/dist1/next_N_7_mux_0_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[18]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n18_tz ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI9BVQ3[18]  (.A(
        \Dsensor_0/dist1/clk_m6_0_a2_11_5 ), .B(
        \Dsensor_0/dist1/clk_m6_0_a2_11_4 ), .C(
        \Dsensor_0/dist1/clk_count_c3 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_11_7 ));
    OR3B \Dsensor_0/PRDATA_RNO[0]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[0] ), .Y(
        \Dsensor_0/PRDATA_RNO[0]_net_1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[31]  (.A(
        \servo_control_0/x_servo/N_265 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[31]_net_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO[16]  (.A(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n16_tz ), .Y(
        \servo_control_0/x_servo/time_count_n16 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_16  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[0] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[1] ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_12_0 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNO_0[28]  (.A(
        \Dsensor_0/dist1/next_distance_count[26]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count_c25 ), .C(
        \Dsensor_0/dist1/next_distance_count[27]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c27 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[6]  (.A(
        \Dsensor_0/dist1/N_283 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[6]_net_1 ));
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
        nc31}), .SPI0DO(), .SPI0DOE(), .SPI0DI(GLMUXINT_GND), 
        .SPI0CLKI(GLMUXINT_GND), .SPI0CLKO(), .SPI0MODE(), .SPI0SSI(
        GLMUXINT_GND), .SPI0SSO({nc32, nc33, nc34, nc35, 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET , nc36}), 
        .UART0TXD(\ants_master_MSS_0/MSS_UART_0_TXD_D ), .UART0RXD(
        \ants_master_MSS_0/MSS_UART_0_RXD_Y ), .I2C0SDAI(GLMUXINT_GND), 
        .I2C0SDAO(), .I2C0SCLI(GLMUXINT_GND), .I2C0SCLO(), .SPI1DO(
        \ants_master_MSS_0/MSS_SPI_1_DO_D ), .SPI1DOE(
        \ants_master_MSS_0/MSS_SPI_1_DO_E ), .SPI1DI(
        \ants_master_MSS_0/MSS_SPI_1_DI_Y ), .SPI1CLKI(
        \ants_master_MSS_0/MSS_SPI_1_CLK_Y ), .SPI1CLKO(
        \ants_master_MSS_0/MSS_SPI_1_CLK_D ), .SPI1MODE(
        \ants_master_MSS_0/MSS_SPI_1_SS_E ), .SPI1SSI(
        \ants_master_MSS_0/MSS_SPI_1_SS_Y ), .SPI1SSO({
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET , 
        \ants_master_MSS_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET , 
        \ants_master_MSS_0/SPI1SSO_net_0[0] }), .UART1TXD(
        \ants_master_MSS_0/MSS_UART_1_TXD_D ), .UART1RXD(
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
        .ADC11(GLMUXINT_GND), .SDD0(
        \ants_master_MSS_0/MSS_ACE_0_SDD0_D ), .SDD1(), .SDD2(), 
        .ABPS0(GLMUXINT_GND), .ABPS1(GLMUXINT_GND), .ABPS2(
        GLMUXINT_GND), .ABPS3(GLMUXINT_GND), .ABPS4(GLMUXINT_GND), 
        .ABPS5(GLMUXINT_GND), .ABPS6(GLMUXINT_GND), .ABPS7(
        GLMUXINT_GND), .ABPS8(GLMUXINT_GND), .ABPS9(GLMUXINT_GND), 
        .ABPS10(GLMUXINT_GND), .ABPS11(GLMUXINT_GND), .TM0(
        GLMUXINT_GND), .TM1(GLMUXINT_GND), .TM2(GLMUXINT_GND), .TM3(
        GLMUXINT_GND), .TM4(GLMUXINT_GND), .TM5(GLMUXINT_GND), .CM0(
        GLMUXINT_GND), .CM1(GLMUXINT_GND), .CM2(GLMUXINT_GND), .CM3(
        GLMUXINT_GND), .CM4(GLMUXINT_GND), .CM5(GLMUXINT_GND), .GNDTM0(
        GLMUXINT_GND), .GNDTM1(GLMUXINT_GND), .GNDTM2(GLMUXINT_GND), 
        .VAREF0(\ants_master_MSS_0/MSS_ACE_0_VAREF0_Y ), .VAREF1(
        GLMUXINT_GND), .VAREF2(GLMUXINT_GND), .VAREFOUT(), .GNDVAREF(
        GLMUXINT_GND), .PUn(GLMUXINT_GND), .MSSPADDR({
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
    MX2 \servo_control_0/x_servo/pw_RNO_0[24]  (.A(
        \servo_control_0/x_servo/next_pw[24]_net_1 ), .B(
        \servo_control_0/x_servo/pw[24]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_258 ));
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
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[10]  (.A(
        \Dsensor_0/dist1/N_29 ), .B(
        \Dsensor_0/dist1/next_distance_count[10]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n10 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[25]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[25] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[30] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[9]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[9]_net_1 ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_28  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_8_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[10]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[10] ));
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[4]  (.A(
        \Dsensor_0/dist1/N_375 ), .B(
        \Dsensor_0/dist1/next_distance_count[4]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n4 ));
    OR3B \Dsensor_0/PRDATA_RNO[5]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[5] ), .Y(
        \Dsensor_0/PRDATA_RNO[5]_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[15]  (.A(
        \Dsensor_0/dist1/N_292 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[15]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[0]  (.D(
        \servo_control_0/y_servo/next_pw_4[0] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[0]_net_1 ));
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
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[13]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[13] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[13]_net_1 ));
    NOR3 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[23] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[22] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[17] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3_net_1 )
        );
    OR3B \Dsensor_0/PRDATA_RNO[25]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[25] ), .Y(
        \Dsensor_0/PRDATA_RNO[25]_net_1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[12]  (.A(
        \servo_control_0/x_servo/N_246 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[12]_net_1 ));
    AND3 \servo_control_0/y_servo/un1_pw_0_I_83  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[0] ), .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[1] ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[2] ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
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
    DFN1 \Dsensor_0/dist1/clk_count[24]  (.D(
        \Dsensor_0/dist1/clk_count_n24 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[24]_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[21]  (.A(
        \servo_control_0/y_servo/N_255 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[21]_net_1 ));
    DFN1 \Dsensor_0/PRDATA[18]  (.D(\Dsensor_0/PRDATA_RNO[18]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[18] ));
    NOR2B \servo_control_0/y_servo/pw_RNO[16]  (.A(
        \servo_control_0/y_servo/N_250 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[16]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[8]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_182 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[8] )
        );
    NOR3B \servo_control_0/x_servo/next_pw_RNO[12]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[12] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[12] ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[12]  (.A(
        \Dsensor_0/dist1/clk_count_c11 ), .B(
        \Dsensor_0/dist1/clk_count[12]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n12 ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_17  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_12_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[6] ));
    AND3 \servo_control_0/y_servo/un1_pw_0_I_78  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[2] ), 
        .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[1] )
        , .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        , .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI9MAJ2[10]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_9 ), .B(
        \Dsensor_0/dist1/un1_clk_count_1_8 ), .C(
        \Dsensor_0/dist1/un1_clk_count_1_21 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_26 ));
    DFN1 \servo_control_0/y_servo/pw[12]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[12]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[4]  (.D(
        \servo_control_0/y_servo/next_pw_4[4] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[4]_net_1 ));
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
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[1] )
        );
    DFN1 \Dsensor_0/dist1/clk_count[8]  (.D(
        \Dsensor_0/dist1/clk_count_n8 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[8]_net_1 ));
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
    DFN1 \Dsensor_0/dist1/distance_count[7]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[7] ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_66  (.A(
        \servo_control_0/y_servo/pw[18]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[8] ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[6]  (.A(
        \Dsensor_0/distance_count[6] ), .B(
        \Dsensor_0/dist1/next_distance_count[6]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_283 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO[2]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_n2_tz ), .Y(
        \Dsensor_0/dist1/clk_count_n2 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[1]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[1] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[21]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[21] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[21] ));
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_129  (.A(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .B(
        \servo_control_0/y_servo/pw[0]_net_1 ), .Y(
        \servo_control_0/y_servo/N_4 ));
    NOR2 \Dsensor_0/dist1/clk_count_RNIL2SM[2]  (.A(
        \Dsensor_0/dist1/clk_count[3]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[2]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_1 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_66  (.A(
        \servo_control_0/x_servo/pw[18]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[8] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[3]  (.A(
        \servo_control_0/x_servo/time_count[3]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c2 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n3 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[25]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_199 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNIHDDR[28]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_11_5 ), .B(
        \Dsensor_0/dist1/next_m6_0_a2_11_4 ), .C(
        \Dsensor_0/dist1/next_m6_0_a2_4 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_11_7 ));
    DFN1 \servo_control_0/y_servo/pw[4]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[4]_net_1 ));
    XA1 \Dsensor_0/dist1/next_distance_count_RNO[2]  (.A(
        \Dsensor_0/dist1/next_distance_count_c1 ), .B(
        \Dsensor_0/dist1/next_distance_count[2]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n2 ));
    OR2 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNO_0  
        (.A(\n64_magic_box_0/n64_serial_interface_0/read_module_begin )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/read_module/N_133 ));
    NOR3 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_4  (
        .A(\servo_control_0.un3_y_down_morelto31_6 ), .B(
        \servo_control_0.un3_y_down_morelto31_7 ), .C(
        \servo_control_0.un3_y_down_morelto31_2 ), .Y(
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
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_72  (.A(
        \servo_control_0/x_servo/pw[13]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_1[3] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[24]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[24] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_157 ));
    DFN1 \Dsensor_0/PRDATA[26]  (.D(\Dsensor_0/PRDATA_RNO[26]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[26] ));
    DFN1E0 \servo_control_0/x_servo/next_pw[22]  (.D(
        \servo_control_0/x_servo/next_pw_4[22] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[22]_net_1 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_128  (.A(
        \servo_control_0/y_servo/pw[2]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[2]_net_1 ), .Y(
        \servo_control_0/y_servo/N_3 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_60  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABINTINT_NET ), .PIN6INT(), 
        .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        GLMUXINT_GND));
    DFN1 \Dsensor_0/PRDATA[31]  (.D(\Dsensor_0/PRDATA_RNO[31]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[31] ));
    DFN1 \servo_control_0/y_servo/pw[3]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[3]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[22]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[22]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[22]_net_1 ));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[18]  (.A(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c16 ), .C(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n18_tz ));
    DFN1 \Dsensor_0/dist1/distance_count[22]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[22]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[22] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_83  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET ));
    AO1C \servo_control_0/y_servo/un1_pw_0_I_133  (.A(
        \servo_control_0/y_servo/pw[2]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[2]_net_1 ), .C(
        \servo_control_0/y_servo/N_2 ), .Y(
        \servo_control_0/y_servo/N_8_0 ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[12]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n12_tz ), .Y(
        \servo_control_0/y_servo/time_count_n12 ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[14]  (.A(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c12 ), .C(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n14_tz ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_80  (.A(
        \servo_control_0/x_servo/pw[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[2] ));
    NOR2A \Dsensor_0/dist1/clk_count_RNO[0]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[0]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n0 ));
    AX1C \Dsensor_0/dist1/clk_count_RNO[31]  (.A(
        \Dsensor_0/dist1/clk_count_c29 ), .B(
        \Dsensor_0/dist1/clk_count_127_0 ), .C(\Dsensor_0/dist1/N_276 )
        , .Y(\Dsensor_0/dist1/clk_count_n31 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNICNCB2[22]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_5 ), .B(
        \Dsensor_0/dist1/un1_clk_count_1_4 ), .C(
        \Dsensor_0/dist1/un1_clk_count_1_19 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_25 ));
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
    NOR3B \servo_control_0/y_servo/next_pw_RNO[24]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[24] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[24] ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[22]  (.A(
        \servo_control_0/x_servo/next_pw[22]_net_1 ), .B(
        \servo_control_0/x_servo/pw[22]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_256 ));
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
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable6_3  (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_26 ), .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_30 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[0] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_4 ));
    XA1A \servo_control_0/x_servo/un1_pw_0_I_84  (.A(
        \servo_control_0/x_servo/pw[18]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_0[0] )
        , .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[1] ));
    DFN1E0 \servo_control_0/x_servo/next_pw[8]  (.D(
        \servo_control_0/x_servo/next_pw_4[8] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[8]_net_1 ));
    AO1 \servo_control_0/y_servo/next_pw_RNO[11]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[11] ), .B(
        \servo_control_0/set_y_0 ), .C(\servo_control_0/y_servo/N_23 ), 
        .Y(\servo_control_0/y_servo/next_pw_4[11] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[29]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[29] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[29]_net_1 ));
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
    NOR3B \servo_control_0/x_servo/next_pw_RNO[20]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[20] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[20] ));
    MX2C \servo_control_0/PRDATA_1_RNO_2[0]  (.A(\stop_y_c[1] ), .B(
        \stop_y_c[0] ), .S(\CoreAPB3_0_APBmslave0_PADDR[2] ), .Y(
        \servo_control_0/N_29 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[8]  (.A(
        \servo_control_0/x_servo/time_count_c7 ), .B(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n8 ));
    DFN1 \servo_control_0/x_servo/pw[15]  (.D(
        \servo_control_0/x_servo/pw_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[15]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[27]  (.D(
        \servo_control_0/x_servo/next_pw_4[27] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[27]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/sync_reg[1]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[0]_net_1 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[1]_net_1 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNIOPM9[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_2 )
        );
    DFN1E0 \Dsensor_0/dist1/next_distance_count[19]  (.D(
        \Dsensor_0/dist1/next_distance_count_n19 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[19]_net_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[18]  (.A(
        \Dsensor_0/distance_count[18] ), .B(
        \Dsensor_0/dist1/next_distance_count[18]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_295 ));
    AO1C \servo_control_0/x_servo/un1_pw_0_I_135  (.A(
        \servo_control_0/x_servo/pw[3]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/x_servo/N_5 ), .Y(
        \servo_control_0/x_servo/N_10 ));
    AOI1A \servo_control_0/y_servo/un1_pw_0_I_94  (.A(
        \servo_control_0/y_servo/ACT_LT4_E[7] ), .B(
        \servo_control_0/y_servo/ACT_LT4_E[8] ), .C(
        \servo_control_0/y_servo/ACT_LT4_E[5] ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[10] ));
    DFN1 \Dsensor_0/dist1/clk_count[18]  (.D(
        \Dsensor_0/dist1/clk_count_n18 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[18]_net_1 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[28]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[28] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[28] ));
    AO1 \servo_control_0/x_servo/next_pw_4_0_o2[17]  (.A(
        \servo_control_0/N_70 ), .B(\CoreAPB3_0_APBmslave0_PADDR[3] ), 
        .C(\servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/N_23 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[14]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[14] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_127 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[21]  (.D(
        \servo_control_0/y_servo/next_pw_4[21] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[21]_net_1 ));
    NOR2A \Dsensor_0/dist1/clk_count_RNIDF52A[17]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1 ), .B(sensor_pwm_c), .Y(
        \Dsensor_0/dist1/clk_count_RNIDF52A[17]_net_1 ));
    DFN1 \Dsensor_0/dist1/clk_count[15]  (.D(
        \Dsensor_0/dist1/clk_count_n15 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[15]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_40  (.PIN4(N_30), .PIN5(
        N_28), .PIN6(N_32), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[10] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[11] ), .PIN3(
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
    DFN1E0 \Dsensor_0/dist1/next_distance_count[29]  (.D(
        \Dsensor_0/dist1/next_distance_count_n29 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[29]_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[11]  (.A(
        \Dsensor_0/dist1/N_288 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[11]_net_1 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[2]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_2[2] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNI9NEB2[5]  (.A(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c4 ), .Y(
        \servo_control_0/x_servo/time_count_c5 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_116  (.A(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/y_servo/pw[6]_net_1 ), .Y(
        \servo_control_0/y_servo/N_12_0 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[11]  (.A(
        \servo_control_0/y_servo/next_pw[11]_net_1 ), .B(
        \servo_control_0/y_servo/pw[11]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_245 ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIJ38R_0[2]  (.A(
        \Dsensor_0/dist1/next_distance_count[3]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[2]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_5 ));
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
    AX1 \Dsensor_0/dist1/next_distance_count_RNO_0[15]  (.A(
        \Dsensor_0/dist1/N_33 ), .B(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n15_tz ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIJU73[31]  (.A(
        \Dsensor_0/dist1/next_distance_count[31]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[10]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_0 ));
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
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n2 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_81  (.A(
        \servo_control_0/x_servo/pw[16]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[1] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[5]  (.A(
        \servo_control_0/x_servo/time_count_c4 ), .B(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n5 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI6FPR3[10]  (.A(
        \Dsensor_0/dist1/clk_count[9]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c8 ), .C(
        \Dsensor_0/dist1/clk_count[10]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c10 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO_0[25]  (.A(
        \Dsensor_0/dist1/next_distance_count_c23 ), .B(
        \Dsensor_0/dist1/next_distance_count[24]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c24 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[13]  (.D(
        \servo_control_0/y_servo/next_pw_4[13] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[13]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[23]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[23] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[16] ));
    OA1A \servo_control_0/x_servo/un1_pw_0_I_121  (.A(
        \servo_control_0/x_servo/pw[8]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/x_servo/N_13 ), .Y(
        \servo_control_0/x_servo/N_17 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_86  (.A(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .B(
        \servo_control_0/y_servo/pw[16]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[1] ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_127  (.A(
        \servo_control_0/y_servo/time_count[1]_net_1 ), .B(
        \servo_control_0/y_servo/pw[1]_net_1 ), .Y(
        \servo_control_0/y_servo/N_2 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_130  (.A(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/x_servo/pw[4]_net_1 ), .Y(
        \servo_control_0/x_servo/N_5 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_103  (.A(
        \servo_control_0/x_servo/pw[14]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/x_servo/N_29 ));
    OR2B \Dsensor_0/dist1/next_distance_count_RNI23GM1[3]  (.A(
        \Dsensor_0/dist1/next_distance_count_c2 ), .B(
        \Dsensor_0/dist1/next_distance_count[3]_net_1 ), .Y(
        \Dsensor_0/dist1/N_375 ));
    DFN1 \servo_control_0/x_servo/pw[25]  (.D(
        \servo_control_0/x_servo/pw_RNO[25]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[25]_net_1 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIO383[25]  (.A(
        \Dsensor_0/dist1/next_distance_count[25]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[21]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m4_0_a2_0 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_86  (.A(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .B(
        \servo_control_0/x_servo/pw[16]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[1] ));
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
    DFN1E0 \servo_control_0/x_servo/next_pw[16]  (.D(
        \servo_control_0/x_servo/N_6 ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[16]_net_1 ));
    XA1A \Dsensor_0/dist1/next_distance_count_RNO[8]  (.A(
        \Dsensor_0/dist1/N_379 ), .B(
        \Dsensor_0/dist1/next_distance_count[8]_net_1 ), .C(
        \Dsensor_0/dist1/N_146_i_0 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n8 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[3]  (.D(
        \Dsensor_0/dist1/N_374 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[3]_net_1 ));
    DFN1 \Dsensor_0/dist1/distance_count[24]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[24]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[24] ));
    DFN1 \Dsensor_0/dist1/distance_count[15]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[15] ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[17]  (.A(
        \Dsensor_0/dist1/clk_count_c16 ), .B(
        \Dsensor_0/dist1/clk_count[17]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n17 ));
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_55  (.A(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/y_servo/pw[19]_net_1 ), .Y(
        \servo_control_0/y_servo/N_34 ));
    OA1 \servo_control_0/un3_y_down_morelto14  (.A(
        \servo_control_0/un3_y_down_morelt13_net_1 ), .B(
        \servo_control_0.un3_y_down_morelto13 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[14] ), .Y(
        \servo_control_0/un3_y_down_morelt16_net_1 ));
    OR3 \servo_control_0/un3_y_down_morelt31_2_0  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[23] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[22] ), .C(
        \servo_control_0.un3_y_down_morelto31_2 ), .Y(
        \servo_control_0/un3_y_down_morelt31_2_net_1 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[22]  (.A(
        \servo_control_0/y_servo/N_256 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[22]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO[6]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_n6_tz ), .Y(
        \Dsensor_0/dist1/clk_count_n6 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[4]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[4] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_97 ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[6]  (.A(
        \servo_control_0/y_servo/time_count_c4 ), .B(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n6_tz ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[23]  (.A(
        \servo_control_0/x_servo/next_pw[23]_net_1 ), .B(
        \servo_control_0/x_servo/pw[23]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_257 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[9]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[9] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[9] )
        );
    MX2 \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_0  (.A(
        \n64_magic_box_0/n64_apb_interface_0_polling_enable ), .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7 ), .S(
        \n64_magic_box_0.n64_apb_interface_0.write ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/N_76 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/data_in  (.D(
        \n64_magic_box_0/n64_serial_interface_0/sync_reg[1]_net_1 ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[7]  (.A(
        \Dsensor_0/dist1/N_284 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[7]_net_1 ));
    NOR3B \servo_control_0/set_y_neutral_or_stop_0_a4_1  (.A(
        \servo_control_0/N_69 ), .B(\CoreAPB3_0_APBmslave0_PADDR[6] ), 
        .C(\CoreAPB3_0_APBmslave0_PADDR[3] ), .Y(
        \servo_control_0/N_48 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[19]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[19] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[19] ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[20]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[20] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[19] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_175 ));
    AOI1A \servo_control_0/y_servo/un1_pw_0_I_95  (.A(
        \servo_control_0/y_servo/ACT_LT4_E[3] ), .B(
        \servo_control_0/y_servo/ACT_LT4_E[6] ), .C(
        \servo_control_0/y_servo/ACT_LT4_E[10] ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ));
    IOPAD_IN \ants_master_MSS_0/MSS_RESET_0_MSS_RESET_N  (.PAD(
        MSS_RESET_N), .Y(\ants_master_MSS_0/MSS_RESET_0_MSS_RESET_N_Y )
        );
    NOR3C \Dsensor_0/dist1/next_distance_count_RNIJBV7[14]  (.A(
        \Dsensor_0/dist1/next_distance_count[15]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ), .C(
        \Dsensor_0/dist1/next_m6_0_a2_17_4 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_17_6 ));
    XA1A \Dsensor_0/dist1/clk_count_RNO[22]  (.A(
        \Dsensor_0/dist1/N_17 ), .B(
        \Dsensor_0/dist1/clk_count[22]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n22 ));
    NOR3B \Dsensor_0/dist1/next_distance_count_RNO_1[20]  (.A(
        \Dsensor_0/dist1/next_N_13_mux_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n20_0_a4_0_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_RNO_3[20]_net_1 ), .Y(
        \Dsensor_0/dist1/N_41 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[18]  (.D(
        \servo_control_0/x_servo/next_pw_4[18] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[18]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[15]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_189 ));
    NOR3A \servo_control_0/y_servo/time_count_RNIE43U[14]  (.A(
        \servo_control_0/y_servo/un1_time_countlto14_1 ), .B(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto14_2 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[6]  (.A(
        \servo_control_0/y_servo/next_pw[6]_net_1 ), .B(
        \servo_control_0/y_servo/pw[6]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_240 ));
    AO1A \servo_control_0/x_servo/next_pw_RNO[17]  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[17] ), .C(
        \servo_control_0/x_servo/N_23 ), .Y(
        \servo_control_0/x_servo/next_pw_4[17] ));
    NOR2B \servo_control_0/un3_y_down_morelt8_3_0  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[5] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[4] ), .Y(
        \servo_control_0.un3_y_down_morelt8_3_0 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO_0[20]  (.A(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c18 ), .Y(
        \servo_control_0/x_servo/time_count_47_0 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[22]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_196 ));
    AND3 \servo_control_0/x_servo/un1_pw_0_I_113  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[0] ), .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[1] ), .C(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[2] ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ));
    DFN1E0 \servo_control_0/x_servo/next_pw[19]  (.D(
        \servo_control_0/x_servo/next_pw_4[19] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[19]_net_1 ));
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
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_112  (.A(
        \servo_control_0/y_servo/pw[9]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[4] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[28]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[28] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[28] ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIU763[16]  (.A(
        \Dsensor_0/dist1/next_distance_count[18]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[16]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_12 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[0]  (.A(
        \servo_control_0/x_servo/next_pw[0]_net_1 ), .B(
        \servo_control_0/x_servo/pw[0]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_234 ));
    OR2A \servo_control_0/x_servo/pw_RNO[5]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_239 ), .Y(
        \servo_control_0/x_servo/pw_RNO[5]_net_1 ));
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_0_0[10]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[2] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[13]  (.D(
        \Dsensor_0/dist1/next_distance_count_n13 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count_n6 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 )
        );
    NOR2B \Dsensor_0/dist1/clk_count_RNICNQK[12]  (.A(
        \Dsensor_0/dist1/clk_count[12]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[9]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_10_2 ));
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_90  (.A(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/y_servo/pw[18]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[5] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[21]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[21] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_148 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[22]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[22] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[22] ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[31]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n31_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n31 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIUJ3T4[22]  (.A(
        \Dsensor_0/dist1/next_distance_count_c21 ), .B(
        \Dsensor_0/dist1/next_distance_count[22]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c22 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_53  (.PIN4(N_42), .PIN5(
        N_40), .PIN6(N_44), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[16] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[17] ), .PIN3(
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
    MX2 \servo_control_0/y_servo/pw_RNO_0[18]  (.A(
        \servo_control_0/y_servo/next_pw[18]_net_1 ), .B(
        \servo_control_0/y_servo/pw[18]_net_1 ), .S(
        \servo_control_0/y_servo/un1_time_count ), .Y(
        \servo_control_0/y_servo/N_252 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_65  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/PUFABnINT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[24]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[24] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[24]_net_1 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[23]  (.D(
        \Dsensor_0/dist1/next_distance_count_n23 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[23]_net_1 ));
    NOR2 \Dsensor_0/dist1/clk_count_RNIU8RI[23]  (.A(
        \Dsensor_0/dist1/clk_count[27]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[23]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_4 ));
    DFN1 \servo_control_0/y_servo/pw[6]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[6]_net_1 ));
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
    CLKSRC \ants_master_MSS_0/MSS_ADLIB_INST_RNIRLU3/U_CLKSRC  (.A(
        \ants_master_MSS_0/MSS_ADLIB_INST_M2FRESETn ), .Y(
        ants_master_MSS_0_M2F_RESET_N));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_59  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MX2 \servo_control_0/x_servo/pw_RNO_0[25]  (.A(
        \servo_control_0/x_servo/next_pw[25]_net_1 ), .B(
        \servo_control_0/x_servo/pw[25]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_259 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[7]  (.A(
        \Dsensor_0/distance_count[7] ), .B(
        \Dsensor_0/dist1/next_distance_count[7]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_284 ));
    DFN1 \Dsensor_0/dist1/clk_count[13]  (.D(
        \Dsensor_0/dist1/clk_count_n13 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[13]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_79  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET ));
    DFN1 \servo_control_0/y_servo/pw[0]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[0]_net_1 ));
    NOR2 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[15] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[11] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1_net_1 )
        );
    NOR3B \servo_control_0/set_x_neutral_or_stop_0_a4_0  (.A(
        \servo_control_0/N_73 ), .B(\servo_control_0/N_70 ), .C(
        \stop_x_c[1] ), .Y(\servo_control_0/N_44 ));
    DFN1 \Dsensor_0/dist1/distance_count[11]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[11]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[11] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[31]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[31] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[31]_net_1 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_2  (.A(
        \servo_control_0/x_servo/pw[19]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_2[0] ));
    NOR3C \Dsensor_0/dist1/clk_count_RNIU9LK2[17]  (.A(
        \Dsensor_0/dist1/clk_m6_0_a2_4 ), .B(
        \Dsensor_0/dist1/clk_m6_0_a2_3 ), .C(
        \Dsensor_0/dist1/clk_m6_0_a2_5 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_7 ));
    AO1C \servo_control_0/y_servo/un1_pw_0_I_124  (.A(
        \servo_control_0/y_servo/pw[8]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[8]_net_1 ), .C(
        \servo_control_0/y_servo/N_15 ), .Y(
        \servo_control_0/y_servo/N_20 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0  
        (.D(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_bit_0_sqmuxa )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        );
    NOR2A \servo_control_0/set_x_reverse_0_a4  (.A(
        \servo_control_0/N_69 ), .B(\CoreAPB3_0_APBmslave0_PADDR[6] ), 
        .Y(\servo_control_0/set_x_reverse ));
    OR3B \Dsensor_0/PRDATA_RNO[22]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[22] ), .Y(
        \Dsensor_0/PRDATA_RNO[22]_net_1 ));
    NOR2B \servo_control_0/x_servo/pwm_signal_RNO  (.A(
        \servo_control_0/x_servo/N_233 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pwm_signal_RNO_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[4]  (.D(
        \servo_control_0/x_servo/next_pw_4[4] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[4]_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[12]  (.A(
        \Dsensor_0/dist1/N_289 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[12]_net_1 ));
    NOR3A \servo_control_0/set_x_neutral_or_stop_0_a4  (.A(
        \servo_control_0/N_46_2 ), .B(\CoreAPB3_0_APBmslave0_PADDR[6] )
        , .C(\stop_x_c[0] ), .Y(\servo_control_0/N_43 ));
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
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[11]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[11] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_118 ));
    DFN1 \Dsensor_0/PRDATA[15]  (.D(\Dsensor_0/PRDATA_RNO[15]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[15] ));
    OR2A \servo_control_0/x_servo/pw_RNO[11]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_245 ), .Y(
        \servo_control_0/x_servo/pw_RNO[11]_net_1 ));
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
    NOR3B \servo_control_0/x_servo/next_pw_RNO[3]  (.A(
        \servo_control_0/set_x ), .B(\CoreAPB3_0_APBmslave0_PWDATA[3] )
        , .C(\servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[3] ));
    IOIN_IB \stop_y_pad[0]/U0/U1  (.YIN(\stop_y_pad[0]/U0/NET1 ), .Y(
        \stop_y_c[0] ));
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
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[6]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[6] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[6]_net_1 ));
    NOR2B \servo_control_0/un3_y_down_morelt8_3_1  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[7] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[6] ), .Y(
        \servo_control_0.un3_y_down_morelt8_3_1 ));
    IOPAD_IN_U \stop_x_pad[0]/U0/U0  (.PAD(stop_x[0]), .Y(
        \stop_x_pad[0]/U0/NET1 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[28]  (.A(
        \servo_control_0/x_servo/N_262 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[28]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[22]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[22] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[17] ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[27]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_201 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[27] ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI5ICE[15]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_4_4 ), .B(
        \Dsensor_0/dist1/next_m3_0_a2_1 ), .C(
        \Dsensor_0/dist1/next_m6_0_a2_4_5 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_4 ));
    NOR2B \servo_control_0/y_servo/pw_RNO[25]  (.A(
        \servo_control_0/y_servo/N_259 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[25]_net_1 ));
    OR2A \servo_control_0/x_servo/pw_RNO[7]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_241 ), .Y(
        \servo_control_0/x_servo/pw_RNO[7]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[15]  (.D(
        \servo_control_0/x_servo/N_8 ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[15]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_6  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[29]INT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[28]INT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPI[30]INT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[28]INT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[29]INT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/GPO[30]INT_NET ));
    AO1A \servo_control_0/x_servo/next_pw_RNO[5]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[5] ), .C(
        \servo_control_0/x_servo/N_24 ), .Y(
        \servo_control_0/x_servo/next_pw_4[5] ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI553I[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        );
    DFN1 \Dsensor_0/dist1/distance_count[27]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[27]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[27] ));
    DFN1E0 \servo_control_0/y_servo/next_pw[20]  (.D(
        \servo_control_0/y_servo/next_pw_4[20] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[20]_net_1 ));
    OR2 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNI9IFL[11]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[11]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[14]_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_o3_0_0 )
        );
    MX2 \servo_control_0/y_servo/pw_RNO_0[2]  (.A(
        \servo_control_0/y_servo/next_pw[2]_net_1 ), .B(
        \servo_control_0/y_servo/pw[2]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_236 ));
    AX1C \servo_control_0/x_servo/time_count_RNO_0[12]  (.A(
        \servo_control_0/x_servo/time_m6_0_a2_6 ), .B(
        \servo_control_0/x_servo/time_m6_0_a2_7 ), .C(
        \servo_control_0/x_servo/time_count[12]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_n12_tz ));
    NOR3B \servo_control_0/y_servo/un1_pw_0_I_20  (.A(
        \servo_control_0/y_servo/DWACT_BL_ANDTREE_0_DWACT_BL_ANDTREE_0_E[0] )
        , .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[3] ), 
        .C(\servo_control_0/y_servo/pw[31]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_COMP0_E[1] ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[16]  (.A(
        \servo_control_0/y_servo/next_pw[16]_net_1 ), .B(
        \servo_control_0/y_servo/pw[16]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_250 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[12]  (.A(
        \servo_control_0/y_servo/next_pw[12]_net_1 ), .B(
        \servo_control_0/y_servo/pw[12]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_246 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[19]  (.A(
        \Dsensor_0/dist1/N_296 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[19]_net_1 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/controller_reset_RNO_3  
        (.A(\servo_control_0.un3_y_down_morelt8_3_0 ), .B(
        \servo_control_0.un3_y_down_morelt8_3_1 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[3] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[27]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_166 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[27]_net_1 ), .Y(N_62)
        );
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_37  (.PIN4(N_11), .PIN5(
        N_9), .PIN6(N_13), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[1] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[2] ), .PIN3(
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
    DFN1E0 \Dsensor_0/dist1/next_distance_count[0]  (.D(
        \Dsensor_0/dist1/N_373 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[0]_net_1 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNI72N9  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .C(\n64_magic_box_0/n64_serial_interface_0/read_module_begin ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30  (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_4_net_1 )
        , .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_3_net_1 )
        , .C(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5_net_1 )
        , .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_30 ));
    DFN1 \servo_control_0/y_servo/pw[7]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[7]_net_1 ));
    NOR3B \servo_control_0/un1_read_lower_stop_1_i_a2_5  (.A(N_16_mux), 
        .B(\servo_control_0/un1_read_lower_stop_1_i_a2_3_net_1 ), .C(
        \CoreAPB3_0_APBmslave0_PADDR[7] ), .Y(
        \servo_control_0/un1_read_lower_stop_1_i_a2_5_net_1 ));
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
    DFN1 \Dsensor_0/dist1/clk_count[20]  (.D(\Dsensor_0/dist1/N_15 ), 
        .CLK(FAB_CLK), .Q(\Dsensor_0/dist1/clk_count[20]_net_1 ));
    DFN1 \Dsensor_0/dist1/distance_count[18]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[18]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[18] ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_67  (.A(
        \servo_control_0/x_servo/pw[14]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[4] ));
    OR2A \servo_control_0/y_servo/pw_RNO[4]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_238 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[4]_net_1 ));
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
    NOR2B \Dsensor_0/dist1/clk_count_RNIT5PI[15]  (.A(
        \Dsensor_0/dist1/clk_count[15]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[16]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_2 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[28]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[28] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[28]_net_1 ));
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
    DFN1 \Dsensor_0/PRDATA[5]  (.D(\Dsensor_0/PRDATA_RNO[5]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[5] ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_109  (.A(
        \servo_control_0/y_servo/pw[6]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[6]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[1] ));
    OR3B \Dsensor_0/PRDATA_RNO[3]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[3] ), .Y(
        \Dsensor_0/PRDATA_RNO[3]_net_1 ));
    DFN1 \Dsensor_0/dist1/clk_count[29]  (.D(
        \Dsensor_0/dist1/clk_count_n29 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[29]_net_1 ));
    IOIN_IB \sensor_pwm_pad/U0/U1  (.YIN(\sensor_pwm_pad/U0/NET1 ), .Y(
        sensor_pwm_c));
    NOR3A \Dsensor_0/dist1/clk_count_RNO[27]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .B(
        \Dsensor_0/dist1/clk_N_3_mux ), .C(\Dsensor_0/dist1/N_26 ), .Y(
        \Dsensor_0/dist1/N_11 ));
    DFN1 \servo_control_0/y_servo/time_count[1]  (.D(
        \servo_control_0/y_servo/time_count_n1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[1]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[6]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_103 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[6]_net_1 ), .Y(
        \PRDATA_0_iv_i[6] ));
    AO1C \servo_control_0/y_servo/un1_pw_0_I_135  (.A(
        \servo_control_0/y_servo/pw[3]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/y_servo/N_5 ), .Y(
        \servo_control_0/y_servo/N_10 ));
    NOR3C \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26  (.A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_2_net_1 )
        , .B(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_1_net_1 )
        , .C(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3_net_1 )
        , .Y(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_26 ));
    OR3B \Dsensor_0/PRDATA_RNO[11]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[11] ), .Y(
        \Dsensor_0/PRDATA_RNO[11]_net_1 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[23]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[23] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[23] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[12]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
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
    OA1C \servo_control_0/y_servo/next_pw_RNO[15]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[15] ), .C(
        \servo_control_0/y_servo/N_23 ), .Y(
        \servo_control_0/y_servo/N_8 ));
    DFN1 \Dsensor_0/dist1/distance_count[20]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[20]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[20] ));
    DFN1 \servo_control_0/y_servo/pw[19]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[19]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[19]_net_1 ));
    NOR3 \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3  (
        .A(\CoreAPB3_0_APBmslave0_PWDATA[14] ), .B(
        \servo_control_0.un3_y_down_morelto13 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[9] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_26_3_net_1 )
        );
    NOR3C \Dsensor_0/dist1/clk_count_RNIVIJ71[10]  (.A(
        \Dsensor_0/dist1/clk_count[11]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[10]_net_1 ), .C(
        \Dsensor_0/dist1/clk_m6_0_a2_10_2 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_10_5 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[27]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[27] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_166 ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_108  (.A(
        \servo_control_0/y_servo/pw[5]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[0] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_42  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        ants_master_MSS_0_MSS_MASTER_APB_PSELx), .PIN2(
        CoreAPB3_0_APBmslave0_PENABLE), .PIN3(
        CoreAPB3_0_APBmslave0_PWRITE), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABPENABLEINT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPSELINT_NET ), 
        .PIN6INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABPWRITEINT_NET ), 
        .PIN1INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPSELINT_NET ), 
        .PIN2INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPENABLEINT_NET ), 
        .PIN3INT(\ants_master_MSS_0/MSS_ADLIB_INST/MSSPWRITEINT_NET ));
    DFN1 \Dsensor_0/dist1/clk_count[22]  (.D(
        \Dsensor_0/dist1/clk_count_n22 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[22]_net_1 ));
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
    NOR3A \Dsensor_0/dist1/clk_count_RNID5N91[31]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_1 ), .B(
        \Dsensor_0/dist1/clk_count[13]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[31]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_16 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[7]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[7] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[7] ));
    NOR2B \servo_control_0/y_servo/time_count_RNO_0[20]  (.A(
        \servo_control_0/y_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c18 ), .Y(
        \servo_control_0/y_servo/time_count_47_0 ));
    DFN1 \servo_control_0/y_servo/time_count[6]  (.D(
        \servo_control_0/y_servo/time_count_n6 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[6]_net_1 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_130  (.A(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/y_servo/pw[4]_net_1 ), .Y(
        \servo_control_0/y_servo/N_5 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[0]  (.A(
        \servo_control_0/set_x ), .B(\CoreAPB3_0_APBmslave0_PWDATA[0] )
        , .C(\servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[0] ));
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_53  (.A(
        \servo_control_0/x_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/x_servo/pw[20]_net_1 ), .Y(
        \servo_control_0/x_servo/N_38_0 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIN283[22]  (.A(
        \Dsensor_0/dist1/next_distance_count[22]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[23]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m4_0_a2_1 ));
    OR2A \servo_control_0/y_servo/next_pw_4_0_o2[7]  (.A(
        \servo_control_0/N_71 ), .B(\servo_control_0/y_servo/N_22 ), 
        .Y(\servo_control_0/y_servo/N_24 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[23]  (.A(
        \Dsensor_0/dist1/N_300 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[23]_net_1 ));
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
    NOR3B \servo_control_0/y_servo/next_pw_RNO[27]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[27] ), .C(
        \servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[27] ));
    DFN1 \servo_control_0/x_servo/time_count[17]  (.D(
        \servo_control_0/x_servo/time_count_n17 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[17]_net_1 ));
    DFN1 \Dsensor_0/dist1/distance_count[26]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[26]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[26] ));
    DFN1 \servo_control_0/x_servo/time_count[7]  (.D(
        \servo_control_0/x_servo/time_count_n7 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[7]_net_1 ));
    OR3B \Dsensor_0/PRDATA_RNO[23]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[23] ), .Y(
        \Dsensor_0/PRDATA_RNO[23]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[11]  (.D(
        \servo_control_0/y_servo/next_pw_4[11] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[11]_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_61  (.PIN4(GLMUXINT_GND)
        , .PIN5(PLLEN_VCC), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/F2MRESETnINT_NET ), 
        .PIN6INT(\ants_master_MSS_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET )
        , .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        GLMUXINT_GND));
    OR3 \servo_control_0/set_x_neutral_or_stop_0  (.A(
        \servo_control_0/N_43 ), .B(\servo_control_0/N_44 ), .C(
        \servo_control_0/N_45 ), .Y(
        \servo_control_0/set_x_neutral_or_stop ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[30]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_175 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[30]_net_1 ), .Y(N_68)
        );
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[17]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[17] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_136 ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIEC8F[28]  (.A(
        \Dsensor_0/dist1/next_distance_count[28]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[6]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_3 ));
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
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[11] ));
    OA1A \servo_control_0/x_servo/un1_pw_0_I_105  (.A(
        \servo_control_0/x_servo/N_26 ), .B(
        \servo_control_0/x_servo/N_28_0 ), .C(
        \servo_control_0/x_servo/N_27 ), .Y(
        \servo_control_0/x_servo/N_31 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_93  (.A(
        \servo_control_0/x_servo/pw[18]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[8] ));
    DFN1 \servo_control_0/y_servo/pw[29]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[29]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[29]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[14]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[14] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa_0 )
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[14] ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[18]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n18_tz ), .Y(
        \servo_control_0/y_servo/time_count_n18 ));
    NOR2A \servo_control_0/y_servo/time_count_RNO[0]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count[0]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n0 ));
    NOR3A \Dsensor_0/dist1/next_distance_count_RNII8F6[19]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_10 ), .B(
        \Dsensor_0/dist1/next_distance_count[19]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[21]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_21 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[30]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[30] ), .C(
        \servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[30] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[20]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[20] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[20]_net_1 ));
    OR3B \Dsensor_0/PRDATA_RNO[27]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[27] ), .Y(
        \Dsensor_0/PRDATA_RNO[27]_net_1 ));
    NOR2B \servo_control_0/y_servo/time_count_RNI25GE3[15]  (.A(
        \servo_control_0/y_servo/time_count_c14 ), .B(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c15 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[9]  (.D(
        \servo_control_0/x_servo/N_14 ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[9]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[0]  (.D(
        \servo_control_0/x_servo/next_pw_4[0] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[0]_net_1 ));
    DFN1 \servo_control_0/y_servo/time_count[4]  (.D(
        \servo_control_0/y_servo/time_count_n4 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[4]_net_1 ));
    NOR2 \servo_control_0/y_servo/time_count_RNIGG2D[9]  (.A(
        \servo_control_0/y_servo/time_count[7]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlto9_0 ));
    AND2A \servo_control_0/x_servo/un1_pw_0_I_87  (.A(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .B(
        \servo_control_0/x_servo/pw[16]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[2] ));
    DFN1 \Dsensor_0/dist1/clk_count[2]  (.D(
        \Dsensor_0/dist1/clk_count_n2 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[2]_net_1 ));
    AO1 \servo_control_0/y_servo/un1_pw_0_I_107  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[1] ), 
        .B(
        \servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E_0[2] ), 
        .C(\servo_control_0/y_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ));
    NOR3A \Dsensor_0/dist1/next_distance_count_RNILDKIF[19]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \Dsensor_0/dist1/clk_count_RNIDF52A[17]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_RNID8GC5[19]_net_1 ), .Y(
        \Dsensor_0/dist1/N_146_i_0_0 ));
    DFN1 \servo_control_0/y_servo/time_count[15]  (.D(
        \servo_control_0/y_servo/time_count_n15 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[15]_net_1 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[30]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[30] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[25] ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_41  (.PIN4(N_36), .PIN5(
        N_34), .PIN6(N_38), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[13] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[14] ), .PIN3(
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
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[26]  (.A(
        \Dsensor_0/distance_count[26] ), .B(
        \Dsensor_0/dist1/next_distance_count[26]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_303 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[31]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[31] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_178 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI0DOT1[19]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_21 ), .B(
        \Dsensor_0/dist1/un1_next_distance_count_1_20 ), .C(
        \Dsensor_0/dist1/un1_next_distance_count_1_27 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_29 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/begin_read_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module_begin ));
    NOR3A \Dsensor_0/dist1/next_distance_count_RNIMDG6[20]  (.A(
        \Dsensor_0/dist1/un1_next_distance_count_1_7 ), .B(
        \Dsensor_0/dist1/next_distance_count[27]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[20]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_19 ));
    AO1C \servo_control_0/x_servo/un1_pw_0_I_100  (.A(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .B(
        \servo_control_0/x_servo/pw[11]_net_1 ), .C(
        \servo_control_0/x_servo/N_24_0 ), .Y(
        \servo_control_0/x_servo/N_26 ));
    AX1C \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_7  (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[1]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[0]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[2]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[2] ));
    NOR3B \Dsensor_0/dist1/next_distance_count_RNO_2[20]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \Dsensor_0/dist1/next_distance_count[19]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[20]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n20_0_a4_0_1 ));
    IOPAD_TRI \ants_master_MSS_0/MSS_UART_0_TXD  (.D(
        \ants_master_MSS_0/MSS_UART_0_TXD_D ), .E(PLLEN_VCC), .PAD(
        UART_0_TXD));
    NOR2 \Dsensor_0/valid_read_2  (.A(CoreAPB3_0_APBmslave0_PWRITE), 
        .B(\CoreAPB3_0_APBmslave0_PADDR[0] ), .Y(
        \Dsensor_0/valid_read_2_net_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNIE91O2[6]  (.A(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c5 ), .Y(
        \servo_control_0/x_servo/time_count_c6 ));
    AND2 \servo_control_0/x_servo/un1_pw_0_I_115  (.A(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1] ), 
        .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ), 
        .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[1] ));
    NOR2B \servo_control_0/y_servo/pw_RNO[31]  (.A(
        \servo_control_0/y_servo/N_265 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[31]_net_1 ));
    AO1 \servo_control_0/x_servo/un1_pw_0_I_140  (.A(
        \servo_control_0/x_servo/DWACT_COMP0_E[1] ), .B(
        \servo_control_0/x_servo/DWACT_COMP0_E[2] ), .C(
        \servo_control_0/x_servo/DWACT_COMP0_E[0] ), .Y(
        \servo_control_0/x_servo/I_140 ));
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
    NOR2B \Dsensor_0/dist1/distance_count_RNO[2]  (.A(
        \Dsensor_0/dist1/N_279 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[2]_net_1 ));
    DFN1 \Dsensor_0/PRDATA[0]  (.D(\Dsensor_0/PRDATA_RNO[0]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[0] ));
    NOR2B \Dsensor_0/dist1/next_distance_count_0_sqmuxa  (.A(
        sensor_pwm_c), .B(ants_master_MSS_0_M2F_RESET_N), .Y(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[21]  (.A(
        \servo_control_0/y_servo/next_pw[21]_net_1 ), .B(
        \servo_control_0/y_servo/pw[21]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_255 ));
    AND3 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_29  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[6]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ), 
        .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[5] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[20]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[20] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_145 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[17]  (.A(
        \servo_control_0/y_servo/next_pw[17]_net_1 ), .B(
        \servo_control_0/y_servo/pw[17]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_251 ));
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
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[23] ), 
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
    NOR2B \Dsensor_0/dist1/distance_count_RNO[0]  (.A(
        \Dsensor_0/dist1/N_277 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[0]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[7]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_106 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[7]_net_1 ), .Y(
        \PRDATA_0_iv_i[7] ));
    DFN1 \Dsensor_0/dist1/clk_count[5]  (.D(
        \Dsensor_0/dist1/clk_count_n5 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[5]_net_1 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[14]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[14] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[14] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[17]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_136 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[17]_net_1 ), .Y(N_42)
        );
    DFN1 \Dsensor_0/dist1/distance_count[29]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[29]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[29] ));
    NOR2A \servo_control_0/set_x_0_a2_0  (.A(\servo_control_0/N_61 ), 
        .B(\CoreAPB3_0_APBmslave0_PADDR[2] ), .Y(
        \servo_control_0/N_68 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI553I_0[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_valid )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        );
    OR2A \servo_control_0/x_servo/un1_pw_0_I_99  (.A(
        \servo_control_0/x_servo/time_count[14]_net_1 ), .B(
        \servo_control_0/x_servo/pw[14]_net_1 ), .Y(
        \servo_control_0/x_servo/N_25 ));
    AND2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_44  (
        .A(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[7] ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[9] ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[10] ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_81  (.A(
        \servo_control_0/y_servo/pw[16]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[16]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_0[1] ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[17]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[17] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[17] ));
    NOR3C \servo_control_0/y_servo/time_count_RNIIIJJ[4]  (.A(
        \servo_control_0/y_servo/time_count[5]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_4 ));
    OR3B \Dsensor_0/dist1/next_distance_count_RNIKM0D3[7]  (.A(
        \Dsensor_0/dist1/next_distance_count[6]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[7]_net_1 ), .C(
        \Dsensor_0/dist1/N_377 ), .Y(\Dsensor_0/dist1/N_379 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[23]  (.A(
        \Dsensor_0/distance_count[23] ), .B(
        \Dsensor_0/dist1/next_distance_count[23]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_300 ));
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
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_55  (.A(
        \servo_control_0/x_servo/time_count[19]_net_1 ), .B(
        \servo_control_0/x_servo/pw[19]_net_1 ), .Y(
        \servo_control_0/x_servo/N_34 ));
    DFN1E1 \n64_magic_box_0/n64_serial_interface_0/button_data[29]  (
        .D(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[29] ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/button_data_0_sqmuxa ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[26] ));
    DFN1 \Dsensor_0/dist1/clk_count[17]  (.D(
        \Dsensor_0/dist1/clk_count_n17 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[17]_net_1 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[27]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[27] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[27]_net_1 ));
    NOR3C \CoreAPB3_0/m13_5  (.A(CoreAPB3_0_APBmslave0_PWRITE), .B(
        CoreAPB3_0_APBmslave0_PENABLE), .C(\CoreAPB3_0.m13_1 ), .Y(
        \CoreAPB3_0/m13_5_net_1 ));
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
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[10]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[10] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_115 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[20]  (.A(
        \Dsensor_0/dist1/N_297 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[20]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNIC0G1A[17]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_29 ), .B(
        \Dsensor_0/dist1/un1_clk_count_1_28 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1 ));
    AOI1A \servo_control_0/x_servo/un1_pw_0_I_95  (.A(
        \servo_control_0/x_servo/ACT_LT4_E[3] ), .B(
        \servo_control_0/x_servo/ACT_LT4_E[6] ), .C(
        \servo_control_0/x_servo/ACT_LT4_E[10] ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO0_DWACT_COMP0_E[0] ));
    AO1 \servo_control_0/x_servo/un1_pw_0_I_139  (.A(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ), 
        .B(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ), 
        .C(\servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/x_servo/DWACT_COMP0_E[2] ));
    NOR2B \servo_control_0/y_servo/time_count_RNISMCA3[16]  (.A(
        \servo_control_0/y_servo/un1_time_count ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ));
    OA1 \servo_control_0/x_servo/un1_pw_0_I_126  (.A(
        \servo_control_0/x_servo/N_21 ), .B(
        \servo_control_0/x_servo/N_20 ), .C(
        \servo_control_0/x_servo/N_19 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[0] ));
    OR2 \servo_control_0/un3_y_down_morelt31_2  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[21] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[20] ), .Y(
        \servo_control_0.un3_y_down_morelto31_2 ));
    NOR2 \servo_control_0/x_servo/un1_pw_0_I_58  (.A(
        \servo_control_0/x_servo/pw[22]_net_1 ), .B(
        \servo_control_0/x_servo/pw[21]_net_1 ), .Y(
        \servo_control_0/x_servo/N_37 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[14]  (.D(
        \Dsensor_0/dist1/next_distance_count_n14 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI12F6[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ));
    DFN1 \Dsensor_0/PRDATA[28]  (.D(\Dsensor_0/PRDATA_RNO[28]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[28] ));
    OR2A \servo_control_0/y_servo/pw_RNO[14]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_248 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[14]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[26]  (.D(
        \servo_control_0/x_servo/next_pw_4[26] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[26]_net_1 ));
    DFN1 \servo_control_0/y_servo/pw[5]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[5]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[6]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_180 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[6] )
        );
    MX2 \servo_control_0/y_servo/pw_RNO_0[30]  (.A(
        \servo_control_0/y_servo/next_pw[30]_net_1 ), .B(
        \servo_control_0/y_servo/pw[30]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_264 ));
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
    AO1C \servo_control_0/y_servo/un1_pw_0_I_104  (.A(
        \servo_control_0/y_servo/pw[13]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/y_servo/N_25 ), .Y(
        \servo_control_0/y_servo/N_30_0 ));
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
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/write_module/data_out_net_1 )
        );
    NOR2B \servo_control_0/y_servo/time_count_RNO[4]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n4_tz ), .Y(
        \servo_control_0/y_servo/time_count_n4 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[9]  (.A(
        \Dsensor_0/distance_count[9] ), .B(
        \Dsensor_0/dist1/next_distance_count[9]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_286 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[24]  (.D(
        \Dsensor_0/dist1/next_distance_count_n24 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[24]_net_1 ));
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
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_98  (.A(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/x_servo/pw[10]_net_1 ), .Y(
        \servo_control_0/x_servo/N_24_0 ));
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
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[22] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[22] ));
    AO1 \servo_control_0/x_servo/un1_pw_0_I_138  (.A(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[1] ), 
        .B(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[2] ), 
        .C(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[0] ), 
        .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[6]  (.A(
        \servo_control_0/x_servo/time_count_c5 ), .B(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n6 ));
    AND3 \servo_control_0/y_servo/un1_pw_0_I_113  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[0] ), .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[1] ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[2] ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ));
    OR3B \Dsensor_0/PRDATA_RNO[19]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[19] ), .Y(
        \Dsensor_0/PRDATA_RNO[19]_net_1 ));
    NOR2 \Dsensor_0/dist1/clk_count_RNILVQI[20]  (.A(
        \Dsensor_0/dist1/clk_count[21]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[20]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_7 ));
    DFN1 \Dsensor_0/PRDATA[12]  (.D(\Dsensor_0/PRDATA_RNO[12]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[12] ));
    OR2A \servo_control_0/PRDATA_1_RNO[0]  (.A(\servo_control_0/N_30 ), 
        .B(\servo_control_0/N_41 ), .Y(
        \servo_control_0/PRDATA_6_iv[0] ));
    DFN1E0 \servo_control_0/x_servo/next_pw[28]  (.D(
        \servo_control_0/x_servo/next_pw_4[28] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[28]_net_1 ));
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
        \servo_control_0/y_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/y_servo/time_count_n17 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[28]  (.A(
        \servo_control_0/y_servo/next_pw[28]_net_1 ), .B(
        \servo_control_0/y_servo/pw[28]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_262 ));
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
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[20]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_145 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[20]_net_1 ), .Y(N_48)
        );
    DFN1E0 \servo_control_0/x_servo/next_pw[29]  (.D(
        \servo_control_0/x_servo/next_pw_4[29] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[29]_net_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[21]  (.A(
        \Dsensor_0/distance_count[21] ), .B(
        \Dsensor_0/dist1/next_distance_count[21]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_298 ));
    NOR2B \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO  (.A(
        \n64_magic_box_0/n64_apb_interface_0/N_76 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_net_1 )
        );
    DFN1E0 \servo_control_0/y_servo/next_pw[10]  (.D(
        \servo_control_0/y_servo/N_12 ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[10]_net_1 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[30]  (.A(
        \Dsensor_0/dist1/N_307 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[30]_net_1 ));
    NOR2 \Dsensor_0/dist1/clk_count_RNITASM[6]  (.A(
        \Dsensor_0/dist1/clk_count[7]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[6]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_11 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[9]  (.D(
        \servo_control_0/y_servo/N_14 ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/y_servo/next_pw[9]_net_1 ));
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
    OR3B \Dsensor_0/PRDATA_RNO[14]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[14] ), .Y(
        \Dsensor_0/PRDATA_RNO[14]_net_1 ));
    AO1A \servo_control_0/x_servo/next_pw_RNO[11]  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[11] ), .C(
        \servo_control_0/x_servo/N_23 ), .Y(
        \servo_control_0/x_servo/next_pw_4[11] ));
    OA1C \servo_control_0/y_servo/next_pw_RNO[9]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[9] ), .C(
        \servo_control_0/y_servo/N_23 ), .Y(
        \servo_control_0/y_servo/N_14 ));
    NOR2B \servo_control_0/x_servo/time_count_RNI36PT3[9]  (.A(
        \servo_control_0/x_servo/time_count_c8 ), .B(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/x_servo/time_count_c9 ));
    NOR3C \servo_control_0/y_servo/time_count_RNIAAL01[4]  (.A(
        \servo_control_0/y_servo/time_count_c2 ), .B(
        \servo_control_0/y_servo/time_count[3]_net_1 ), .C(
        \servo_control_0/y_servo/time_count[4]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c4 ));
    NOR2B \servo_control_0/y_servo/time_count_RNI3E1F[10]  (.A(
        \servo_control_0/y_servo/time_count[10]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .Y(
        \servo_control_0/y_servo/time_m6_0_a2_2 ));
    OR2A \servo_control_0/x_servo/next_pw_4_0_o2_0_0[17]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/set_x_neutral_or_stop ), .Y(
        \servo_control_0/x_servo/N_22_0 ));
    NOR3 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNINOM9[4]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index11_3 )
        );
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[15]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[15] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[15] ));
    NOR2B \Dsensor_0/dist1/clk_count_RNI246P1[4]  (.A(
        \Dsensor_0/dist1/clk_count_c3 ), .B(
        \Dsensor_0/dist1/clk_count[4]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c4 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_82  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET ));
    AO1C \servo_control_0/x_servo/un1_pw_0_I_122  (.A(
        \servo_control_0/x_servo/pw[7]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/x_servo/N_12_0 ), .Y(
        \servo_control_0/x_servo/N_18 ));
    AOI1A \servo_control_0/y_servo/next_pw_RNO[16]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[16] ), .B(
        \servo_control_0/set_y ), .C(\servo_control_0/y_servo/N_22 ), 
        .Y(\servo_control_0/y_servo/N_6 ));
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
    IOIN_IB \stop_x_pad[1]/U0/U1  (.YIN(\stop_x_pad[1]/U0/NET1 ), .Y(
        \stop_x_c[1] ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[30]  (.A(
        \servo_control_0/x_servo/next_pw[30]_net_1 ), .B(
        \servo_control_0/x_servo/pw[30]_net_1 ), .S(
        \servo_control_0/x_servo/un1_time_count ), .Y(
        \servo_control_0/x_servo/N_264 ));
    NOR3A \Dsensor_0/dist1/clk_count_RNIF8O91[1]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_3 ), .B(
        \Dsensor_0/dist1/clk_count[0]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[1]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_17 ));
    NOR2 \Dsensor_0/dist1/next_distance_count_RNIR463[14]  (.A(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_next_distance_count_1_13 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIMV53[12]  (.A(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[14]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m3_0_a2_1 ));
    NOR2B \servo_control_0/y_servo/time_count_RNO[2]  (.A(
        \servo_control_0/y_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/y_servo/time_count_n2_tz ), .Y(
        \servo_control_0/y_servo/time_count_n2 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[5]  (.A(
        \Dsensor_0/distance_count[5] ), .B(
        \Dsensor_0/dist1/next_distance_count[5]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_282 ));
    NOR3 \servo_control_0/y_servo/next_pw_4_sqmuxa_0_a2_0  (.A(
        \servo_control_0/N_71 ), .B(\servo_control_0/y_servo/N_22_0 ), 
        .C(\servo_control_0/set_y_reverse ), .Y(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ));
    IOPAD_A_OUT \ants_master_MSS_0/MSS_ACE_0_SDD0  (.D(
        \ants_master_MSS_0/MSS_ACE_0_SDD0_D ), .PAD(SDD_0));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI56F6[3]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[3]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[2]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        );
    NOR3C \Dsensor_0/dist1/next_distance_count_RNILARS[10]  (.A(
        \Dsensor_0/dist1/next_distance_count[6]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[10]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[9]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_5_4 ));
    NOR2A \servo_control_0/y_servo/un1_pw_0_I_53  (.A(
        \servo_control_0/y_servo/time_count[20]_net_1 ), .B(
        \servo_control_0/y_servo/pw[20]_net_1 ), .Y(
        \servo_control_0/y_servo/N_38_0 ));
    NOR3 \servo_control_0/x_servo/un1_pw_0_I_28  (.A(
        \servo_control_0/x_servo/pw[28]_net_1 ), .B(
        \servo_control_0/x_servo/pw[27]_net_1 ), .C(
        \servo_control_0/x_servo/pw[29]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_2[0] )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[1]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit_0 )
        , .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_175 ), 
        .Q(\n64_magic_box_0/n64_serial_interface_0/button_data_raw[1] )
        );
    NOR3C \Dsensor_0/valid_read_6_0  (.A(
        \Dsensor_0/valid_read_0_net_1 ), .B(\Dsensor_0.valid_read_5 ), 
        .C(\CoreAPB3_0.m13_1 ), .Y(\Dsensor_0/valid_read_6_0_net_1 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_38  (.PIN4(
        \PRDATA_0_iv_i[5] ), .PIN5(\PRDATA_0_iv_i[4] ), .PIN6(
        \PRDATA_0_iv_i[6] ), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[4] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[5] ), .PIN3(
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
    OA1 \servo_control_0/x_servo/un1_pw_0_I_137  (.A(
        \servo_control_0/x_servo/N_11 ), .B(
        \servo_control_0/x_servo/N_10 ), .C(
        \servo_control_0/x_servo/N_9 ), .Y(
        \servo_control_0/x_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[2] ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[21]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[7] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_195 ));
    DFN1 \n64_magic_box_0/n64_apb_interface_0/PRDATA[30]  (.D(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[30] ), 
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
        .Q(\n64_magic_box_0/n64_serial_interface_0_button_data_rev[7] )
        );
    OR3B \Dsensor_0/PRDATA_RNO[26]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[26] ), .Y(
        \Dsensor_0/PRDATA_RNO[26]_net_1 ));
    AX1 \Dsensor_0/dist1/next_distance_count_RNO_0[9]  (.A(
        \Dsensor_0/dist1/N_379 ), .B(
        \Dsensor_0/dist1/next_distance_count[8]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[9]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n9_tz ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_84  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET ), 
        .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET ), 
        .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[26]  (.A(
        \servo_control_0/y_servo/next_pw[26]_net_1 ), .B(
        \servo_control_0/y_servo/pw[26]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_260 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[22]  (.A(
        \servo_control_0/y_servo/next_pw[22]_net_1 ), .B(
        \servo_control_0/y_servo/pw[22]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_256 ));
    DFN1 \Dsensor_0/dist1/distance_count[2]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[2] ));
    AO1B \servo_control_0/y_servo/time_count_RNIDFO02[15]  (.A(
        \servo_control_0/y_servo/un1_time_countlto14_2 ), .B(
        \servo_control_0/y_servo/un1_time_countlt14 ), .C(
        \servo_control_0/y_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/y_servo/un1_time_countlt16 ));
    OR2A \servo_control_0/x_servo/pw_RNO[4]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/x_servo/N_238 ), .Y(
        \servo_control_0/x_servo/pw_RNO[4]_net_1 ));
    XA1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNO[5]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]_net_1 )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_data_valid )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n5 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[0]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[0] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_84 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[0]_net_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[16]  (.A(
        \Dsensor_0/distance_count[16] ), .B(
        \Dsensor_0/dist1/next_distance_count[16]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_293 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[28]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[28] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_169 ));
    OR2A \servo_control_0/y_servo/un1_pw_0_I_93  (.A(
        \servo_control_0/y_servo/pw[18]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[8] ));
    NOR3A \Dsensor_0/dist1/clk_count_RNITKM91[4]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_13 ), .B(
        \Dsensor_0/dist1/clk_count[4]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[5]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_22 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_55  (.PIN4(N_54), .PIN5(
        N_52), .PIN6(N_56), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[22] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[23] ), .PIN3(
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
        , .Q(
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[22] ));
    DFN1 \Dsensor_0/PRDATA[14]  (.D(\Dsensor_0/PRDATA_RNO[14]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[14] ));
    XA1 \servo_control_0/x_servo/time_count_RNO[9]  (.A(
        \servo_control_0/x_servo/time_count_c8 ), .B(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n9 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[25]  (.D(
        \servo_control_0/x_servo/next_pw_4[25] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[25]_net_1 ));
    DFN1E0 \servo_control_0/y_servo/next_pw[24]  (.D(
        \servo_control_0/y_servo/next_pw_4[24] ), .CLK(FAB_CLK), .E(
        \servo_control_0/y_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/y_servo/next_pw[24]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNI24559[28]  (.A(
        \Dsensor_0/dist1/clk_count[28]_net_1 ), .B(
        \Dsensor_0/dist1/clk_N_3_mux ), .Y(
        \Dsensor_0/dist1/clk_count_c28 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[27]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_201 ));
    OR3B \Dsensor_0/dist1/next_distance_count_RNO_0[10]  (.A(
        \Dsensor_0/dist1/next_distance_count[8]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[9]_net_1 ), .C(
        \Dsensor_0/dist1/N_379 ), .Y(\Dsensor_0/dist1/N_29 ));
    OR3B \Dsensor_0/dist1/next_distance_count_RNIPVKE4[12]  (.A(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ), .C(
        \Dsensor_0/dist1/N_31 ), .Y(\Dsensor_0/dist1/N_33 ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[2]  (.A(
        \servo_control_0/set_x ), .B(\CoreAPB3_0_APBmslave0_PWDATA[2] )
        , .C(\servo_control_0/x_servo/N_22 ), .Y(
        \servo_control_0/x_servo/next_pw_4[2] ));
    DFN1 \Dsensor_0/dist1/clk_count[4]  (.D(
        \Dsensor_0/dist1/clk_count_n4 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[4]_net_1 ));
    AND2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_38  (
        .A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[12]_net_1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[13]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/DWACT_FINC_E[8] ));
    OR2 \servo_control_0/un3_y_down_morelt13  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[13] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[12] ), .Y(
        \servo_control_0.un3_y_down_morelto13 ));
    NOR2 \Dsensor_0/dist1/clk_count_RNIU9SI[29]  (.A(
        \Dsensor_0/dist1/clk_count[30]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[29]_net_1 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_3 ));
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
    DFN1 \servo_control_0/x_servo/pw[8]  (.D(
        \servo_control_0/x_servo/pw_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[8]_net_1 ));
    NOR3A 
        \n64_magic_box_0/n64_serial_interface_0/long_count_RNI03NJ2[16]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_6 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/N_8 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/N_12 ), .Y(
        \n64_magic_box_0/n64_serial_interface_0/write_module_begin4_0_a3_11 )
        );
    NOR3B \Dsensor_0/dist1/next_distance_count_RNO_0[20]  (.A(
        \Dsensor_0/dist1/next_distance_count[20]_net_1 ), .B(
        \Dsensor_0/dist1/N_146_i_0_0 ), .C(
        \Dsensor_0/dist1/next_N_13_mux_0 ), .Y(\Dsensor_0/dist1/N_40 ));
    NOR3C \CoreAPB3_0/m13  (.A(\CoreAPB3_0/m13_4_net_1 ), .B(
        \CoreAPB3_0/m13_3_net_1 ), .C(\CoreAPB3_0/m13_5_net_1 ), .Y(
        \n64_magic_box_0.n64_apb_interface_0.write ));
    NOR3B \servo_control_0/x_servo/next_pw_RNO[19]  (.A(
        \servo_control_0/set_x ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[19] ), .C(
        \servo_control_0/x_servo/N_22_0 ), .Y(
        \servo_control_0/x_servo/next_pw_4[19] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in_RNIVSD8  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/last_value_in_net_1 )
        , .B(\n64_magic_box_0/n64_serial_interface_0/data_in_net_1 ), 
        .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count10 )
        );
    AX1C \Dsensor_0/dist1/clk_count_RNO_0[2]  (.A(
        \Dsensor_0/dist1/clk_count[1]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[0]_net_1 ), .C(
        \Dsensor_0/dist1/clk_count[2]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n2_tz ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[22]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[22] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[22]_net_1 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[13]  (.A(
        \servo_control_0/x_servo/time_count_c12 ), .B(
        \servo_control_0/x_servo/time_count[13]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
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
    OR2 \servo_control_0/un3_y_down_morelt31_7  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[31] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[30] ), .Y(
        \servo_control_0.un3_y_down_morelto31_7 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI665N1[6]  (.A(
        \Dsensor_0/dist1/clk_count[6]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count[5]_net_1 ), .C(
        \Dsensor_0/dist1/clk_m6_0_a2_10_4 ), .Y(
        \Dsensor_0/dist1/clk_m6_0_a2_10_6 ));
    OR3B \Dsensor_0/PRDATA_RNO[31]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[31] ), .Y(
        \Dsensor_0/PRDATA_RNO[31]_net_1 ));
    OR3B \Dsensor_0/PRDATA_RNO[18]  (.A(
        \Dsensor_0/valid_read_5_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_net_1 ), .C(
        \Dsensor_0/distance_count[18] ), .Y(
        \Dsensor_0/PRDATA_RNO[18]_net_1 ));
    DFN1 \Dsensor_0/dist1/distance_count[31]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[31]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[31] ));
    NOR2B \servo_control_0/x_servo/time_count_RNI56SU1[4]  (.A(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .B(
        \servo_control_0/x_servo/time_count_c3 ), .Y(
        \servo_control_0/x_servo/time_count_c4 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[18]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[18] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_139 ));
    NOR3 \servo_control_0/x_servo/next_pw_4_sqmuxa_0_a2_0  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \servo_control_0/x_servo/N_22 ), .C(\servo_control_0/N_70 ), 
        .Y(\servo_control_0/x_servo/next_pw_4_sqmuxa_0 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[30]  (.D(
        \Dsensor_0/dist1/next_distance_count_n30 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[30]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[30]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[30] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_175 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[0]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_85 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[0]_net_1 ), .Y(N_7));
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
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[7]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[7] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[7]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[25]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_160 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[25]_net_1 ), .Y(N_58)
        );
    OR3C \Dsensor_0/dist1/next_distance_count_RNO_0[19]  (.A(
        \Dsensor_0/dist1/next_distance_count[17]_net_1 ), .B(
        \Dsensor_0/dist1/next_N_7_mux_0_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[18]_net_1 ), .Y(
        \Dsensor_0/dist1/N_38 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[13]  (.A(
        \Dsensor_0/distance_count[13] ), .B(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_290 ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[26]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[26] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[26]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[1]  (.D(
        \servo_control_0/x_servo/next_pw_4[1] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa_0 ), .Q(
        \servo_control_0/x_servo/next_pw[1]_net_1 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[1]  (.A(
        \servo_control_0/x_servo/next_pw[1]_net_1 ), .B(
        \servo_control_0/x_servo/pw[1]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_235 ));
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
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_177 ));
    NOR3B \Dsensor_0/dist1/next_distance_count_RNINMG85[29]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_11_7 ), .B(
        \Dsensor_0/dist1/next_distance_count[29]_net_1 ), .C(
        \Dsensor_0/dist1/N_31 ), .Y(
        \Dsensor_0/dist1/next_distance_count_c29 ));
    DFN1 \servo_control_0/x_servo/time_count[20]  (.D(
        \servo_control_0/x_servo/time_count_n20 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[20]_net_1 ));
    DFN1 \servo_control_0/x_servo/pwm_signal  (.D(
        \servo_control_0/x_servo/pwm_signal_RNO_net_1 ), .CLK(FAB_CLK), 
        .Q(x_servo_pwm_c));
    AX1 \Dsensor_0/dist1/next_distance_count_RNO_0[13]  (.A(
        \Dsensor_0/dist1/N_31 ), .B(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count[13]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n13_tz ));
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
    AX1 \Dsensor_0/dist1/next_distance_count_RNO_0[29]  (.A(
        \Dsensor_0/dist1/N_31 ), .B(
        \Dsensor_0/dist1/next_m6_0_a2_11_7 ), .C(
        \Dsensor_0/dist1/next_distance_count[29]_net_1 ), .Y(
        \Dsensor_0/dist1/next_distance_count_n29_tz ));
    NOR2B \servo_control_0/x_servo/pw_RNO[23]  (.A(
        \servo_control_0/x_servo/N_257 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[23]_net_1 ));
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
    NOR2A \servo_control_0/x_servo/un1_pw_0_I_90  (.A(
        \servo_control_0/x_servo/time_count[18]_net_1 ), .B(
        \servo_control_0/x_servo/pw[18]_net_1 ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[5] ));
    OR2A \Dsensor_0/dist1/clk_count_RNO_1[20]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_N_13_mux_0 ), .Y(
        \Dsensor_0/dist1/clk_count_n20_i_0 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[5]  (.A(
        \servo_control_0/y_servo/next_pw[5]_net_1 ), .B(
        \servo_control_0/y_servo/pw[5]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_239 ));
    DFN1 \Dsensor_0/PRDATA[30]  (.D(\Dsensor_0/PRDATA_RNO[30]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[30] ));
    NOR2B 
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid_RNO_0  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[4]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/count[6]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/read_bit0/data_valid5_1 )
        );
    NOR3A \n64_magic_box_0/n64_apb_interface_0/polling_enable_RNO_3  (
        .A(\n64_magic_box_0/n64_apb_interface_0/polling_enable7_2 ), 
        .B(\CoreAPB3_0_APBmslave0_PWDATA[6] ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[7] ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable7_5 ));
    AOI1A \servo_control_0/x_servo/un1_pw_0_I_94  (.A(
        \servo_control_0/x_servo/ACT_LT4_E[7] ), .B(
        \servo_control_0/x_servo/ACT_LT4_E[8] ), .C(
        \servo_control_0/x_servo/ACT_LT4_E[5] ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[10] ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_134  (.A(
        \servo_control_0/x_servo/pw[4]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[4]_net_1 ), .Y(
        \servo_control_0/x_servo/N_9 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[4]  (.A(
        \servo_control_0/x_servo/next_pw[4]_net_1 ), .B(
        \servo_control_0/x_servo/pw[4]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_238 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[5]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[5] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_100 ));
    NOR3B \servo_control_0/y_servo/un1_pw_0_I_17  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_2[1] ), .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_2[0] ), .C(
        \servo_control_0/y_servo/pw[21]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_3[0] )
        );
    NOR2B \servo_control_0/y_servo/time_count_RNIDEB12[9]  (.A(
        \servo_control_0/y_servo/time_count_c8 ), .B(
        \servo_control_0/y_servo/time_count[9]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_c9 ));
    DFN1 \servo_control_0/PRDATA_1[1]  (.D(\servo_control_0/N_41 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave1_PRDATA[2] ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[26]  (.A(
        \Dsensor_0/dist1/N_303 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[26]_net_1 ));
    AX1C \Dsensor_0/dist1/clk_count_RNO_0[25]  (.A(
        \Dsensor_0/dist1/clk_count[24]_net_1 ), .B(
        \Dsensor_0/dist1/clk_N_13_mux ), .C(
        \Dsensor_0/dist1/clk_count[25]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n25_tz ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[25]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[25] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_160 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[7]  (.A(
        \servo_control_0/x_servo/time_count_c6 ), .B(
        \servo_control_0/x_servo/time_count[7]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/time_count_n7 ));
    XNOR2 \servo_control_0/y_servo/un1_pw_0_I_68  (.A(
        \servo_control_0/y_servo/pw[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E[7] ));
    NOR3B \Dsensor_0/valid_read_5_0_0  (.A(N_16_mux), .B(
        \Dsensor_0/valid_read_2_net_1 ), .C(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .Y(
        \Dsensor_0/valid_read_5_0_0_net_1 ));
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
    NOR3A \servo_control_0/set_x_neutral_or_stop_0_a2  (.A(
        \servo_control_0/un3_y_up_morelt31 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .C(
        \servo_control_0/un3_y_down_morelto31 ), .Y(
        \servo_control_0/N_49 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[22]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_151 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[22]_net_1 ), .Y(N_52)
        );
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
    NOR2B \servo_control_0/x_servo/pw_RNO[20]  (.A(
        \servo_control_0/x_servo/N_254 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[20]_net_1 ));
    DFN1 \Dsensor_0/PRDATA[13]  (.D(\Dsensor_0/PRDATA_RNO[13]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[13] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[10]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_115 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[10]_net_1 ), .Y(N_28)
        );
    AO1 \n64_magic_box_0/n64_serial_interface_0/long_count_RNIUM47[7]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/long_count[7]_net_1 ), 
        .B(\n64_magic_box_0/n64_serial_interface_0/N_8 ), .C(
        \n64_magic_box_0/n64_serial_interface_0/long_count[8]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/N_9_0 ));
    DFN1 \Dsensor_0/dist1/distance_count[12]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[12] ));
    AX1C \servo_control_0/y_servo/time_count_RNO_0[18]  (.A(
        \servo_control_0/y_servo/time_count[17]_net_1 ), .B(
        \servo_control_0/y_servo/time_count_c16 ), .C(
        \servo_control_0/y_servo/time_count[18]_net_1 ), .Y(
        \servo_control_0/y_servo/time_count_n18_tz ));
    AO1 \servo_control_0/y_servo/un1_pw_0_I_139  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[1] ), 
        .B(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ), 
        .C(\servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[0] ), 
        .Y(\servo_control_0/y_servo/DWACT_COMP0_E[2] ));
    OR2A \servo_control_0/y_servo/pw_RNO[11]  (.A(
        ants_master_MSS_0_M2F_RESET_N), .B(
        \servo_control_0/y_servo/N_245 ), .Y(
        \servo_control_0/y_servo/pw_RNO_0[11]_net_1 ));
    OR2A \Dsensor_0/dist1/next_distance_count_RNIPAOH2[5]  (.A(
        \Dsensor_0/dist1/next_distance_count[5]_net_1 ), .B(
        \Dsensor_0/dist1/N_376 ), .Y(\Dsensor_0/dist1/N_377 ));
    DFN1 
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_RNO_net_1 )
        , .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/read_module_set_enabled_net_1 )
        );
    DFN1 \servo_control_0/y_servo/pw[31]  (.D(
        \servo_control_0/y_servo/pw_RNO_0[31]_net_1 ), .CLK(FAB_CLK), 
        .Q(\servo_control_0/y_servo/pw[31]_net_1 ));
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
    NOR3C \Dsensor_0/dist1/next_distance_count_RNI57N9[24]  (.A(
        \Dsensor_0/dist1/next_m4_0_a2_1 ), .B(
        \Dsensor_0/dist1/next_m4_0_a2_0 ), .C(
        \Dsensor_0/dist1/next_m4_0_a2_2 ), .Y(
        \Dsensor_0/dist1/next_m4_0_a2_4 ));
    AOI1A \servo_control_0/x_servo/un1_pw_0_I_91  (.A(
        \servo_control_0/x_servo/pw[17]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[17]_net_1 ), .C(
        \servo_control_0/x_servo/ACT_LT4_E[5] ), .Y(
        \servo_control_0/x_servo/ACT_LT4_E[6] ));
    AO1A \servo_control_0/x_servo/time_count_RNIJT4A6[16]  (.A(
        \servo_control_0/x_servo/time_count[16]_net_1 ), .B(
        \servo_control_0/x_servo/un1_time_countlt16 ), .C(
        \servo_control_0/x_servo/un1_time_countlto20_2 ), .Y(
        \servo_control_0/x_servo/un1_time_count ));
    NOR3C \servo_control_0/un3_y_down_morelt8  (.A(
        \servo_control_0.un3_y_down_morelt8_3_0 ), .B(
        \servo_control_0.un3_y_down_morelt8_3_1 ), .C(
        \CoreAPB3_0_APBmslave0_PWDATA[8] ), .Y(
        \servo_control_0/un3_y_down_morelto8_net_1 ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_RNI12F6_0[1]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[1]_net_1 )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[0]_net_1 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        );
    AOI1A \servo_control_0/y_servo/next_pw_RNO[10]  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[10] ), .B(
        \servo_control_0/set_y ), .C(\servo_control_0/y_servo/N_22 ), 
        .Y(\servo_control_0/y_servo/N_12 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNO[21]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count_n21_tz ), .Y(
        \Dsensor_0/dist1/next_distance_count_n21 ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[7]  (.D(
        \Dsensor_0/dist1/next_distance_count_n7 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[7]_net_1 ));
    DFN1E0 \servo_control_0/x_servo/next_pw[31]  (.D(
        \servo_control_0/x_servo/next_pw_4[31] ), .CLK(FAB_CLK), .E(
        \servo_control_0/x_servo/next_pw_4_sqmuxa ), .Q(
        \servo_control_0/x_servo/next_pw[31]_net_1 ));
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
    DFN1 \Dsensor_0/PRDATA[25]  (.D(\Dsensor_0/PRDATA_RNO[25]_net_1 ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave2_PRDATA[25] ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[1]  (.D(
        \Dsensor_0/dist1/next_distance_count_n1 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[1]_net_1 ));
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
    OA1A \servo_control_0/x_servo/un1_pw_0_I_62  (.A(
        \servo_control_0/x_servo/N_36 ), .B(
        \servo_control_0/x_servo/N_38_0 ), .C(
        \servo_control_0/x_servo/N_37 ), .Y(
        \servo_control_0/x_servo/N_41 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[11]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_c1 ), 
        .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_17_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_185 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[15]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[15] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_130 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_54  (.PIN4(N_48), .PIN5(
        N_46), .PIN6(N_50), .PIN1(\CoreAPB3_0_APBmslave0_PWDATA[19] ), 
        .PIN2(\CoreAPB3_0_APBmslave0_PWDATA[20] ), .PIN3(
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
    OR2A \servo_control_0/y_servo/un1_pw_0_I_96  (.A(
        \servo_control_0/y_servo/time_count[11]_net_1 ), .B(
        \servo_control_0/y_servo/pw[11]_net_1 ), .Y(
        \servo_control_0/y_servo/N_22_1 ));
    OR2 \servo_control_0/un3_y_down_morelt31_1  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[18] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[19] ), .Y(
        \servo_control_0.un3_y_down_morelto31_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[11]  (.A(
        \Dsensor_0/distance_count[11] ), .B(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9_0 ), .Y(
        \Dsensor_0/dist1/N_288 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_74  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), 
        .PIN5INT(\ants_master_MSS_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), 
        .PIN6INT(), .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), 
        .PIN3INT(GLMUXINT_GND));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[12]  (.D(
        \Dsensor_0/dist1/next_distance_count_n12 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[18]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[18] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[18] ));
    NOR2A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_0[10]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[2] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_114 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[17]  (.A(
        \servo_control_0/x_servo/next_pw[17]_net_1 ), .B(
        \servo_control_0/x_servo/pw[17]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .Y(
        \servo_control_0/x_servo/N_251 ));
    NOR2B \servo_control_0/x_servo/pw_RNO[24]  (.A(
        \servo_control_0/x_servo/N_258 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[24]_net_1 ));
    OR2A \servo_control_0/x_servo/un1_pw_0_I_96  (.A(
        \servo_control_0/x_servo/time_count[11]_net_1 ), .B(
        \servo_control_0/x_servo/pw[11]_net_1 ), .Y(
        \servo_control_0/x_servo/N_22_1 ));
    NOR2B \servo_control_0/x_servo/time_count_RNO[14]  (.A(
        \servo_control_0/x_servo/pw_0_sqmuxa ), .B(
        \servo_control_0/x_servo/time_count_n14_tz ), .Y(
        \servo_control_0/x_servo/time_count_n14 ));
    AO1 \servo_control_0/y_servo/un1_pw_0_I_138  (.A(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[1] ), 
        .B(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[2] ), 
        .C(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[0] ), 
        .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_0[2] ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[21]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[21] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[21] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[26]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[26] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_163 ));
    NOR3B \servo_control_0/x_servo/un1_pw_0_I_20  (.A(
        \servo_control_0/x_servo/DWACT_BL_ANDTREE_0_DWACT_BL_ANDTREE_0_E[0] )
        , .B(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[3] ), 
        .C(\servo_control_0/x_servo/pw[31]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_COMP0_E[1] ));
    NOR2A 
        \n64_magic_box_0/n64_serial_interface_0/read_module/working_RNIGJ07  
        (.A(\n64_magic_box_0/n64_serial_interface_0/read_module_begin )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module_active ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/read_module/index5 )
        );
    DFN1E0 \Dsensor_0/dist1/next_distance_count[6]  (.D(
        \Dsensor_0/dist1/next_distance_count_n6 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i ), .Q(
        \Dsensor_0/dist1/next_distance_count[6]_net_1 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNIIO0M7[14]  (.A(
        \Dsensor_0/dist1/clk_count[14]_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_c13 ), .C(
        \Dsensor_0/dist1/clk_m6_0_a2_7 ), .Y(
        \Dsensor_0/dist1/clk_N_13_mux ));
    DFN1E0 \Dsensor_0/dist1/next_distance_count[22]  (.D(
        \Dsensor_0/dist1/next_distance_count_n22 ), .CLK(FAB_CLK), .E(
        \Dsensor_0/dist1/next_distance_counte_i_0 ), .Q(
        \Dsensor_0/dist1/next_distance_count[22]_net_1 ));
    XOR2 \n64_magic_box_0/n64_serial_interface_0/long_count_2_I_14  (
        .A(\n64_magic_box_0/n64_serial_interface_0/N_13_0 ), .B(
        \n64_magic_box_0/n64_serial_interface_0/long_count[5]_net_1 ), 
        .Y(\n64_magic_box_0/n64_serial_interface_0/long_count_2[5] ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNIE5G6[21]  (.A(
        \Dsensor_0/dist1/next_distance_count[24]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[21]_net_1 ), .C(
        \Dsensor_0/dist1/next_m4_0_a2_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_11_5 ));
    DFN1 \servo_control_0/y_servo/time_count[10]  (.D(
        \servo_control_0/y_servo/time_count_n10 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[10]_net_1 ));
    DFN1 \servo_control_0/x_servo/pw[30]  (.D(
        \servo_control_0/x_servo/pw_RNO[30]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[30]_net_1 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[17]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[3] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[9] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_191 ));
    DFN1 \servo_control_0/x_servo/pw[14]  (.D(
        \servo_control_0/x_servo/pw_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[14]_net_1 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[27]  (.A(
        \servo_control_0/y_servo/next_pw[27]_net_1 ), .B(
        \servo_control_0/y_servo/pw[27]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_1 ), .Y(
        \servo_control_0/y_servo/N_261 ));
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
    AND2 \servo_control_0/y_servo/un1_pw_0_I_115  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1] ), 
        .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0] ), 
        .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[1] ));
    DFN1 \servo_control_0/x_servo/time_count[18]  (.D(
        \servo_control_0/x_servo/time_count_n18 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[18]_net_1 ));
    OR2 \servo_control_0/un3_y_down_morelt16  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[15] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[16] ), .Y(
        \servo_control_0/un3_y_down_morelto16 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[24]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[9] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[8] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_198 ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[3]  (.A(
        \servo_control_0/x_servo/next_pw[3]_net_1 ), .B(
        \servo_control_0/x_servo/pw[3]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_237 ));
    NOR2B \Dsensor_0/dist1/next_distance_count_RNIJS53[11]  (.A(
        \Dsensor_0/dist1/next_distance_count[11]_net_1 ), .B(
        \Dsensor_0/dist1/next_distance_count[12]_net_1 ), .Y(
        \Dsensor_0/dist1/next_m6_0_a2_17_2 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNIGT554[11]  (.A(
        \Dsensor_0/dist1/clk_count_c10 ), .B(
        \Dsensor_0/dist1/clk_count[11]_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_c11 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[9]  (.A(
        \Dsensor_0/dist1/N_286 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[9]_net_1 ));
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
    MX2 \servo_control_0/x_servo/pw_RNO_0[8]  (.A(
        \servo_control_0/x_servo/next_pw[8]_net_1 ), .B(
        \servo_control_0/x_servo/pw[8]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_242 ));
    MSS_IF \ants_master_MSS_0/MSS_ADLIB_INST/U_10  (.PIN4(GLMUXINT_GND)
        , .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/VRONINT_NET ), .PIN5INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/RXEVINT_NET ), .PIN6INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/CALIBININT_NET ), .PIN1INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1RTSnINT_NET ), .PIN2INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), .PIN3INT(
        \ants_master_MSS_0/MSS_ADLIB_INST/TXEVINT_NET ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_109  (.A(
        \servo_control_0/x_servo/pw[6]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[6]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[1] ));
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
        \n64_magic_box_0/n64_serial_interface_0_button_data_rev[29] ), 
        .CLK(FAB_CLK), .Q(\CoreAPB3_0_APBmslave0_PRDATA[29] ));
    NOR3A \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5  (
        .A(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_2_net_1 )
        , .B(\servo_control_0.un3_y_down_morelto31_4 ), .C(
        \servo_control_0.un3_y_down_morelto31_5 ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/polling_enable6_30_5_net_1 )
        );
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data[19]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/data_bit ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_193 ), 
        .Q(
        \n64_magic_box_0/n64_serial_interface_0/button_data_raw[19] ));
    OR3B \Dsensor_0/PRDATA_RNO[1]  (.A(
        \Dsensor_0/valid_read_5_0_0_net_1 ), .B(
        \Dsensor_0/valid_read_6_0_net_1 ), .C(
        \Dsensor_0/distance_count[1] ), .Y(
        \Dsensor_0/PRDATA_RNO[1]_net_1 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO[8]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_n8_tz ), .Y(
        \Dsensor_0/dist1/clk_count_n8 ));
    NOR3C \Dsensor_0/dist1/clk_count_RNI85SU4[31]  (.A(
        \Dsensor_0/dist1/un1_clk_count_1_17 ), .B(
        \Dsensor_0/dist1/un1_clk_count_1_16 ), .C(
        \Dsensor_0/dist1/un1_clk_count_1_25 ), .Y(
        \Dsensor_0/dist1/un1_clk_count_1_28 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[3]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[3] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[3] ));
    DFN1 \servo_control_0/x_servo/pw[31]  (.D(
        \servo_control_0/x_servo/pw_RNO[31]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[31]_net_1 ));
    DFN1 \Dsensor_0/dist1/distance_count[14]  (.D(
        \Dsensor_0/dist1/distance_count_RNO[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(\Dsensor_0/distance_count[14] ));
    NOR2B \servo_control_0/x_servo/pw_RNO[26]  (.A(
        \servo_control_0/x_servo/N_260 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_RNO[26]_net_1 ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_a5_1[16]  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR_0[8] ), .C(
        \CoreAPB3_0_APBmslave0_PRDATA[16] ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/N_133 ));
    DFN1 \n64_magic_box_0/n64_serial_interface_0/long_count[16]  (.D(
        \n64_magic_box_0/n64_serial_interface_0/long_count_3[16] ), 
        .CLK(FAB_CLK), .Q(
        \n64_magic_box_0/n64_serial_interface_0/long_count[16]_net_1 ));
    MX2 \Dsensor_0/dist1/distance_count_RNO_0[30]  (.A(
        \Dsensor_0/distance_count[30] ), .B(
        \Dsensor_0/dist1/next_distance_count[30]_net_1 ), .S(
        \Dsensor_0/dist1/next_distance_count9 ), .Y(
        \Dsensor_0/dist1/N_307 ));
    NOR3C \Dsensor_0/dist1/next_distance_count_RNIGK7O4[14]  (.A(
        \Dsensor_0/dist1/next_m6_0_a2_17_6 ), .B(
        \Dsensor_0/dist1/next_m6_0_a2_17_5 ), .C(
        \Dsensor_0/dist1/next_N_13_mux ), .Y(
        \Dsensor_0/dist1/next_N_13_mux_0 ));
    NOR2B \Dsensor_0/dist1/clk_count_RNO[10]  (.A(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_net_1 ), .B(
        \Dsensor_0/dist1/clk_count_n10_tz ), .Y(
        \Dsensor_0/dist1/clk_count_n10 ));
    IOPAD_A_IN \ants_master_MSS_0/MSS_ACE_0_VAREF0  (.PAD(VAREF0), .Y(
        \ants_master_MSS_0/MSS_ACE_0_VAREF0_Y ));
    NOR2B \servo_control_0/set_y_0_a2  (.A(\servo_control_0/N_68 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[6] ), .Y(\servo_control_0/N_71 ));
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
        \n64_magic_box_0.n64_apb_interface_0.write ), .Y(
        \n64_magic_box_0/n64_apb_interface_0/N_75 ));
    NOR2B \Dsensor_0/dist1/distance_count_RNO[14]  (.A(
        \Dsensor_0/dist1/N_291 ), .B(ants_master_MSS_0_M2F_RESET_N), 
        .Y(\Dsensor_0/dist1/distance_count_RNO[14]_net_1 ));
    AOI1A \servo_control_0/y_servo/un1_pw_0_I_88  (.A(
        \servo_control_0/y_servo/ACT_LT4_E[0] ), .B(
        \servo_control_0/y_servo/ACT_LT4_E[1] ), .C(
        \servo_control_0/y_servo/ACT_LT4_E[2] ), .Y(
        \servo_control_0/y_servo/ACT_LT4_E[3] ));
    AO1A \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[11]  (.A(
        \CoreAPB3_0_APBmslave2_PRDATA[11] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[9] ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/N_114_0 ), .Y(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[11]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[4]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n4 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ), 
        .Q(
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
    AND3 \servo_control_0/y_servo/un1_pw_0_I_77  (.A(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[0] ), .B(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[1] ), .C(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_E_1[2] ), .Y(
        \servo_control_0/y_servo/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E_1[0] )
        );
    OA1B \servo_control_0/x_servo/next_pw_RNO[15]  (.A(
        \servo_control_0/set_x_reverse ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[15] ), .C(
        \servo_control_0/x_servo/N_23 ), .Y(
        \servo_control_0/x_servo/N_8 ));
    NOR2 \servo_control_0/un1_read_lower_stop_1_i_a2_3  (.A(
        \CoreAPB3_0_APBmslave0_PADDR[0] ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[5] ), .Y(
        \servo_control_0/un1_read_lower_stop_1_i_a2_3_net_1 ));
    XA1 \servo_control_0/x_servo/time_count_RNO[10]  (.A(
        \servo_control_0/x_servo/time_count_c9 ), .B(
        \servo_control_0/x_servo/time_count[10]_net_1 ), .C(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/time_count_n10 ));
    MX2 \servo_control_0/y_servo/pw_RNO_0[9]  (.A(
        \servo_control_0/y_servo/next_pw[9]_net_1 ), .B(
        \servo_control_0/y_servo/pw[9]_net_1 ), .S(
        \servo_control_0/y_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/y_servo/N_243 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_108  (.A(
        \servo_control_0/x_servo/pw[5]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[5]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E[0] ));
    IOPAD_BI \fab_pin_pad/U0/U0  (.D(\fab_pin_pad/U0/NET1 ), .E(
        \fab_pin_pad/U0/NET2 ), .Y(\fab_pin_pad/U0/NET3 ), .PAD(
        fab_pin));
    DFN1 \servo_control_0/y_servo/time_count[9]  (.D(
        \servo_control_0/y_servo/time_count_n9 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/y_servo/time_count[9]_net_1 ));
    DFN1 \servo_control_0/x_servo/pw[24]  (.D(
        \servo_control_0/x_servo/pw_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/pw[24]_net_1 ));
    DFN1E1 
        \n64_magic_box_0/n64_serial_interface_0/read_module/index[5]  
        (.D(
        \n64_magic_box_0/n64_serial_interface_0/read_module/index_n5 ), 
        .CLK(FAB_CLK), .E(
        \n64_magic_box_0/n64_serial_interface_0/read_module/indexe ), 
        .Q(
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
    OA1 \servo_control_0/y_servo/un1_pw_0_I_137  (.A(
        \servo_control_0/y_servo/N_11 ), .B(
        \servo_control_0/y_servo/N_10 ), .C(
        \servo_control_0/y_servo/N_9 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E_1[2] ));
    DFN1 \servo_control_0/x_servo/time_count[15]  (.D(
        \servo_control_0/x_servo/time_count_n15 ), .CLK(FAB_CLK), .Q(
        \servo_control_0/x_servo/time_count[15]_net_1 ));
    OR2 \servo_control_0/un3_y_down_morelt10  (.A(
        \CoreAPB3_0_APBmslave0_PWDATA[9] ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[10] ), .Y(
        \servo_control_0/un3_y_down_morelto10 ));
    NOR3 \servo_control_0/y_servo/un1_pw_0_I_45  (.A(
        \servo_control_0/y_servo/pw[25]_net_1 ), .B(
        \servo_control_0/y_servo/pw[26]_net_1 ), .C(
        \servo_control_0/y_servo/pw[24]_net_1 ), .Y(
        \servo_control_0/y_servo/DWACT_CMPLE_PO2_DWACT_COMP0_E[1] ));
    NOR2B \servo_control_0/y_servo/pw_RNO[23]  (.A(
        \servo_control_0/y_servo/N_257 ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/y_servo/pw_RNO_0[23]_net_1 ));
    OR3 \servo_control_0/set_x_neutral_or_stop_0_o4  (.A(
        \servo_control_0/un3_y_down_morelt31_net_1 ), .B(
        \CoreAPB3_0_APBmslave0_PADDR[3] ), .C(
        \servo_control_0/un3_y_down_morelto31 ), .Y(
        \servo_control_0/N_73 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[29]  (.A(
        \servo_control_0/set_y ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[29] ), .C(
        \servo_control_0/y_servo/N_22 ), .Y(
        \servo_control_0/y_servo/next_pw_4[29] ));
    NOR2A \Dsensor_0/dist1/next_distance_count_RNO[0]  (.A(
        \Dsensor_0/dist1/N_146_i_0 ), .B(
        \Dsensor_0/dist1/next_distance_count[0]_net_1 ), .Y(
        \Dsensor_0/dist1/N_373 ));
    NOR3B \servo_control_0/y_servo/next_pw_RNO[1]  (.A(
        \servo_control_0/set_y_0 ), .B(
        \CoreAPB3_0_APBmslave0_PWDATA[1] ), .C(
        \servo_control_0/y_servo/N_22_0 ), .Y(
        \servo_control_0/y_servo/next_pw_4[1] ));
    NOR3 \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i[15]  (.A(
        \CoreAPB3_0/u_mux_p_to_b3/N_71_0 ), .B(
        \CoreAPB3_0/u_mux_p_to_b3/N_130 ), .C(
        \CoreAPB3_0/u_mux_p_to_b3/PRDATA_0_iv_i_0[15]_net_1 ), .Y(N_38)
        );
    OR2A \servo_control_0/x_servo/un1_pw_0_I_119  (.A(
        \servo_control_0/x_servo/time_count[9]_net_1 ), .B(
        \servo_control_0/x_servo/pw[9]_net_1 ), .Y(
        \servo_control_0/x_servo/N_15 ));
    NOR3C 
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_RNO[30]  
        (.A(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_2[31] )
        , .B(
        \n64_magic_box_0/n64_serial_interface_0/read_module/un1_con_data_1[6] )
        , .C(
        \n64_magic_box_0/n64_serial_interface_0/read_module/con_data_43_e_0 )
        , .Y(
        \n64_magic_box_0/n64_serial_interface_0/read_module/N_204 ));
    NOR2B \servo_control_0/x_servo/time_count_RNIEJ3E6_0[16]  (.A(
        \servo_control_0/x_servo/un1_time_count ), .B(
        ants_master_MSS_0_M2F_RESET_N), .Y(
        \servo_control_0/x_servo/pw_0_sqmuxa ));
    MX2 \servo_control_0/x_servo/pw_RNO_0[7]  (.A(
        \servo_control_0/x_servo/next_pw[7]_net_1 ), .B(
        \servo_control_0/x_servo/pw[7]_net_1 ), .S(
        \servo_control_0/x_servo/pw_0_sqmuxa_0 ), .Y(
        \servo_control_0/x_servo/N_241 ));
    DFN1 \Dsensor_0/dist1/clk_count[6]  (.D(
        \Dsensor_0/dist1/clk_count_n6 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[6]_net_1 ));
    CLKSRC \ants_master_MSS_0/MSS_ADLIB_INST_RNIRLU3_0/U_CLKSRC  (.A(
        \ants_master_MSS_0/MSS_ADLIB_INST_MSSPADDR[9] ), .Y(
        \CoreAPB3_0_APBmslave0_PADDR[9] ));
    DFN1 \Dsensor_0/dist1/clk_count[26]  (.D(
        \Dsensor_0/dist1/clk_count_n26 ), .CLK(FAB_CLK), .Q(
        \Dsensor_0/dist1/clk_count[26]_net_1 ));
    XNOR2 \servo_control_0/x_servo/un1_pw_0_I_82  (.A(
        \servo_control_0/x_servo/pw[15]_net_1 ), .B(
        \servo_control_0/x_servo/time_count[15]_net_1 ), .Y(
        \servo_control_0/x_servo/DWACT_BL_EQUAL_0_E_0[0] ));
    XA1 \Dsensor_0/dist1/clk_count_RNO[18]  (.A(
        \Dsensor_0/dist1/clk_count_c17 ), .B(
        \Dsensor_0/dist1/clk_count[18]_net_1 ), .C(
        \Dsensor_0/dist1/next_distance_count_0_sqmuxa_0_net_1 ), .Y(
        \Dsensor_0/dist1/clk_count_n18 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
