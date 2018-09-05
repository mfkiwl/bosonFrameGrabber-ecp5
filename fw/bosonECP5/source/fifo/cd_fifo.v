/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.2.115 */
/* Module Version: 5.1 */
/* C:\lscc\diamond\3.10_x64\ispfpga\bin\nt64\scuba.exe -w -n cd_fifo -lang verilog -synth synplify -bus_exp 7 -bb -arch sa5p00 -type ebfifo -sync_mode -depth 128 -width 32 -no_enable -pe -1 -pf -1 -sync_reset -fill -fdc C:/Users/gregd/Documents/git/lattice_diamond/blk_ram_test/blk_ram/cd_fifo/cd_fifo.fdc  */
/* Sat Sep 01 20:04:41 2018 */


`timescale 1 ns / 1 ps
module cd_fifo (Data, Clock, WrEn, RdEn, Reset, Q, WCNT, Empty, Full)/* synthesis NGD_DRC_MASK=1 */;
    input wire [31:0] Data;
    input wire Clock;
    input wire WrEn;
    input wire RdEn;
    input wire Reset;
    output wire [31:0] Q;
    output wire [7:0] WCNT;
    output wire Empty;
    output wire Full;

    wire invout_1;
    wire invout_0;
    wire rden_i_inv;
    wire fcnt_en;
    wire empty_i;
    wire empty_d;
    wire full_i;
    wire full_d;
    wire ifcount_0;
    wire ifcount_1;
    wire bdcnt_bctr_ci;
    wire ifcount_2;
    wire ifcount_3;
    wire co0;
    wire ifcount_4;
    wire ifcount_5;
    wire co1;
    wire ifcount_6;
    wire ifcount_7;
    wire co3;
    wire cnt_con;
    wire co2;
    wire cmp_ci;
    wire rden_i;
    wire co0_1;
    wire co1_1;
    wire co2_1;
    wire cmp_le_1;
    wire cmp_le_1_c;
    wire cmp_ci_1;
    wire fcount_0;
    wire fcount_1;
    wire co0_2;
    wire fcount_2;
    wire fcount_3;
    wire co1_2;
    wire fcount_4;
    wire fcount_5;
    wire co2_2;
    wire wren_i;
    wire wren_i_inv;
    wire fcount_6;
    wire fcount_7;
    wire cmp_ge_d1;
    wire cmp_ge_d1_c;
    wire iwcount_0;
    wire iwcount_1;
    wire w_ctr_ci;
    wire wcount_0;
    wire wcount_1;
    wire iwcount_2;
    wire iwcount_3;
    wire co0_3;
    wire wcount_2;
    wire wcount_3;
    wire iwcount_4;
    wire iwcount_5;
    wire co1_3;
    wire wcount_4;
    wire wcount_5;
    wire iwcount_6;
    wire iwcount_7;
    wire co3_1;
    wire co2_3;
    wire wcount_6;
    wire wcount_7;
    wire ircount_0;
    wire ircount_1;
    wire r_ctr_ci;
    wire rcount_0;
    wire rcount_1;
    wire ircount_2;
    wire ircount_3;
    wire co0_4;
    wire rcount_2;
    wire rcount_3;
    wire ircount_4;
    wire ircount_5;
    wire co1_4;
    wire rcount_4;
    wire rcount_5;
    wire ircount_6;
    wire ircount_7;
    wire co3_2;
    wire scuba_vhi;
    wire scuba_vlo;
    wire co2_4;
    wire rcount_6;
    wire rcount_7;

    AND2 AND2_t3 (.A(WrEn), .B(invout_1), .Z(wren_i));

    INV INV_3 (.A(full_i), .Z(invout_1));

    AND2 AND2_t2 (.A(RdEn), .B(invout_0), .Z(rden_i));

    INV INV_2 (.A(empty_i), .Z(invout_0));

    AND2 AND2_t1 (.A(wren_i), .B(rden_i_inv), .Z(cnt_con));

    XOR2 XOR2_t0 (.A(wren_i), .B(rden_i), .Z(fcnt_en));

    INV INV_1 (.A(rden_i), .Z(rden_i_inv));

    INV INV_0 (.A(wren_i), .Z(wren_i_inv));

    defparam LUT4_1.initval =  16'h3232 ;
    ROM16X1A LUT4_1 (.AD3(scuba_vlo), .AD2(cmp_le_1), .AD1(wren_i), .AD0(empty_i), 
        .DO0(empty_d));

    defparam LUT4_0.initval =  16'h3232 ;
    ROM16X1A LUT4_0 (.AD3(scuba_vlo), .AD2(cmp_ge_d1), .AD1(rden_i), .AD0(full_i), 
        .DO0(full_d));

    defparam pdp_ram_0_0_0.INIT_DATA = "STATIC" ;
    defparam pdp_ram_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pdp_ram_0_0_0.CSDECODE_R = "0b000" ;
    defparam pdp_ram_0_0_0.CSDECODE_W = "0b001" ;
    defparam pdp_ram_0_0_0.GSR = "ENABLED" ;
    defparam pdp_ram_0_0_0.RESETMODE = "SYNC" ;
    defparam pdp_ram_0_0_0.REGMODE = "NOREG" ;
    defparam pdp_ram_0_0_0.DATA_WIDTH_R = 36 ;
    defparam pdp_ram_0_0_0.DATA_WIDTH_W = 36 ;
    PDPW16KD pdp_ram_0_0_0 (.DI35(scuba_vlo), .DI34(scuba_vlo), .DI33(scuba_vlo), 
        .DI32(scuba_vlo), .DI31(Data[31]), .DI30(Data[30]), .DI29(Data[29]), 
        .DI28(Data[28]), .DI27(Data[27]), .DI26(Data[26]), .DI25(Data[25]), 
        .DI24(Data[24]), .DI23(Data[23]), .DI22(Data[22]), .DI21(Data[21]), 
        .DI20(Data[20]), .DI19(Data[19]), .DI18(Data[18]), .DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(scuba_vlo), .ADW6(wcount_6), .ADW5(wcount_5), .ADW4(wcount_4), 
        .ADW3(wcount_3), .ADW2(wcount_2), .ADW1(wcount_1), .ADW0(wcount_0), 
        .BE3(scuba_vhi), .BE2(scuba_vhi), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(wren_i), .CLKW(Clock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(scuba_vhi), .ADR13(scuba_vlo), .ADR12(scuba_vlo), .ADR11(rcount_6), 
        .ADR10(rcount_5), .ADR9(rcount_4), .ADR8(rcount_3), .ADR7(rcount_2), 
        .ADR6(rcount_1), .ADR5(rcount_0), .ADR4(scuba_vlo), .ADR3(scuba_vlo), 
        .ADR2(scuba_vlo), .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(rden_i), 
        .OCER(rden_i), .CLKR(Clock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), 
        .CSR0(scuba_vlo), .RST(Reset), .DO35(Q[17]), .DO34(Q[16]), .DO33(Q[15]), 
        .DO32(Q[14]), .DO31(Q[13]), .DO30(Q[12]), .DO29(Q[11]), .DO28(Q[10]), 
        .DO27(Q[9]), .DO26(Q[8]), .DO25(Q[7]), .DO24(Q[6]), .DO23(Q[5]), 
        .DO22(Q[4]), .DO21(Q[3]), .DO20(Q[2]), .DO19(Q[1]), .DO18(Q[0]), 
        .DO17(), .DO16(), .DO15(), .DO14(), .DO13(Q[31]), .DO12(Q[30]), 
        .DO11(Q[29]), .DO10(Q[28]), .DO9(Q[27]), .DO8(Q[26]), .DO7(Q[25]), 
        .DO6(Q[24]), .DO5(Q[23]), .DO4(Q[22]), .DO3(Q[21]), .DO2(Q[20]), 
        .DO1(Q[19]), .DO0(Q[18]))
             /* synthesis MEM_LPC_FILE="cd_fifo.lpc" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_25 (.D(ifcount_0), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_0))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_24 (.D(ifcount_1), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_23 (.D(ifcount_2), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_22 (.D(ifcount_3), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_3))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_21 (.D(ifcount_4), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_4))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_20 (.D(ifcount_5), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_5))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_19 (.D(ifcount_6), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_6))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_18 (.D(ifcount_7), .SP(fcnt_en), .CK(Clock), .CD(Reset), 
        .Q(fcount_7))
             /* synthesis GSR="ENABLED" */;

    FD1S3BX FF_17 (.D(empty_d), .CK(Clock), .PD(Reset), .Q(empty_i))
             /* synthesis GSR="ENABLED" */;

    FD1S3DX FF_16 (.D(full_d), .CK(Clock), .CD(Reset), .Q(full_i))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_15 (.D(iwcount_0), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_0))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_14 (.D(iwcount_1), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_13 (.D(iwcount_2), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_12 (.D(iwcount_3), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_3))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_11 (.D(iwcount_4), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_4))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_10 (.D(iwcount_5), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_5))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_9 (.D(iwcount_6), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_6))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_8 (.D(iwcount_7), .SP(wren_i), .CK(Clock), .CD(Reset), .Q(wcount_7))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_7 (.D(ircount_0), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_0))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_6 (.D(ircount_1), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_5 (.D(ircount_2), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_4 (.D(ircount_3), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_3))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_3 (.D(ircount_4), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_4))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(ircount_5), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_5))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(ircount_6), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_6))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_0 (.D(ircount_7), .SP(rden_i), .CK(Clock), .CD(Reset), .Q(rcount_7))
             /* synthesis GSR="ENABLED" */;

    defparam bdcnt_bctr_cia.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_cia.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_cia.INIT1 =  16'h66AA ;
    defparam bdcnt_bctr_cia.INIT0 =  16'h66AA ;
    CCU2C bdcnt_bctr_cia (.A0(scuba_vlo), .A1(cnt_con), .B0(scuba_vlo), 
        .B1(cnt_con), .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(bdcnt_bctr_ci));

    defparam bdcnt_bctr_0.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_0.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_0.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_0.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_0 (.A0(fcount_0), .A1(fcount_1), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(bdcnt_bctr_ci), .S0(ifcount_0), .S1(ifcount_1), .COUT(co0));

    defparam bdcnt_bctr_1.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_1.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_1.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_1.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_1 (.A0(fcount_2), .A1(fcount_3), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0), .S0(ifcount_2), .S1(ifcount_3), .COUT(co1));

    defparam bdcnt_bctr_2.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_2.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_2.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_2.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_2 (.A0(fcount_4), .A1(fcount_5), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1), .S0(ifcount_4), .S1(ifcount_5), .COUT(co2));

    defparam bdcnt_bctr_3.INJECT1_1 = "NO" ;
    defparam bdcnt_bctr_3.INJECT1_0 = "NO" ;
    defparam bdcnt_bctr_3.INIT1 =  16'h99AA ;
    defparam bdcnt_bctr_3.INIT0 =  16'h99AA ;
    CCU2C bdcnt_bctr_3 (.A0(fcount_6), .A1(fcount_7), .B0(cnt_con), .B1(cnt_con), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2), .S0(ifcount_6), .S1(ifcount_7), .COUT(co3));

    defparam e_cmp_ci_a.INJECT1_1 = "NO" ;
    defparam e_cmp_ci_a.INJECT1_0 = "NO" ;
    defparam e_cmp_ci_a.INIT1 =  16'h66AA ;
    defparam e_cmp_ci_a.INIT0 =  16'h66AA ;
    CCU2C e_cmp_ci_a (.A0(scuba_vhi), .A1(scuba_vhi), .B0(scuba_vhi), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(cmp_ci));

    defparam e_cmp_0.INJECT1_1 = "NO" ;
    defparam e_cmp_0.INJECT1_0 = "NO" ;
    defparam e_cmp_0.INIT1 =  16'h99AA ;
    defparam e_cmp_0.INIT0 =  16'h99AA ;
    CCU2C e_cmp_0 (.A0(rden_i), .A1(scuba_vlo), .B0(fcount_0), .B1(fcount_1), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_ci), .S0(), .S1(), .COUT(co0_1));

    defparam e_cmp_1.INJECT1_1 = "NO" ;
    defparam e_cmp_1.INJECT1_0 = "NO" ;
    defparam e_cmp_1.INIT1 =  16'h99AA ;
    defparam e_cmp_1.INIT0 =  16'h99AA ;
    CCU2C e_cmp_1 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(fcount_2), .B1(fcount_3), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_1), .S0(), .S1(), .COUT(co1_1));

    defparam e_cmp_2.INJECT1_1 = "NO" ;
    defparam e_cmp_2.INJECT1_0 = "NO" ;
    defparam e_cmp_2.INIT1 =  16'h99AA ;
    defparam e_cmp_2.INIT0 =  16'h99AA ;
    CCU2C e_cmp_2 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(fcount_4), .B1(fcount_5), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_1), .S0(), .S1(), .COUT(co2_1));

    defparam e_cmp_3.INJECT1_1 = "NO" ;
    defparam e_cmp_3.INJECT1_0 = "NO" ;
    defparam e_cmp_3.INIT1 =  16'h99AA ;
    defparam e_cmp_3.INIT0 =  16'h99AA ;
    CCU2C e_cmp_3 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(fcount_6), .B1(fcount_7), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_1), .S0(), .S1(), .COUT(cmp_le_1_c));

    defparam a0.INJECT1_1 = "NO" ;
    defparam a0.INJECT1_0 = "NO" ;
    defparam a0.INIT1 =  16'h66AA ;
    defparam a0.INIT0 =  16'h66AA ;
    CCU2C a0 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_le_1_c), .S0(cmp_le_1), .S1(), .COUT());

    defparam g_cmp_ci_a.INJECT1_1 = "NO" ;
    defparam g_cmp_ci_a.INJECT1_0 = "NO" ;
    defparam g_cmp_ci_a.INIT1 =  16'h66AA ;
    defparam g_cmp_ci_a.INIT0 =  16'h66AA ;
    CCU2C g_cmp_ci_a (.A0(scuba_vhi), .A1(scuba_vhi), .B0(scuba_vhi), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(cmp_ci_1));

    defparam g_cmp_0.INJECT1_1 = "NO" ;
    defparam g_cmp_0.INJECT1_0 = "NO" ;
    defparam g_cmp_0.INIT1 =  16'h99AA ;
    defparam g_cmp_0.INIT0 =  16'h99AA ;
    CCU2C g_cmp_0 (.A0(fcount_0), .A1(fcount_1), .B0(wren_i), .B1(wren_i), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_ci_1), .S0(), .S1(), .COUT(co0_2));

    defparam g_cmp_1.INJECT1_1 = "NO" ;
    defparam g_cmp_1.INJECT1_0 = "NO" ;
    defparam g_cmp_1.INIT1 =  16'h99AA ;
    defparam g_cmp_1.INIT0 =  16'h99AA ;
    CCU2C g_cmp_1 (.A0(fcount_2), .A1(fcount_3), .B0(wren_i), .B1(wren_i), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_2), .S0(), .S1(), .COUT(co1_2));

    defparam g_cmp_2.INJECT1_1 = "NO" ;
    defparam g_cmp_2.INJECT1_0 = "NO" ;
    defparam g_cmp_2.INIT1 =  16'h99AA ;
    defparam g_cmp_2.INIT0 =  16'h99AA ;
    CCU2C g_cmp_2 (.A0(fcount_4), .A1(fcount_5), .B0(wren_i), .B1(wren_i), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_2), .S0(), .S1(), .COUT(co2_2));

    defparam g_cmp_3.INJECT1_1 = "NO" ;
    defparam g_cmp_3.INJECT1_0 = "NO" ;
    defparam g_cmp_3.INIT1 =  16'h99AA ;
    defparam g_cmp_3.INIT0 =  16'h99AA ;
    CCU2C g_cmp_3 (.A0(fcount_6), .A1(fcount_7), .B0(wren_i), .B1(wren_i_inv), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_2), .S0(), .S1(), .COUT(cmp_ge_d1_c));

    defparam a1.INJECT1_1 = "NO" ;
    defparam a1.INJECT1_0 = "NO" ;
    defparam a1.INIT1 =  16'h66AA ;
    defparam a1.INIT0 =  16'h66AA ;
    CCU2C a1 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(cmp_ge_d1_c), .S0(cmp_ge_d1), .S1(), .COUT());

    defparam w_ctr_cia.INJECT1_1 = "NO" ;
    defparam w_ctr_cia.INJECT1_0 = "NO" ;
    defparam w_ctr_cia.INIT1 =  16'h66AA ;
    defparam w_ctr_cia.INIT0 =  16'h66AA ;
    CCU2C w_ctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(w_ctr_ci));

    defparam w_ctr_0.INJECT1_1 = "NO" ;
    defparam w_ctr_0.INJECT1_0 = "NO" ;
    defparam w_ctr_0.INIT1 =  16'h66AA ;
    defparam w_ctr_0.INIT0 =  16'h66AA ;
    CCU2C w_ctr_0 (.A0(wcount_0), .A1(wcount_1), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(w_ctr_ci), .S0(iwcount_0), .S1(iwcount_1), .COUT(co0_3));

    defparam w_ctr_1.INJECT1_1 = "NO" ;
    defparam w_ctr_1.INJECT1_0 = "NO" ;
    defparam w_ctr_1.INIT1 =  16'h66AA ;
    defparam w_ctr_1.INIT0 =  16'h66AA ;
    CCU2C w_ctr_1 (.A0(wcount_2), .A1(wcount_3), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_3), .S0(iwcount_2), .S1(iwcount_3), .COUT(co1_3));

    defparam w_ctr_2.INJECT1_1 = "NO" ;
    defparam w_ctr_2.INJECT1_0 = "NO" ;
    defparam w_ctr_2.INIT1 =  16'h66AA ;
    defparam w_ctr_2.INIT0 =  16'h66AA ;
    CCU2C w_ctr_2 (.A0(wcount_4), .A1(wcount_5), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_3), .S0(iwcount_4), .S1(iwcount_5), .COUT(co2_3));

    defparam w_ctr_3.INJECT1_1 = "NO" ;
    defparam w_ctr_3.INJECT1_0 = "NO" ;
    defparam w_ctr_3.INIT1 =  16'h66AA ;
    defparam w_ctr_3.INIT0 =  16'h66AA ;
    CCU2C w_ctr_3 (.A0(wcount_6), .A1(wcount_7), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_3), .S0(iwcount_6), .S1(iwcount_7), .COUT(co3_1));

    defparam r_ctr_cia.INJECT1_1 = "NO" ;
    defparam r_ctr_cia.INJECT1_0 = "NO" ;
    defparam r_ctr_cia.INIT1 =  16'h66AA ;
    defparam r_ctr_cia.INIT0 =  16'h66AA ;
    CCU2C r_ctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), .B1(scuba_vhi), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(), .S0(), .S1(), .COUT(r_ctr_ci));

    defparam r_ctr_0.INJECT1_1 = "NO" ;
    defparam r_ctr_0.INJECT1_0 = "NO" ;
    defparam r_ctr_0.INIT1 =  16'h66AA ;
    defparam r_ctr_0.INIT0 =  16'h66AA ;
    CCU2C r_ctr_0 (.A0(rcount_0), .A1(rcount_1), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(r_ctr_ci), .S0(ircount_0), .S1(ircount_1), .COUT(co0_4));

    defparam r_ctr_1.INJECT1_1 = "NO" ;
    defparam r_ctr_1.INJECT1_0 = "NO" ;
    defparam r_ctr_1.INIT1 =  16'h66AA ;
    defparam r_ctr_1.INIT0 =  16'h66AA ;
    CCU2C r_ctr_1 (.A0(rcount_2), .A1(rcount_3), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co0_4), .S0(ircount_2), .S1(ircount_3), .COUT(co1_4));

    defparam r_ctr_2.INJECT1_1 = "NO" ;
    defparam r_ctr_2.INJECT1_0 = "NO" ;
    defparam r_ctr_2.INIT1 =  16'h66AA ;
    defparam r_ctr_2.INIT0 =  16'h66AA ;
    CCU2C r_ctr_2 (.A0(rcount_4), .A1(rcount_5), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co1_4), .S0(ircount_4), .S1(ircount_5), .COUT(co2_4));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam r_ctr_3.INJECT1_1 = "NO" ;
    defparam r_ctr_3.INJECT1_0 = "NO" ;
    defparam r_ctr_3.INIT1 =  16'h66AA ;
    defparam r_ctr_3.INIT0 =  16'h66AA ;
    CCU2C r_ctr_3 (.A0(rcount_6), .A1(rcount_7), .B0(scuba_vlo), .B1(scuba_vlo), 
        .C0(scuba_vhi), .C1(scuba_vhi), .D0(scuba_vhi), .D1(scuba_vhi), 
        .CIN(co2_4), .S0(ircount_6), .S1(ircount_7), .COUT(co3_2));

    assign WCNT[0] = fcount_0;
    assign WCNT[1] = fcount_1;
    assign WCNT[2] = fcount_2;
    assign WCNT[3] = fcount_3;
    assign WCNT[4] = fcount_4;
    assign WCNT[5] = fcount_5;
    assign WCNT[6] = fcount_6;
    assign WCNT[7] = fcount_7;
    assign Empty = empty_i;
    assign Full = full_i;


    // exemplar begin
    // exemplar attribute pdp_ram_0_0_0 MEM_LPC_FILE cd_fifo.lpc
    // exemplar attribute pdp_ram_0_0_0 MEM_INIT_FILE 
    // exemplar attribute FF_25 GSR ENABLED
    // exemplar attribute FF_24 GSR ENABLED
    // exemplar attribute FF_23 GSR ENABLED
    // exemplar attribute FF_22 GSR ENABLED
    // exemplar attribute FF_21 GSR ENABLED
    // exemplar attribute FF_20 GSR ENABLED
    // exemplar attribute FF_19 GSR ENABLED
    // exemplar attribute FF_18 GSR ENABLED
    // exemplar attribute FF_17 GSR ENABLED
    // exemplar attribute FF_16 GSR ENABLED
    // exemplar attribute FF_15 GSR ENABLED
    // exemplar attribute FF_14 GSR ENABLED
    // exemplar attribute FF_13 GSR ENABLED
    // exemplar attribute FF_12 GSR ENABLED
    // exemplar attribute FF_11 GSR ENABLED
    // exemplar attribute FF_10 GSR ENABLED
    // exemplar attribute FF_9 GSR ENABLED
    // exemplar attribute FF_8 GSR ENABLED
    // exemplar attribute FF_7 GSR ENABLED
    // exemplar attribute FF_6 GSR ENABLED
    // exemplar attribute FF_5 GSR ENABLED
    // exemplar attribute FF_4 GSR ENABLED
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule