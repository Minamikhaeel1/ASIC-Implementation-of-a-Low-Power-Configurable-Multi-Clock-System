/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Oct  5 12:51:36 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module fsm_test_1 ( data_valid, par_en, ser_done, clk, rst, ser_en, mux_sel, 
        busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input data_valid, par_en, ser_done, clk, rst, test_si, test_se;
  output ser_en, busy, test_so;
  wire   n6, n7, n8, n9, n10, n4, n5;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n5), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[2]) );
  NAND2BX2M U6 ( .AN(n10), .B(n7), .Y(mux_sel[1]) );
  NOR2X2M U7 ( .A(n6), .B(n5), .Y(n10) );
  INVX2M U8 ( .A(n9), .Y(busy) );
  NAND2BX2M U9 ( .AN(n6), .B(n5), .Y(n7) );
  NOR2X2M U10 ( .A(ser_en), .B(n10), .Y(mux_sel[0]) );
  AOI211X2M U11 ( .A0(n5), .A1(current_state[1]), .B0(ser_en), .C0(mux_sel[1]), 
        .Y(n9) );
  NOR3X2M U12 ( .A(current_state[1]), .B(current_state[2]), .C(n5), .Y(ser_en)
         );
  NAND2BX2M U13 ( .AN(current_state[2]), .B(current_state[1]), .Y(n6) );
  INVX2M U14 ( .A(current_state[0]), .Y(n5) );
  OAI21BX1M U15 ( .A0(current_state[2]), .A1(n8), .B0N(ser_en), .Y(
        next_state[0]) );
  AOI22X1M U16 ( .A0(data_valid), .A1(n9), .B0(current_state[0]), .B1(n4), .Y(
        n8) );
  OAI31X1M U17 ( .A0(n4), .A1(par_en), .A2(n6), .B0(n7), .Y(next_state[2]) );
  OAI21X2M U18 ( .A0(current_state[2]), .A1(n5), .B0(n6), .Y(next_state[1]) );
  INVX2M U19 ( .A(ser_done), .Y(n4) );
endmodule


module ser_test_1 ( P_data, ser_en, clk, rst, ser_done, ser_data, test_si, 
        test_so, test_se );
  input [7:0] P_data;
  input ser_en, clk, rst, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   N12, N13, N15, n16, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n15, n17, n18, n43, n44, n45, n48, n49;
  wire   [7:1] shift_reg;
  wire   [3:0] counter;
  assign test_so = shift_reg[7];

  SDFFRQX2M \shift_reg_reg[6]  ( .D(n41), .SI(shift_reg[5]), .SE(n49), .CK(clk), .RN(rst), .Q(shift_reg[6]) );
  SDFFRQX2M \shift_reg_reg[5]  ( .D(n36), .SI(shift_reg[4]), .SE(n49), .CK(clk), .RN(rst), .Q(shift_reg[5]) );
  SDFFRQX2M \shift_reg_reg[4]  ( .D(n37), .SI(shift_reg[3]), .SE(n49), .CK(clk), .RN(rst), .Q(shift_reg[4]) );
  SDFFRQX2M \shift_reg_reg[3]  ( .D(n38), .SI(shift_reg[2]), .SE(n49), .CK(clk), .RN(rst), .Q(shift_reg[3]) );
  SDFFRQX2M \shift_reg_reg[2]  ( .D(n39), .SI(shift_reg[1]), .SE(n49), .CK(clk), .RN(rst), .Q(shift_reg[2]) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(n40), .SI(ser_data), .SE(n49), .CK(clk), 
        .RN(rst), .Q(shift_reg[1]) );
  SDFFRQX2M \shift_reg_reg[7]  ( .D(n42), .SI(shift_reg[6]), .SE(n49), .CK(clk), .RN(rst), .Q(shift_reg[7]) );
  SDFFRQX2M ser_data_reg ( .D(n34), .SI(n45), .SE(n49), .CK(clk), .RN(rst), 
        .Q(ser_data) );
  SDFFRQX2M \counter_reg[3]  ( .D(N15), .SI(n43), .SE(n49), .CK(clk), .RN(rst), 
        .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n17), .SI(counter[1]), .SE(n49), .CK(clk), 
        .RN(rst), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N13), .SI(counter[0]), .SE(n49), .CK(clk), 
        .RN(rst), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N12), .SI(test_si), .SE(n49), .CK(clk), .RN(
        rst), .Q(counter[0]) );
  SDFFRX1M flag_reg ( .D(n35), .SI(counter[3]), .SE(n49), .CK(clk), .RN(rst), 
        .Q(n45), .QN(n16) );
  NOR2X2M U17 ( .A(n21), .B(n15), .Y(n25) );
  INVX2M U18 ( .A(n15), .Y(n44) );
  NOR2X2M U19 ( .A(n15), .B(n23), .Y(n21) );
  BUFX2M U20 ( .A(ser_en), .Y(n15) );
  OAI21X2M U21 ( .A0(n31), .A1(n43), .B0(n32), .Y(n19) );
  NOR2BX2M U22 ( .AN(n23), .B(n31), .Y(N13) );
  AND3X2M U23 ( .A(n23), .B(n19), .C(n20), .Y(N15) );
  NOR3X2M U24 ( .A(counter[3]), .B(n15), .C(n16), .Y(n23) );
  NAND2X2M U25 ( .A(n23), .B(counter[0]), .Y(N12) );
  OAI2BB1X2M U26 ( .A0N(shift_reg[1]), .A1N(n21), .B0(n29), .Y(n40) );
  AOI22X1M U27 ( .A0(shift_reg[2]), .A1(n25), .B0(P_data[1]), .B1(n15), .Y(n29) );
  OAI2BB1X2M U28 ( .A0N(n21), .A1N(shift_reg[2]), .B0(n28), .Y(n39) );
  AOI22X1M U29 ( .A0(shift_reg[3]), .A1(n25), .B0(P_data[2]), .B1(n15), .Y(n28) );
  OAI2BB1X2M U30 ( .A0N(n21), .A1N(shift_reg[3]), .B0(n27), .Y(n38) );
  AOI22X1M U31 ( .A0(shift_reg[4]), .A1(n25), .B0(P_data[3]), .B1(n15), .Y(n27) );
  OAI2BB1X2M U32 ( .A0N(n21), .A1N(shift_reg[4]), .B0(n26), .Y(n37) );
  AOI22X1M U33 ( .A0(shift_reg[5]), .A1(n25), .B0(P_data[4]), .B1(n15), .Y(n26) );
  OAI2BB1X2M U34 ( .A0N(n21), .A1N(shift_reg[5]), .B0(n24), .Y(n36) );
  AOI22X1M U35 ( .A0(shift_reg[6]), .A1(n25), .B0(P_data[5]), .B1(n15), .Y(n24) );
  OAI2BB1X2M U36 ( .A0N(n21), .A1N(shift_reg[6]), .B0(n30), .Y(n41) );
  AOI22X1M U37 ( .A0(shift_reg[7]), .A1(n25), .B0(P_data[6]), .B1(n15), .Y(n30) );
  INVX2M U38 ( .A(n33), .Y(n17) );
  AOI33X2M U39 ( .A0(counter[1]), .A1(n43), .A2(n18), .B0(n23), .B1(n32), .B2(
        counter[2]), .Y(n33) );
  INVX2M U40 ( .A(N12), .Y(n18) );
  XNOR2X2M U41 ( .A(counter[0]), .B(counter[1]), .Y(n31) );
  XNOR2X2M U42 ( .A(n31), .B(counter[2]), .Y(n20) );
  OAI21X2M U43 ( .A0(counter[3]), .A1(n16), .B0(n44), .Y(n35) );
  NOR3BX2M U44 ( .AN(counter[3]), .B(n19), .C(n20), .Y(ser_done) );
  NAND2X2M U45 ( .A(counter[0]), .B(counter[1]), .Y(n32) );
  OAI2BB1X2M U46 ( .A0N(ser_data), .A1N(n21), .B0(n22), .Y(n34) );
  AOI22X1M U47 ( .A0(shift_reg[1]), .A1(n23), .B0(n15), .B1(P_data[0]), .Y(n22) );
  INVX2M U48 ( .A(counter[2]), .Y(n43) );
  AO22X1M U49 ( .A0(n44), .A1(shift_reg[7]), .B0(P_data[7]), .B1(n15), .Y(n42)
         );
  INVXLM U50 ( .A(test_se), .Y(n48) );
  INVXLM U51 ( .A(n48), .Y(n49) );
endmodule


module parity_test_1 ( data_valid, P_data, par_type, busy, clk, rst, par_bit, 
        test_si, test_so, test_se );
  input [7:0] P_data;
  input data_valid, par_type, busy, clk, rst, test_si, test_se;
  output par_bit, test_so;
  wire   n1, n2, n3, n4, n5, n7, n9, n11, n13, n15, n17, n19, n21;
  wire   [7:0] shift_reg;
  assign test_so = shift_reg[7];

  SDFFRQX2M \shift_reg_reg[5]  ( .D(n17), .SI(shift_reg[4]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(shift_reg[5]) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(n9), .SI(shift_reg[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(shift_reg[1]) );
  SDFFRQX2M \shift_reg_reg[4]  ( .D(n15), .SI(shift_reg[3]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(shift_reg[4]) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(n7), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(shift_reg[0]) );
  SDFFRQX2M \shift_reg_reg[6]  ( .D(n19), .SI(shift_reg[5]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(shift_reg[6]) );
  SDFFRQX2M \shift_reg_reg[2]  ( .D(n11), .SI(shift_reg[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(shift_reg[2]) );
  SDFFRQX2M \shift_reg_reg[7]  ( .D(n21), .SI(shift_reg[6]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(shift_reg[7]) );
  SDFFRQX2M \shift_reg_reg[3]  ( .D(n13), .SI(shift_reg[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(shift_reg[3]) );
  NOR2BX2M U2 ( .AN(data_valid), .B(busy), .Y(n5) );
  AO2B2X2M U3 ( .B0(P_data[0]), .B1(n5), .A0(shift_reg[0]), .A1N(n5), .Y(n7)
         );
  AO2B2X2M U4 ( .B0(P_data[1]), .B1(n5), .A0(shift_reg[1]), .A1N(n5), .Y(n9)
         );
  AO2B2X2M U5 ( .B0(P_data[2]), .B1(n5), .A0(shift_reg[2]), .A1N(n5), .Y(n11)
         );
  AO2B2X2M U6 ( .B0(P_data[3]), .B1(n5), .A0(shift_reg[3]), .A1N(n5), .Y(n13)
         );
  AO2B2X2M U7 ( .B0(P_data[4]), .B1(n5), .A0(shift_reg[4]), .A1N(n5), .Y(n15)
         );
  AO2B2X2M U8 ( .B0(P_data[5]), .B1(n5), .A0(shift_reg[5]), .A1N(n5), .Y(n17)
         );
  AO2B2X2M U9 ( .B0(P_data[6]), .B1(n5), .A0(shift_reg[6]), .A1N(n5), .Y(n19)
         );
  AO2B2X2M U10 ( .B0(P_data[7]), .B1(n5), .A0(shift_reg[7]), .A1N(n5), .Y(n21)
         );
  XOR3XLM U11 ( .A(n1), .B(n2), .C(par_type), .Y(par_bit) );
  XOR3XLM U12 ( .A(shift_reg[5]), .B(shift_reg[4]), .C(n4), .Y(n1) );
  XOR3XLM U13 ( .A(shift_reg[1]), .B(shift_reg[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U14 ( .A(shift_reg[7]), .B(shift_reg[6]), .Y(n4) );
  CLKXOR2X2M U15 ( .A(shift_reg[3]), .B(shift_reg[2]), .Y(n3) );
endmodule


module mux ( mux_sel, ser_data, par_bit, Tx_out );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output Tx_out;
  wire   n2, n3, n1;

  OAI21X4M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(Tx_out) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module top_test_1 ( P_data_t, data_valid_t, par_en_t, par_type_t, clk_t, rst_t, 
        Tx_out_t, busy_t, test_si, test_so, test_se );
  input [7:0] P_data_t;
  input data_valid_t, par_en_t, par_type_t, clk_t, rst_t, test_si, test_se;
  output Tx_out_t, busy_t, test_so;
  wire   ser_done_t, ser_en_t, ser_data_t, par_bit_t, n1, n2, n4, n5;
  wire   [1:0] mux_sel_t;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_t), .Y(n2) );
  fsm_test_1 fsm_inst ( .data_valid(data_valid_t), .par_en(par_en_t), 
        .ser_done(ser_done_t), .clk(clk_t), .rst(n1), .ser_en(ser_en_t), 
        .mux_sel(mux_sel_t), .busy(busy_t), .test_si(test_si), .test_so(n5), 
        .test_se(test_se) );
  ser_test_1 serial_inst ( .P_data(P_data_t), .ser_en(ser_en_t), .clk(clk_t), 
        .rst(n1), .ser_done(ser_done_t), .ser_data(ser_data_t), .test_si(n4), 
        .test_so(test_so), .test_se(test_se) );
  parity_test_1 par_inst ( .data_valid(data_valid_t), .P_data(P_data_t), 
        .par_type(par_type_t), .busy(busy_t), .clk(clk_t), .rst(n1), .par_bit(
        par_bit_t), .test_si(n5), .test_so(n4), .test_se(test_se) );
  mux mux_inst ( .mux_sel(mux_sel_t), .ser_data(ser_data_t), .par_bit(
        par_bit_t), .Tx_out(Tx_out_t) );
endmodule


module fsmr_test_1 ( Rx_in, bit_cnt, par_err, strt_glitch, stp_err, par_en, 
        clk, rst, edge_cnt, prescale, dat_samp_en, enable, deser_en, 
        data_valid, stp_chk_en, strt_chk_en, par_chk_en, test_so, test_se );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input Rx_in, par_err, strt_glitch, stp_err, par_en, clk, rst, test_se;
  output dat_samp_en, enable, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en, test_so;
  wire   N62, N63, N64, N65, N66, N67, N94, N95, N96, N97, N98, N99,
         \sub_114/carry[5] , \sub_114/carry[4] , \sub_114/carry[3] ,
         \r71/carry[4] , \r71/carry[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign N62 = prescale[0];
  assign N94 = prescale[1];
  assign test_so = n46;

  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(edge_cnt[5]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  OAI221X1M U4 ( .A0(current_state[2]), .A1(Rx_in), .B0(current_state[0]), 
        .B1(n45), .C0(n23), .Y(enable) );
  INVX2M U5 ( .A(prescale[2]), .Y(N95) );
  INVX2M U6 ( .A(N94), .Y(N63) );
  BUFX2M U7 ( .A(enable), .Y(dat_samp_en) );
  XNOR2X1M U10 ( .A(prescale[5]), .B(\sub_114/carry[5] ), .Y(N67) );
  OR2X1M U11 ( .A(prescale[4]), .B(\sub_114/carry[4] ), .Y(\sub_114/carry[5] )
         );
  XNOR2X1M U12 ( .A(\sub_114/carry[4] ), .B(prescale[4]), .Y(N66) );
  OR2X1M U13 ( .A(prescale[3]), .B(\sub_114/carry[3] ), .Y(\sub_114/carry[4] )
         );
  XNOR2X1M U14 ( .A(\sub_114/carry[3] ), .B(prescale[3]), .Y(N65) );
  OR2X1M U15 ( .A(prescale[2]), .B(N94), .Y(\sub_114/carry[3] ) );
  XNOR2X1M U16 ( .A(N94), .B(prescale[2]), .Y(N64) );
  AND2X1M U17 ( .A(\r71/carry[4] ), .B(prescale[5]), .Y(N99) );
  CLKXOR2X2M U18 ( .A(prescale[5]), .B(\r71/carry[4] ), .Y(N98) );
  AND2X1M U19 ( .A(\r71/carry[3] ), .B(prescale[4]), .Y(\r71/carry[4] ) );
  CLKXOR2X2M U20 ( .A(prescale[4]), .B(\r71/carry[3] ), .Y(N97) );
  AND2X1M U21 ( .A(prescale[2]), .B(prescale[3]), .Y(\r71/carry[3] ) );
  CLKXOR2X2M U22 ( .A(prescale[3]), .B(prescale[2]), .Y(N96) );
  NOR3X1M U23 ( .A(n2), .B(n3), .C(n4), .Y(stp_chk_en) );
  NOR4BX1M U24 ( .AN(n5), .B(current_state[0]), .C(n3), .D(n2), .Y(par_chk_en)
         );
  NAND4X1M U25 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n3) );
  NOR3X1M U26 ( .A(n10), .B(n14), .C(n15), .Y(n9) );
  CLKXOR2X2M U27 ( .A(edge_cnt[4]), .B(N98), .Y(n15) );
  CLKXOR2X2M U28 ( .A(edge_cnt[1]), .B(N95), .Y(n14) );
  CLKXOR2X2M U29 ( .A(edge_cnt[0]), .B(N94), .Y(n10) );
  XNOR2X1M U30 ( .A(edge_cnt[2]), .B(N96), .Y(n8) );
  XNOR2X1M U31 ( .A(edge_cnt[3]), .B(N97), .Y(n7) );
  XNOR2X1M U32 ( .A(edge_cnt[5]), .B(N99), .Y(n6) );
  OAI21BX1M U33 ( .A0(n16), .A1(n4), .B0N(n17), .Y(next_state[2]) );
  OAI31X1M U34 ( .A0(n18), .A1(par_en), .A2(n2), .B0(n19), .Y(n17) );
  NAND4X1M U35 ( .A(n5), .B(bit_cnt[3]), .C(bit_cnt[1]), .D(n20), .Y(n19) );
  NOR4X1M U36 ( .A(par_err), .B(current_state[0]), .C(bit_cnt[2]), .D(
        bit_cnt[0]), .Y(n20) );
  OAI211X1M U37 ( .A0(n16), .A1(n4), .B0(n21), .C0(n22), .Y(next_state[1]) );
  AOI2B1X1M U38 ( .A1N(n23), .A0(n24), .B0(deser_en), .Y(n22) );
  OAI31X1M U39 ( .A0(n25), .A1(n26), .A2(n27), .B0(n5), .Y(n21) );
  CLKINVX1M U40 ( .A(par_err), .Y(n27) );
  CLKINVX1M U41 ( .A(bit_cnt[1]), .Y(n26) );
  NAND3BX1M U42 ( .AN(bit_cnt[2]), .B(n28), .C(bit_cnt[3]), .Y(n25) );
  NOR2BX1M U43 ( .AN(n29), .B(n30), .Y(n16) );
  OAI2B11X1M U44 ( .A1N(strt_chk_en), .A0(n31), .B0(n32), .C0(n33), .Y(
        next_state[0]) );
  AOI32X1M U45 ( .A0(n34), .A1(n30), .A2(n29), .B0(deser_en), .B1(n2), .Y(n33)
         );
  CLKNAND2X2M U46 ( .A(bit_cnt[3]), .B(n35), .Y(n2) );
  AND4X1M U47 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n29) );
  NOR3X1M U48 ( .A(n40), .B(n41), .C(n42), .Y(n39) );
  CLKXOR2X2M U49 ( .A(edge_cnt[4]), .B(N66), .Y(n42) );
  CLKXOR2X2M U50 ( .A(edge_cnt[1]), .B(N63), .Y(n41) );
  CLKXOR2X2M U51 ( .A(edge_cnt[0]), .B(N62), .Y(n40) );
  XNOR2X1M U52 ( .A(edge_cnt[2]), .B(N64), .Y(n38) );
  XNOR2X1M U53 ( .A(edge_cnt[3]), .B(N65), .Y(n37) );
  XNOR2X1M U54 ( .A(edge_cnt[5]), .B(N67), .Y(n36) );
  CLKINVX1M U55 ( .A(stp_err), .Y(n30) );
  CLKINVX1M U56 ( .A(n4), .Y(n34) );
  NAND3X1M U57 ( .A(current_state[1]), .B(n43), .C(current_state[2]), .Y(n4)
         );
  OR4X1M U58 ( .A(Rx_in), .B(current_state[0]), .C(current_state[1]), .D(
        current_state[2]), .Y(n32) );
  NOR3X1M U59 ( .A(n44), .B(bit_cnt[3]), .C(n24), .Y(n31) );
  NOR3X1M U60 ( .A(strt_glitch), .B(bit_cnt[3]), .C(n44), .Y(n24) );
  CLKINVX1M U61 ( .A(n35), .Y(n44) );
  NOR3X1M U62 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(n28), .Y(n35) );
  CLKINVX1M U63 ( .A(bit_cnt[0]), .Y(n28) );
  NOR2X1M U64 ( .A(n23), .B(current_state[1]), .Y(strt_chk_en) );
  CLKINVX1M U65 ( .A(n18), .Y(deser_en) );
  CLKNAND2X2M U66 ( .A(n5), .B(current_state[0]), .Y(n18) );
  NOR2X1M U67 ( .A(n45), .B(current_state[2]), .Y(n5) );
  NOR3X1M U68 ( .A(n46), .B(n43), .C(n45), .Y(data_valid) );
  CLKINVX1M U69 ( .A(current_state[0]), .Y(n43) );
  CLKNAND2X2M U70 ( .A(current_state[0]), .B(n46), .Y(n23) );
  CLKINVX1M U71 ( .A(current_state[2]), .Y(n46) );
  CLKINVX1M U72 ( .A(current_state[1]), .Y(n45) );
endmodule


module deser_test_1 ( sampled_bit, deser_en, bit_cnt, edge_cnt, prescale, clk, 
        rst, par_en, p_data, test_so, test_se );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  output [7:0] p_data;
  input sampled_bit, deser_en, clk, rst, par_en, test_se;
  output test_so;
  wire   N15, N16, N17, N18, N19, N20, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, \add_24/carry[4] ,
         \add_24/carry[3] , n1, n2, n3, n4, n5, n6, n23, n24, n25, n26, n59,
         n60, n61, n63, n64;
  wire   [7:0] shift_reg;
  assign test_so = shift_reg[7];
  assign N15 = prescale[1];

  SDFFRQX2M \shift_reg_reg[7]  ( .D(n58), .SI(shift_reg[6]), .SE(n64), .CK(clk), .RN(rst), .Q(shift_reg[7]) );
  SDFFRQX2M \shift_reg_reg[6]  ( .D(n57), .SI(shift_reg[5]), .SE(n64), .CK(clk), .RN(rst), .Q(shift_reg[6]) );
  SDFFRQX2M \shift_reg_reg[5]  ( .D(n56), .SI(shift_reg[4]), .SE(n64), .CK(clk), .RN(rst), .Q(shift_reg[5]) );
  SDFFRQX2M \shift_reg_reg[4]  ( .D(n55), .SI(shift_reg[3]), .SE(n64), .CK(clk), .RN(rst), .Q(shift_reg[4]) );
  SDFFRQX2M \shift_reg_reg[3]  ( .D(n54), .SI(shift_reg[2]), .SE(n64), .CK(clk), .RN(rst), .Q(shift_reg[3]) );
  SDFFRQX2M \shift_reg_reg[2]  ( .D(n53), .SI(shift_reg[1]), .SE(n64), .CK(clk), .RN(rst), .Q(shift_reg[2]) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(n52), .SI(shift_reg[0]), .SE(n64), .CK(clk), .RN(rst), .Q(shift_reg[1]) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(n51), .SI(p_data[7]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(shift_reg[0]) );
  SDFFRQX2M \p_data_reg[6]  ( .D(n49), .SI(p_data[5]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[6]) );
  SDFFRQX2M \p_data_reg[1]  ( .D(n44), .SI(p_data[0]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[1]) );
  SDFFRQX2M \p_data_reg[5]  ( .D(n48), .SI(p_data[4]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[5]) );
  SDFFRQX2M \p_data_reg[0]  ( .D(n43), .SI(sampled_bit), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[0]) );
  SDFFRQX2M \p_data_reg[4]  ( .D(n47), .SI(p_data[3]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[4]) );
  SDFFRQX2M \p_data_reg[7]  ( .D(n50), .SI(p_data[6]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[7]) );
  SDFFRQX2M \p_data_reg[3]  ( .D(n46), .SI(p_data[2]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[3]) );
  SDFFRQX2M \p_data_reg[2]  ( .D(n45), .SI(p_data[1]), .SE(n64), .CK(clk), 
        .RN(rst), .Q(p_data[2]) );
  OR4X1M U4 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(n1) );
  AND2X2M U5 ( .A(n40), .B(deser_en), .Y(n31) );
  NOR3BX2M U21 ( .AN(n31), .B(bit_cnt[2]), .C(n60), .Y(n33) );
  AOI2B1X1M U22 ( .A1N(n42), .A0(bit_cnt[3]), .B0(n1), .Y(n40) );
  NOR2BX2M U23 ( .AN(n30), .B(bit_cnt[0]), .Y(n42) );
  OAI2BB2X1M U24 ( .B0(n29), .B1(n61), .A0N(n29), .A1N(shift_reg[0]), .Y(n51)
         );
  NAND3X2M U25 ( .A(bit_cnt[0]), .B(n30), .C(n31), .Y(n29) );
  OAI2BB2X1M U26 ( .B0(n61), .B1(n32), .A0N(n32), .A1N(shift_reg[1]), .Y(n52)
         );
  NAND2X2M U27 ( .A(n33), .B(n59), .Y(n32) );
  OAI2BB2X1M U28 ( .B0(n61), .B1(n34), .A0N(n34), .A1N(shift_reg[2]), .Y(n53)
         );
  NAND2X2M U29 ( .A(n33), .B(bit_cnt[0]), .Y(n34) );
  OAI2BB2X1M U30 ( .B0(n61), .B1(n37), .A0N(n37), .A1N(shift_reg[4]), .Y(n55)
         );
  NAND3X2M U31 ( .A(bit_cnt[0]), .B(n60), .C(n36), .Y(n37) );
  OAI2BB2X1M U32 ( .B0(n61), .B1(n39), .A0N(n39), .A1N(shift_reg[6]), .Y(n57)
         );
  NAND3X2M U33 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n36), .Y(n39) );
  OAI2BB2X1M U34 ( .B0(n61), .B1(n38), .A0N(n38), .A1N(shift_reg[5]), .Y(n56)
         );
  NAND3X2M U35 ( .A(bit_cnt[1]), .B(n59), .C(n36), .Y(n38) );
  AND2X2M U36 ( .A(bit_cnt[2]), .B(n31), .Y(n36) );
  OAI2BB2X1M U37 ( .B0(n61), .B1(n35), .A0N(n35), .A1N(shift_reg[3]), .Y(n54)
         );
  NAND3X2M U38 ( .A(n59), .B(n60), .C(n36), .Y(n35) );
  OAI2BB2X1M U39 ( .B0(n61), .B1(n41), .A0N(n41), .A1N(shift_reg[7]), .Y(n58)
         );
  NAND2X2M U40 ( .A(n40), .B(n28), .Y(n41) );
  INVX2M U41 ( .A(prescale[2]), .Y(N16) );
  NOR2X2M U42 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .Y(n30) );
  AND3X2M U43 ( .A(bit_cnt[3]), .B(n30), .C(deser_en), .Y(n28) );
  NAND2X2M U44 ( .A(bit_cnt[0]), .B(n28), .Y(n27) );
  INVX2M U45 ( .A(bit_cnt[1]), .Y(n60) );
  AO2B2X2M U46 ( .B0(p_data[0]), .B1(n27), .A0(shift_reg[0]), .A1N(n27), .Y(
        n43) );
  AO2B2X2M U47 ( .B0(p_data[1]), .B1(n27), .A0(shift_reg[1]), .A1N(n27), .Y(
        n44) );
  AO2B2X2M U48 ( .B0(p_data[2]), .B1(n27), .A0(shift_reg[2]), .A1N(n27), .Y(
        n45) );
  AO2B2X2M U49 ( .B0(p_data[3]), .B1(n27), .A0(shift_reg[3]), .A1N(n27), .Y(
        n46) );
  AO2B2X2M U50 ( .B0(p_data[4]), .B1(n27), .A0(shift_reg[4]), .A1N(n27), .Y(
        n47) );
  AO2B2X2M U51 ( .B0(p_data[5]), .B1(n27), .A0(shift_reg[5]), .A1N(n27), .Y(
        n48) );
  AO2B2X2M U52 ( .B0(p_data[6]), .B1(n27), .A0(shift_reg[6]), .A1N(n27), .Y(
        n49) );
  AO2B2X2M U53 ( .B0(p_data[7]), .B1(n27), .A0(shift_reg[7]), .A1N(n27), .Y(
        n50) );
  INVX2M U54 ( .A(bit_cnt[0]), .Y(n59) );
  INVX2M U55 ( .A(sampled_bit), .Y(n61) );
  AND2X1M U56 ( .A(\add_24/carry[4] ), .B(prescale[5]), .Y(N20) );
  CLKXOR2X2M U57 ( .A(prescale[5]), .B(\add_24/carry[4] ), .Y(N19) );
  AND2X1M U58 ( .A(\add_24/carry[3] ), .B(prescale[4]), .Y(\add_24/carry[4] )
         );
  CLKXOR2X2M U59 ( .A(prescale[4]), .B(\add_24/carry[3] ), .Y(N18) );
  AND2X1M U60 ( .A(prescale[2]), .B(prescale[3]), .Y(\add_24/carry[3] ) );
  CLKXOR2X2M U61 ( .A(prescale[3]), .B(prescale[2]), .Y(N17) );
  NOR2BX1M U62 ( .AN(edge_cnt[0]), .B(N15), .Y(n2) );
  OAI2B2X1M U63 ( .A1N(N16), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n6) );
  NOR2BX1M U64 ( .AN(N15), .B(edge_cnt[0]), .Y(n3) );
  OAI2B2X1M U65 ( .A1N(edge_cnt[1]), .A0(n3), .B0(N16), .B1(n3), .Y(n5) );
  XNOR2X1M U66 ( .A(N20), .B(edge_cnt[5]), .Y(n4) );
  NAND3X1M U67 ( .A(n6), .B(n5), .C(n4), .Y(n26) );
  CLKXOR2X2M U68 ( .A(N19), .B(edge_cnt[4]), .Y(n25) );
  CLKXOR2X2M U69 ( .A(N17), .B(edge_cnt[2]), .Y(n24) );
  CLKXOR2X2M U70 ( .A(N18), .B(edge_cnt[3]), .Y(n23) );
  INVXLM U71 ( .A(test_se), .Y(n63) );
  INVXLM U72 ( .A(n63), .Y(n64) );
endmodule


module data_samp_test_1 ( Rx_in, prescale, data_samp_en, edge_cnt, clk, rst, 
        sampled_bit, test_si, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input Rx_in, data_samp_en, clk, rst, test_si, test_se;
  output sampled_bit;
  wire   s1, s2, s3, N14, N15, N16, N17, N18, N19, N20, N23, N24, N25, N26,
         N27, N68, n22, n23, n24, \add_23/carry[4] , \add_23/carry[3] ,
         \add_23/carry[2] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n15, n16, n17,
         n18, n19, n20, n21, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42;

  SDFFSQX2M s3_reg ( .D(n23), .SI(n34), .SE(test_se), .CK(clk), .SN(rst), .Q(
        s3) );
  SDFFSQX2M s2_reg ( .D(n22), .SI(n17), .SE(test_se), .CK(clk), .SN(rst), .Q(
        s2) );
  SDFFSQX2M s1_reg ( .D(n24), .SI(test_si), .SE(test_se), .CK(clk), .SN(rst), 
        .Q(s1) );
  SDFFSQX1M sampled_bit_reg ( .D(N68), .SI(s3), .SE(test_se), .CK(clk), .SN(
        rst), .Q(sampled_bit) );
  OR2X2M U5 ( .A(prescale[2]), .B(prescale[1]), .Y(n2) );
  ADDHX1M U6 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_23/carry[2] ), .S(
        N23) );
  ADDHX1M U7 ( .A(prescale[4]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), 
        .S(N25) );
  ADDHX1M U8 ( .A(prescale[3]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), 
        .S(N24) );
  ADDHX1M U12 ( .A(prescale[5]), .B(\add_23/carry[4] ), .CO(N27), .S(N26) );
  CLKINVX1M U13 ( .A(prescale[1]), .Y(N14) );
  OAI2BB1X1M U14 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n2), .Y(N15) );
  OR2X1M U15 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U16 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N16) );
  XNOR2X1M U17 ( .A(prescale[4]), .B(n3), .Y(N17) );
  NOR3X1M U18 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N19) );
  OAI21X1M U19 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U20 ( .AN(N19), .B(n4), .Y(N18) );
  NOR2BX1M U21 ( .AN(N14), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U22 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N15), .B1(n5), .Y(n8) );
  NOR2BX1M U23 ( .AN(edge_cnt[0]), .B(N14), .Y(n6) );
  OAI2B2X1M U24 ( .A1N(N15), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND4BBX1M U25 ( .AN(edge_cnt[5]), .BN(N19), .C(n8), .D(n7), .Y(n16) );
  CLKXOR2X2M U26 ( .A(edge_cnt[4]), .B(N18), .Y(n15) );
  CLKXOR2X2M U27 ( .A(edge_cnt[2]), .B(N16), .Y(n10) );
  CLKXOR2X2M U28 ( .A(edge_cnt[3]), .B(N17), .Y(n9) );
  NOR4X1M U29 ( .A(n16), .B(n15), .C(n10), .D(n9), .Y(N20) );
  MXI2X1M U30 ( .A(n17), .B(n18), .S0(n19), .Y(n24) );
  AND2X1M U31 ( .A(N20), .B(data_samp_en), .Y(n19) );
  CLKMX2X2M U32 ( .A(s3), .B(Rx_in), .S0(n20), .Y(n23) );
  NOR4BX1M U33 ( .AN(n21), .B(n25), .C(n26), .D(n27), .Y(n20) );
  CLKNAND2X2M U34 ( .A(n28), .B(n29), .Y(n26) );
  XNOR2X1M U35 ( .A(edge_cnt[0]), .B(N14), .Y(n29) );
  XNOR2X1M U36 ( .A(edge_cnt[1]), .B(N23), .Y(n28) );
  NAND4X1M U37 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n25) );
  XNOR2X1M U38 ( .A(edge_cnt[2]), .B(N24), .Y(n33) );
  XNOR2X1M U39 ( .A(edge_cnt[3]), .B(N25), .Y(n32) );
  XNOR2X1M U40 ( .A(edge_cnt[4]), .B(N26), .Y(n31) );
  XNOR2X1M U41 ( .A(edge_cnt[5]), .B(N27), .Y(n30) );
  MXI2X1M U42 ( .A(n34), .B(n18), .S0(n35), .Y(n22) );
  NOR2X1M U43 ( .A(n27), .B(n21), .Y(n35) );
  NAND4X1M U44 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n21) );
  NOR3X1M U45 ( .A(n40), .B(edge_cnt[5]), .C(n41), .Y(n39) );
  CLKXOR2X2M U46 ( .A(prescale[1]), .B(edge_cnt[0]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n40) );
  XNOR2X1M U48 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n38) );
  XNOR2X1M U49 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(edge_cnt[1]), .B(prescale[2]), .Y(n36) );
  NAND2BX1M U51 ( .AN(N20), .B(data_samp_en), .Y(n27) );
  CLKINVX1M U52 ( .A(Rx_in), .Y(n18) );
  OAI21X1M U53 ( .A0(n17), .A1(n34), .B0(n42), .Y(N68) );
  OAI21X1M U54 ( .A0(s1), .A1(s2), .B0(s3), .Y(n42) );
  CLKINVX1M U55 ( .A(s2), .Y(n34) );
  CLKINVX1M U56 ( .A(s1), .Y(n17) );
endmodule


module edge_cnt_test_1 ( clk, rst, enable, prescale, bit_cnt, edge_cnt, 
        test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input clk, rst, enable, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N20, N21, N22, N23, N24, N25,
         N37, N38, N39, N40, N41, N42, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, \add_26/carry[5] , \add_26/carry[4] , \add_26/carry[3] ,
         \add_26/carry[2] , n1, n2, n3, n4, n15, n16, n17, n18, n19, n20, n21,
         n32, n33, n34, n35, n36, n37, n38, n39, n40;

  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n28), .SI(n38), .SE(test_se), .CK(clk), .RN(
        rst), .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n29), .SI(n37), .SE(test_se), .CK(clk), .RN(
        rst), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n30), .SI(n36), .SE(test_se), .CK(clk), .RN(
        rst), .Q(bit_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(N42), .SI(edge_cnt[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N37), .SI(n39), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N40), .SI(edge_cnt[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N39), .SI(edge_cnt[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N41), .SI(edge_cnt[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N38), .SI(N20), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(edge_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n31), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(bit_cnt[0]) );
  INVX2M U7 ( .A(n27), .Y(n34) );
  NOR2X2M U8 ( .A(n40), .B(N14), .Y(n27) );
  AOI21X2M U15 ( .A0(n36), .A1(enable), .B0(n27), .Y(n26) );
  AND2X2M U16 ( .A(N21), .B(n27), .Y(N38) );
  AND2X2M U17 ( .A(N22), .B(n27), .Y(N39) );
  AND2X2M U18 ( .A(N23), .B(n27), .Y(N40) );
  AND2X2M U19 ( .A(N24), .B(n27), .Y(N41) );
  INVX2M U20 ( .A(enable), .Y(n40) );
  NOR3X2M U21 ( .A(n37), .B(n36), .C(n38), .Y(n23) );
  OAI32X1M U22 ( .A0(n40), .A1(bit_cnt[0]), .A2(n27), .B0(n36), .B1(n34), .Y(
        n31) );
  OAI32X1M U23 ( .A0(n24), .A1(bit_cnt[2]), .A2(n37), .B0(n25), .B1(n38), .Y(
        n29) );
  OA21X2M U24 ( .A0(n40), .A1(bit_cnt[1]), .B0(n26), .Y(n25) );
  OAI22X1M U25 ( .A0(n39), .A1(n34), .B0(n22), .B1(n40), .Y(n28) );
  AOI32X1M U26 ( .A0(n23), .A1(n39), .A2(N14), .B0(bit_cnt[3]), .B1(n35), .Y(
        n22) );
  INVX2M U27 ( .A(bit_cnt[3]), .Y(n39) );
  INVX2M U28 ( .A(n23), .Y(n35) );
  OAI22X1M U29 ( .A0(n26), .A1(n37), .B0(bit_cnt[1]), .B1(n24), .Y(n30) );
  NAND3X2M U30 ( .A(bit_cnt[0]), .B(n34), .C(enable), .Y(n24) );
  OR2X2M U31 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  AND2X2M U32 ( .A(N25), .B(n27), .Y(N42) );
  AND2X2M U33 ( .A(N20), .B(n27), .Y(N37) );
  INVX2M U34 ( .A(bit_cnt[0]), .Y(n36) );
  INVX2M U35 ( .A(bit_cnt[1]), .Y(n37) );
  INVX2M U36 ( .A(bit_cnt[2]), .Y(n38) );
  ADDHX1M U37 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_26/carry[2] ), .S(
        N21) );
  ADDHX1M U38 ( .A(edge_cnt[2]), .B(\add_26/carry[2] ), .CO(\add_26/carry[3] ), 
        .S(N22) );
  ADDHX1M U39 ( .A(edge_cnt[3]), .B(\add_26/carry[3] ), .CO(\add_26/carry[4] ), 
        .S(N23) );
  ADDHX1M U40 ( .A(edge_cnt[4]), .B(\add_26/carry[4] ), .CO(\add_26/carry[5] ), 
        .S(N24) );
  CLKINVX1M U41 ( .A(prescale[0]), .Y(N7) );
  OAI2BB1X1M U42 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N8) );
  OR2X1M U43 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U44 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  OR2X1M U45 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U46 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N10) );
  OR2X1M U47 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U48 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N11) );
  NOR2X1M U49 ( .A(n4), .B(prescale[5]), .Y(N13) );
  AO21XLM U50 ( .A0(n4), .A1(prescale[5]), .B0(N13), .Y(N12) );
  CLKINVX1M U51 ( .A(edge_cnt[0]), .Y(N20) );
  CLKXOR2X2M U52 ( .A(\add_26/carry[5] ), .B(edge_cnt[5]), .Y(N25) );
  NOR2BX1M U53 ( .AN(N7), .B(edge_cnt[0]), .Y(n15) );
  OAI2B2X1M U54 ( .A1N(edge_cnt[1]), .A0(n15), .B0(N8), .B1(n15), .Y(n19) );
  XNOR2X1M U55 ( .A(N12), .B(edge_cnt[5]), .Y(n18) );
  NOR2BX1M U56 ( .AN(edge_cnt[0]), .B(N7), .Y(n16) );
  OAI2B2X1M U57 ( .A1N(N8), .A0(n16), .B0(edge_cnt[1]), .B1(n16), .Y(n17) );
  NAND4BX1M U58 ( .AN(N13), .B(n19), .C(n18), .D(n17), .Y(n33) );
  CLKXOR2X2M U59 ( .A(N11), .B(edge_cnt[4]), .Y(n32) );
  CLKXOR2X2M U60 ( .A(N9), .B(edge_cnt[2]), .Y(n21) );
  CLKXOR2X2M U61 ( .A(N10), .B(edge_cnt[3]), .Y(n20) );
  NOR4X1M U62 ( .A(n33), .B(n32), .C(n21), .D(n20), .Y(N14) );
endmodule


module par_check ( par_type, par_chk_en, sampled_bit, P_data, par_err );
  input [7:0] P_data;
  input par_type, par_chk_en, sampled_bit;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2BX4M U2 ( .AN(par_chk_en), .B(n1), .Y(par_err) );
  XOR3XLM U3 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U4 ( .A(par_type), .B(P_data[2]), .Y(n4) );
  XOR3XLM U5 ( .A(P_data[6]), .B(P_data[5]), .C(n5), .Y(n3) );
  XNOR2X2M U6 ( .A(sampled_bit), .B(P_data[7]), .Y(n5) );
  XOR3XLM U7 ( .A(P_data[1]), .B(P_data[0]), .C(n6), .Y(n2) );
  XNOR2X2M U8 ( .A(P_data[4]), .B(P_data[3]), .Y(n6) );
endmodule


module strt_check ( strt_chk_en, sampled_bit, strt_glitch );
  input strt_chk_en, sampled_bit;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_bit), .Y(strt_glitch) );
endmodule


module stop_check ( stp_chk_en, sampled_bit, stp_err );
  input stp_chk_en, sampled_bit;
  output stp_err;


  NOR2BX4M U2 ( .AN(stp_chk_en), .B(sampled_bit), .Y(stp_err) );
endmodule


module uart_rx_top_test_1 ( rx_in_t, prescale_t, par_en_t, par_type_t, clk_t, 
        rst_t, p_data_t, par_err_t, stop_err_t, data_valid_tb, test_si, 
        test_so, test_se );
  input [5:0] prescale_t;
  output [7:0] p_data_t;
  input rx_in_t, par_en_t, par_type_t, clk_t, rst_t, test_si, test_se;
  output par_err_t, stop_err_t, data_valid_tb, test_so;
  wire   strt_glich_t, data_samp_en_t, enable_t, deser_en_t, stp_chk_en_t,
         strt_chk_en_t, par_chk_en_t, sampled_bit_t, n1, n2, n4;
  wire   [3:0] bit_cnt_t;
  wire   [5:0] edge_cnt_t;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_t), .Y(n2) );
  fsmr_test_1 fsm_init ( .Rx_in(rx_in_t), .bit_cnt(bit_cnt_t), .par_err(
        par_err_t), .strt_glitch(strt_glich_t), .stp_err(stop_err_t), .par_en(
        par_en_t), .clk(clk_t), .rst(n1), .edge_cnt(edge_cnt_t), .prescale(
        prescale_t), .dat_samp_en(data_samp_en_t), .enable(enable_t), 
        .deser_en(deser_en_t), .data_valid(data_valid_tb), .stp_chk_en(
        stp_chk_en_t), .strt_chk_en(strt_chk_en_t), .par_chk_en(par_chk_en_t), 
        .test_so(test_so), .test_se(test_se) );
  deser_test_1 deser_init ( .sampled_bit(sampled_bit_t), .deser_en(deser_en_t), 
        .bit_cnt(bit_cnt_t), .edge_cnt(edge_cnt_t), .prescale(prescale_t), 
        .clk(clk_t), .rst(n1), .par_en(par_en_t), .p_data(p_data_t), .test_so(
        n4), .test_se(test_se) );
  data_samp_test_1 data_samp_init ( .Rx_in(rx_in_t), .prescale(prescale_t), 
        .data_samp_en(data_samp_en_t), .edge_cnt(edge_cnt_t), .clk(clk_t), 
        .rst(n1), .sampled_bit(sampled_bit_t), .test_si(test_si), .test_se(
        test_se) );
  edge_cnt_test_1 edge_cnt_init ( .clk(clk_t), .rst(n1), .enable(enable_t), 
        .prescale(prescale_t), .bit_cnt(bit_cnt_t), .edge_cnt(edge_cnt_t), 
        .test_si(n4), .test_se(test_se) );
  par_check par_check_init ( .par_type(par_type_t), .par_chk_en(par_chk_en_t), 
        .sampled_bit(sampled_bit_t), .P_data(p_data_t), .par_err(par_err_t) );
  strt_check strt_check_init ( .strt_chk_en(strt_chk_en_t), .sampled_bit(
        sampled_bit_t), .strt_glitch(strt_glich_t) );
  stop_check stop_check_init ( .stp_chk_en(stp_chk_en_t), .sampled_bit(
        sampled_bit_t), .stp_err(stop_err_t) );
endmodule


module UART_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error, test_si, test_so, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error, test_so;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  top_test_1 UART_TX ( .P_data_t(TX_IN_P), .data_valid_t(TX_IN_V), .par_en_t(
        parity_enable), .par_type_t(parity_type), .clk_t(TX_CLK), .rst_t(n1), 
        .Tx_out_t(TX_OUT_S), .busy_t(TX_OUT_V), .test_si(n4), .test_so(test_so), .test_se(test_se) );
  uart_rx_top_test_1 UART_RX ( .rx_in_t(RX_IN_S), .prescale_t(Prescale), 
        .par_en_t(parity_enable), .par_type_t(parity_type), .clk_t(RX_CLK), 
        .rst_t(n1), .p_data_t(RX_OUT_P), .par_err_t(parity_error), 
        .stop_err_t(framing_error), .data_valid_tb(RX_OUT_V), .test_si(test_si), .test_so(n4), .test_se(test_se) );
endmodule


module clkdiv_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(SUM[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKINVX1M U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, clk_out, N15, N16, N17, N18, N19, N20, N21, N22, N24, N25, N26,
         N27, N28, N29, N30, N31, n27, n1, n3, n4, n5, n6, n7, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50;
  wire   [7:0] half_div_p1;
  wire   [7:0] counter;
  assign test_so = counter[7];

  SDFFSQX2M \counter_reg[0]  ( .D(N24), .SI(clk_out), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M clk_out_reg ( .D(n27), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(clk_out) );
  SDFFRQX2M \counter_reg[7]  ( .D(N31), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N28), .SI(n18), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N25), .SI(n21), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N26), .SI(n20), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N27), .SI(n19), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N29), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N30), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  MX2X2M U5 ( .A(i_ref_clk), .B(clk_out), .S0(N1), .Y(o_div_clk) );
  XNOR2X1M U7 ( .A(n1), .B(clk_out), .Y(n27) );
  OAI2BB2X1M U9 ( .B0(n3), .B1(n4), .A0N(N22), .A1N(n5), .Y(N31) );
  OAI2BB2X1M U16 ( .B0(n6), .B1(n4), .A0N(N21), .A1N(n5), .Y(N30) );
  OAI2BB2X1M U17 ( .B0(n7), .B1(n4), .A0N(N20), .A1N(n5), .Y(N29) );
  OAI2BB2X1M U18 ( .B0(n17), .B1(n4), .A0N(N19), .A1N(n5), .Y(N28) );
  OAI2BB2X1M U19 ( .B0(n18), .B1(n4), .A0N(N18), .A1N(n5), .Y(N27) );
  OAI2BB2X1M U20 ( .B0(n19), .B1(n4), .A0N(N17), .A1N(n5), .Y(N26) );
  OAI2BB2X1M U21 ( .B0(n20), .B1(n4), .A0N(N16), .A1N(n5), .Y(N25) );
  OAI211X1M U22 ( .A0(n21), .A1(n4), .B0(n22), .C0(n1), .Y(N24) );
  CLKNAND2X2M U23 ( .A(N15), .B(n5), .Y(n22) );
  NOR2X1M U24 ( .A(n23), .B(n24), .Y(n5) );
  CLKNAND2X2M U25 ( .A(n1), .B(n24), .Y(n4) );
  CLKINVX1M U26 ( .A(n23), .Y(n1) );
  CLKNAND2X2M U27 ( .A(n25), .B(n26), .Y(n23) );
  NAND4X1M U28 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n26) );
  NOR4X1M U29 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n31) );
  XNOR2X1M U30 ( .A(half_div_p1[7]), .B(n3), .Y(n35) );
  CLKINVX1M U31 ( .A(counter[7]), .Y(n3) );
  XNOR2X1M U32 ( .A(half_div_p1[6]), .B(n6), .Y(n34) );
  CLKINVX1M U33 ( .A(counter[6]), .Y(n6) );
  XNOR2X1M U34 ( .A(half_div_p1[5]), .B(n7), .Y(n33) );
  CLKINVX1M U35 ( .A(counter[5]), .Y(n7) );
  XNOR2X1M U36 ( .A(half_div_p1[4]), .B(n17), .Y(n32) );
  NOR3X1M U37 ( .A(n36), .B(clk_out), .C(n37), .Y(n30) );
  XNOR2X1M U38 ( .A(half_div_p1[1]), .B(n20), .Y(n37) );
  CLKINVX1M U39 ( .A(counter[1]), .Y(n20) );
  XNOR2X1M U40 ( .A(half_div_p1[0]), .B(n21), .Y(n36) );
  XNOR2X1M U41 ( .A(counter[2]), .B(half_div_p1[2]), .Y(n29) );
  XNOR2X1M U42 ( .A(counter[3]), .B(half_div_p1[3]), .Y(n28) );
  NAND4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n25) );
  NOR4X1M U44 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n41) );
  XNOR2X1M U45 ( .A(i_div_ratio[3]), .B(n19), .Y(n45) );
  CLKINVX1M U46 ( .A(counter[2]), .Y(n19) );
  XNOR2X1M U47 ( .A(i_div_ratio[5]), .B(n17), .Y(n44) );
  CLKINVX1M U48 ( .A(counter[4]), .Y(n17) );
  XNOR2X1M U49 ( .A(i_div_ratio[4]), .B(n18), .Y(n43) );
  CLKINVX1M U50 ( .A(counter[3]), .Y(n18) );
  CLKNAND2X2M U51 ( .A(n46), .B(n47), .Y(n42) );
  XNOR2X1M U52 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n47) );
  XNOR2X1M U53 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n46) );
  AOI211X1M U54 ( .A0(i_div_ratio[0]), .A1(n48), .B0(n24), .C0(counter[7]), 
        .Y(n40) );
  CLKINVX1M U55 ( .A(clk_out), .Y(n48) );
  XNOR2X1M U56 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n39) );
  XNOR2X1M U57 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n38) );
  CLKINVX1M U58 ( .A(counter[0]), .Y(n21) );
  CLKINVX1M U59 ( .A(n24), .Y(N1) );
  OAI21X1M U60 ( .A0(n49), .A1(n50), .B0(i_clk_en), .Y(n24) );
  OR3X1M U61 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n50) );
  OR4X1M U62 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n49) );
  clkdiv_0_DW01_inc_0 add_52 ( .A(counter), .SUM({N22, N21, N20, N19, N18, N17, 
        N16, N15}) );
  clkdiv_0_DW01_inc_1 add_19 ( .A({1'b0, i_div_ratio[7:1]}), .SUM(half_div_p1)
         );
endmodule


module clkdiv_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(SUM[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1M U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, clk_out, N15, N16, N17, N18, N19, N20, N21, N22, N24, N25, N26,
         N27, N28, N29, N30, N31, n3, n4, n5, n6, n7, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52;
  wire   [7:0] half_div_p1;
  wire   [7:0] counter;
  assign test_so = counter[7];

  MX2X2M U7 ( .A(i_ref_clk), .B(clk_out), .S0(N1), .Y(o_div_clk) );
  XNOR2X1M U9 ( .A(n3), .B(clk_out), .Y(n52) );
  OAI2BB2X1M U16 ( .B0(n4), .B1(n5), .A0N(N22), .A1N(n6), .Y(N31) );
  OAI2BB2X1M U17 ( .B0(n7), .B1(n5), .A0N(N21), .A1N(n6), .Y(N30) );
  OAI2BB2X1M U18 ( .B0(n17), .B1(n5), .A0N(N20), .A1N(n6), .Y(N29) );
  OAI2BB2X1M U19 ( .B0(n18), .B1(n5), .A0N(N19), .A1N(n6), .Y(N28) );
  OAI2BB2X1M U20 ( .B0(n19), .B1(n5), .A0N(N18), .A1N(n6), .Y(N27) );
  OAI2BB2X1M U21 ( .B0(n20), .B1(n5), .A0N(N17), .A1N(n6), .Y(N26) );
  OAI2BB2X1M U22 ( .B0(n21), .B1(n5), .A0N(N16), .A1N(n6), .Y(N25) );
  OAI211X1M U23 ( .A0(n22), .A1(n5), .B0(n23), .C0(n3), .Y(N24) );
  CLKNAND2X2M U24 ( .A(N15), .B(n6), .Y(n23) );
  NOR2X1M U25 ( .A(n24), .B(n25), .Y(n6) );
  CLKNAND2X2M U26 ( .A(n3), .B(n25), .Y(n5) );
  CLKINVX1M U27 ( .A(n24), .Y(n3) );
  CLKNAND2X2M U28 ( .A(n26), .B(n28), .Y(n24) );
  NAND4X1M U29 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  NOR4X1M U30 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n32) );
  XNOR2X1M U31 ( .A(half_div_p1[7]), .B(n4), .Y(n36) );
  XNOR2X1M U33 ( .A(half_div_p1[6]), .B(n7), .Y(n35) );
  XNOR2X1M U35 ( .A(half_div_p1[5]), .B(n17), .Y(n34) );
  XNOR2X1M U37 ( .A(half_div_p1[4]), .B(n18), .Y(n33) );
  NOR3X1M U38 ( .A(n37), .B(clk_out), .C(n38), .Y(n31) );
  XNOR2X1M U39 ( .A(half_div_p1[1]), .B(n21), .Y(n38) );
  XNOR2X1M U41 ( .A(half_div_p1[0]), .B(n22), .Y(n37) );
  XNOR2X1M U42 ( .A(counter[2]), .B(half_div_p1[2]), .Y(n30) );
  XNOR2X1M U43 ( .A(counter[3]), .B(half_div_p1[3]), .Y(n29) );
  NAND4X1M U44 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n26) );
  NOR4X1M U45 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n42) );
  XNOR2X1M U46 ( .A(i_div_ratio[3]), .B(n20), .Y(n46) );
  XNOR2X1M U48 ( .A(i_div_ratio[5]), .B(n18), .Y(n45) );
  XNOR2X1M U50 ( .A(i_div_ratio[4]), .B(n19), .Y(n44) );
  CLKNAND2X2M U52 ( .A(n47), .B(n48), .Y(n43) );
  XNOR2X1M U53 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n48) );
  XNOR2X1M U54 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n47) );
  AOI211X1M U55 ( .A0(i_div_ratio[0]), .A1(n49), .B0(n25), .C0(counter[7]), 
        .Y(n41) );
  XNOR2X1M U57 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n40) );
  XNOR2X1M U58 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n39) );
  CLKINVX1M U60 ( .A(n25), .Y(N1) );
  OAI21X1M U61 ( .A0(n50), .A1(n51), .B0(i_clk_en), .Y(n25) );
  OR3X1M U62 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n51) );
  OR4X1M U63 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n50) );
  clkdiv_1_DW01_inc_0 add_52 ( .A(counter), .SUM({N22, N21, N20, N19, N18, N17, 
        N16, N15}) );
  clkdiv_1_DW01_inc_1 add_19 ( .A({1'b0, i_div_ratio[7:1]}), .SUM(half_div_p1)
         );
  SDFFRX1M \counter_reg[7]  ( .D(N31), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]), .QN(n4) );
  SDFFRX1M \counter_reg[6]  ( .D(N30), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]), .QN(n7) );
  SDFFRX1M \counter_reg[5]  ( .D(N29), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]), .QN(n17) );
  SDFFRX1M \counter_reg[4]  ( .D(N28), .SI(n19), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[4]), .QN(n18) );
  SDFFRX1M \counter_reg[3]  ( .D(N27), .SI(n20), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[3]), .QN(n19) );
  SDFFRX1M \counter_reg[2]  ( .D(N26), .SI(n21), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[2]), .QN(n20) );
  SDFFRX1M \counter_reg[1]  ( .D(N25), .SI(n22), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[1]), .QN(n21) );
  SDFFRX1M clk_out_reg ( .D(n52), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(clk_out), .QN(n49) );
  SDFFSX1M \counter_reg[0]  ( .D(N24), .SI(clk_out), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst_n), .Q(counter[0]), .QN(n22) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NOR4X1M U11 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND2X2M U12 ( .A(n7), .B(n6), .Y(n9) );
  NAND4BX1M U13 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U14 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U15 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  OAI211X2M U16 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR4X1M U17 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NOR3X2M U18 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  INVX2M U19 ( .A(IN[2]), .Y(n15) );
  NAND3X2M U20 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U21 ( .A(IN[1]), .Y(n16) );
  INVX2M U22 ( .A(IN[0]), .Y(n17) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module rst_sync_test_1 ( rst, clk, sync_rst, test_si, test_se );
  input rst, clk, test_si, test_se;
  output sync_rst;
  wire   \shift_reg[0] ;

  SDFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(\shift_reg[0] ) );
  SDFFRQX1M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .SI(\shift_reg[0] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
endmodule


module rst_sync_test_0 ( rst, clk, sync_rst, test_si, test_se );
  input rst, clk, test_si, test_se;
  output sync_rst;
  wire   \shift_reg[0] ;

  SDFFRQX2M \shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(\shift_reg[0] ) );
  SDFFRQX1M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .SI(\shift_reg[0] ), .SE(
        test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
endmodule


module data_sync_test_1 ( unsync_bus, bus_enable, clk, rst, sync_bus, 
        enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst, test_si, test_se;
  output enable_pulse;
  wire   enable_flop, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22;
  wire   [1:0] shift_reg;

  SDFFRQX2M enable_flop_reg ( .D(shift_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(enable_flop) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[7]) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(shift_reg[0]), .SI(shift_reg[0]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(shift_reg[1]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(shift_reg[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[1]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(enable_flop), .SE(test_se), .CK(
        clk), .RN(rst), .Q(enable_pulse) );
  SDFFRQX2M \shift_reg_reg[0]  ( .D(bus_enable), .SI(enable_pulse), .SE(
        test_se), .CK(clk), .RN(rst), .Q(shift_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(shift_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module fifo_mem_test_1 ( wdata, rdata, wclk, wrst, waddr, raddr, winc, wfull, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] wdata;
  output [7:0] rdata;
  input [2:0] waddr;
  input [2:0] raddr;
  input wclk, wrst, winc, wfull, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] ,
         \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n180, n181, n182, n183, n184;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign test_so2 = \mem[7][7] ;
  assign test_so1 = \mem[2][5] ;

  SDFFRQX2M \mem_reg[5][7]  ( .D(n133), .SI(\mem[5][6] ), .SE(n184), .CK(wclk), 
        .RN(n162), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n132), .SI(\mem[5][5] ), .SE(n183), .CK(wclk), 
        .RN(n162), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n131), .SI(\mem[5][4] ), .SE(n182), .CK(wclk), 
        .RN(n162), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n130), .SI(\mem[5][3] ), .SE(n181), .CK(wclk), 
        .RN(n162), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n129), .SI(\mem[5][2] ), .SE(n184), .CK(wclk), 
        .RN(n162), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n128), .SI(\mem[5][1] ), .SE(n183), .CK(wclk), 
        .RN(n162), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n127), .SI(\mem[5][0] ), .SE(n182), .CK(wclk), 
        .RN(n162), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n126), .SI(\mem[4][7] ), .SE(n181), .CK(wclk), 
        .RN(n162), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[1][7]  ( .D(n101), .SI(\mem[1][6] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\mem[1][7] ) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n100), .SI(\mem[1][5] ), .SE(n183), .CK(wclk), 
        .RN(n165), .Q(\mem[1][6] ) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n99), .SI(\mem[1][4] ), .SE(n182), .CK(wclk), 
        .RN(n165), .Q(\mem[1][5] ) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n98), .SI(\mem[1][3] ), .SE(n181), .CK(wclk), 
        .RN(n165), .Q(\mem[1][4] ) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n97), .SI(\mem[1][2] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\mem[1][3] ) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n96), .SI(\mem[1][1] ), .SE(n183), .CK(wclk), 
        .RN(n165), .Q(\mem[1][2] ) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n95), .SI(\mem[1][0] ), .SE(n182), .CK(wclk), 
        .RN(n165), .Q(\mem[1][1] ) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n94), .SI(\mem[0][7] ), .SE(n181), .CK(wclk), 
        .RN(n165), .Q(\mem[1][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n149), .SI(\mem[7][6] ), .SE(n184), .CK(wclk), 
        .RN(n161), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n148), .SI(\mem[7][5] ), .SE(n183), .CK(wclk), 
        .RN(n161), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n147), .SI(\mem[7][4] ), .SE(n182), .CK(wclk), 
        .RN(n161), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n146), .SI(\mem[7][3] ), .SE(n181), .CK(wclk), 
        .RN(n161), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n145), .SI(\mem[7][2] ), .SE(n184), .CK(wclk), 
        .RN(n161), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n144), .SI(\mem[7][1] ), .SE(n183), .CK(wclk), 
        .RN(n161), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n143), .SI(\mem[7][0] ), .SE(n182), .CK(wclk), 
        .RN(n161), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n142), .SI(\mem[6][7] ), .SE(n181), .CK(wclk), 
        .RN(n161), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n117), .SI(\mem[3][6] ), .SE(n184), .CK(wclk), 
        .RN(n163), .Q(\mem[3][7] ) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n116), .SI(\mem[3][5] ), .SE(n183), .CK(wclk), 
        .RN(n163), .Q(\mem[3][6] ) );
  SDFFRQX2M \mem_reg[3][5]  ( .D(n115), .SI(\mem[3][4] ), .SE(n182), .CK(wclk), 
        .RN(n163), .Q(\mem[3][5] ) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n114), .SI(\mem[3][3] ), .SE(n181), .CK(wclk), 
        .RN(n163), .Q(\mem[3][4] ) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n113), .SI(\mem[3][2] ), .SE(n184), .CK(wclk), 
        .RN(n164), .Q(\mem[3][3] ) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n112), .SI(\mem[3][1] ), .SE(n183), .CK(wclk), 
        .RN(n164), .Q(\mem[3][2] ) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n111), .SI(\mem[3][0] ), .SE(n182), .CK(wclk), 
        .RN(n164), .Q(\mem[3][1] ) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n110), .SI(\mem[2][7] ), .SE(n181), .CK(wclk), 
        .RN(n164), .Q(\mem[3][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n141), .SI(\mem[6][6] ), .SE(n184), .CK(wclk), 
        .RN(n161), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n140), .SI(\mem[6][5] ), .SE(n183), .CK(wclk), 
        .RN(n161), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n139), .SI(\mem[6][4] ), .SE(n182), .CK(wclk), 
        .RN(n161), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n138), .SI(\mem[6][3] ), .SE(n181), .CK(wclk), 
        .RN(n161), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n137), .SI(\mem[6][2] ), .SE(n184), .CK(wclk), 
        .RN(n162), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n136), .SI(\mem[6][1] ), .SE(n183), .CK(wclk), 
        .RN(n162), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n135), .SI(\mem[6][0] ), .SE(n182), .CK(wclk), 
        .RN(n162), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n134), .SI(\mem[5][7] ), .SE(n181), .CK(wclk), 
        .RN(n162), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[2][7]  ( .D(n109), .SI(\mem[2][6] ), .SE(n184), .CK(wclk), 
        .RN(n164), .Q(\mem[2][7] ) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n108), .SI(test_si2), .SE(n183), .CK(wclk), 
        .RN(n164), .Q(\mem[2][6] ) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n107), .SI(\mem[2][4] ), .SE(n182), .CK(wclk), 
        .RN(n164), .Q(\mem[2][5] ) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n106), .SI(\mem[2][3] ), .SE(n181), .CK(wclk), 
        .RN(n164), .Q(\mem[2][4] ) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n105), .SI(\mem[2][2] ), .SE(n184), .CK(wclk), 
        .RN(n164), .Q(\mem[2][3] ) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n104), .SI(\mem[2][1] ), .SE(n183), .CK(wclk), 
        .RN(n164), .Q(\mem[2][2] ) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n103), .SI(\mem[2][0] ), .SE(n182), .CK(wclk), 
        .RN(n164), .Q(\mem[2][1] ) );
  SDFFRQX2M \mem_reg[2][0]  ( .D(n102), .SI(\mem[1][7] ), .SE(n181), .CK(wclk), 
        .RN(n164), .Q(\mem[2][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n125), .SI(\mem[4][6] ), .SE(n184), .CK(wclk), 
        .RN(n163), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n124), .SI(\mem[4][5] ), .SE(n183), .CK(wclk), 
        .RN(n163), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n123), .SI(\mem[4][4] ), .SE(n182), .CK(wclk), 
        .RN(n163), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n122), .SI(\mem[4][3] ), .SE(n181), .CK(wclk), 
        .RN(n163), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n121), .SI(\mem[4][2] ), .SE(n184), .CK(wclk), 
        .RN(n163), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n120), .SI(\mem[4][1] ), .SE(n183), .CK(wclk), 
        .RN(n163), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n119), .SI(\mem[4][0] ), .SE(n182), .CK(wclk), 
        .RN(n163), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n118), .SI(\mem[3][7] ), .SE(n181), .CK(wclk), 
        .RN(n163), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n93), .SI(\mem[0][6] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\mem[0][7] ) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n92), .SI(\mem[0][5] ), .SE(n183), .CK(wclk), 
        .RN(n165), .Q(\mem[0][6] ) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n91), .SI(\mem[0][4] ), .SE(n182), .CK(wclk), 
        .RN(n165), .Q(\mem[0][5] ) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n90), .SI(\mem[0][3] ), .SE(n181), .CK(wclk), 
        .RN(n165), .Q(\mem[0][4] ) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n89), .SI(\mem[0][2] ), .SE(n184), .CK(wclk), 
        .RN(n166), .Q(\mem[0][3] ) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n88), .SI(\mem[0][1] ), .SE(n183), .CK(wclk), 
        .RN(n166), .Q(\mem[0][2] ) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n87), .SI(\mem[0][0] ), .SE(n182), .CK(wclk), 
        .RN(n166), .Q(\mem[0][1] ) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n86), .SI(test_si1), .SE(n181), .CK(wclk), 
        .RN(n166), .Q(\mem[0][0] ) );
  NOR2BX2M U66 ( .AN(n80), .B(waddr[2]), .Y(n76) );
  BUFX2M U67 ( .A(n84), .Y(n158) );
  BUFX2M U68 ( .A(n85), .Y(n157) );
  BUFX2M U69 ( .A(n160), .Y(n165) );
  BUFX2M U70 ( .A(n160), .Y(n164) );
  BUFX2M U71 ( .A(n159), .Y(n163) );
  BUFX2M U72 ( .A(n159), .Y(n162) );
  BUFX2M U73 ( .A(n159), .Y(n161) );
  BUFX2M U74 ( .A(n160), .Y(n166) );
  NOR2BX2M U75 ( .AN(winc), .B(wfull), .Y(n80) );
  BUFX2M U76 ( .A(wrst), .Y(n160) );
  BUFX2M U77 ( .A(wrst), .Y(n159) );
  NAND3X2M U78 ( .A(n175), .B(n176), .C(n82), .Y(n81) );
  NAND3X2M U79 ( .A(n175), .B(n176), .C(n76), .Y(n75) );
  NAND3X2M U80 ( .A(n76), .B(n175), .C(waddr[1]), .Y(n78) );
  NAND3X2M U81 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n79) );
  NAND3X2M U82 ( .A(waddr[0]), .B(n176), .C(n82), .Y(n83) );
  NAND3X2M U83 ( .A(n76), .B(n176), .C(waddr[0]), .Y(n77) );
  INVX2M U84 ( .A(wdata[0]), .Y(n167) );
  INVX2M U85 ( .A(wdata[1]), .Y(n168) );
  INVX2M U86 ( .A(wdata[2]), .Y(n169) );
  INVX2M U87 ( .A(wdata[3]), .Y(n170) );
  INVX2M U88 ( .A(wdata[4]), .Y(n171) );
  INVX2M U89 ( .A(wdata[5]), .Y(n172) );
  INVX2M U90 ( .A(wdata[6]), .Y(n173) );
  INVX2M U91 ( .A(wdata[7]), .Y(n174) );
  OAI2BB2X1M U92 ( .B0(n75), .B1(n167), .A0N(\mem[0][0] ), .A1N(n75), .Y(n86)
         );
  OAI2BB2X1M U93 ( .B0(n75), .B1(n168), .A0N(\mem[0][1] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U94 ( .B0(n75), .B1(n169), .A0N(\mem[0][2] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U95 ( .B0(n75), .B1(n170), .A0N(\mem[0][3] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U96 ( .B0(n75), .B1(n171), .A0N(\mem[0][4] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U97 ( .B0(n75), .B1(n172), .A0N(\mem[0][5] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U98 ( .B0(n75), .B1(n173), .A0N(\mem[0][6] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U99 ( .B0(n75), .B1(n174), .A0N(\mem[0][7] ), .A1N(n75), .Y(n93)
         );
  OAI2BB2X1M U100 ( .B0(n167), .B1(n79), .A0N(\mem[3][0] ), .A1N(n79), .Y(n110) );
  OAI2BB2X1M U101 ( .B0(n168), .B1(n79), .A0N(\mem[3][1] ), .A1N(n79), .Y(n111) );
  OAI2BB2X1M U102 ( .B0(n169), .B1(n79), .A0N(\mem[3][2] ), .A1N(n79), .Y(n112) );
  OAI2BB2X1M U103 ( .B0(n170), .B1(n79), .A0N(\mem[3][3] ), .A1N(n79), .Y(n113) );
  OAI2BB2X1M U104 ( .B0(n171), .B1(n79), .A0N(\mem[3][4] ), .A1N(n79), .Y(n114) );
  OAI2BB2X1M U105 ( .B0(n172), .B1(n79), .A0N(\mem[3][5] ), .A1N(n79), .Y(n115) );
  OAI2BB2X1M U106 ( .B0(n173), .B1(n79), .A0N(\mem[3][6] ), .A1N(n79), .Y(n116) );
  OAI2BB2X1M U107 ( .B0(n174), .B1(n79), .A0N(\mem[3][7] ), .A1N(n79), .Y(n117) );
  OAI2BB2X1M U108 ( .B0(n167), .B1(n83), .A0N(\mem[5][0] ), .A1N(n83), .Y(n126) );
  OAI2BB2X1M U109 ( .B0(n168), .B1(n83), .A0N(\mem[5][1] ), .A1N(n83), .Y(n127) );
  OAI2BB2X1M U110 ( .B0(n169), .B1(n83), .A0N(\mem[5][2] ), .A1N(n83), .Y(n128) );
  OAI2BB2X1M U111 ( .B0(n170), .B1(n83), .A0N(\mem[5][3] ), .A1N(n83), .Y(n129) );
  OAI2BB2X1M U112 ( .B0(n171), .B1(n83), .A0N(\mem[5][4] ), .A1N(n83), .Y(n130) );
  OAI2BB2X1M U113 ( .B0(n172), .B1(n83), .A0N(\mem[5][5] ), .A1N(n83), .Y(n131) );
  OAI2BB2X1M U114 ( .B0(n173), .B1(n83), .A0N(\mem[5][6] ), .A1N(n83), .Y(n132) );
  OAI2BB2X1M U115 ( .B0(n174), .B1(n83), .A0N(\mem[5][7] ), .A1N(n83), .Y(n133) );
  OAI2BB2X1M U116 ( .B0(n167), .B1(n78), .A0N(\mem[2][0] ), .A1N(n78), .Y(n102) );
  OAI2BB2X1M U117 ( .B0(n168), .B1(n78), .A0N(\mem[2][1] ), .A1N(n78), .Y(n103) );
  OAI2BB2X1M U118 ( .B0(n169), .B1(n78), .A0N(\mem[2][2] ), .A1N(n78), .Y(n104) );
  OAI2BB2X1M U119 ( .B0(n170), .B1(n78), .A0N(\mem[2][3] ), .A1N(n78), .Y(n105) );
  OAI2BB2X1M U120 ( .B0(n171), .B1(n78), .A0N(\mem[2][4] ), .A1N(n78), .Y(n106) );
  OAI2BB2X1M U121 ( .B0(n172), .B1(n78), .A0N(\mem[2][5] ), .A1N(n78), .Y(n107) );
  OAI2BB2X1M U122 ( .B0(n173), .B1(n78), .A0N(\mem[2][6] ), .A1N(n78), .Y(n108) );
  OAI2BB2X1M U123 ( .B0(n174), .B1(n78), .A0N(\mem[2][7] ), .A1N(n78), .Y(n109) );
  OAI2BB2X1M U124 ( .B0(n167), .B1(n77), .A0N(\mem[1][0] ), .A1N(n77), .Y(n94)
         );
  OAI2BB2X1M U125 ( .B0(n168), .B1(n77), .A0N(\mem[1][1] ), .A1N(n77), .Y(n95)
         );
  OAI2BB2X1M U126 ( .B0(n169), .B1(n77), .A0N(\mem[1][2] ), .A1N(n77), .Y(n96)
         );
  OAI2BB2X1M U127 ( .B0(n170), .B1(n77), .A0N(\mem[1][3] ), .A1N(n77), .Y(n97)
         );
  OAI2BB2X1M U128 ( .B0(n171), .B1(n77), .A0N(\mem[1][4] ), .A1N(n77), .Y(n98)
         );
  OAI2BB2X1M U129 ( .B0(n172), .B1(n77), .A0N(\mem[1][5] ), .A1N(n77), .Y(n99)
         );
  OAI2BB2X1M U130 ( .B0(n173), .B1(n77), .A0N(\mem[1][6] ), .A1N(n77), .Y(n100) );
  OAI2BB2X1M U131 ( .B0(n174), .B1(n77), .A0N(\mem[1][7] ), .A1N(n77), .Y(n101) );
  OAI2BB2X1M U132 ( .B0(n167), .B1(n81), .A0N(\mem[4][0] ), .A1N(n81), .Y(n118) );
  OAI2BB2X1M U133 ( .B0(n168), .B1(n81), .A0N(\mem[4][1] ), .A1N(n81), .Y(n119) );
  OAI2BB2X1M U134 ( .B0(n169), .B1(n81), .A0N(\mem[4][2] ), .A1N(n81), .Y(n120) );
  OAI2BB2X1M U135 ( .B0(n170), .B1(n81), .A0N(\mem[4][3] ), .A1N(n81), .Y(n121) );
  OAI2BB2X1M U136 ( .B0(n171), .B1(n81), .A0N(\mem[4][4] ), .A1N(n81), .Y(n122) );
  OAI2BB2X1M U137 ( .B0(n172), .B1(n81), .A0N(\mem[4][5] ), .A1N(n81), .Y(n123) );
  OAI2BB2X1M U138 ( .B0(n173), .B1(n81), .A0N(\mem[4][6] ), .A1N(n81), .Y(n124) );
  OAI2BB2X1M U139 ( .B0(n174), .B1(n81), .A0N(\mem[4][7] ), .A1N(n81), .Y(n125) );
  OAI2BB2X1M U140 ( .B0(n167), .B1(n158), .A0N(\mem[6][0] ), .A1N(n158), .Y(
        n134) );
  OAI2BB2X1M U141 ( .B0(n168), .B1(n158), .A0N(\mem[6][1] ), .A1N(n158), .Y(
        n135) );
  OAI2BB2X1M U142 ( .B0(n169), .B1(n158), .A0N(\mem[6][2] ), .A1N(n158), .Y(
        n136) );
  OAI2BB2X1M U143 ( .B0(n170), .B1(n158), .A0N(\mem[6][3] ), .A1N(n158), .Y(
        n137) );
  OAI2BB2X1M U144 ( .B0(n171), .B1(n158), .A0N(\mem[6][4] ), .A1N(n158), .Y(
        n138) );
  OAI2BB2X1M U145 ( .B0(n172), .B1(n158), .A0N(\mem[6][5] ), .A1N(n158), .Y(
        n139) );
  OAI2BB2X1M U146 ( .B0(n173), .B1(n158), .A0N(\mem[6][6] ), .A1N(n158), .Y(
        n140) );
  OAI2BB2X1M U147 ( .B0(n174), .B1(n158), .A0N(\mem[6][7] ), .A1N(n158), .Y(
        n141) );
  OAI2BB2X1M U148 ( .B0(n167), .B1(n157), .A0N(\mem[7][0] ), .A1N(n157), .Y(
        n142) );
  OAI2BB2X1M U149 ( .B0(n168), .B1(n157), .A0N(\mem[7][1] ), .A1N(n157), .Y(
        n143) );
  OAI2BB2X1M U150 ( .B0(n169), .B1(n157), .A0N(\mem[7][2] ), .A1N(n157), .Y(
        n144) );
  OAI2BB2X1M U151 ( .B0(n170), .B1(n157), .A0N(\mem[7][3] ), .A1N(n157), .Y(
        n145) );
  OAI2BB2X1M U152 ( .B0(n171), .B1(n157), .A0N(\mem[7][4] ), .A1N(n157), .Y(
        n146) );
  OAI2BB2X1M U153 ( .B0(n172), .B1(n157), .A0N(\mem[7][5] ), .A1N(n157), .Y(
        n147) );
  OAI2BB2X1M U154 ( .B0(n173), .B1(n157), .A0N(\mem[7][6] ), .A1N(n157), .Y(
        n148) );
  OAI2BB2X1M U155 ( .B0(n174), .B1(n157), .A0N(\mem[7][7] ), .A1N(n157), .Y(
        n149) );
  AND2X2M U156 ( .A(waddr[2]), .B(n80), .Y(n82) );
  NAND3X2M U157 ( .A(waddr[1]), .B(n175), .C(n82), .Y(n84) );
  NAND3X2M U158 ( .A(waddr[1]), .B(waddr[0]), .C(n82), .Y(n85) );
  INVX2M U159 ( .A(waddr[1]), .Y(n176) );
  BUFX4M U160 ( .A(N10), .Y(n156) );
  INVX2M U161 ( .A(waddr[0]), .Y(n175) );
  MX2X2M U162 ( .A(n68), .B(n67), .S0(N12), .Y(rdata[1]) );
  MX4X1M U163 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n156), .S1(N11), .Y(n68) );
  MX4X1M U164 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n156), .S1(N11), .Y(n67) );
  MX2X2M U165 ( .A(n70), .B(n69), .S0(N12), .Y(rdata[2]) );
  MX4X1M U166 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n156), .S1(N11), .Y(n70) );
  MX4X1M U167 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n156), .S1(N11), .Y(n69) );
  MX2X2M U168 ( .A(n72), .B(n71), .S0(N12), .Y(rdata[3]) );
  MX4X1M U169 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n156), .S1(N11), .Y(n72) );
  MX4X1M U170 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n156), .S1(N11), .Y(n71) );
  MX2X2M U171 ( .A(n74), .B(n73), .S0(N12), .Y(rdata[4]) );
  MX4X1M U172 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n156), .S1(N11), .Y(n74) );
  MX4X1M U173 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n156), .S1(N11), .Y(n73) );
  MX2X2M U174 ( .A(n151), .B(n150), .S0(N12), .Y(rdata[5]) );
  MX4X1M U175 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n156), .S1(N11), .Y(n151) );
  MX4X1M U176 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n156), .S1(N11), .Y(n150) );
  MX2X2M U177 ( .A(n153), .B(n152), .S0(N12), .Y(rdata[6]) );
  MX4X1M U178 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n156), .S1(N11), .Y(n153) );
  MX4X1M U179 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n156), .S1(N11), .Y(n152) );
  MX2X2M U180 ( .A(n155), .B(n154), .S0(N12), .Y(rdata[7]) );
  MX4X1M U181 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n156), .S1(N11), .Y(n155) );
  MX4X1M U182 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n156), .S1(N11), .Y(n154) );
  MX2X2M U183 ( .A(n66), .B(n65), .S0(N12), .Y(rdata[0]) );
  MX4X1M U184 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n156), .S1(N11), .Y(n66) );
  MX4X1M U185 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n156), .S1(N11), .Y(n65) );
  INVXLM U186 ( .A(test_se), .Y(n180) );
  INVXLM U187 ( .A(n180), .Y(n181) );
  INVXLM U188 ( .A(n180), .Y(n182) );
  INVXLM U189 ( .A(n180), .Y(n183) );
  INVXLM U190 ( .A(n180), .Y(n184) );
endmodule


module fifo_w_test_1 ( winc, wclk, wrst, wq2_rptr, wfull, waddr, wptr, test_si, 
        test_se );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wclk, wrst, test_si, test_se;
  output wfull;
  wire   n12, n13, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n14, n31;
  wire   [2:0] bin;
  wire   [3:0] gray;

  SDFFRQX2M \waddr_reg[2]  ( .D(n24), .SI(waddr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(waddr[2]) );
  SDFFRQX2M \waddr_reg[0]  ( .D(n26), .SI(gray[3]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(waddr[0]) );
  SDFFRQX2M \waddr_reg[1]  ( .D(n25), .SI(waddr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(waddr[1]) );
  SDFFRQX2M \bin_reg[3]  ( .D(n27), .SI(bin[2]), .SE(test_se), .CK(wclk), .RN(
        wrst), .Q(gray[3]) );
  SDFFRQX2M \bin_reg[2]  ( .D(n28), .SI(bin[1]), .SE(test_se), .CK(wclk), .RN(
        wrst), .Q(bin[2]) );
  SDFFRQX2M \bin_reg[1]  ( .D(n29), .SI(n31), .SE(test_se), .CK(wclk), .RN(
        wrst), .Q(bin[1]) );
  SDFFRX1M \bin_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(wclk), .RN(
        wrst), .Q(n31), .QN(n12) );
  SDFFRQX2M \wptr_reg[0]  ( .D(gray[0]), .SI(waddr[2]), .SE(test_se), .CK(wclk), .RN(wrst), .Q(wptr[0]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(gray[3]), .SI(wptr[2]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(wptr[3]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(gray[2]), .SI(wptr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(wptr[2]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(gray[1]), .SI(wptr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(wptr[1]) );
  NAND2X2M U14 ( .A(winc), .B(n13), .Y(n16) );
  INVX2M U15 ( .A(n13), .Y(wfull) );
  XNOR2X2M U16 ( .A(n12), .B(bin[1]), .Y(gray[0]) );
  NOR2X2M U17 ( .A(n16), .B(n12), .Y(n19) );
  XNOR2X2M U18 ( .A(waddr[0]), .B(n16), .Y(n26) );
  XNOR2X2M U19 ( .A(bin[2]), .B(n18), .Y(n28) );
  NAND4X2M U20 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n13) );
  CLKXOR2X2M U21 ( .A(wq2_rptr[3]), .B(gray[3]), .Y(n23) );
  XNOR2X2M U22 ( .A(gray[0]), .B(wq2_rptr[0]), .Y(n21) );
  XNOR2X2M U23 ( .A(gray[1]), .B(wq2_rptr[1]), .Y(n20) );
  NOR2BX2M U24 ( .AN(waddr[0]), .B(n16), .Y(n15) );
  NAND2X2M U25 ( .A(n19), .B(bin[1]), .Y(n18) );
  XNOR2X2M U26 ( .A(gray[3]), .B(n17), .Y(n27) );
  NAND2BX2M U27 ( .AN(n18), .B(bin[2]), .Y(n17) );
  CLKXOR2X2M U28 ( .A(gray[3]), .B(bin[2]), .Y(gray[2]) );
  CLKXOR2X2M U29 ( .A(wq2_rptr[2]), .B(gray[2]), .Y(n22) );
  CLKXOR2X2M U30 ( .A(bin[1]), .B(bin[2]), .Y(gray[1]) );
  CLKXOR2X2M U31 ( .A(waddr[1]), .B(n15), .Y(n25) );
  CLKXOR2X2M U32 ( .A(bin[1]), .B(n19), .Y(n29) );
  XNOR2X2M U33 ( .A(waddr[2]), .B(n14), .Y(n24) );
  NAND2X2M U34 ( .A(n15), .B(waddr[1]), .Y(n14) );
  CLKXOR2X2M U35 ( .A(n12), .B(n16), .Y(n30) );
endmodule


module fifo_r_test_1 ( rinc, rclk, rrst, rq2_wptr, rempty, raddr, rptr, 
        test_si, test_se );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, rclk, rrst, test_si, test_se;
  output rempty;
  wire   n12, n13, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n14, n31;
  wire   [2:0] bin;
  wire   [3:0] ggray;

  SDFFRQX2M \raddr_reg[0]  ( .D(n26), .SI(ggray[3]), .SE(test_se), .CK(rclk), 
        .RN(rrst), .Q(raddr[0]) );
  SDFFRQX2M \raddr_reg[2]  ( .D(n24), .SI(raddr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst), .Q(raddr[2]) );
  SDFFRX1M \bin_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(rclk), .RN(
        rrst), .Q(n31), .QN(n12) );
  SDFFRQX2M \raddr_reg[1]  ( .D(n25), .SI(raddr[0]), .SE(test_se), .CK(rclk), 
        .RN(rrst), .Q(raddr[1]) );
  SDFFRQX2M \bin_reg[3]  ( .D(n27), .SI(bin[2]), .SE(test_se), .CK(rclk), .RN(
        rrst), .Q(ggray[3]) );
  SDFFRQX2M \bin_reg[2]  ( .D(n28), .SI(bin[1]), .SE(test_se), .CK(rclk), .RN(
        rrst), .Q(bin[2]) );
  SDFFRQX2M \bin_reg[1]  ( .D(n29), .SI(n31), .SE(test_se), .CK(rclk), .RN(
        rrst), .Q(bin[1]) );
  SDFFRQX2M \rptr_reg[0]  ( .D(ggray[0]), .SI(raddr[2]), .SE(test_se), .CK(
        rclk), .RN(rrst), .Q(rptr[0]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(ggray[3]), .SI(rptr[2]), .SE(test_se), .CK(rclk), .RN(rrst), .Q(rptr[3]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(ggray[2]), .SI(rptr[1]), .SE(test_se), .CK(rclk), .RN(rrst), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(ggray[1]), .SI(rptr[0]), .SE(test_se), .CK(rclk), .RN(rrst), .Q(rptr[1]) );
  INVX2M U14 ( .A(n13), .Y(rempty) );
  XNOR2X2M U15 ( .A(ggray[2]), .B(rq2_wptr[2]), .Y(n23) );
  NOR2X2M U16 ( .A(n16), .B(n12), .Y(n19) );
  XNOR2X2M U17 ( .A(raddr[0]), .B(n16), .Y(n26) );
  XNOR2X2M U18 ( .A(ggray[3]), .B(n17), .Y(n27) );
  NAND2BX2M U19 ( .AN(n18), .B(bin[2]), .Y(n17) );
  XNOR2X2M U20 ( .A(bin[2]), .B(n18), .Y(n28) );
  NAND4X2M U21 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n13) );
  XNOR2X2M U22 ( .A(ggray[3]), .B(rq2_wptr[3]), .Y(n22) );
  XNOR2X2M U23 ( .A(ggray[0]), .B(rq2_wptr[0]), .Y(n21) );
  XNOR2X2M U24 ( .A(ggray[1]), .B(rq2_wptr[1]), .Y(n20) );
  NAND2X2M U25 ( .A(rinc), .B(n13), .Y(n16) );
  NOR2BX2M U26 ( .AN(raddr[0]), .B(n16), .Y(n15) );
  NAND2X2M U27 ( .A(n19), .B(bin[1]), .Y(n18) );
  CLKXOR2X2M U28 ( .A(bin[1]), .B(bin[2]), .Y(ggray[1]) );
  CLKXOR2X2M U29 ( .A(ggray[3]), .B(bin[2]), .Y(ggray[2]) );
  CLKXOR2X2M U30 ( .A(bin[1]), .B(n19), .Y(n29) );
  CLKXOR2X2M U31 ( .A(raddr[1]), .B(n15), .Y(n25) );
  XNOR2X2M U32 ( .A(raddr[2]), .B(n14), .Y(n24) );
  NAND2X2M U33 ( .A(n15), .B(raddr[1]), .Y(n14) );
  CLKXOR2X2M U34 ( .A(n12), .B(n16), .Y(n30) );
  XNOR2X2M U35 ( .A(n12), .B(bin[1]), .Y(ggray[0]) );
endmodule


module sync_r2w_test_1 ( wclk, wrst, rptr, wq2_rptr, test_si, test_se );
  input [3:0] rptr;
  output [3:0] wq2_rptr;
  input wclk, wrst, test_si, test_se;

  wire   [3:0] mem;

  SDFFRQX2M \wq2_rptr_reg[1]  ( .D(mem[1]), .SI(wq2_rptr[0]), .SE(test_se), 
        .CK(wclk), .RN(wrst), .Q(wq2_rptr[1]) );
  SDFFRQX2M \wq2_rptr_reg[0]  ( .D(mem[0]), .SI(mem[3]), .SE(test_se), .CK(
        wclk), .RN(wrst), .Q(wq2_rptr[0]) );
  SDFFRQX2M \wq2_rptr_reg[3]  ( .D(mem[3]), .SI(wq2_rptr[2]), .SE(test_se), 
        .CK(wclk), .RN(wrst), .Q(wq2_rptr[3]) );
  SDFFRQX2M \wq2_rptr_reg[2]  ( .D(mem[2]), .SI(wq2_rptr[1]), .SE(test_se), 
        .CK(wclk), .RN(wrst), .Q(wq2_rptr[2]) );
  SDFFRQX2M \mem_reg[3]  ( .D(rptr[3]), .SI(mem[2]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(mem[3]) );
  SDFFRQX2M \mem_reg[2]  ( .D(rptr[2]), .SI(mem[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(mem[2]) );
  SDFFRQX2M \mem_reg[1]  ( .D(rptr[1]), .SI(mem[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(mem[1]) );
  SDFFRQX2M \mem_reg[0]  ( .D(rptr[0]), .SI(test_si), .SE(test_se), .CK(wclk), 
        .RN(wrst), .Q(mem[0]) );
endmodule


module sync_w2r_test_1 ( rclk, rrst, wptr, rq2_rptr, test_si, test_se );
  input [3:0] wptr;
  output [3:0] rq2_rptr;
  input rclk, rrst, test_si, test_se;

  wire   [3:0] mem;

  SDFFRQX2M \rq2_rptr_reg[3]  ( .D(mem[3]), .SI(rq2_rptr[2]), .SE(test_se), 
        .CK(rclk), .RN(rrst), .Q(rq2_rptr[3]) );
  SDFFRQX2M \rq2_rptr_reg[2]  ( .D(mem[2]), .SI(rq2_rptr[1]), .SE(test_se), 
        .CK(rclk), .RN(rrst), .Q(rq2_rptr[2]) );
  SDFFRQX2M \rq2_rptr_reg[1]  ( .D(mem[1]), .SI(rq2_rptr[0]), .SE(test_se), 
        .CK(rclk), .RN(rrst), .Q(rq2_rptr[1]) );
  SDFFRQX2M \rq2_rptr_reg[0]  ( .D(mem[0]), .SI(mem[3]), .SE(test_se), .CK(
        rclk), .RN(rrst), .Q(rq2_rptr[0]) );
  SDFFRQX2M \mem_reg[3]  ( .D(wptr[3]), .SI(mem[2]), .SE(test_se), .CK(rclk), 
        .RN(rrst), .Q(mem[3]) );
  SDFFRQX2M \mem_reg[2]  ( .D(wptr[2]), .SI(mem[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst), .Q(mem[2]) );
  SDFFRQX2M \mem_reg[1]  ( .D(wptr[1]), .SI(mem[0]), .SE(test_se), .CK(rclk), 
        .RN(rrst), .Q(mem[1]) );
  SDFFRQX2M \mem_reg[0]  ( .D(wptr[0]), .SI(test_si), .SE(test_se), .CK(rclk), 
        .RN(rrst), .Q(mem[0]) );
endmodule


module fifo_top_test_1 ( wclk_t, wrst_t, winc_t, rclk_t, rrst_t, rinc_t, 
        wdata_t, full_t, empty_t, rdata_t, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] wdata_t;
  output [7:0] rdata_t;
  input wclk_t, wrst_t, winc_t, rclk_t, rrst_t, rinc_t, test_si2, test_si1,
         test_se;
  output full_t, empty_t, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5;
  wire   [2:0] waddr_t;
  wire   [2:0] raddr_t;
  wire   [3:0] wq2_rptr_t;
  wire   [3:0] wptr_t;
  wire   [3:0] rq2_rptr_t;
  wire   [3:0] rptr_t;
  assign test_so2 = wptr_t[3];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(wrst_t), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rrst_t), .Y(n2) );
  fifo_mem_test_1 memory ( .wdata(wdata_t), .rdata(rdata_t), .wclk(wclk_t), 
        .wrst(n3), .waddr(waddr_t), .raddr(raddr_t), .winc(winc_t), .wfull(
        full_t), .test_si2(test_si2), .test_si1(test_si1), .test_so2(n5), 
        .test_so1(test_so1), .test_se(test_se) );
  fifo_w_test_1 write_domain ( .winc(winc_t), .wclk(wclk_t), .wrst(n3), 
        .wq2_rptr(wq2_rptr_t), .wfull(full_t), .waddr(waddr_t), .wptr(wptr_t), 
        .test_si(rq2_rptr_t[3]), .test_se(test_se) );
  fifo_r_test_1 read_domain ( .rinc(rinc_t), .rclk(rclk_t), .rrst(n1), 
        .rq2_wptr(rq2_rptr_t), .rempty(empty_t), .raddr(raddr_t), .rptr(rptr_t), .test_si(wq2_rptr_t[3]), .test_se(test_se) );
  sync_r2w_test_1 r2w ( .wclk(wclk_t), .wrst(n3), .rptr(rptr_t), .wq2_rptr(
        wq2_rptr_t), .test_si(n5), .test_se(test_se) );
  sync_w2r_test_1 w2r ( .rclk(rclk_t), .rrst(n1), .wptr(wptr_t), .rq2_rptr(
        rq2_rptr_t), .test_si(rptr_t[3]), .test_se(test_se) );
endmodule


module reg_file_test_1 ( rst, clk, RdEn, WrEn, address, WrData, RdData, 
        rd_d_vld, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so1, test_se );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input rst, clk, RdEn, WrEn, test_si3, test_si2, test_si1, test_se;
  output rd_d_vld, test_so1;
  wire   N11, N12, N13, N14, \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         \mem[14][7] , \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] ,
         \mem[14][2] , \mem[14][1] , \mem[14][0] , \mem[13][7] , \mem[13][6] ,
         \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] , \mem[13][1] ,
         \mem[13][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[9][7] , \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] ,
         \mem[9][2] , \mem[9][1] , \mem[9][0] , \mem[8][7] , \mem[8][6] ,
         \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] , \mem[8][1] ,
         \mem[8][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , N36, N37, N38, N39, N40, N41,
         N42, N43, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n370, n371,
         n372, n373;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];
  assign test_so1 = \mem[12][0] ;

  SDFFSQX2M \mem_reg[2][0]  ( .D(n202), .SI(REG1[7]), .SE(test_se), .CK(clk), 
        .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M rd_d_vld_reg ( .D(n185), .SI(\mem[15][7] ), .SE(n372), .CK(clk), 
        .RN(n342), .Q(rd_d_vld) );
  SDFFRQX2M \mem_reg[13][7]  ( .D(n297), .SI(\mem[13][6] ), .SE(n371), .CK(clk), .RN(n350), .Q(\mem[13][7] ) );
  SDFFRQX2M \mem_reg[13][6]  ( .D(n296), .SI(\mem[13][5] ), .SE(n370), .CK(clk), .RN(n350), .Q(\mem[13][6] ) );
  SDFFRQX2M \mem_reg[13][5]  ( .D(n295), .SI(\mem[13][4] ), .SE(n373), .CK(clk), .RN(n350), .Q(\mem[13][5] ) );
  SDFFRQX2M \mem_reg[13][4]  ( .D(n294), .SI(\mem[13][3] ), .SE(n372), .CK(clk), .RN(n350), .Q(\mem[13][4] ) );
  SDFFRQX2M \mem_reg[13][3]  ( .D(n293), .SI(\mem[13][2] ), .SE(n371), .CK(clk), .RN(n350), .Q(\mem[13][3] ) );
  SDFFRQX2M \mem_reg[13][2]  ( .D(n292), .SI(\mem[13][1] ), .SE(n370), .CK(clk), .RN(n350), .Q(\mem[13][2] ) );
  SDFFRQX2M \mem_reg[13][1]  ( .D(n291), .SI(\mem[13][0] ), .SE(n373), .CK(clk), .RN(n350), .Q(\mem[13][1] ) );
  SDFFRQX2M \mem_reg[13][0]  ( .D(n290), .SI(\mem[12][7] ), .SE(n372), .CK(clk), .RN(n350), .Q(\mem[13][0] ) );
  SDFFRQX2M \mem_reg[9][7]  ( .D(n265), .SI(\mem[9][6] ), .SE(n371), .CK(clk), 
        .RN(n348), .Q(\mem[9][7] ) );
  SDFFRQX2M \mem_reg[9][6]  ( .D(n264), .SI(\mem[9][5] ), .SE(n370), .CK(clk), 
        .RN(n348), .Q(\mem[9][6] ) );
  SDFFRQX2M \mem_reg[9][5]  ( .D(n263), .SI(\mem[9][4] ), .SE(n373), .CK(clk), 
        .RN(n348), .Q(\mem[9][5] ) );
  SDFFRQX2M \mem_reg[9][4]  ( .D(n262), .SI(\mem[9][3] ), .SE(n372), .CK(clk), 
        .RN(n348), .Q(\mem[9][4] ) );
  SDFFRQX2M \mem_reg[9][3]  ( .D(n261), .SI(\mem[9][2] ), .SE(n371), .CK(clk), 
        .RN(n348), .Q(\mem[9][3] ) );
  SDFFRQX2M \mem_reg[9][2]  ( .D(n260), .SI(\mem[9][1] ), .SE(n370), .CK(clk), 
        .RN(n348), .Q(\mem[9][2] ) );
  SDFFRQX2M \mem_reg[9][1]  ( .D(n259), .SI(\mem[9][0] ), .SE(n373), .CK(clk), 
        .RN(n348), .Q(\mem[9][1] ) );
  SDFFRQX2M \mem_reg[9][0]  ( .D(n258), .SI(\mem[8][7] ), .SE(n372), .CK(clk), 
        .RN(n347), .Q(\mem[9][0] ) );
  SDFFRQX2M \mem_reg[5][7]  ( .D(n233), .SI(\mem[5][6] ), .SE(n371), .CK(clk), 
        .RN(n346), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n232), .SI(\mem[5][5] ), .SE(n370), .CK(clk), 
        .RN(n346), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n231), .SI(\mem[5][4] ), .SE(n373), .CK(clk), 
        .RN(n345), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n230), .SI(\mem[5][3] ), .SE(n372), .CK(clk), 
        .RN(n345), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n229), .SI(\mem[5][2] ), .SE(n371), .CK(clk), 
        .RN(n345), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n228), .SI(\mem[5][1] ), .SE(n370), .CK(clk), 
        .RN(n345), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n227), .SI(\mem[5][0] ), .SE(n373), .CK(clk), 
        .RN(n345), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n226), .SI(\mem[4][7] ), .SE(n372), .CK(clk), 
        .RN(n345), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[15][7]  ( .D(n313), .SI(\mem[15][6] ), .SE(n371), .CK(clk), .RN(n342), .Q(\mem[15][7] ) );
  SDFFRQX2M \mem_reg[15][6]  ( .D(n312), .SI(\mem[15][5] ), .SE(n370), .CK(clk), .RN(n351), .Q(\mem[15][6] ) );
  SDFFRQX2M \mem_reg[15][5]  ( .D(n311), .SI(\mem[15][4] ), .SE(n373), .CK(clk), .RN(n351), .Q(\mem[15][5] ) );
  SDFFRQX2M \mem_reg[15][4]  ( .D(n310), .SI(\mem[15][3] ), .SE(n372), .CK(clk), .RN(n351), .Q(\mem[15][4] ) );
  SDFFRQX2M \mem_reg[15][3]  ( .D(n309), .SI(\mem[15][2] ), .SE(n371), .CK(clk), .RN(n351), .Q(\mem[15][3] ) );
  SDFFRQX2M \mem_reg[15][2]  ( .D(n308), .SI(\mem[15][1] ), .SE(n370), .CK(clk), .RN(n351), .Q(\mem[15][2] ) );
  SDFFRQX2M \mem_reg[15][1]  ( .D(n307), .SI(\mem[15][0] ), .SE(n373), .CK(clk), .RN(n351), .Q(\mem[15][1] ) );
  SDFFRQX2M \mem_reg[15][0]  ( .D(n306), .SI(\mem[14][7] ), .SE(n372), .CK(clk), .RN(n351), .Q(\mem[15][0] ) );
  SDFFRQX2M \mem_reg[11][7]  ( .D(n281), .SI(\mem[11][6] ), .SE(n371), .CK(clk), .RN(n349), .Q(\mem[11][7] ) );
  SDFFRQX2M \mem_reg[11][6]  ( .D(n280), .SI(\mem[11][5] ), .SE(n370), .CK(clk), .RN(n349), .Q(\mem[11][6] ) );
  SDFFRQX2M \mem_reg[11][5]  ( .D(n279), .SI(\mem[11][4] ), .SE(n373), .CK(clk), .RN(n349), .Q(\mem[11][5] ) );
  SDFFRQX2M \mem_reg[11][4]  ( .D(n278), .SI(\mem[11][3] ), .SE(n372), .CK(clk), .RN(n349), .Q(\mem[11][4] ) );
  SDFFRQX2M \mem_reg[11][3]  ( .D(n277), .SI(\mem[11][2] ), .SE(n371), .CK(clk), .RN(n349), .Q(\mem[11][3] ) );
  SDFFRQX2M \mem_reg[11][2]  ( .D(n276), .SI(\mem[11][1] ), .SE(n370), .CK(clk), .RN(n349), .Q(\mem[11][2] ) );
  SDFFRQX2M \mem_reg[11][1]  ( .D(n275), .SI(\mem[11][0] ), .SE(n373), .CK(clk), .RN(n349), .Q(\mem[11][1] ) );
  SDFFRQX2M \mem_reg[11][0]  ( .D(n274), .SI(\mem[10][7] ), .SE(n372), .CK(clk), .RN(n349), .Q(\mem[11][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n249), .SI(\mem[7][6] ), .SE(n371), .CK(clk), 
        .RN(n347), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n248), .SI(\mem[7][5] ), .SE(n370), .CK(clk), 
        .RN(n347), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n247), .SI(\mem[7][4] ), .SE(n373), .CK(clk), 
        .RN(n347), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n246), .SI(\mem[7][3] ), .SE(n372), .CK(clk), 
        .RN(n347), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n245), .SI(\mem[7][2] ), .SE(n371), .CK(clk), 
        .RN(n347), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n244), .SI(\mem[7][1] ), .SE(n370), .CK(clk), 
        .RN(n346), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n243), .SI(\mem[7][0] ), .SE(n373), .CK(clk), 
        .RN(n346), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n242), .SI(\mem[6][7] ), .SE(n372), .CK(clk), 
        .RN(n346), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[14][7]  ( .D(n305), .SI(\mem[14][6] ), .SE(n371), .CK(clk), .RN(n351), .Q(\mem[14][7] ) );
  SDFFRQX2M \mem_reg[14][6]  ( .D(n304), .SI(\mem[14][5] ), .SE(n370), .CK(clk), .RN(n351), .Q(\mem[14][6] ) );
  SDFFRQX2M \mem_reg[14][5]  ( .D(n303), .SI(\mem[14][4] ), .SE(n373), .CK(clk), .RN(n351), .Q(\mem[14][5] ) );
  SDFFRQX2M \mem_reg[14][4]  ( .D(n302), .SI(\mem[14][3] ), .SE(n372), .CK(clk), .RN(n351), .Q(\mem[14][4] ) );
  SDFFRQX2M \mem_reg[14][3]  ( .D(n301), .SI(\mem[14][2] ), .SE(n371), .CK(clk), .RN(n351), .Q(\mem[14][3] ) );
  SDFFRQX2M \mem_reg[14][2]  ( .D(n300), .SI(\mem[14][1] ), .SE(n370), .CK(clk), .RN(n350), .Q(\mem[14][2] ) );
  SDFFRQX2M \mem_reg[14][1]  ( .D(n299), .SI(\mem[14][0] ), .SE(n373), .CK(clk), .RN(n350), .Q(\mem[14][1] ) );
  SDFFRQX2M \mem_reg[14][0]  ( .D(n298), .SI(\mem[13][7] ), .SE(n372), .CK(clk), .RN(n350), .Q(\mem[14][0] ) );
  SDFFRQX2M \mem_reg[10][7]  ( .D(n273), .SI(\mem[10][6] ), .SE(n371), .CK(clk), .RN(n349), .Q(\mem[10][7] ) );
  SDFFRQX2M \mem_reg[10][6]  ( .D(n272), .SI(\mem[10][5] ), .SE(n370), .CK(clk), .RN(n348), .Q(\mem[10][6] ) );
  SDFFRQX2M \mem_reg[10][5]  ( .D(n271), .SI(\mem[10][4] ), .SE(n373), .CK(clk), .RN(n348), .Q(\mem[10][5] ) );
  SDFFRQX2M \mem_reg[10][4]  ( .D(n270), .SI(\mem[10][3] ), .SE(n372), .CK(clk), .RN(n348), .Q(\mem[10][4] ) );
  SDFFRQX2M \mem_reg[10][3]  ( .D(n269), .SI(\mem[10][2] ), .SE(n371), .CK(clk), .RN(n348), .Q(\mem[10][3] ) );
  SDFFRQX2M \mem_reg[10][2]  ( .D(n268), .SI(\mem[10][1] ), .SE(n370), .CK(clk), .RN(n348), .Q(\mem[10][2] ) );
  SDFFRQX2M \mem_reg[10][1]  ( .D(n267), .SI(\mem[10][0] ), .SE(n373), .CK(clk), .RN(n348), .Q(\mem[10][1] ) );
  SDFFRQX2M \mem_reg[10][0]  ( .D(n266), .SI(\mem[9][7] ), .SE(n372), .CK(clk), 
        .RN(n348), .Q(\mem[10][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n241), .SI(\mem[6][6] ), .SE(n371), .CK(clk), 
        .RN(n346), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n240), .SI(\mem[6][5] ), .SE(n370), .CK(clk), 
        .RN(n346), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n239), .SI(\mem[6][4] ), .SE(n373), .CK(clk), 
        .RN(n346), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n238), .SI(\mem[6][3] ), .SE(n372), .CK(clk), 
        .RN(n346), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n237), .SI(\mem[6][2] ), .SE(n371), .CK(clk), 
        .RN(n346), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n236), .SI(\mem[6][1] ), .SE(n370), .CK(clk), 
        .RN(n346), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n235), .SI(\mem[6][0] ), .SE(n373), .CK(clk), 
        .RN(n346), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n234), .SI(\mem[5][7] ), .SE(n372), .CK(clk), 
        .RN(n346), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[12][7]  ( .D(n289), .SI(\mem[12][6] ), .SE(n371), .CK(clk), .RN(n350), .Q(\mem[12][7] ) );
  SDFFRQX2M \mem_reg[12][6]  ( .D(n288), .SI(\mem[12][5] ), .SE(n370), .CK(clk), .RN(n350), .Q(\mem[12][6] ) );
  SDFFRQX2M \mem_reg[12][5]  ( .D(n287), .SI(\mem[12][4] ), .SE(n373), .CK(clk), .RN(n350), .Q(\mem[12][5] ) );
  SDFFRQX2M \mem_reg[12][4]  ( .D(n286), .SI(\mem[12][3] ), .SE(n372), .CK(clk), .RN(n349), .Q(\mem[12][4] ) );
  SDFFRQX2M \mem_reg[12][3]  ( .D(n285), .SI(\mem[12][2] ), .SE(n371), .CK(clk), .RN(n349), .Q(\mem[12][3] ) );
  SDFFRQX2M \mem_reg[12][2]  ( .D(n284), .SI(\mem[12][1] ), .SE(n370), .CK(clk), .RN(n349), .Q(\mem[12][2] ) );
  SDFFRQX2M \mem_reg[12][1]  ( .D(n283), .SI(test_si3), .SE(n373), .CK(clk), 
        .RN(n349), .Q(\mem[12][1] ) );
  SDFFRQX2M \mem_reg[12][0]  ( .D(n282), .SI(\mem[11][7] ), .SE(n372), .CK(clk), .RN(n349), .Q(\mem[12][0] ) );
  SDFFRQX2M \mem_reg[8][7]  ( .D(n257), .SI(\mem[8][6] ), .SE(n371), .CK(clk), 
        .RN(n347), .Q(\mem[8][7] ) );
  SDFFRQX2M \mem_reg[8][6]  ( .D(n256), .SI(\mem[8][5] ), .SE(n370), .CK(clk), 
        .RN(n347), .Q(\mem[8][6] ) );
  SDFFRQX2M \mem_reg[8][5]  ( .D(n255), .SI(\mem[8][4] ), .SE(n373), .CK(clk), 
        .RN(n347), .Q(\mem[8][5] ) );
  SDFFRQX2M \mem_reg[8][4]  ( .D(n254), .SI(\mem[8][3] ), .SE(n372), .CK(clk), 
        .RN(n347), .Q(\mem[8][4] ) );
  SDFFRQX2M \mem_reg[8][3]  ( .D(n253), .SI(\mem[8][2] ), .SE(n371), .CK(clk), 
        .RN(n347), .Q(\mem[8][3] ) );
  SDFFRQX2M \mem_reg[8][2]  ( .D(n252), .SI(\mem[8][1] ), .SE(n370), .CK(clk), 
        .RN(n347), .Q(\mem[8][2] ) );
  SDFFRQX2M \mem_reg[8][1]  ( .D(n251), .SI(\mem[8][0] ), .SE(n373), .CK(clk), 
        .RN(n347), .Q(\mem[8][1] ) );
  SDFFRQX2M \mem_reg[8][0]  ( .D(n250), .SI(\mem[7][7] ), .SE(n372), .CK(clk), 
        .RN(n347), .Q(\mem[8][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n225), .SI(\mem[4][6] ), .SE(n371), .CK(clk), 
        .RN(n345), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n224), .SI(\mem[4][5] ), .SE(n370), .CK(clk), 
        .RN(n345), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n223), .SI(\mem[4][4] ), .SE(n373), .CK(clk), 
        .RN(n345), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n222), .SI(\mem[4][3] ), .SE(n372), .CK(clk), 
        .RN(n345), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n221), .SI(\mem[4][2] ), .SE(n371), .CK(clk), 
        .RN(n345), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n220), .SI(\mem[4][1] ), .SE(n370), .CK(clk), 
        .RN(n345), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n219), .SI(\mem[4][0] ), .SE(n373), .CK(clk), 
        .RN(n345), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(n372), .CK(clk), 
        .RN(n345), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(n371), .CK(clk), 
        .RN(n344), .Q(REG3[0]) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(n370), .CK(clk), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(n373), .CK(clk), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(n372), .CK(clk), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(n371), .CK(clk), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n190), .SI(test_si2), .SE(n370), .CK(clk), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(n373), .CK(clk), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(n372), .CK(clk), 
        .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(n371), .CK(clk), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(n370), .CK(clk), 
        .RN(n342), .Q(REG0[0]) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(n373), .CK(clk), 
        .RN(n343), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(n372), .CK(clk), 
        .RN(n342), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(n371), .CK(clk), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(n370), .CK(clk), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(n373), .CK(clk), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(n372), .CK(clk), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(n371), .CK(clk), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(test_si1), .SE(n370), .CK(clk), 
        .RN(n346), .Q(RdData[0]) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(n373), .CK(clk), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(n372), .CK(clk), 
        .RN(n344), .Q(REG1[5]) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(n371), .CK(clk), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \mem_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(n370), .CK(clk), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(n373), .CK(clk), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(n372), .CK(clk), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(n371), .CK(clk), 
        .RN(n343), .Q(REG1[0]) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(n370), .CK(clk), 
        .RN(n344), .Q(REG2[1]) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(n373), .CK(clk), 
        .RN(n344), .Q(REG3[1]) );
  SDFFSQX2M \mem_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(n370), .CK(clk), 
        .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(n372), .CK(clk), 
        .RN(n344), .Q(REG3[3]) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(n371), .CK(clk), 
        .RN(n344), .Q(REG3[4]) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(n370), .CK(clk), 
        .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(n373), .CK(clk), 
        .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(n372), .CK(clk), 
        .RN(n344), .Q(REG3[7]) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(n371), .CK(clk), 
        .RN(n344), .Q(REG2[2]) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(n370), .CK(clk), 
        .RN(n344), .Q(REG2[4]) );
  SDFFSQX2M \mem_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(n373), .CK(clk), 
        .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(n373), .CK(clk), 
        .RN(n344), .Q(REG2[3]) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(n372), .CK(clk), 
        .RN(n344), .Q(REG2[5]) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n208), .SI(REG2[5]), .SE(n371), .CK(clk), 
        .RN(n344), .Q(REG2[6]) );
  NOR2X2M U140 ( .A(n336), .B(N13), .Y(n152) );
  NOR2BX2M U141 ( .AN(N13), .B(n336), .Y(n160) );
  NOR2BX2M U142 ( .AN(N13), .B(n341), .Y(n163) );
  INVX2M U143 ( .A(WrData[7]), .Y(n365) );
  NOR2X2M U144 ( .A(n341), .B(N13), .Y(n157) );
  INVX2M U145 ( .A(n337), .Y(n338) );
  INVX2M U146 ( .A(n335), .Y(n336) );
  INVX2M U147 ( .A(n337), .Y(n339) );
  BUFX2M U148 ( .A(n340), .Y(n337) );
  BUFX2M U149 ( .A(n341), .Y(n335) );
  INVX2M U150 ( .A(n149), .Y(n357) );
  BUFX2M U151 ( .A(n356), .Y(n343) );
  BUFX2M U152 ( .A(n355), .Y(n344) );
  BUFX2M U153 ( .A(n355), .Y(n345) );
  BUFX2M U154 ( .A(n354), .Y(n346) );
  BUFX2M U155 ( .A(n354), .Y(n347) );
  BUFX2M U156 ( .A(n353), .Y(n348) );
  BUFX2M U157 ( .A(n353), .Y(n349) );
  BUFX2M U158 ( .A(n352), .Y(n350) );
  BUFX2M U159 ( .A(n356), .Y(n342) );
  BUFX2M U160 ( .A(n352), .Y(n351) );
  NOR2BX2M U161 ( .AN(n164), .B(N11), .Y(n153) );
  NOR2BX2M U162 ( .AN(n164), .B(n340), .Y(n155) );
  NOR2BX2M U163 ( .AN(n175), .B(N11), .Y(n167) );
  NOR2BX2M U164 ( .AN(n175), .B(n340), .Y(n169) );
  NAND2X2M U165 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U166 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U167 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U168 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U169 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U170 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U171 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U172 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U173 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U174 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U175 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U176 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U177 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U178 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U179 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U180 ( .A(n152), .B(n153), .Y(n151) );
  NOR2BX2M U181 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  NAND2BX2M U182 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  INVX2M U183 ( .A(WrData[0]), .Y(n364) );
  INVX2M U184 ( .A(WrData[1]), .Y(n363) );
  INVX2M U185 ( .A(WrData[2]), .Y(n362) );
  INVX2M U186 ( .A(WrData[3]), .Y(n361) );
  INVX2M U187 ( .A(WrData[4]), .Y(n360) );
  INVX2M U188 ( .A(WrData[5]), .Y(n359) );
  INVX2M U189 ( .A(WrData[6]), .Y(n358) );
  BUFX2M U190 ( .A(rst), .Y(n355) );
  BUFX2M U191 ( .A(rst), .Y(n354) );
  BUFX2M U192 ( .A(rst), .Y(n353) );
  BUFX2M U193 ( .A(rst), .Y(n352) );
  BUFX2M U194 ( .A(rst), .Y(n356) );
  OAI2BB2X1M U195 ( .B0(n151), .B1(n364), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U196 ( .B0(n151), .B1(n363), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U197 ( .B0(n151), .B1(n362), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U198 ( .B0(n151), .B1(n361), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U199 ( .B0(n151), .B1(n360), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U200 ( .B0(n151), .B1(n359), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U201 ( .B0(n151), .B1(n358), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U202 ( .B0(n151), .B1(n365), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U203 ( .B0(n364), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U204 ( .B0(n363), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U205 ( .B0(n362), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U206 ( .B0(n361), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U207 ( .B0(n360), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U208 ( .B0(n359), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U209 ( .B0(n358), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U210 ( .B0(n365), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U211 ( .B0(n364), .B1(n159), .A0N(\mem[4][0] ), .A1N(n159), .Y(
        n218) );
  OAI2BB2X1M U212 ( .B0(n363), .B1(n159), .A0N(\mem[4][1] ), .A1N(n159), .Y(
        n219) );
  OAI2BB2X1M U213 ( .B0(n362), .B1(n159), .A0N(\mem[4][2] ), .A1N(n159), .Y(
        n220) );
  OAI2BB2X1M U214 ( .B0(n361), .B1(n159), .A0N(\mem[4][3] ), .A1N(n159), .Y(
        n221) );
  OAI2BB2X1M U215 ( .B0(n360), .B1(n159), .A0N(\mem[4][4] ), .A1N(n159), .Y(
        n222) );
  OAI2BB2X1M U216 ( .B0(n359), .B1(n159), .A0N(\mem[4][5] ), .A1N(n159), .Y(
        n223) );
  OAI2BB2X1M U217 ( .B0(n358), .B1(n159), .A0N(\mem[4][6] ), .A1N(n159), .Y(
        n224) );
  OAI2BB2X1M U218 ( .B0(n365), .B1(n159), .A0N(\mem[4][7] ), .A1N(n159), .Y(
        n225) );
  OAI2BB2X1M U219 ( .B0(n364), .B1(n161), .A0N(\mem[5][0] ), .A1N(n161), .Y(
        n226) );
  OAI2BB2X1M U220 ( .B0(n363), .B1(n161), .A0N(\mem[5][1] ), .A1N(n161), .Y(
        n227) );
  OAI2BB2X1M U221 ( .B0(n362), .B1(n161), .A0N(\mem[5][2] ), .A1N(n161), .Y(
        n228) );
  OAI2BB2X1M U222 ( .B0(n361), .B1(n161), .A0N(\mem[5][3] ), .A1N(n161), .Y(
        n229) );
  OAI2BB2X1M U223 ( .B0(n360), .B1(n161), .A0N(\mem[5][4] ), .A1N(n161), .Y(
        n230) );
  OAI2BB2X1M U224 ( .B0(n359), .B1(n161), .A0N(\mem[5][5] ), .A1N(n161), .Y(
        n231) );
  OAI2BB2X1M U225 ( .B0(n358), .B1(n161), .A0N(\mem[5][6] ), .A1N(n161), .Y(
        n232) );
  OAI2BB2X1M U226 ( .B0(n365), .B1(n161), .A0N(\mem[5][7] ), .A1N(n161), .Y(
        n233) );
  OAI2BB2X1M U227 ( .B0(n364), .B1(n162), .A0N(\mem[6][0] ), .A1N(n162), .Y(
        n234) );
  OAI2BB2X1M U228 ( .B0(n363), .B1(n162), .A0N(\mem[6][1] ), .A1N(n162), .Y(
        n235) );
  OAI2BB2X1M U229 ( .B0(n362), .B1(n162), .A0N(\mem[6][2] ), .A1N(n162), .Y(
        n236) );
  OAI2BB2X1M U230 ( .B0(n361), .B1(n162), .A0N(\mem[6][3] ), .A1N(n162), .Y(
        n237) );
  OAI2BB2X1M U231 ( .B0(n360), .B1(n162), .A0N(\mem[6][4] ), .A1N(n162), .Y(
        n238) );
  OAI2BB2X1M U232 ( .B0(n359), .B1(n162), .A0N(\mem[6][5] ), .A1N(n162), .Y(
        n239) );
  OAI2BB2X1M U233 ( .B0(n358), .B1(n162), .A0N(\mem[6][6] ), .A1N(n162), .Y(
        n240) );
  OAI2BB2X1M U234 ( .B0(n365), .B1(n162), .A0N(\mem[6][7] ), .A1N(n162), .Y(
        n241) );
  OAI2BB2X1M U235 ( .B0(n364), .B1(n165), .A0N(\mem[7][0] ), .A1N(n165), .Y(
        n242) );
  OAI2BB2X1M U236 ( .B0(n363), .B1(n165), .A0N(\mem[7][1] ), .A1N(n165), .Y(
        n243) );
  OAI2BB2X1M U237 ( .B0(n362), .B1(n165), .A0N(\mem[7][2] ), .A1N(n165), .Y(
        n244) );
  OAI2BB2X1M U238 ( .B0(n361), .B1(n165), .A0N(\mem[7][3] ), .A1N(n165), .Y(
        n245) );
  OAI2BB2X1M U239 ( .B0(n360), .B1(n165), .A0N(\mem[7][4] ), .A1N(n165), .Y(
        n246) );
  OAI2BB2X1M U240 ( .B0(n359), .B1(n165), .A0N(\mem[7][5] ), .A1N(n165), .Y(
        n247) );
  OAI2BB2X1M U241 ( .B0(n358), .B1(n165), .A0N(\mem[7][6] ), .A1N(n165), .Y(
        n248) );
  OAI2BB2X1M U242 ( .B0(n365), .B1(n165), .A0N(\mem[7][7] ), .A1N(n165), .Y(
        n249) );
  OAI2BB2X1M U243 ( .B0(n364), .B1(n166), .A0N(\mem[8][0] ), .A1N(n166), .Y(
        n250) );
  OAI2BB2X1M U244 ( .B0(n363), .B1(n166), .A0N(\mem[8][1] ), .A1N(n166), .Y(
        n251) );
  OAI2BB2X1M U245 ( .B0(n362), .B1(n166), .A0N(\mem[8][2] ), .A1N(n166), .Y(
        n252) );
  OAI2BB2X1M U246 ( .B0(n361), .B1(n166), .A0N(\mem[8][3] ), .A1N(n166), .Y(
        n253) );
  OAI2BB2X1M U247 ( .B0(n360), .B1(n166), .A0N(\mem[8][4] ), .A1N(n166), .Y(
        n254) );
  OAI2BB2X1M U248 ( .B0(n359), .B1(n166), .A0N(\mem[8][5] ), .A1N(n166), .Y(
        n255) );
  OAI2BB2X1M U249 ( .B0(n358), .B1(n166), .A0N(\mem[8][6] ), .A1N(n166), .Y(
        n256) );
  OAI2BB2X1M U250 ( .B0(n365), .B1(n166), .A0N(\mem[8][7] ), .A1N(n166), .Y(
        n257) );
  OAI2BB2X1M U251 ( .B0(n364), .B1(n168), .A0N(\mem[9][0] ), .A1N(n168), .Y(
        n258) );
  OAI2BB2X1M U252 ( .B0(n363), .B1(n168), .A0N(\mem[9][1] ), .A1N(n168), .Y(
        n259) );
  OAI2BB2X1M U253 ( .B0(n362), .B1(n168), .A0N(\mem[9][2] ), .A1N(n168), .Y(
        n260) );
  OAI2BB2X1M U254 ( .B0(n361), .B1(n168), .A0N(\mem[9][3] ), .A1N(n168), .Y(
        n261) );
  OAI2BB2X1M U255 ( .B0(n360), .B1(n168), .A0N(\mem[9][4] ), .A1N(n168), .Y(
        n262) );
  OAI2BB2X1M U256 ( .B0(n359), .B1(n168), .A0N(\mem[9][5] ), .A1N(n168), .Y(
        n263) );
  OAI2BB2X1M U257 ( .B0(n358), .B1(n168), .A0N(\mem[9][6] ), .A1N(n168), .Y(
        n264) );
  OAI2BB2X1M U258 ( .B0(n365), .B1(n168), .A0N(\mem[9][7] ), .A1N(n168), .Y(
        n265) );
  OAI2BB2X1M U259 ( .B0(n364), .B1(n170), .A0N(\mem[10][0] ), .A1N(n170), .Y(
        n266) );
  OAI2BB2X1M U260 ( .B0(n363), .B1(n170), .A0N(\mem[10][1] ), .A1N(n170), .Y(
        n267) );
  OAI2BB2X1M U261 ( .B0(n362), .B1(n170), .A0N(\mem[10][2] ), .A1N(n170), .Y(
        n268) );
  OAI2BB2X1M U262 ( .B0(n361), .B1(n170), .A0N(\mem[10][3] ), .A1N(n170), .Y(
        n269) );
  OAI2BB2X1M U263 ( .B0(n360), .B1(n170), .A0N(\mem[10][4] ), .A1N(n170), .Y(
        n270) );
  OAI2BB2X1M U264 ( .B0(n359), .B1(n170), .A0N(\mem[10][5] ), .A1N(n170), .Y(
        n271) );
  OAI2BB2X1M U265 ( .B0(n358), .B1(n170), .A0N(\mem[10][6] ), .A1N(n170), .Y(
        n272) );
  OAI2BB2X1M U266 ( .B0(n365), .B1(n170), .A0N(\mem[10][7] ), .A1N(n170), .Y(
        n273) );
  OAI2BB2X1M U267 ( .B0(n364), .B1(n171), .A0N(\mem[11][0] ), .A1N(n171), .Y(
        n274) );
  OAI2BB2X1M U268 ( .B0(n363), .B1(n171), .A0N(\mem[11][1] ), .A1N(n171), .Y(
        n275) );
  OAI2BB2X1M U269 ( .B0(n362), .B1(n171), .A0N(\mem[11][2] ), .A1N(n171), .Y(
        n276) );
  OAI2BB2X1M U270 ( .B0(n361), .B1(n171), .A0N(\mem[11][3] ), .A1N(n171), .Y(
        n277) );
  OAI2BB2X1M U271 ( .B0(n360), .B1(n171), .A0N(\mem[11][4] ), .A1N(n171), .Y(
        n278) );
  OAI2BB2X1M U272 ( .B0(n359), .B1(n171), .A0N(\mem[11][5] ), .A1N(n171), .Y(
        n279) );
  OAI2BB2X1M U273 ( .B0(n358), .B1(n171), .A0N(\mem[11][6] ), .A1N(n171), .Y(
        n280) );
  OAI2BB2X1M U274 ( .B0(n365), .B1(n171), .A0N(\mem[11][7] ), .A1N(n171), .Y(
        n281) );
  OAI2BB2X1M U275 ( .B0(n364), .B1(n172), .A0N(\mem[12][0] ), .A1N(n172), .Y(
        n282) );
  OAI2BB2X1M U276 ( .B0(n363), .B1(n172), .A0N(\mem[12][1] ), .A1N(n172), .Y(
        n283) );
  OAI2BB2X1M U277 ( .B0(n362), .B1(n172), .A0N(\mem[12][2] ), .A1N(n172), .Y(
        n284) );
  OAI2BB2X1M U278 ( .B0(n361), .B1(n172), .A0N(\mem[12][3] ), .A1N(n172), .Y(
        n285) );
  OAI2BB2X1M U279 ( .B0(n360), .B1(n172), .A0N(\mem[12][4] ), .A1N(n172), .Y(
        n286) );
  OAI2BB2X1M U280 ( .B0(n359), .B1(n172), .A0N(\mem[12][5] ), .A1N(n172), .Y(
        n287) );
  OAI2BB2X1M U281 ( .B0(n358), .B1(n172), .A0N(\mem[12][6] ), .A1N(n172), .Y(
        n288) );
  OAI2BB2X1M U282 ( .B0(n365), .B1(n172), .A0N(\mem[12][7] ), .A1N(n172), .Y(
        n289) );
  OAI2BB2X1M U283 ( .B0(n364), .B1(n173), .A0N(\mem[13][0] ), .A1N(n173), .Y(
        n290) );
  OAI2BB2X1M U284 ( .B0(n363), .B1(n173), .A0N(\mem[13][1] ), .A1N(n173), .Y(
        n291) );
  OAI2BB2X1M U285 ( .B0(n362), .B1(n173), .A0N(\mem[13][2] ), .A1N(n173), .Y(
        n292) );
  OAI2BB2X1M U286 ( .B0(n361), .B1(n173), .A0N(\mem[13][3] ), .A1N(n173), .Y(
        n293) );
  OAI2BB2X1M U287 ( .B0(n360), .B1(n173), .A0N(\mem[13][4] ), .A1N(n173), .Y(
        n294) );
  OAI2BB2X1M U288 ( .B0(n359), .B1(n173), .A0N(\mem[13][5] ), .A1N(n173), .Y(
        n295) );
  OAI2BB2X1M U289 ( .B0(n358), .B1(n173), .A0N(\mem[13][6] ), .A1N(n173), .Y(
        n296) );
  OAI2BB2X1M U290 ( .B0(n365), .B1(n173), .A0N(\mem[13][7] ), .A1N(n173), .Y(
        n297) );
  OAI2BB2X1M U291 ( .B0(n364), .B1(n174), .A0N(\mem[14][0] ), .A1N(n174), .Y(
        n298) );
  OAI2BB2X1M U292 ( .B0(n363), .B1(n174), .A0N(\mem[14][1] ), .A1N(n174), .Y(
        n299) );
  OAI2BB2X1M U293 ( .B0(n362), .B1(n174), .A0N(\mem[14][2] ), .A1N(n174), .Y(
        n300) );
  OAI2BB2X1M U294 ( .B0(n361), .B1(n174), .A0N(\mem[14][3] ), .A1N(n174), .Y(
        n301) );
  OAI2BB2X1M U295 ( .B0(n360), .B1(n174), .A0N(\mem[14][4] ), .A1N(n174), .Y(
        n302) );
  OAI2BB2X1M U296 ( .B0(n359), .B1(n174), .A0N(\mem[14][5] ), .A1N(n174), .Y(
        n303) );
  OAI2BB2X1M U297 ( .B0(n358), .B1(n174), .A0N(\mem[14][6] ), .A1N(n174), .Y(
        n304) );
  OAI2BB2X1M U298 ( .B0(n365), .B1(n174), .A0N(\mem[14][7] ), .A1N(n174), .Y(
        n305) );
  OAI2BB2X1M U299 ( .B0(n364), .B1(n176), .A0N(\mem[15][0] ), .A1N(n176), .Y(
        n306) );
  OAI2BB2X1M U300 ( .B0(n363), .B1(n176), .A0N(\mem[15][1] ), .A1N(n176), .Y(
        n307) );
  OAI2BB2X1M U301 ( .B0(n362), .B1(n176), .A0N(\mem[15][2] ), .A1N(n176), .Y(
        n308) );
  OAI2BB2X1M U302 ( .B0(n361), .B1(n176), .A0N(\mem[15][3] ), .A1N(n176), .Y(
        n309) );
  OAI2BB2X1M U303 ( .B0(n360), .B1(n176), .A0N(\mem[15][4] ), .A1N(n176), .Y(
        n310) );
  OAI2BB2X1M U304 ( .B0(n359), .B1(n176), .A0N(\mem[15][5] ), .A1N(n176), .Y(
        n311) );
  OAI2BB2X1M U305 ( .B0(n358), .B1(n176), .A0N(\mem[15][6] ), .A1N(n176), .Y(
        n312) );
  OAI2BB2X1M U306 ( .B0(n365), .B1(n176), .A0N(\mem[15][7] ), .A1N(n176), .Y(
        n313) );
  OAI2BB2X1M U307 ( .B0(n363), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U308 ( .B0(n362), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U309 ( .B0(n361), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U310 ( .B0(n360), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U311 ( .B0(n359), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U312 ( .B0(n358), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U313 ( .B0(n364), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U314 ( .B0(n363), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U315 ( .B0(n362), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U316 ( .B0(n361), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  OAI2BB2X1M U317 ( .B0(n360), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U318 ( .B0(n358), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U319 ( .B0(n365), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB2X1M U320 ( .B0(n364), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U321 ( .B0(n365), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U322 ( .B0(n359), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  NOR2BX2M U323 ( .AN(n150), .B(N14), .Y(n164) );
  AND2X2M U324 ( .A(N14), .B(n150), .Y(n175) );
  MX4X1M U325 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(n336), .Y(n145) );
  MX4X1M U326 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N11), .S1(n336), .Y(n140) );
  MX4X1M U327 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n338), .S1(n336), .Y(n144) );
  MX4X1M U328 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n338), .S1(N12), .Y(n148) );
  MX4X1M U329 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n338), .S1(N12), .Y(n317) );
  MX4X1M U330 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n338), .S1(N12), .Y(n321) );
  MX4X1M U331 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n339), .S1(N12), .Y(n325) );
  MX4X1M U332 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n339), .S1(N12), .Y(n329) );
  MX4X1M U333 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n339), .S1(N12), .Y(n333) );
  MX4X1M U334 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(n339), .S1(n336), .Y(n138) );
  MX4X1M U335 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n338), .S1(n336), .Y(n146) );
  MX4X1M U336 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n338), .S1(n336), .Y(n315) );
  MX4X1M U337 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n338), .S1(N12), .Y(n319) );
  MX4X1M U338 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n339), .S1(n336), .Y(n323) );
  MX4X1M U339 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n339), .S1(n336), .Y(n327) );
  MX4X1M U340 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n339), .S1(n336), .Y(n331) );
  OAI2BB1X2M U341 ( .A0N(rd_d_vld), .A1N(n150), .B0(n149), .Y(n185) );
  AO22X1M U342 ( .A0(N43), .A1(n357), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U343 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U344 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n336), .Y(n141) );
  MX4X1M U345 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N11), .S1(n336), .Y(n139) );
  AO22X1M U346 ( .A0(N42), .A1(n357), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U347 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U348 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N11), .S1(n336), .Y(n143) );
  MX4X1M U349 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(n338), .S1(n336), .Y(n142) );
  AO22X1M U350 ( .A0(N41), .A1(n357), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U351 ( .A(n314), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U352 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(N12), .Y(n314) );
  MX4X1M U353 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n338), .S1(N12), .Y(n147) );
  AO22X1M U354 ( .A0(N40), .A1(n357), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U355 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U356 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(N12), .Y(n318) );
  MX4X1M U357 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n338), .S1(N12), .Y(n316) );
  AO22X1M U358 ( .A0(N39), .A1(n357), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U359 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U360 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(N12), .Y(n322) );
  MX4X1M U361 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n338), .S1(N12), .Y(n320) );
  AO22X1M U362 ( .A0(N38), .A1(n357), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U363 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U364 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(N12), .Y(n326) );
  MX4X1M U365 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n339), .S1(N12), .Y(n324) );
  AO22X1M U366 ( .A0(N37), .A1(n357), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U367 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U368 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(N12), .Y(n330) );
  MX4X1M U369 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n339), .S1(N12), .Y(n328) );
  AO22X1M U370 ( .A0(N36), .A1(n357), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U371 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U372 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(N12), .Y(n334) );
  MX4X1M U373 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n339), .S1(N12), .Y(n332) );
  INVX2M U374 ( .A(N11), .Y(n340) );
  INVX2M U375 ( .A(N12), .Y(n341) );
  DLY1X1M U376 ( .A(test_se), .Y(n370) );
  DLY1X1M U377 ( .A(test_se), .Y(n371) );
  DLY1X1M U378 ( .A(test_se), .Y(n372) );
  DLY1X1M U379 ( .A(test_se), .Y(n373) );
endmodule


module pulse_gen_test_1 ( busy, clk, rst, enable_pulse, test_si, test_so, 
        test_se );
  input busy, clk, rst, test_si, test_se;
  output enable_pulse, test_so;
  wire   enable_flop;
  assign test_so = enable_flop;

  SDFFRQX2M enable_flop_reg ( .D(busy), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(enable_flop) );
  NOR2BX2M U4 ( .AN(busy), .B(enable_flop), .Y(enable_pulse) );
endmodule


module alu_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module alu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module alu_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module alu_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  alu_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module alu_test_1 ( A, b, ALU_FUN, clk, rst, enable, ALU_OUT, valid, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] b;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, rst, enable, test_si, test_se;
  output valid;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N164, N165, N166, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n4, n5, n6, n7,
         n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158;
  wire   [15:0] res;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(res[15]), .SI(ALU_OUT[14]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(res[14]), .SI(ALU_OUT[13]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(res[13]), .SI(ALU_OUT[12]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(res[12]), .SI(ALU_OUT[11]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(res[11]), .SI(ALU_OUT[10]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(res[10]), .SI(ALU_OUT[9]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(res[9]), .SI(ALU_OUT[8]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(res[8]), .SI(ALU_OUT[7]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(res[7]), .SI(ALU_OUT[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(res[6]), .SI(ALU_OUT[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(res[5]), .SI(ALU_OUT[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(res[4]), .SI(ALU_OUT[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(res[3]), .SI(ALU_OUT[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(res[2]), .SI(ALU_OUT[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(res[1]), .SI(ALU_OUT[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(res[0]), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[0]) );
  SDFFRQX1M valid_reg ( .D(enable), .SI(ALU_OUT[15]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(valid) );
  BUFX2M U23 ( .A(A[6]), .Y(n29) );
  OAI2BB1X2M U24 ( .A0N(n144), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U25 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U26 ( .AN(n123), .B(n142), .Y(n54) );
  AND2X2M U27 ( .A(n116), .B(n122), .Y(n59) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  BUFX2M U29 ( .A(n58), .Y(n31) );
  NOR2X2M U30 ( .A(n124), .B(n142), .Y(n58) );
  INVX2M U31 ( .A(n117), .Y(n142) );
  INVX2M U32 ( .A(n108), .Y(n143) );
  INVX2M U33 ( .A(n124), .Y(n144) );
  NOR2BX2M U34 ( .AN(n52), .B(n147), .Y(n48) );
  OAI2BB1X2M U35 ( .A0N(N117), .A1N(n48), .B0(n49), .Y(res[9]) );
  OAI2BB1X2M U36 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(res[10]) );
  OAI2BB1X2M U37 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(res[11]) );
  OAI2BB1X2M U38 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(res[12]) );
  OAI2BB1X2M U39 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(res[13]) );
  OAI2BB1X2M U40 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(res[14]) );
  OAI2BB1X2M U41 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(res[15]) );
  NOR3BX2M U42 ( .AN(n122), .B(n145), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U43 ( .A(n142), .B(ALU_FUN[2]), .C(n145), .Y(n52) );
  NOR2X2M U44 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U45 ( .A(n123), .B(n146), .C(n4), .Y(n63) );
  NAND3X2M U46 ( .A(n144), .B(n146), .C(n4), .Y(n53) );
  NAND2X2M U47 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U48 ( .A(ALU_FUN[0]), .Y(n146) );
  NOR2X2M U49 ( .A(n146), .B(n4), .Y(n122) );
  NOR2X2M U50 ( .A(n4), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U51 ( .A(n4), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U52 ( .A(ALU_FUN[1]), .Y(n145) );
  NAND3X2M U53 ( .A(n123), .B(ALU_FUN[0]), .C(n4), .Y(n118) );
  AND2X2M U54 ( .A(ALU_FUN[2]), .B(n145), .Y(n116) );
  AND4X2M U55 ( .A(N166), .B(n116), .C(n4), .D(n146), .Y(n107) );
  AOI31X2M U56 ( .A0(n92), .A1(n93), .A2(n94), .B0(n147), .Y(res[2]) );
  AOI22X1M U57 ( .A0(N101), .A1(n67), .B0(N92), .B1(n54), .Y(n92) );
  AOI221XLM U58 ( .A0(n9), .A1(n143), .B0(n31), .B1(n156), .C0(n95), .Y(n94)
         );
  AOI222X1M U59 ( .A0(N110), .A1(n52), .B0(n8), .B1(n59), .C0(N126), .C1(n66), 
        .Y(n93) );
  AOI31X2M U60 ( .A0(n86), .A1(n87), .A2(n88), .B0(n147), .Y(res[3]) );
  AOI22X1M U61 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n86) );
  AOI221XLM U62 ( .A0(n27), .A1(n143), .B0(n31), .B1(n155), .C0(n89), .Y(n88)
         );
  AOI222X1M U63 ( .A0(N111), .A1(n52), .B0(n9), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n87) );
  AOI31X2M U64 ( .A0(n80), .A1(n81), .A2(n82), .B0(n147), .Y(res[4]) );
  AOI22X1M U65 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n80) );
  AOI221XLM U66 ( .A0(n143), .A1(n28), .B0(n31), .B1(n154), .C0(n83), .Y(n82)
         );
  AOI222X1M U67 ( .A0(N112), .A1(n52), .B0(n27), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n81) );
  AOI31X2M U68 ( .A0(n74), .A1(n75), .A2(n76), .B0(n147), .Y(res[5]) );
  AOI22X1M U69 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n74) );
  AOI221XLM U70 ( .A0(n143), .A1(n29), .B0(n31), .B1(n153), .C0(n77), .Y(n76)
         );
  AOI222X1M U71 ( .A0(N113), .A1(n52), .B0(n28), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n75) );
  AOI31X2M U72 ( .A0(n68), .A1(n69), .A2(n70), .B0(n147), .Y(res[6]) );
  AOI22X1M U73 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n68) );
  AOI221XLM U74 ( .A0(n143), .A1(n30), .B0(n31), .B1(n152), .C0(n71), .Y(n70)
         );
  AOI222X1M U75 ( .A0(N114), .A1(n52), .B0(n59), .B1(n29), .C0(N130), .C1(n66), 
        .Y(n69) );
  AOI31X2M U76 ( .A0(n55), .A1(n56), .A2(n57), .B0(n147), .Y(res[7]) );
  AOI22X1M U77 ( .A0(N131), .A1(n66), .B0(N115), .B1(n52), .Y(n56) );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n55) );
  AOI221XLM U79 ( .A0(n31), .A1(n151), .B0(n59), .B1(n30), .C0(n60), .Y(n57)
         );
  AOI31X2M U80 ( .A0(n110), .A1(n111), .A2(n112), .B0(n147), .Y(res[0]) );
  AOI22X1M U81 ( .A0(N99), .A1(n67), .B0(N90), .B1(n54), .Y(n110) );
  AOI211X2M U82 ( .A0(n31), .A1(n158), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U83 ( .A0(N108), .A1(n52), .B0(n6), .B1(n59), .C0(N124), .C1(n66), 
        .Y(n111) );
  AOI31X2M U84 ( .A0(n98), .A1(n99), .A2(n100), .B0(n147), .Y(res[1]) );
  AOI211X2M U85 ( .A0(n8), .A1(n143), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U86 ( .A0(N125), .A1(n66), .B0(n31), .B1(n157), .C0(n7), .C1(n59), 
        .Y(n99) );
  AOI222X1M U87 ( .A0(N91), .A1(n54), .B0(N109), .B1(n52), .C0(N100), .C1(n67), 
        .Y(n98) );
  NAND2X2M U88 ( .A(enable), .B(n141), .Y(n49) );
  INVX2M U89 ( .A(enable), .Y(n147) );
  AOI21X2M U90 ( .A0(n50), .A1(n51), .B0(n147), .Y(res[8]) );
  AOI21X2M U91 ( .A0(N98), .A1(n54), .B0(n141), .Y(n50) );
  AOI2BB2XLM U92 ( .B0(N116), .B1(n52), .A0N(n151), .A1N(n53), .Y(n51) );
  INVX2M U93 ( .A(n5), .Y(n140) );
  OAI222X1M U94 ( .A0(n72), .A1(n140), .B0(n5), .B1(n73), .C0(n53), .C1(n153), 
        .Y(n71) );
  AOI221XLM U95 ( .A0(n29), .A1(n63), .B0(n64), .B1(n152), .C0(n31), .Y(n73)
         );
  AOI221XLM U96 ( .A0(n63), .A1(n152), .B0(n29), .B1(n65), .C0(n59), .Y(n72)
         );
  INVX2M U97 ( .A(n109), .Y(n141) );
  AOI211X2M U98 ( .A0(N107), .A1(n67), .B0(n31), .C0(n64), .Y(n109) );
  BUFX2M U99 ( .A(ALU_FUN[3]), .Y(n4) );
  INVX2M U100 ( .A(n7), .Y(n157) );
  INVX2M U101 ( .A(n6), .Y(n158) );
  INVX2M U102 ( .A(n29), .Y(n152) );
  INVX2M U103 ( .A(n30), .Y(n151) );
  INVX2M U104 ( .A(n9), .Y(n155) );
  INVX2M U105 ( .A(n8), .Y(n156) );
  INVX2M U106 ( .A(n28), .Y(n153) );
  INVX2M U107 ( .A(n27), .Y(n154) );
  OAI222X1M U108 ( .A0(n96), .A1(n137), .B0(b[2]), .B1(n97), .C0(n53), .C1(
        n157), .Y(n95) );
  AOI221XLM U109 ( .A0(n8), .A1(n63), .B0(n64), .B1(n156), .C0(n31), .Y(n97)
         );
  AOI221XLM U110 ( .A0(n63), .A1(n156), .B0(n8), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U111 ( .A0(n90), .A1(n139), .B0(b[3]), .B1(n91), .C0(n53), .C1(
        n156), .Y(n89) );
  AOI221XLM U112 ( .A0(n9), .A1(n63), .B0(n64), .B1(n155), .C0(n31), .Y(n91)
         );
  AOI221XLM U113 ( .A0(n63), .A1(n155), .B0(n9), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U114 ( .A0(n84), .A1(n150), .B0(b[4]), .B1(n85), .C0(n53), .C1(
        n155), .Y(n83) );
  INVX2M U115 ( .A(b[4]), .Y(n150) );
  AOI221XLM U116 ( .A0(n27), .A1(n63), .B0(n64), .B1(n154), .C0(n31), .Y(n85)
         );
  AOI221XLM U117 ( .A0(n63), .A1(n154), .B0(n27), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U118 ( .A0(n78), .A1(n149), .B0(b[5]), .B1(n79), .C0(n53), .C1(
        n154), .Y(n77) );
  INVX2M U119 ( .A(b[5]), .Y(n149) );
  AOI221XLM U120 ( .A0(n28), .A1(n63), .B0(n64), .B1(n153), .C0(n31), .Y(n79)
         );
  AOI221XLM U121 ( .A0(n63), .A1(n153), .B0(n28), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U122 ( .A0(n61), .A1(n148), .B0(b[7]), .B1(n62), .C0(n53), .C1(
        n152), .Y(n60) );
  INVX2M U123 ( .A(b[7]), .Y(n148) );
  AOI221XLM U124 ( .A0(n63), .A1(n30), .B0(n64), .B1(n151), .C0(n31), .Y(n62)
         );
  AOI221XLM U125 ( .A0(n63), .A1(n151), .B0(n30), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U126 ( .A(n32), .Y(n136) );
  OAI2B2X1M U127 ( .A1N(b[0]), .A0(n115), .B0(n108), .B1(n157), .Y(n114) );
  AOI221XLM U128 ( .A0(n63), .A1(n158), .B0(n6), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U129 ( .A1N(b[1]), .A0(n103), .B0(n53), .B1(n158), .Y(n102) );
  AOI221XLM U130 ( .A0(n63), .A1(n157), .B0(n7), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U131 ( .A(n43), .Y(n138) );
  OAI21X2M U132 ( .A0(b[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U133 ( .A0(N164), .A1(n4), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U134 ( .A0(n6), .A1(n63), .B0(n64), .B1(n158), .C0(n31), .Y(n119)
         );
  NOR3X2M U135 ( .A(n145), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U136 ( .A0(b[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U137 ( .A0(N165), .A1(n4), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U138 ( .A0(n7), .A1(n63), .B0(n64), .B1(n157), .C0(n31), .Y(n104)
         );
  NOR3X2M U139 ( .A(n146), .B(ALU_FUN[2]), .C(n145), .Y(n106) );
  BUFX2M U140 ( .A(A[7]), .Y(n30) );
  BUFX2M U141 ( .A(A[1]), .Y(n7) );
  BUFX2M U142 ( .A(A[0]), .Y(n6) );
  BUFX2M U143 ( .A(A[3]), .Y(n9) );
  BUFX2M U144 ( .A(A[2]), .Y(n8) );
  BUFX2M U145 ( .A(A[5]), .Y(n28) );
  BUFX2M U146 ( .A(A[4]), .Y(n27) );
  BUFX2M U147 ( .A(b[6]), .Y(n5) );
  INVX2M U148 ( .A(b[0]), .Y(n135) );
  INVX2M U149 ( .A(b[2]), .Y(n137) );
  INVX2M U150 ( .A(b[3]), .Y(n139) );
  NOR2X1M U151 ( .A(n151), .B(b[7]), .Y(n131) );
  NAND2BX1M U152 ( .AN(b[4]), .B(n27), .Y(n47) );
  NAND2BX1M U153 ( .AN(n27), .B(b[4]), .Y(n36) );
  CLKNAND2X2M U154 ( .A(n47), .B(n36), .Y(n126) );
  NOR2X1M U155 ( .A(n139), .B(n9), .Y(n44) );
  NOR2X1M U156 ( .A(n137), .B(n8), .Y(n35) );
  NOR2X1M U157 ( .A(n135), .B(n6), .Y(n32) );
  CLKNAND2X2M U158 ( .A(n8), .B(n137), .Y(n46) );
  NAND2BX1M U159 ( .AN(n35), .B(n46), .Y(n41) );
  AOI21X1M U160 ( .A0(n32), .A1(n157), .B0(b[1]), .Y(n33) );
  AOI211X1M U161 ( .A0(n7), .A1(n136), .B0(n41), .C0(n33), .Y(n34) );
  CLKNAND2X2M U162 ( .A(n9), .B(n139), .Y(n45) );
  OAI31X1M U163 ( .A0(n44), .A1(n35), .A2(n34), .B0(n45), .Y(n37) );
  NAND2BX1M U164 ( .AN(n28), .B(b[5]), .Y(n129) );
  OAI211X1M U165 ( .A0(n126), .A1(n37), .B0(n36), .C0(n129), .Y(n38) );
  NAND2BX1M U166 ( .AN(b[5]), .B(n28), .Y(n125) );
  XNOR2X1M U167 ( .A(n29), .B(n5), .Y(n128) );
  AOI32X1M U168 ( .A0(n38), .A1(n125), .A2(n128), .B0(n5), .B1(n152), .Y(n39)
         );
  CLKNAND2X2M U169 ( .A(b[7]), .B(n151), .Y(n132) );
  OAI21X1M U170 ( .A0(n131), .A1(n39), .B0(n132), .Y(N166) );
  CLKNAND2X2M U171 ( .A(n6), .B(n135), .Y(n42) );
  OA21X1M U172 ( .A0(n42), .A1(n157), .B0(b[1]), .Y(n40) );
  AOI211X1M U173 ( .A0(n42), .A1(n157), .B0(n41), .C0(n40), .Y(n43) );
  AOI31X1M U174 ( .A0(n138), .A1(n46), .A2(n45), .B0(n44), .Y(n127) );
  OAI2B11X1M U175 ( .A1N(n127), .A0(n126), .B0(n125), .C0(n47), .Y(n130) );
  AOI32X1M U176 ( .A0(n130), .A1(n129), .A2(n128), .B0(n29), .B1(n140), .Y(
        n133) );
  AOI2B1X1M U177 ( .A1N(n133), .A0(n132), .B0(n131), .Y(n134) );
  CLKINVX1M U178 ( .A(n134), .Y(N165) );
  NOR2X1M U179 ( .A(N166), .B(N165), .Y(N164) );
  alu_DW_div_uns_0 div_48 ( .a({n30, n29, n28, n27, n9, n8, n7, n6}), .b({b[7], 
        n5, b[5:0]}), .quotient({N131, N130, N129, N128, N127, N126, N125, 
        N124}) );
  alu_DW01_sub_0 sub_35 ( .A({1'b0, n30, n29, n28, n27, n9, n8, n7, n6}), .B({
        1'b0, b[7], n5, b[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, N104, 
        N103, N102, N101, N100, N99}) );
  alu_DW01_add_0 add_29 ( .A({1'b0, n30, n29, n28, n27, n9, n8, n7, n6}), .B({
        1'b0, b[7], n5, b[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, 
        N93, N92, N91, N90}) );
  alu_DW02_mult_0 mult_42 ( .A({n30, n29, n28, n27, n9, n8, n7, n6}), .B({b[7], 
        n5, b[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module sys_crl_test_1 ( alu_out, out_valid, rx_p_data, rx_d_vld, rd_data, 
        rd_d_vld, clk, rst, fifo_full, alu_en, alu_fun, gate_en, addr, wr_en, 
        rd_en, wr_data, tx_p_data, tx_d_vld, test_so, test_se );
  input [15:0] alu_out;
  input [7:0] rx_p_data;
  input [7:0] rd_data;
  output [3:0] alu_fun;
  output [3:0] addr;
  output [7:0] wr_data;
  output [7:0] tx_p_data;
  input out_valid, rx_d_vld, rd_d_vld, clk, rst, fifo_full, test_se;
  output alu_en, gate_en, wr_en, rd_en, tx_d_vld, test_so;
  wire   n9, n10, n14, n15, n17, n19, n23, n26, n29, n32, n35, n38, n41, n42,
         n43, n44, n46, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n80, n81, n85, n87, n89, n91, n93, n95, n97, n99,
         n101, n103, n105, n107, n109, n111, n113, n115, n124, n125, n126,
         n127, n1, n2, n3, n4, n5, n6, n7, n8, n11, n12, n13, n16, n18, n20,
         n21, n22, n24, n25, n27, n28, n30, n31, n33, n34, n36, n37, n39, n40,
         n45, n47, n48, n66, n79, n82, n83, n128;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] stored_alu;
  assign test_so = stored_alu[15];

  SDFFRQX2M \stored_alu_reg[15]  ( .D(n115), .SI(stored_alu[14]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[15]) );
  SDFFRQX2M \stored_alu_reg[14]  ( .D(n113), .SI(stored_alu[13]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[14]) );
  SDFFRQX2M \stored_alu_reg[13]  ( .D(n111), .SI(stored_alu[12]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[13]) );
  SDFFRQX2M \stored_alu_reg[12]  ( .D(n109), .SI(stored_alu[11]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[12]) );
  SDFFRQX2M \stored_alu_reg[11]  ( .D(n107), .SI(stored_alu[10]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[11]) );
  SDFFRQX2M \stored_alu_reg[10]  ( .D(n105), .SI(stored_alu[9]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[10]) );
  SDFFRQX2M \stored_alu_reg[9]  ( .D(n103), .SI(stored_alu[8]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[9]) );
  SDFFRQX2M \stored_alu_reg[8]  ( .D(n101), .SI(stored_alu[7]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[8]) );
  SDFFRQX2M \stored_alu_reg[7]  ( .D(n99), .SI(stored_alu[6]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[7]) );
  SDFFRQX2M \stored_alu_reg[6]  ( .D(n97), .SI(stored_alu[5]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[6]) );
  SDFFRQX2M \stored_alu_reg[5]  ( .D(n95), .SI(stored_alu[4]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[5]) );
  SDFFRQX2M \stored_alu_reg[4]  ( .D(n93), .SI(stored_alu[3]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[4]) );
  SDFFRQX2M \stored_alu_reg[3]  ( .D(n91), .SI(stored_alu[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[3]) );
  SDFFRQX2M \stored_alu_reg[2]  ( .D(n89), .SI(stored_alu[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[2]) );
  SDFFRQX2M \stored_alu_reg[1]  ( .D(n87), .SI(stored_alu[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(stored_alu[1]) );
  SDFFRQX2M \stored_alu_reg[0]  ( .D(n85), .SI(n13), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(stored_alu[0]) );
  SDFFRQX2M \addr_reg[2]  ( .D(n126), .SI(addr[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(addr[2]) );
  SDFFRQX2M \addr_reg[3]  ( .D(n127), .SI(addr[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(addr[3]) );
  SDFFRQX2M \addr_reg[0]  ( .D(n124), .SI(out_valid), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(addr[0]) );
  SDFFRQX2M \addr_reg[1]  ( .D(n125), .SI(addr[0]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(addr[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n12), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(current_state[2]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(addr[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  NOR2X2M U3 ( .A(n82), .B(n8), .Y(alu_fun[2]) );
  NOR2X2M U4 ( .A(n128), .B(n8), .Y(alu_fun[0]) );
  NOR2X2M U5 ( .A(n11), .B(current_state[3]), .Y(n71) );
  INVX2M U6 ( .A(n42), .Y(n7) );
  INVX2M U7 ( .A(n59), .Y(rd_en) );
  INVX2M U8 ( .A(fifo_full), .Y(n4) );
  INVX2M U9 ( .A(n77), .Y(n8) );
  INVX2M U10 ( .A(n71), .Y(n6) );
  NOR2X2M U11 ( .A(n12), .B(n16), .Y(n70) );
  INVX2M U12 ( .A(wr_en), .Y(n5) );
  NAND2X2M U13 ( .A(n70), .B(n71), .Y(n42) );
  NAND2X2M U14 ( .A(n43), .B(n44), .Y(n17) );
  NOR2X2M U15 ( .A(n5), .B(n128), .Y(wr_data[0]) );
  NOR2X2M U16 ( .A(n5), .B(n83), .Y(wr_data[1]) );
  NOR2X2M U17 ( .A(n5), .B(n82), .Y(wr_data[2]) );
  NOR2X2M U18 ( .A(n5), .B(n79), .Y(wr_data[3]) );
  NOR2X2M U19 ( .A(n5), .B(n66), .Y(wr_data[4]) );
  NOR2X2M U20 ( .A(n5), .B(n48), .Y(wr_data[5]) );
  NOR2X2M U21 ( .A(n5), .B(n47), .Y(wr_data[6]) );
  NAND3X2M U22 ( .A(n11), .B(n13), .C(n70), .Y(n59) );
  OAI21X2M U23 ( .A0(n45), .A1(n10), .B0(n46), .Y(next_state[3]) );
  NAND3X2M U24 ( .A(n15), .B(n17), .C(n42), .Y(tx_d_vld) );
  NAND3X2M U25 ( .A(n11), .B(n13), .C(n49), .Y(n10) );
  NAND2X2M U26 ( .A(n49), .B(n71), .Y(n14) );
  NAND2BX2M U27 ( .AN(n43), .B(n44), .Y(n53) );
  NOR2BX2M U28 ( .AN(n75), .B(n12), .Y(n52) );
  NOR2X2M U29 ( .A(n55), .B(n45), .Y(n77) );
  NOR2BX2M U30 ( .AN(n81), .B(n75), .Y(n78) );
  NAND2X2M U31 ( .A(n71), .B(n12), .Y(n81) );
  BUFX2M U32 ( .A(n58), .Y(n3) );
  BUFX2M U33 ( .A(n58), .Y(n2) );
  NOR2X2M U34 ( .A(n83), .B(n8), .Y(alu_fun[1]) );
  NOR2X2M U35 ( .A(n79), .B(n8), .Y(alu_fun[3]) );
  AOI2B1X1M U36 ( .A1N(n9), .A0(n10), .B0(n45), .Y(wr_en) );
  OAI31X1M U37 ( .A0(n12), .A1(current_state[2]), .A2(n6), .B0(n14), .Y(n9) );
  INVX2M U38 ( .A(current_state[0]), .Y(n11) );
  OAI32X1M U39 ( .A0(n57), .A1(rx_p_data[4]), .A2(rx_p_data[0]), .B0(n42), 
        .B1(n4), .Y(n50) );
  NOR3X2M U40 ( .A(current_state[2]), .B(current_state[3]), .C(
        current_state[0]), .Y(n75) );
  NOR2X2M U41 ( .A(n16), .B(current_state[1]), .Y(n49) );
  NAND3X2M U42 ( .A(current_state[0]), .B(n4), .C(n44), .Y(n15) );
  OAI221X1M U43 ( .A0(n15), .A1(n40), .B0(n17), .B1(n28), .C0(n41), .Y(
        tx_p_data[0]) );
  NAND2X2M U44 ( .A(rd_data[0]), .B(n7), .Y(n41) );
  OAI221X1M U45 ( .A0(n15), .A1(n39), .B0(n17), .B1(n27), .C0(n38), .Y(
        tx_p_data[1]) );
  NAND2X2M U46 ( .A(rd_data[1]), .B(n7), .Y(n38) );
  OAI221X1M U47 ( .A0(n15), .A1(n37), .B0(n17), .B1(n25), .C0(n35), .Y(
        tx_p_data[2]) );
  NAND2X2M U48 ( .A(rd_data[2]), .B(n7), .Y(n35) );
  OAI221X1M U49 ( .A0(n15), .A1(n36), .B0(n17), .B1(n24), .C0(n32), .Y(
        tx_p_data[3]) );
  NAND2X2M U50 ( .A(rd_data[3]), .B(n7), .Y(n32) );
  OAI221X1M U51 ( .A0(n15), .A1(n34), .B0(n17), .B1(n22), .C0(n29), .Y(
        tx_p_data[4]) );
  NAND2X2M U52 ( .A(rd_data[4]), .B(n7), .Y(n29) );
  OAI221X1M U53 ( .A0(n15), .A1(n33), .B0(n17), .B1(n21), .C0(n26), .Y(
        tx_p_data[5]) );
  NAND2X2M U54 ( .A(rd_data[5]), .B(n7), .Y(n26) );
  OAI221X1M U55 ( .A0(n15), .A1(n31), .B0(n17), .B1(n20), .C0(n23), .Y(
        tx_p_data[6]) );
  NAND2X2M U56 ( .A(rd_data[6]), .B(n7), .Y(n23) );
  OAI221X1M U57 ( .A0(n15), .A1(n30), .B0(n17), .B1(n18), .C0(n19), .Y(
        tx_p_data[7]) );
  NAND2X2M U58 ( .A(rd_data[7]), .B(n7), .Y(n19) );
  NOR2X2M U59 ( .A(fifo_full), .B(current_state[0]), .Y(n43) );
  AND4X2M U60 ( .A(n75), .B(rx_p_data[3]), .C(n76), .D(rx_p_data[7]), .Y(n72)
         );
  NOR2X2M U61 ( .A(current_state[1]), .B(n45), .Y(n76) );
  INVX2M U62 ( .A(rx_d_vld), .Y(n45) );
  INVX2M U63 ( .A(current_state[3]), .Y(n13) );
  INVX2M U64 ( .A(current_state[1]), .Y(n12) );
  AND2X2M U65 ( .A(rx_p_data[7]), .B(wr_en), .Y(wr_data[7]) );
  AND2X2M U66 ( .A(n70), .B(current_state[3]), .Y(n44) );
  NAND4BX1M U67 ( .AN(n2), .B(n59), .C(n60), .D(n61), .Y(next_state[1]) );
  AOI221XLM U68 ( .A0(fifo_full), .A1(n7), .B0(n62), .B1(rx_d_vld), .C0(n63), 
        .Y(n61) );
  NOR2BX2M U69 ( .AN(n53), .B(n52), .Y(n60) );
  NAND4BX1M U70 ( .AN(n62), .B(n56), .C(n67), .D(n68), .Y(next_state[0]) );
  AOI31X2M U71 ( .A0(n44), .A1(current_state[0]), .A2(fifo_full), .B0(n77), 
        .Y(n67) );
  AOI211X2M U72 ( .A0(rd_d_vld), .A1(rd_en), .B0(n69), .C0(n50), .Y(n68) );
  OAI33X2M U73 ( .A0(n64), .A1(rx_p_data[4]), .A2(rx_p_data[0]), .B0(n6), .B1(
        rx_d_vld), .B2(n70), .Y(n69) );
  INVX2M U74 ( .A(current_state[2]), .Y(n16) );
  AND4X2M U75 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n46) );
  NAND3BX2M U76 ( .AN(n57), .B(rx_p_data[0]), .C(rx_p_data[4]), .Y(n54) );
  NAND3X2M U77 ( .A(n72), .B(rx_p_data[2]), .C(n73), .Y(n57) );
  NOR3X2M U78 ( .A(n47), .B(rx_p_data[5]), .C(rx_p_data[1]), .Y(n73) );
  NAND3BX2M U79 ( .AN(n50), .B(n46), .C(n51), .Y(next_state[2]) );
  AOI211X2M U80 ( .A0(n52), .A1(rx_d_vld), .B0(rd_en), .C0(n49), .Y(n51) );
  OAI21X2M U81 ( .A0(n52), .A1(n62), .B0(rx_d_vld), .Y(n80) );
  OAI31X1M U82 ( .A0(n64), .A1(n66), .A2(n128), .B0(n65), .Y(n63) );
  NAND4X2M U83 ( .A(current_state[1]), .B(n16), .C(n13), .D(n45), .Y(n65) );
  NOR2BX2M U84 ( .AN(out_valid), .B(n56), .Y(n58) );
  NAND3X2M U85 ( .A(n49), .B(current_state[0]), .C(current_state[3]), .Y(n56)
         );
  NAND3X2M U86 ( .A(n49), .B(n11), .C(current_state[3]), .Y(n55) );
  NOR2X2M U87 ( .A(n81), .B(current_state[2]), .Y(n62) );
  OAI2BB2X1M U88 ( .B0(n2), .B1(n40), .A0N(alu_out[0]), .A1N(n3), .Y(n85) );
  OAI2BB2X1M U89 ( .B0(n2), .B1(n39), .A0N(alu_out[1]), .A1N(n3), .Y(n87) );
  OAI2BB2X1M U90 ( .B0(n2), .B1(n37), .A0N(alu_out[2]), .A1N(n3), .Y(n89) );
  OAI2BB2X1M U91 ( .B0(n2), .B1(n36), .A0N(alu_out[3]), .A1N(n3), .Y(n91) );
  OAI2BB2X1M U92 ( .B0(n2), .B1(n34), .A0N(alu_out[4]), .A1N(n3), .Y(n93) );
  OAI2BB2X1M U93 ( .B0(n2), .B1(n33), .A0N(alu_out[5]), .A1N(n3), .Y(n95) );
  OAI2BB2X1M U94 ( .B0(n2), .B1(n31), .A0N(alu_out[6]), .A1N(n3), .Y(n97) );
  OAI2BB2X1M U95 ( .B0(n2), .B1(n30), .A0N(alu_out[7]), .A1N(n3), .Y(n99) );
  OAI2BB2X1M U96 ( .B0(n2), .B1(n28), .A0N(alu_out[8]), .A1N(n3), .Y(n101) );
  OAI2BB2X1M U97 ( .B0(n2), .B1(n27), .A0N(alu_out[9]), .A1N(n3), .Y(n103) );
  OAI2BB2X1M U98 ( .B0(n2), .B1(n25), .A0N(alu_out[10]), .A1N(n3), .Y(n105) );
  OAI2BB2X1M U99 ( .B0(n3), .B1(n24), .A0N(alu_out[11]), .A1N(n3), .Y(n107) );
  OAI2BB2X1M U100 ( .B0(n3), .B1(n22), .A0N(alu_out[12]), .A1N(n3), .Y(n109)
         );
  OAI2BB2X1M U101 ( .B0(n3), .B1(n21), .A0N(alu_out[13]), .A1N(n3), .Y(n111)
         );
  OAI2BB2X1M U102 ( .B0(n3), .B1(n20), .A0N(alu_out[14]), .A1N(n3), .Y(n113)
         );
  OAI2BB2X1M U103 ( .B0(n2), .B1(n18), .A0N(alu_out[15]), .A1N(n3), .Y(n115)
         );
  OAI2BB2X1M U104 ( .B0(n83), .B1(n80), .A0N(addr[1]), .A1N(n78), .Y(n125) );
  OAI2BB2X1M U105 ( .B0(n82), .B1(n80), .A0N(addr[2]), .A1N(n78), .Y(n126) );
  OAI2BB2X1M U106 ( .B0(n79), .B1(n80), .A0N(addr[3]), .A1N(n78), .Y(n127) );
  INVX2M U107 ( .A(rx_p_data[1]), .Y(n83) );
  INVX2M U108 ( .A(rx_p_data[2]), .Y(n82) );
  INVX2M U109 ( .A(rx_p_data[0]), .Y(n128) );
  NAND3X2M U110 ( .A(n72), .B(rx_p_data[1]), .C(n74), .Y(n64) );
  NOR3X2M U111 ( .A(n48), .B(rx_p_data[6]), .C(rx_p_data[2]), .Y(n74) );
  INVX2M U112 ( .A(rx_p_data[3]), .Y(n79) );
  INVX2M U113 ( .A(rx_p_data[5]), .Y(n48) );
  INVX2M U114 ( .A(rx_p_data[6]), .Y(n47) );
  INVX2M U115 ( .A(rx_p_data[4]), .Y(n66) );
  AO21XLM U116 ( .A0(addr[0]), .A1(n78), .B0(n1), .Y(n124) );
  OAI22X1M U117 ( .A0(n80), .A1(n128), .B0(n14), .B1(n45), .Y(n1) );
  INVX2M U118 ( .A(stored_alu[8]), .Y(n28) );
  INVX2M U119 ( .A(stored_alu[9]), .Y(n27) );
  INVX2M U120 ( .A(stored_alu[10]), .Y(n25) );
  INVX2M U121 ( .A(stored_alu[11]), .Y(n24) );
  INVX2M U122 ( .A(stored_alu[12]), .Y(n22) );
  INVX2M U123 ( .A(stored_alu[13]), .Y(n21) );
  INVX2M U124 ( .A(stored_alu[14]), .Y(n20) );
  INVX2M U125 ( .A(stored_alu[15]), .Y(n18) );
  INVX2M U126 ( .A(stored_alu[0]), .Y(n40) );
  INVX2M U127 ( .A(stored_alu[1]), .Y(n39) );
  INVX2M U128 ( .A(stored_alu[2]), .Y(n37) );
  INVX2M U129 ( .A(stored_alu[3]), .Y(n36) );
  INVX2M U130 ( .A(stored_alu[4]), .Y(n34) );
  INVX2M U131 ( .A(stored_alu[5]), .Y(n33) );
  INVX2M U132 ( .A(stored_alu[6]), .Y(n31) );
  INVX2M U133 ( .A(stored_alu[7]), .Y(n30) );
  OAI21X2M U134 ( .A0(out_valid), .A1(n56), .B0(n8), .Y(alu_en) );
  OAI21X2M U159 ( .A0(out_valid), .A1(n56), .B0(n55), .Y(gate_en) );
endmodule


module SYS_TOP_dft ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, REF_CLK, 
        UART_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, REF_CLK, UART_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   uart_clk_mux_out, tx_clk, uart_clk_mux_out_tx, rx_clk,
         uart_clk_mux_out_rx, ref_clk_mux_out, rst_mux, sync_rst1,
         rst_mux_sync1, sync_rst2, rst_mux_sync2, RX_OUT_V_wire, busy, f_empty,
         RX_OUT_V_wire_s, WR_inc, RD_inc, FIFO_Full, RdEn, WrEn, Rd_D_vid,
         ALU_clk, En, ALU_valid, _3_net_, gate_en, n1, n2, n3, n4, n5, n6, n7,
         n8, n14, n15, n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36;
  wire   [7:0] RX_OUT_P_wire;
  wire   [7:0] RD_DATA;
  wire   [7:0] conf;
  wire   [7:0] div_ratio;
  wire   [7:0] Rx_div_ratio;
  wire   [7:0] RX_OUT_P_wire_s;
  wire   [7:0] WR_data;
  wire   [3:0] addr;
  wire   [7:0] Wr_D;
  wire   [7:0] Rd_D;
  wire   [7:0] op_a;
  wire   [7:0] op_b;
  wire   [3:0] fun;
  wire   [15:0] ALU_OUT;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign SO[2] = op_a[3];

  INVX4M U4 ( .A(n8), .Y(n7) );
  INVX2M U5 ( .A(n6), .Y(n5) );
  INVX2M U6 ( .A(f_empty), .Y(n1) );
  BUFX2M U7 ( .A(addr[0]), .Y(n3) );
  BUFX2M U8 ( .A(addr[1]), .Y(n4) );
  INVX2M U9 ( .A(rst_mux_sync1), .Y(n8) );
  INVX2M U10 ( .A(rst_mux_sync2), .Y(n6) );
  BUFX2M U11 ( .A(test_mode), .Y(n2) );
  OR2X2M U12 ( .A(gate_en), .B(n2), .Y(_3_net_) );
  INVXLM U17 ( .A(n36), .Y(n22) );
  INVXLM U18 ( .A(n22), .Y(n23) );
  INVXLM U19 ( .A(n35), .Y(n24) );
  INVXLM U20 ( .A(n24), .Y(n25) );
  DLY1X1M U21 ( .A(n33), .Y(n26) );
  DLY1X1M U22 ( .A(n33), .Y(n27) );
  DLY1X1M U23 ( .A(n30), .Y(n28) );
  INVXLM U24 ( .A(n34), .Y(n29) );
  INVXLM U25 ( .A(n29), .Y(n30) );
  INVXLM U26 ( .A(n29), .Y(n31) );
  INVXLM U27 ( .A(SE), .Y(n32) );
  INVXLM U28 ( .A(n32), .Y(n33) );
  INVXLM U29 ( .A(n32), .Y(n34) );
  INVXLM U30 ( .A(n32), .Y(n35) );
  INVXLM U31 ( .A(n32), .Y(n36) );
  mux2X1_1 uart_clk_mux ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        uart_clk_mux_out) );
  mux2X1_4 uart_clk_mux_tx ( .IN_0(tx_clk), .IN_1(scan_clk), .SEL(n2), .OUT(
        uart_clk_mux_out_tx) );
  mux2X1_3 uart_clk_mux_rx ( .IN_0(rx_clk), .IN_1(scan_clk), .SEL(n2), .OUT(
        uart_clk_mux_out_rx) );
  mux2X1_2 ref_clk_mux ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        ref_clk_mux_out) );
  mux2X1_0 rst_muxx ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(n2), .OUT(rst_mux)
         );
  mux2X1_6 rst_muxx_sync1 ( .IN_0(sync_rst1), .IN_1(scan_rst), .SEL(n2), .OUT(
        rst_mux_sync1) );
  mux2X1_5 rst_muxx_sync2 ( .IN_0(sync_rst2), .IN_1(scan_rst), .SEL(n2), .OUT(
        rst_mux_sync2) );
  UART_test_1 uart_inst ( .RST(n5), .TX_CLK(uart_clk_mux_out_tx), .RX_CLK(
        uart_clk_mux_out_rx), .RX_IN_S(UART_RX_IN), .RX_OUT_P(RX_OUT_P_wire), 
        .RX_OUT_V(RX_OUT_V_wire), .TX_IN_P(RD_DATA), .TX_IN_V(n1), .TX_OUT_S(
        UART_TX_O), .TX_OUT_V(busy), .Prescale(conf[7:2]), .parity_enable(
        conf[0]), .parity_type(conf[1]), .parity_error(parity_error), 
        .framing_error(framing_error), .test_si(sync_rst2), .test_so(SO[0]), 
        .test_se(n26) );
  clkdiv_test_1 div_tx ( .i_ref_clk(uart_clk_mux_out), .i_rst_n(n5), 
        .i_clk_en(1'b1), .i_div_ratio(div_ratio), .o_div_clk(tx_clk), 
        .test_si(n19), .test_so(n18), .test_se(n34) );
  clkdiv_test_0 div_RX ( .i_ref_clk(uart_clk_mux_out), .i_rst_n(n5), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        Rx_div_ratio[3:0]}), .o_div_clk(rx_clk), .test_si(RX_OUT_P_wire_s[7]), 
        .test_so(n19), .test_se(n25) );
  CLKDIV_MUX div_mux ( .IN(conf[7:2]), .OUT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, Rx_div_ratio[3:0]}) );
  rst_sync_test_1 rst_syn2 ( .rst(rst_mux), .clk(uart_clk_mux_out), .sync_rst(
        sync_rst2), .test_si(sync_rst1), .test_se(n28) );
  rst_sync_test_0 rst_syn1 ( .rst(rst_mux), .clk(ref_clk_mux_out), .sync_rst(
        sync_rst1), .test_si(Rd_D_vid), .test_se(n34) );
  data_sync_test_1 data_syn ( .unsync_bus(RX_OUT_P_wire), .bus_enable(
        RX_OUT_V_wire), .clk(ref_clk_mux_out), .rst(n7), .sync_bus(
        RX_OUT_P_wire_s), .enable_pulse(RX_OUT_V_wire_s), .test_si(n20), 
        .test_se(n23) );
  fifo_top_test_1 fifo ( .wclk_t(ref_clk_mux_out), .wrst_t(n7), .winc_t(WR_inc), .rclk_t(uart_clk_mux_out_tx), .rrst_t(n5), .rinc_t(RD_inc), .wdata_t(WR_data), .full_t(FIFO_Full), .empty_t(f_empty), .rdata_t(RD_DATA), .test_si2(SI[2]), 
        .test_si1(n18), .test_so2(n15), .test_so1(SO[3]), .test_se(SE) );
  reg_file_test_1 register_file ( .rst(n7), .clk(ref_clk_mux_out), .RdEn(RdEn), 
        .WrEn(WrEn), .address({addr[3:2], n4, n3}), .WrData(Wr_D), .RdData(
        Rd_D), .rd_d_vld(Rd_D_vid), .REG0(op_a), .REG1(op_b), .REG2(conf), 
        .REG3(div_ratio), .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(n14), 
        .test_so1(SO[1]), .test_se(SE) );
  pulse_gen_test_1 pulse_gen_inst ( .busy(busy), .clk(uart_clk_mux_out_tx), 
        .rst(n5), .enable_pulse(RD_inc), .test_si(n15), .test_so(n14), 
        .test_se(n27) );
  alu_test_1 alu_inst ( .A(op_a), .b(op_b), .ALU_FUN(fun), .clk(ALU_clk), 
        .rst(n7), .enable(En), .ALU_OUT(ALU_OUT), .valid(ALU_valid), .test_si(
        SI[3]), .test_se(n31) );
  CLK_GATE clock_gate_inst ( .CLK_EN(_3_net_), .CLK(ref_clk_mux_out), 
        .GATED_CLK(ALU_clk) );
  sys_crl_test_1 control ( .alu_out(ALU_OUT), .out_valid(ALU_valid), 
        .rx_p_data(RX_OUT_P_wire_s), .rx_d_vld(RX_OUT_V_wire_s), .rd_data(Rd_D), .rd_d_vld(Rd_D_vid), .clk(ref_clk_mux_out), .rst(n7), .fifo_full(FIFO_Full), 
        .alu_en(En), .alu_fun(fun), .gate_en(gate_en), .addr(addr), .wr_en(
        WrEn), .rd_en(RdEn), .wr_data(Wr_D), .tx_p_data(WR_data), .tx_d_vld(
        WR_inc), .test_so(n20), .test_se(n27) );
endmodule

