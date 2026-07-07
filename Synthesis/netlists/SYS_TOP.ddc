/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 05:39:12 2025
/////////////////////////////////////////////////////////////


module fsm ( data_valid, par_en, ser_done, clk, rst, ser_en, mux_sel, busy );
  output [1:0] mux_sel;
  input data_valid, par_en, ser_done, clk, rst;
  output ser_en, busy;
  wire   n3, n4, n5, n6, n7, n1, n2;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  NAND2BX2M U3 ( .AN(n7), .B(n4), .Y(mux_sel[1]) );
  NOR2X2M U4 ( .A(n3), .B(n2), .Y(n7) );
  NOR2X2M U5 ( .A(ser_en), .B(n7), .Y(mux_sel[0]) );
  NAND2BX2M U6 ( .AN(n3), .B(n2), .Y(n4) );
  INVX2M U7 ( .A(n6), .Y(busy) );
  NOR3X2M U8 ( .A(current_state[1]), .B(current_state[2]), .C(n2), .Y(ser_en)
         );
  NAND2BX2M U9 ( .AN(current_state[2]), .B(current_state[1]), .Y(n3) );
  INVX2M U10 ( .A(current_state[0]), .Y(n2) );
  AOI211X2M U11 ( .A0(n2), .A1(current_state[1]), .B0(ser_en), .C0(mux_sel[1]), 
        .Y(n6) );
  OAI31X1M U12 ( .A0(n1), .A1(par_en), .A2(n3), .B0(n4), .Y(next_state[2]) );
  OAI21BX1M U13 ( .A0(current_state[2]), .A1(n5), .B0N(ser_en), .Y(
        next_state[0]) );
  AOI22X1M U14 ( .A0(data_valid), .A1(n6), .B0(current_state[0]), .B1(n1), .Y(
        n5) );
  INVX2M U15 ( .A(ser_done), .Y(n1) );
  OAI21X2M U16 ( .A0(current_state[2]), .A1(n2), .B0(n3), .Y(next_state[1]) );
endmodule


module ser ( P_data, ser_en, clk, rst, ser_done, ser_data );
  input [7:0] P_data;
  input ser_en, clk, rst;
  output ser_done, ser_data;
  wire   N12, N13, N15, n3, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n1,
         n2, n4, n5, n30;
  wire   [7:1] shift_reg;
  wire   [3:0] counter;

  DFFRQX2M \shift_reg_reg[6]  ( .D(n28), .CK(clk), .RN(rst), .Q(shift_reg[6])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n23), .CK(clk), .RN(rst), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n24), .CK(clk), .RN(rst), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n25), .CK(clk), .RN(rst), .Q(shift_reg[3])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n26), .CK(clk), .RN(rst), .Q(shift_reg[2])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n27), .CK(clk), .RN(rst), .Q(shift_reg[1])
         );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n29), .CK(clk), .RN(rst), .Q(shift_reg[7])
         );
  DFFRQX2M \counter_reg[3]  ( .D(N15), .CK(clk), .RN(rst), .Q(counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(n2), .CK(clk), .RN(rst), .Q(counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N13), .CK(clk), .RN(rst), .Q(counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N12), .CK(clk), .RN(rst), .Q(counter[0]) );
  DFFRX1M flag_reg ( .D(n22), .CK(clk), .RN(rst), .QN(n3) );
  DFFRQX2M ser_data_reg ( .D(n21), .CK(clk), .RN(rst), .Q(ser_data) );
  NOR2X2M U3 ( .A(n8), .B(n1), .Y(n12) );
  INVX2M U4 ( .A(n1), .Y(n30) );
  NOR2X2M U5 ( .A(n1), .B(n10), .Y(n8) );
  OAI21X2M U6 ( .A0(n18), .A1(n5), .B0(n19), .Y(n6) );
  BUFX2M U7 ( .A(ser_en), .Y(n1) );
  NOR2BX2M U8 ( .AN(n10), .B(n18), .Y(N13) );
  AND3X2M U9 ( .A(n10), .B(n6), .C(n7), .Y(N15) );
  NOR3X2M U10 ( .A(counter[3]), .B(n1), .C(n3), .Y(n10) );
  XNOR2X2M U11 ( .A(counter[0]), .B(counter[1]), .Y(n18) );
  XNOR2X2M U12 ( .A(n18), .B(counter[2]), .Y(n7) );
  NAND2X2M U13 ( .A(n10), .B(counter[0]), .Y(N12) );
  OAI21X2M U14 ( .A0(counter[3]), .A1(n3), .B0(n30), .Y(n22) );
  NOR3BX2M U15 ( .AN(counter[3]), .B(n6), .C(n7), .Y(ser_done) );
  NAND2X2M U16 ( .A(counter[0]), .B(counter[1]), .Y(n19) );
  OAI2BB1X2M U17 ( .A0N(ser_data), .A1N(n8), .B0(n9), .Y(n21) );
  AOI22X1M U18 ( .A0(shift_reg[1]), .A1(n10), .B0(n1), .B1(P_data[0]), .Y(n9)
         );
  OAI2BB1X2M U19 ( .A0N(shift_reg[1]), .A1N(n8), .B0(n16), .Y(n27) );
  AOI22X1M U20 ( .A0(shift_reg[2]), .A1(n12), .B0(P_data[1]), .B1(n1), .Y(n16)
         );
  OAI2BB1X2M U21 ( .A0N(n8), .A1N(shift_reg[2]), .B0(n15), .Y(n26) );
  AOI22X1M U22 ( .A0(shift_reg[3]), .A1(n12), .B0(P_data[2]), .B1(n1), .Y(n15)
         );
  OAI2BB1X2M U23 ( .A0N(n8), .A1N(shift_reg[3]), .B0(n14), .Y(n25) );
  AOI22X1M U24 ( .A0(shift_reg[4]), .A1(n12), .B0(P_data[3]), .B1(n1), .Y(n14)
         );
  OAI2BB1X2M U25 ( .A0N(n8), .A1N(shift_reg[4]), .B0(n13), .Y(n24) );
  AOI22X1M U26 ( .A0(shift_reg[5]), .A1(n12), .B0(P_data[4]), .B1(n1), .Y(n13)
         );
  OAI2BB1X2M U27 ( .A0N(n8), .A1N(shift_reg[5]), .B0(n11), .Y(n23) );
  AOI22X1M U28 ( .A0(shift_reg[6]), .A1(n12), .B0(P_data[5]), .B1(n1), .Y(n11)
         );
  OAI2BB1X2M U29 ( .A0N(n8), .A1N(shift_reg[6]), .B0(n17), .Y(n28) );
  AOI22X1M U30 ( .A0(shift_reg[7]), .A1(n12), .B0(P_data[6]), .B1(n1), .Y(n17)
         );
  INVX2M U31 ( .A(counter[2]), .Y(n5) );
  AO22X1M U32 ( .A0(n30), .A1(shift_reg[7]), .B0(P_data[7]), .B1(n1), .Y(n29)
         );
  INVX2M U33 ( .A(n20), .Y(n2) );
  AOI33X2M U34 ( .A0(counter[1]), .A1(n5), .A2(n4), .B0(n10), .B1(n19), .B2(
        counter[2]), .Y(n20) );
  INVX2M U35 ( .A(N12), .Y(n4) );
endmodule


module parity ( data_valid, P_data, par_type, busy, clk, rst, par_bit );
  input [7:0] P_data;
  input data_valid, par_type, busy, clk, rst;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [7:0] shift_reg;

  DFFRQX2M \shift_reg_reg[5]  ( .D(n11), .CK(clk), .RN(rst), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n7), .CK(clk), .RN(rst), .Q(shift_reg[1])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n10), .CK(clk), .RN(rst), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[0]  ( .D(n6), .CK(clk), .RN(rst), .Q(shift_reg[0])
         );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n12), .CK(clk), .RN(rst), .Q(shift_reg[6])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n8), .CK(clk), .RN(rst), .Q(shift_reg[2])
         );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n13), .CK(clk), .RN(rst), .Q(shift_reg[7])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n9), .CK(clk), .RN(rst), .Q(shift_reg[3])
         );
  NOR2BX2M U2 ( .AN(data_valid), .B(busy), .Y(n5) );
  XOR3XLM U3 ( .A(n1), .B(n2), .C(par_type), .Y(par_bit) );
  XOR3XLM U4 ( .A(shift_reg[5]), .B(shift_reg[4]), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(shift_reg[1]), .B(shift_reg[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U6 ( .A(shift_reg[7]), .B(shift_reg[6]), .Y(n4) );
  CLKXOR2X2M U7 ( .A(shift_reg[3]), .B(shift_reg[2]), .Y(n3) );
  AO2B2X2M U8 ( .B0(P_data[0]), .B1(n5), .A0(shift_reg[0]), .A1N(n5), .Y(n6)
         );
  AO2B2X2M U9 ( .B0(P_data[1]), .B1(n5), .A0(shift_reg[1]), .A1N(n5), .Y(n7)
         );
  AO2B2X2M U10 ( .B0(P_data[2]), .B1(n5), .A0(shift_reg[2]), .A1N(n5), .Y(n8)
         );
  AO2B2X2M U11 ( .B0(P_data[3]), .B1(n5), .A0(shift_reg[3]), .A1N(n5), .Y(n9)
         );
  AO2B2X2M U12 ( .B0(P_data[4]), .B1(n5), .A0(shift_reg[4]), .A1N(n5), .Y(n10)
         );
  AO2B2X2M U13 ( .B0(P_data[5]), .B1(n5), .A0(shift_reg[5]), .A1N(n5), .Y(n11)
         );
  AO2B2X2M U14 ( .B0(P_data[6]), .B1(n5), .A0(shift_reg[6]), .A1N(n5), .Y(n12)
         );
  AO2B2X2M U15 ( .B0(P_data[7]), .B1(n5), .A0(shift_reg[7]), .A1N(n5), .Y(n13)
         );
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


module top ( P_data_t, data_valid_t, par_en_t, par_type_t, clk_t, rst_t, 
        Tx_out_t, busy_t );
  input [7:0] P_data_t;
  input data_valid_t, par_en_t, par_type_t, clk_t, rst_t;
  output Tx_out_t, busy_t;
  wire   ser_done_t, ser_en_t, ser_data_t, par_bit_t, n1, n2;
  wire   [1:0] mux_sel_t;

  fsm fsm_inst ( .data_valid(data_valid_t), .par_en(par_en_t), .ser_done(
        ser_done_t), .clk(clk_t), .rst(n1), .ser_en(ser_en_t), .mux_sel(
        mux_sel_t), .busy(busy_t) );
  ser serial_inst ( .P_data(P_data_t), .ser_en(ser_en_t), .clk(clk_t), .rst(n1), .ser_done(ser_done_t), .ser_data(ser_data_t) );
  parity par_inst ( .data_valid(data_valid_t), .P_data(P_data_t), .par_type(
        par_type_t), .busy(busy_t), .clk(clk_t), .rst(n1), .par_bit(par_bit_t)
         );
  mux mux_inst ( .mux_sel(mux_sel_t), .ser_data(ser_data_t), .par_bit(
        par_bit_t), .Tx_out(Tx_out_t) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_t), .Y(n2) );
endmodule


module fsmr ( Rx_in, bit_cnt, par_err, strt_glitch, stp_err, par_en, clk, rst, 
        edge_cnt, prescale, dat_samp_en, enable, deser_en, data_valid, 
        stp_chk_en, strt_chk_en, par_chk_en );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input Rx_in, par_err, strt_glitch, stp_err, par_en, clk, rst;
  output dat_samp_en, enable, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en;
  wire   N62, N63, N64, N65, N66, N67, N94, N95, N96, N97, N98, N99,
         \sub_114/carry[5] , \sub_114/carry[4] , \sub_114/carry[3] ,
         \r71/carry[4] , \r71/carry[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign N62 = prescale[0];
  assign N94 = prescale[1];

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  OAI221X1M U3 ( .A0(current_state[2]), .A1(Rx_in), .B0(current_state[0]), 
        .B1(n42), .C0(n20), .Y(enable) );
  INVX2M U4 ( .A(N94), .Y(N63) );
  INVX2M U5 ( .A(prescale[2]), .Y(N95) );
  BUFX2M U6 ( .A(enable), .Y(dat_samp_en) );
  XNOR2X1M U7 ( .A(prescale[5]), .B(\sub_114/carry[5] ), .Y(N67) );
  OR2X1M U8 ( .A(prescale[4]), .B(\sub_114/carry[4] ), .Y(\sub_114/carry[5] )
         );
  XNOR2X1M U9 ( .A(\sub_114/carry[4] ), .B(prescale[4]), .Y(N66) );
  OR2X1M U10 ( .A(prescale[3]), .B(\sub_114/carry[3] ), .Y(\sub_114/carry[4] )
         );
  XNOR2X1M U11 ( .A(\sub_114/carry[3] ), .B(prescale[3]), .Y(N65) );
  OR2X1M U12 ( .A(prescale[2]), .B(N94), .Y(\sub_114/carry[3] ) );
  XNOR2X1M U13 ( .A(N94), .B(prescale[2]), .Y(N64) );
  AND2X1M U14 ( .A(\r71/carry[4] ), .B(prescale[5]), .Y(N99) );
  CLKXOR2X2M U15 ( .A(prescale[5]), .B(\r71/carry[4] ), .Y(N98) );
  AND2X1M U16 ( .A(\r71/carry[3] ), .B(prescale[4]), .Y(\r71/carry[4] ) );
  CLKXOR2X2M U17 ( .A(prescale[4]), .B(\r71/carry[3] ), .Y(N97) );
  AND2X1M U18 ( .A(prescale[2]), .B(prescale[3]), .Y(\r71/carry[3] ) );
  CLKXOR2X2M U19 ( .A(prescale[3]), .B(prescale[2]), .Y(N96) );
  NOR3X1M U20 ( .A(n2), .B(n3), .C(n4), .Y(stp_chk_en) );
  NOR4BX1M U21 ( .AN(n5), .B(current_state[0]), .C(n3), .D(n2), .Y(par_chk_en)
         );
  NAND4X1M U22 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n3) );
  NOR3X1M U23 ( .A(n10), .B(n11), .C(n12), .Y(n9) );
  CLKXOR2X2M U24 ( .A(edge_cnt[4]), .B(N98), .Y(n12) );
  CLKXOR2X2M U25 ( .A(edge_cnt[1]), .B(N95), .Y(n11) );
  CLKXOR2X2M U26 ( .A(edge_cnt[0]), .B(N94), .Y(n10) );
  XNOR2X1M U27 ( .A(edge_cnt[2]), .B(N96), .Y(n8) );
  XNOR2X1M U28 ( .A(edge_cnt[3]), .B(N97), .Y(n7) );
  XNOR2X1M U29 ( .A(edge_cnt[5]), .B(N99), .Y(n6) );
  OAI21BX1M U30 ( .A0(n13), .A1(n4), .B0N(n14), .Y(next_state[2]) );
  OAI31X1M U31 ( .A0(n15), .A1(par_en), .A2(n2), .B0(n16), .Y(n14) );
  NAND4X1M U32 ( .A(n5), .B(bit_cnt[3]), .C(bit_cnt[1]), .D(n17), .Y(n16) );
  NOR4X1M U33 ( .A(par_err), .B(current_state[0]), .C(bit_cnt[2]), .D(
        bit_cnt[0]), .Y(n17) );
  OAI211X1M U34 ( .A0(n13), .A1(n4), .B0(n18), .C0(n19), .Y(next_state[1]) );
  AOI2B1X1M U35 ( .A1N(n20), .A0(n21), .B0(deser_en), .Y(n19) );
  OAI31X1M U36 ( .A0(n22), .A1(n23), .A2(n24), .B0(n5), .Y(n18) );
  CLKINVX1M U37 ( .A(par_err), .Y(n24) );
  CLKINVX1M U38 ( .A(bit_cnt[1]), .Y(n23) );
  NAND3BX1M U39 ( .AN(bit_cnt[2]), .B(n25), .C(bit_cnt[3]), .Y(n22) );
  NOR2BX1M U40 ( .AN(n26), .B(n27), .Y(n13) );
  OAI2B11X1M U41 ( .A1N(strt_chk_en), .A0(n28), .B0(n29), .C0(n30), .Y(
        next_state[0]) );
  AOI32X1M U42 ( .A0(n31), .A1(n27), .A2(n26), .B0(deser_en), .B1(n2), .Y(n30)
         );
  CLKNAND2X2M U43 ( .A(bit_cnt[3]), .B(n32), .Y(n2) );
  AND4X1M U44 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n26) );
  NOR3X1M U45 ( .A(n37), .B(n38), .C(n39), .Y(n36) );
  CLKXOR2X2M U46 ( .A(edge_cnt[4]), .B(N66), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_cnt[1]), .B(N63), .Y(n38) );
  CLKXOR2X2M U48 ( .A(edge_cnt[0]), .B(N62), .Y(n37) );
  XNOR2X1M U49 ( .A(edge_cnt[2]), .B(N64), .Y(n35) );
  XNOR2X1M U50 ( .A(edge_cnt[3]), .B(N65), .Y(n34) );
  XNOR2X1M U51 ( .A(edge_cnt[5]), .B(N67), .Y(n33) );
  CLKINVX1M U52 ( .A(stp_err), .Y(n27) );
  CLKINVX1M U53 ( .A(n4), .Y(n31) );
  NAND3X1M U54 ( .A(current_state[1]), .B(n40), .C(current_state[2]), .Y(n4)
         );
  OR4X1M U55 ( .A(Rx_in), .B(current_state[0]), .C(current_state[1]), .D(
        current_state[2]), .Y(n29) );
  NOR3X1M U56 ( .A(n41), .B(bit_cnt[3]), .C(n21), .Y(n28) );
  NOR3X1M U57 ( .A(strt_glitch), .B(bit_cnt[3]), .C(n41), .Y(n21) );
  CLKINVX1M U58 ( .A(n32), .Y(n41) );
  NOR3X1M U59 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(n25), .Y(n32) );
  CLKINVX1M U60 ( .A(bit_cnt[0]), .Y(n25) );
  NOR2X1M U61 ( .A(n20), .B(current_state[1]), .Y(strt_chk_en) );
  CLKINVX1M U62 ( .A(n15), .Y(deser_en) );
  CLKNAND2X2M U63 ( .A(n5), .B(current_state[0]), .Y(n15) );
  NOR2X1M U64 ( .A(n42), .B(current_state[2]), .Y(n5) );
  NOR3X1M U65 ( .A(n43), .B(n40), .C(n42), .Y(data_valid) );
  CLKINVX1M U66 ( .A(current_state[0]), .Y(n40) );
  CLKNAND2X2M U67 ( .A(current_state[0]), .B(n43), .Y(n20) );
  CLKINVX1M U68 ( .A(current_state[2]), .Y(n43) );
  CLKINVX1M U69 ( .A(current_state[1]), .Y(n42) );
endmodule


module deser ( sampled_bit, deser_en, bit_cnt, edge_cnt, prescale, clk, rst, 
        par_en, p_data );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  output [7:0] p_data;
  input sampled_bit, deser_en, clk, rst, par_en;
  wire   N15, N16, N17, N18, N19, N20, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, \add_24/carry[4] ,
         \add_24/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n43, n44,
         n45;
  wire   [7:0] shift_reg;
  assign N15 = prescale[1];

  DFFRQX2M \shift_reg_reg[7]  ( .D(n42), .CK(clk), .RN(rst), .Q(shift_reg[7])
         );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n41), .CK(clk), .RN(rst), .Q(shift_reg[6])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n40), .CK(clk), .RN(rst), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n39), .CK(clk), .RN(rst), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n38), .CK(clk), .RN(rst), .Q(shift_reg[3])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n37), .CK(clk), .RN(rst), .Q(shift_reg[2])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n36), .CK(clk), .RN(rst), .Q(shift_reg[1])
         );
  DFFRQX2M \shift_reg_reg[0]  ( .D(n35), .CK(clk), .RN(rst), .Q(shift_reg[0])
         );
  DFFRQX2M \p_data_reg[6]  ( .D(n33), .CK(clk), .RN(rst), .Q(p_data[6]) );
  DFFRQX2M \p_data_reg[1]  ( .D(n28), .CK(clk), .RN(rst), .Q(p_data[1]) );
  DFFRQX2M \p_data_reg[5]  ( .D(n32), .CK(clk), .RN(rst), .Q(p_data[5]) );
  DFFRQX2M \p_data_reg[0]  ( .D(n27), .CK(clk), .RN(rst), .Q(p_data[0]) );
  DFFRQX2M \p_data_reg[4]  ( .D(n31), .CK(clk), .RN(rst), .Q(p_data[4]) );
  DFFRQX2M \p_data_reg[7]  ( .D(n34), .CK(clk), .RN(rst), .Q(p_data[7]) );
  DFFRQX2M \p_data_reg[3]  ( .D(n30), .CK(clk), .RN(rst), .Q(p_data[3]) );
  DFFRQX2M \p_data_reg[2]  ( .D(n29), .CK(clk), .RN(rst), .Q(p_data[2]) );
  OR4X1M U3 ( .A(n10), .B(n9), .C(n8), .D(n7), .Y(n1) );
  AND2X2M U4 ( .A(n24), .B(deser_en), .Y(n15) );
  AOI2B1X1M U5 ( .A1N(n26), .A0(bit_cnt[3]), .B0(n1), .Y(n24) );
  NOR2BX2M U6 ( .AN(n14), .B(bit_cnt[0]), .Y(n26) );
  NOR3BX2M U7 ( .AN(n15), .B(bit_cnt[2]), .C(n44), .Y(n17) );
  NOR2X2M U8 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .Y(n14) );
  OAI2BB2X1M U9 ( .B0(n45), .B1(n21), .A0N(n21), .A1N(shift_reg[4]), .Y(n39)
         );
  NAND3X2M U10 ( .A(bit_cnt[0]), .B(n44), .C(n20), .Y(n21) );
  OAI2BB2X1M U11 ( .B0(n13), .B1(n45), .A0N(n13), .A1N(shift_reg[0]), .Y(n35)
         );
  NAND3X2M U12 ( .A(bit_cnt[0]), .B(n14), .C(n15), .Y(n13) );
  OAI2BB2X1M U13 ( .B0(n45), .B1(n23), .A0N(n23), .A1N(shift_reg[6]), .Y(n41)
         );
  NAND3X2M U14 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n20), .Y(n23) );
  OAI2BB2X1M U15 ( .B0(n45), .B1(n25), .A0N(n25), .A1N(shift_reg[7]), .Y(n42)
         );
  NAND2X2M U16 ( .A(n24), .B(n12), .Y(n25) );
  OAI2BB2X1M U17 ( .B0(n45), .B1(n16), .A0N(n16), .A1N(shift_reg[1]), .Y(n36)
         );
  NAND2X2M U18 ( .A(n17), .B(n43), .Y(n16) );
  OAI2BB2X1M U19 ( .B0(n45), .B1(n18), .A0N(n18), .A1N(shift_reg[2]), .Y(n37)
         );
  NAND2X2M U20 ( .A(n17), .B(bit_cnt[0]), .Y(n18) );
  OAI2BB2X1M U21 ( .B0(n45), .B1(n22), .A0N(n22), .A1N(shift_reg[5]), .Y(n40)
         );
  NAND3X2M U22 ( .A(bit_cnt[1]), .B(n43), .C(n20), .Y(n22) );
  AND2X2M U23 ( .A(bit_cnt[2]), .B(n15), .Y(n20) );
  OAI2BB2X1M U24 ( .B0(n45), .B1(n19), .A0N(n19), .A1N(shift_reg[3]), .Y(n38)
         );
  NAND3X2M U25 ( .A(n43), .B(n44), .C(n20), .Y(n19) );
  AND3X2M U26 ( .A(bit_cnt[3]), .B(n14), .C(deser_en), .Y(n12) );
  INVX2M U27 ( .A(bit_cnt[0]), .Y(n43) );
  NAND2X2M U28 ( .A(bit_cnt[0]), .B(n12), .Y(n11) );
  INVX2M U29 ( .A(bit_cnt[1]), .Y(n44) );
  AO2B2X2M U30 ( .B0(p_data[0]), .B1(n11), .A0(shift_reg[0]), .A1N(n11), .Y(
        n27) );
  AO2B2X2M U31 ( .B0(p_data[1]), .B1(n11), .A0(shift_reg[1]), .A1N(n11), .Y(
        n28) );
  AO2B2X2M U32 ( .B0(p_data[2]), .B1(n11), .A0(shift_reg[2]), .A1N(n11), .Y(
        n29) );
  AO2B2X2M U33 ( .B0(p_data[3]), .B1(n11), .A0(shift_reg[3]), .A1N(n11), .Y(
        n30) );
  AO2B2X2M U34 ( .B0(p_data[4]), .B1(n11), .A0(shift_reg[4]), .A1N(n11), .Y(
        n31) );
  AO2B2X2M U35 ( .B0(p_data[5]), .B1(n11), .A0(shift_reg[5]), .A1N(n11), .Y(
        n32) );
  AO2B2X2M U36 ( .B0(p_data[6]), .B1(n11), .A0(shift_reg[6]), .A1N(n11), .Y(
        n33) );
  AO2B2X2M U37 ( .B0(p_data[7]), .B1(n11), .A0(shift_reg[7]), .A1N(n11), .Y(
        n34) );
  INVX2M U38 ( .A(sampled_bit), .Y(n45) );
  INVX2M U39 ( .A(prescale[2]), .Y(N16) );
  AND2X1M U40 ( .A(\add_24/carry[4] ), .B(prescale[5]), .Y(N20) );
  CLKXOR2X2M U41 ( .A(prescale[5]), .B(\add_24/carry[4] ), .Y(N19) );
  AND2X1M U42 ( .A(\add_24/carry[3] ), .B(prescale[4]), .Y(\add_24/carry[4] )
         );
  CLKXOR2X2M U43 ( .A(prescale[4]), .B(\add_24/carry[3] ), .Y(N18) );
  AND2X1M U44 ( .A(prescale[2]), .B(prescale[3]), .Y(\add_24/carry[3] ) );
  CLKXOR2X2M U45 ( .A(prescale[3]), .B(prescale[2]), .Y(N17) );
  NOR2BX1M U46 ( .AN(edge_cnt[0]), .B(N15), .Y(n2) );
  OAI2B2X1M U47 ( .A1N(N16), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n6) );
  NOR2BX1M U48 ( .AN(N15), .B(edge_cnt[0]), .Y(n3) );
  OAI2B2X1M U49 ( .A1N(edge_cnt[1]), .A0(n3), .B0(N16), .B1(n3), .Y(n5) );
  XNOR2X1M U50 ( .A(N20), .B(edge_cnt[5]), .Y(n4) );
  NAND3X1M U51 ( .A(n6), .B(n5), .C(n4), .Y(n10) );
  CLKXOR2X2M U52 ( .A(N19), .B(edge_cnt[4]), .Y(n9) );
  CLKXOR2X2M U53 ( .A(N17), .B(edge_cnt[2]), .Y(n8) );
  CLKXOR2X2M U54 ( .A(N18), .B(edge_cnt[3]), .Y(n7) );
endmodule


module data_samp ( Rx_in, prescale, data_samp_en, edge_cnt, clk, rst, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input Rx_in, data_samp_en, clk, rst;
  output sampled_bit;
  wire   s1, s2, s3, N14, N15, N16, N17, N18, N19, N20, N23, N24, N25, N26,
         N27, N68, n18, n19, n20, \add_23/carry[4] , \add_23/carry[3] ,
         \add_23/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37;

  DFFSQX2M s2_reg ( .D(n18), .CK(clk), .SN(rst), .Q(s2) );
  DFFSQX2M s1_reg ( .D(n20), .CK(clk), .SN(rst), .Q(s1) );
  DFFSQX2M s3_reg ( .D(n19), .CK(clk), .SN(rst), .Q(s3) );
  DFFSQX2M sampled_bit_reg ( .D(N68), .CK(clk), .SN(rst), .Q(sampled_bit) );
  OR2X2M U3 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  ADDHX1M U4 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_23/carry[2] ), .S(
        N23) );
  ADDHX1M U5 ( .A(prescale[4]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), 
        .S(N25) );
  ADDHX1M U6 ( .A(prescale[3]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), 
        .S(N24) );
  ADDHX1M U7 ( .A(prescale[5]), .B(\add_23/carry[4] ), .CO(N27), .S(N26) );
  CLKINVX1M U8 ( .A(prescale[1]), .Y(N14) );
  OAI2BB1X1M U9 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n1), .Y(N15) );
  OR2X1M U10 ( .A(n1), .B(prescale[3]), .Y(n2) );
  OAI2BB1X1M U11 ( .A0N(n1), .A1N(prescale[3]), .B0(n2), .Y(N16) );
  XNOR2X1M U12 ( .A(prescale[4]), .B(n2), .Y(N17) );
  NOR3X1M U13 ( .A(prescale[4]), .B(prescale[5]), .C(n2), .Y(N19) );
  OAI21X1M U14 ( .A0(prescale[4]), .A1(n2), .B0(prescale[5]), .Y(n3) );
  NAND2BX1M U15 ( .AN(N19), .B(n3), .Y(N18) );
  NOR2BX1M U16 ( .AN(N14), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U17 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N15), .B1(n4), .Y(n7) );
  NOR2BX1M U18 ( .AN(edge_cnt[0]), .B(N14), .Y(n5) );
  OAI2B2X1M U19 ( .A1N(N15), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n6) );
  NAND4BBX1M U20 ( .AN(edge_cnt[5]), .BN(N19), .C(n7), .D(n6), .Y(n11) );
  CLKXOR2X2M U21 ( .A(edge_cnt[4]), .B(N18), .Y(n10) );
  CLKXOR2X2M U22 ( .A(edge_cnt[2]), .B(N16), .Y(n9) );
  CLKXOR2X2M U23 ( .A(edge_cnt[3]), .B(N17), .Y(n8) );
  NOR4X1M U24 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N20) );
  MXI2X1M U25 ( .A(n12), .B(n13), .S0(n14), .Y(n20) );
  AND2X1M U26 ( .A(N20), .B(data_samp_en), .Y(n14) );
  CLKMX2X2M U27 ( .A(s3), .B(Rx_in), .S0(n15), .Y(n19) );
  NOR4BX1M U28 ( .AN(n16), .B(n17), .C(n21), .D(n22), .Y(n15) );
  CLKNAND2X2M U29 ( .A(n23), .B(n24), .Y(n21) );
  XNOR2X1M U30 ( .A(edge_cnt[0]), .B(N14), .Y(n24) );
  XNOR2X1M U31 ( .A(edge_cnt[1]), .B(N23), .Y(n23) );
  NAND4X1M U32 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n17) );
  XNOR2X1M U33 ( .A(edge_cnt[2]), .B(N24), .Y(n28) );
  XNOR2X1M U34 ( .A(edge_cnt[3]), .B(N25), .Y(n27) );
  XNOR2X1M U35 ( .A(edge_cnt[4]), .B(N26), .Y(n26) );
  XNOR2X1M U36 ( .A(edge_cnt[5]), .B(N27), .Y(n25) );
  MXI2X1M U37 ( .A(n29), .B(n13), .S0(n30), .Y(n18) );
  NOR2X1M U38 ( .A(n22), .B(n16), .Y(n30) );
  NAND4X1M U39 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n16) );
  NOR3X1M U40 ( .A(n35), .B(edge_cnt[5]), .C(n36), .Y(n34) );
  CLKXOR2X2M U41 ( .A(prescale[1]), .B(edge_cnt[0]), .Y(n36) );
  CLKXOR2X2M U42 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n35) );
  XNOR2X1M U43 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n33) );
  XNOR2X1M U44 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n32) );
  XNOR2X1M U45 ( .A(edge_cnt[1]), .B(prescale[2]), .Y(n31) );
  NAND2BX1M U46 ( .AN(N20), .B(data_samp_en), .Y(n22) );
  CLKINVX1M U47 ( .A(Rx_in), .Y(n13) );
  OAI21X1M U48 ( .A0(n12), .A1(n29), .B0(n37), .Y(N68) );
  OAI21X1M U49 ( .A0(s1), .A1(s2), .B0(s3), .Y(n37) );
  CLKINVX1M U50 ( .A(s2), .Y(n29) );
  CLKINVX1M U51 ( .A(s1), .Y(n12) );
endmodule


module edge_cnt ( clk, rst, enable, prescale, bit_cnt, edge_cnt );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input clk, rst, enable;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N20, N21, N22, N23, N24, N25,
         N37, N38, N39, N40, N41, N42, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, \add_26/carry[5] , \add_26/carry[4] , \add_26/carry[3] ,
         \add_26/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n22,
         n23, n24, n25, n26, n27, n28, n29, n30;

  DFFRQX2M \edge_cnt_reg[5]  ( .D(N42), .CK(clk), .RN(rst), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N37), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N40), .CK(clk), .RN(rst), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N39), .CK(clk), .RN(rst), .Q(edge_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[3]  ( .D(n18), .CK(clk), .RN(rst), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n19), .CK(clk), .RN(rst), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n20), .CK(clk), .RN(rst), .Q(bit_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N41), .CK(clk), .RN(rst), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N38), .CK(clk), .RN(rst), .Q(edge_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n21), .CK(clk), .RN(rst), .Q(bit_cnt[0]) );
  INVX2M U3 ( .A(n17), .Y(n24) );
  NOR2X2M U4 ( .A(n30), .B(N14), .Y(n17) );
  AOI21X2M U5 ( .A0(n26), .A1(enable), .B0(n17), .Y(n16) );
  INVX2M U6 ( .A(enable), .Y(n30) );
  AND2X2M U7 ( .A(N21), .B(n17), .Y(N38) );
  AND2X2M U8 ( .A(N22), .B(n17), .Y(N39) );
  AND2X2M U9 ( .A(N23), .B(n17), .Y(N40) );
  AND2X2M U10 ( .A(N24), .B(n17), .Y(N41) );
  NOR3X2M U11 ( .A(n27), .B(n26), .C(n28), .Y(n13) );
  OAI32X1M U12 ( .A0(n30), .A1(bit_cnt[0]), .A2(n17), .B0(n26), .B1(n24), .Y(
        n21) );
  OAI32X1M U13 ( .A0(n14), .A1(bit_cnt[2]), .A2(n27), .B0(n15), .B1(n28), .Y(
        n19) );
  OA21X2M U14 ( .A0(n30), .A1(bit_cnt[1]), .B0(n16), .Y(n15) );
  OAI22X1M U15 ( .A0(n29), .A1(n24), .B0(n12), .B1(n30), .Y(n18) );
  AOI32X1M U16 ( .A0(n13), .A1(n29), .A2(N14), .B0(bit_cnt[3]), .B1(n25), .Y(
        n12) );
  INVX2M U17 ( .A(bit_cnt[3]), .Y(n29) );
  INVX2M U18 ( .A(n13), .Y(n25) );
  OAI22X1M U19 ( .A0(n16), .A1(n27), .B0(bit_cnt[1]), .B1(n14), .Y(n20) );
  NAND3X2M U20 ( .A(bit_cnt[0]), .B(n24), .C(enable), .Y(n14) );
  AND2X2M U21 ( .A(N25), .B(n17), .Y(N42) );
  AND2X2M U22 ( .A(N20), .B(n17), .Y(N37) );
  INVX2M U23 ( .A(bit_cnt[0]), .Y(n26) );
  INVX2M U24 ( .A(bit_cnt[1]), .Y(n27) );
  INVX2M U25 ( .A(bit_cnt[2]), .Y(n28) );
  ADDHX1M U26 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_26/carry[2] ), .S(
        N21) );
  ADDHX1M U27 ( .A(edge_cnt[2]), .B(\add_26/carry[2] ), .CO(\add_26/carry[3] ), 
        .S(N22) );
  ADDHX1M U28 ( .A(edge_cnt[3]), .B(\add_26/carry[3] ), .CO(\add_26/carry[4] ), 
        .S(N23) );
  ADDHX1M U29 ( .A(edge_cnt[4]), .B(\add_26/carry[4] ), .CO(\add_26/carry[5] ), 
        .S(N24) );
  OR2X2M U30 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U31 ( .A(prescale[0]), .Y(N7) );
  OAI2BB1X1M U32 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N8) );
  OR2X1M U33 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  OR2X1M U35 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U36 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N10) );
  OR2X1M U37 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N11) );
  NOR2X1M U39 ( .A(n4), .B(prescale[5]), .Y(N13) );
  AO21XLM U40 ( .A0(n4), .A1(prescale[5]), .B0(N13), .Y(N12) );
  CLKINVX1M U41 ( .A(edge_cnt[0]), .Y(N20) );
  CLKXOR2X2M U42 ( .A(\add_26/carry[5] ), .B(edge_cnt[5]), .Y(N25) );
  NOR2BX1M U43 ( .AN(N7), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U44 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N8), .B1(n5), .Y(n9) );
  XNOR2X1M U45 ( .A(N12), .B(edge_cnt[5]), .Y(n8) );
  NOR2BX1M U46 ( .AN(edge_cnt[0]), .B(N7), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(N8), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U48 ( .AN(N13), .B(n9), .C(n8), .D(n7), .Y(n23) );
  CLKXOR2X2M U49 ( .A(N11), .B(edge_cnt[4]), .Y(n22) );
  CLKXOR2X2M U50 ( .A(N9), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U51 ( .A(N10), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U52 ( .A(n23), .B(n22), .C(n11), .D(n10), .Y(N14) );
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


module uart_rx_top ( rx_in_t, prescale_t, par_en_t, par_type_t, clk_t, rst_t, 
        p_data_t, par_err_t, stop_err_t, data_valid_tb );
  input [5:0] prescale_t;
  output [7:0] p_data_t;
  input rx_in_t, par_en_t, par_type_t, clk_t, rst_t;
  output par_err_t, stop_err_t, data_valid_tb;
  wire   strt_glich_t, data_samp_en_t, enable_t, deser_en_t, stp_chk_en_t,
         strt_chk_en_t, par_chk_en_t, sampled_bit_t;
  wire   [3:0] bit_cnt_t;
  wire   [5:0] edge_cnt_t;

  fsmr fsm_init ( .Rx_in(rx_in_t), .bit_cnt(bit_cnt_t), .par_err(par_err_t), 
        .strt_glitch(strt_glich_t), .stp_err(stop_err_t), .par_en(par_en_t), 
        .clk(clk_t), .rst(rst_t), .edge_cnt(edge_cnt_t), .prescale(prescale_t), 
        .dat_samp_en(data_samp_en_t), .enable(enable_t), .deser_en(deser_en_t), 
        .data_valid(data_valid_tb), .stp_chk_en(stp_chk_en_t), .strt_chk_en(
        strt_chk_en_t), .par_chk_en(par_chk_en_t) );
  deser deser_init ( .sampled_bit(sampled_bit_t), .deser_en(deser_en_t), 
        .bit_cnt(bit_cnt_t), .edge_cnt(edge_cnt_t), .prescale(prescale_t), 
        .clk(clk_t), .rst(rst_t), .par_en(par_en_t), .p_data(p_data_t) );
  data_samp data_samp_init ( .Rx_in(rx_in_t), .prescale(prescale_t), 
        .data_samp_en(data_samp_en_t), .edge_cnt(edge_cnt_t), .clk(clk_t), 
        .rst(rst_t), .sampled_bit(sampled_bit_t) );
  edge_cnt edge_cnt_init ( .clk(clk_t), .rst(rst_t), .enable(enable_t), 
        .prescale(prescale_t), .bit_cnt(bit_cnt_t), .edge_cnt(edge_cnt_t) );
  par_check par_check_init ( .par_type(par_type_t), .par_chk_en(par_chk_en_t), 
        .sampled_bit(sampled_bit_t), .P_data(p_data_t), .par_err(par_err_t) );
  strt_check strt_check_init ( .strt_chk_en(strt_chk_en_t), .sampled_bit(
        sampled_bit_t), .strt_glitch(strt_glich_t) );
  stop_check stop_check_init ( .stp_chk_en(stp_chk_en_t), .sampled_bit(
        sampled_bit_t), .stp_err(stop_err_t) );
endmodule


module UART ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  top UART_TX ( .P_data_t(TX_IN_P), .data_valid_t(TX_IN_V), .par_en_t(
        parity_enable), .par_type_t(parity_type), .clk_t(TX_CLK), .rst_t(n1), 
        .Tx_out_t(TX_OUT_S), .busy_t(TX_OUT_V) );
  uart_rx_top UART_RX ( .rx_in_t(RX_IN_S), .prescale_t(Prescale), .par_en_t(
        parity_enable), .par_type_t(parity_type), .clk_t(RX_CLK), .rst_t(n1), 
        .p_data_t(RX_OUT_P), .par_err_t(parity_error), .stop_err_t(
        framing_error), .data_valid_tb(RX_OUT_V) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
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


module clkdiv_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, clk_out, N15, N16, N17, N18, N19, N20, N21, N22, N24, N25, N26,
         N27, N28, N29, N30, N31, n18, n1, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41;
  wire   [7:0] half_div_p1;
  wire   [7:0] counter;

  clkdiv_0_DW01_inc_0 add_52 ( .A(counter), .SUM({N22, N21, N20, N19, N18, N17, 
        N16, N15}) );
  clkdiv_0_DW01_inc_1 add_19 ( .A({1'b0, i_div_ratio[7:1]}), .SUM(half_div_p1)
         );
  DFFRQX2M \counter_reg[7]  ( .D(N31), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M clk_out_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst_n), .Q(clk_out) );
  DFFRQX2M \counter_reg[4]  ( .D(N28), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[1]  ( .D(N25), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(N26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[3]  ( .D(N27), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[5]  ( .D(N29), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[6]  ( .D(N30), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFSX1M \counter_reg[0]  ( .D(N24), .CK(i_ref_clk), .SN(i_rst_n), .Q(
        counter[0]), .QN(n12) );
  MX2X2M U3 ( .A(i_ref_clk), .B(clk_out), .S0(N1), .Y(o_div_clk) );
  XNOR2X1M U4 ( .A(n1), .B(clk_out), .Y(n18) );
  OAI2BB2X1M U5 ( .B0(n3), .B1(n4), .A0N(N22), .A1N(n5), .Y(N31) );
  OAI2BB2X1M U7 ( .B0(n6), .B1(n4), .A0N(N21), .A1N(n5), .Y(N30) );
  OAI2BB2X1M U8 ( .B0(n7), .B1(n4), .A0N(N20), .A1N(n5), .Y(N29) );
  OAI2BB2X1M U9 ( .B0(n8), .B1(n4), .A0N(N19), .A1N(n5), .Y(N28) );
  OAI2BB2X1M U10 ( .B0(n9), .B1(n4), .A0N(N18), .A1N(n5), .Y(N27) );
  OAI2BB2X1M U11 ( .B0(n10), .B1(n4), .A0N(N17), .A1N(n5), .Y(N26) );
  OAI2BB2X1M U12 ( .B0(n11), .B1(n4), .A0N(N16), .A1N(n5), .Y(N25) );
  OAI211X1M U13 ( .A0(n12), .A1(n4), .B0(n13), .C0(n1), .Y(N24) );
  CLKNAND2X2M U14 ( .A(N15), .B(n5), .Y(n13) );
  NOR2X1M U15 ( .A(n14), .B(n15), .Y(n5) );
  CLKNAND2X2M U16 ( .A(n1), .B(n15), .Y(n4) );
  CLKINVX1M U17 ( .A(n14), .Y(n1) );
  CLKNAND2X2M U18 ( .A(n16), .B(n17), .Y(n14) );
  NAND4X1M U19 ( .A(n19), .B(n20), .C(n21), .D(n22), .Y(n17) );
  NOR4X1M U20 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n22) );
  XNOR2X1M U21 ( .A(half_div_p1[7]), .B(n3), .Y(n26) );
  CLKINVX1M U22 ( .A(counter[7]), .Y(n3) );
  XNOR2X1M U23 ( .A(half_div_p1[6]), .B(n6), .Y(n25) );
  CLKINVX1M U24 ( .A(counter[6]), .Y(n6) );
  XNOR2X1M U25 ( .A(half_div_p1[5]), .B(n7), .Y(n24) );
  CLKINVX1M U26 ( .A(counter[5]), .Y(n7) );
  XNOR2X1M U27 ( .A(half_div_p1[4]), .B(n8), .Y(n23) );
  NOR3X1M U28 ( .A(n27), .B(clk_out), .C(n28), .Y(n21) );
  XNOR2X1M U29 ( .A(half_div_p1[1]), .B(n11), .Y(n28) );
  CLKINVX1M U30 ( .A(counter[1]), .Y(n11) );
  XNOR2X1M U31 ( .A(half_div_p1[0]), .B(n12), .Y(n27) );
  XNOR2X1M U32 ( .A(counter[2]), .B(half_div_p1[2]), .Y(n20) );
  XNOR2X1M U33 ( .A(counter[3]), .B(half_div_p1[3]), .Y(n19) );
  NAND4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n16) );
  NOR4X1M U35 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n32) );
  XNOR2X1M U36 ( .A(i_div_ratio[3]), .B(n10), .Y(n36) );
  CLKINVX1M U37 ( .A(counter[2]), .Y(n10) );
  XNOR2X1M U38 ( .A(i_div_ratio[5]), .B(n8), .Y(n35) );
  CLKINVX1M U39 ( .A(counter[4]), .Y(n8) );
  XNOR2X1M U40 ( .A(i_div_ratio[4]), .B(n9), .Y(n34) );
  CLKINVX1M U41 ( .A(counter[3]), .Y(n9) );
  CLKNAND2X2M U42 ( .A(n37), .B(n38), .Y(n33) );
  XNOR2X1M U43 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n38) );
  XNOR2X1M U44 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n37) );
  AOI211X1M U45 ( .A0(i_div_ratio[0]), .A1(n39), .B0(n15), .C0(counter[7]), 
        .Y(n31) );
  CLKINVX1M U46 ( .A(clk_out), .Y(n39) );
  XNOR2X1M U47 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n30) );
  XNOR2X1M U48 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n29) );
  CLKINVX1M U49 ( .A(n15), .Y(N1) );
  OAI21X1M U50 ( .A0(n40), .A1(n41), .B0(i_clk_en), .Y(n15) );
  OR3X1M U51 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n41) );
  OR4X1M U52 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n40) );
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


module clkdiv_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, clk_out, N15, N16, N17, N18, N19, N20, N21, N22, N24, N25, N26,
         N27, N28, N29, N30, N31, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42;
  wire   [7:0] half_div_p1;
  wire   [7:0] counter;

  clkdiv_1_DW01_inc_0 add_52 ( .A(counter), .SUM({N22, N21, N20, N19, N18, N17, 
        N16, N15}) );
  clkdiv_1_DW01_inc_1 add_19 ( .A({1'b0, i_div_ratio[7:1]}), .SUM(half_div_p1)
         );
  DFFSX1M \counter_reg[0]  ( .D(N24), .CK(i_ref_clk), .SN(i_rst_n), .Q(
        counter[0]), .QN(n12) );
  DFFRX1M clk_out_reg ( .D(n42), .CK(i_ref_clk), .RN(i_rst_n), .Q(clk_out), 
        .QN(n39) );
  DFFRX1M \counter_reg[5]  ( .D(N29), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]), .QN(n7) );
  DFFRX1M \counter_reg[4]  ( .D(N28), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]), .QN(n8) );
  DFFRX1M \counter_reg[3]  ( .D(N27), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]), .QN(n9) );
  DFFRX1M \counter_reg[2]  ( .D(N26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]), .QN(n10) );
  DFFRX1M \counter_reg[1]  ( .D(N25), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]), .QN(n11) );
  DFFRX1M \counter_reg[6]  ( .D(N30), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]), .QN(n6) );
  DFFRX1M \counter_reg[7]  ( .D(N31), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]), .QN(n3) );
  MX2X2M U3 ( .A(i_ref_clk), .B(clk_out), .S0(N1), .Y(o_div_clk) );
  XNOR2X1M U4 ( .A(n1), .B(clk_out), .Y(n42) );
  OAI2BB2X1M U5 ( .B0(n3), .B1(n4), .A0N(N22), .A1N(n5), .Y(N31) );
  OAI2BB2X1M U7 ( .B0(n6), .B1(n4), .A0N(N21), .A1N(n5), .Y(N30) );
  OAI2BB2X1M U8 ( .B0(n7), .B1(n4), .A0N(N20), .A1N(n5), .Y(N29) );
  OAI2BB2X1M U9 ( .B0(n8), .B1(n4), .A0N(N19), .A1N(n5), .Y(N28) );
  OAI2BB2X1M U10 ( .B0(n9), .B1(n4), .A0N(N18), .A1N(n5), .Y(N27) );
  OAI2BB2X1M U11 ( .B0(n10), .B1(n4), .A0N(N17), .A1N(n5), .Y(N26) );
  OAI2BB2X1M U12 ( .B0(n11), .B1(n4), .A0N(N16), .A1N(n5), .Y(N25) );
  OAI211X1M U13 ( .A0(n12), .A1(n4), .B0(n13), .C0(n1), .Y(N24) );
  CLKNAND2X2M U14 ( .A(N15), .B(n5), .Y(n13) );
  NOR2X1M U15 ( .A(n14), .B(n15), .Y(n5) );
  CLKNAND2X2M U16 ( .A(n1), .B(n15), .Y(n4) );
  CLKINVX1M U17 ( .A(n14), .Y(n1) );
  CLKNAND2X2M U18 ( .A(n16), .B(n17), .Y(n14) );
  NAND4X1M U19 ( .A(n19), .B(n20), .C(n21), .D(n22), .Y(n17) );
  NOR4X1M U20 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n22) );
  XNOR2X1M U21 ( .A(half_div_p1[7]), .B(n3), .Y(n26) );
  XNOR2X1M U22 ( .A(half_div_p1[6]), .B(n6), .Y(n25) );
  XNOR2X1M U23 ( .A(half_div_p1[5]), .B(n7), .Y(n24) );
  XNOR2X1M U24 ( .A(half_div_p1[4]), .B(n8), .Y(n23) );
  NOR3X1M U25 ( .A(n27), .B(clk_out), .C(n28), .Y(n21) );
  XNOR2X1M U26 ( .A(half_div_p1[1]), .B(n11), .Y(n28) );
  XNOR2X1M U27 ( .A(half_div_p1[0]), .B(n12), .Y(n27) );
  XNOR2X1M U28 ( .A(counter[2]), .B(half_div_p1[2]), .Y(n20) );
  XNOR2X1M U29 ( .A(counter[3]), .B(half_div_p1[3]), .Y(n19) );
  NAND4X1M U30 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n16) );
  NOR4X1M U31 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n32) );
  XNOR2X1M U32 ( .A(i_div_ratio[3]), .B(n10), .Y(n36) );
  XNOR2X1M U33 ( .A(i_div_ratio[5]), .B(n8), .Y(n35) );
  XNOR2X1M U34 ( .A(i_div_ratio[4]), .B(n9), .Y(n34) );
  CLKNAND2X2M U35 ( .A(n37), .B(n38), .Y(n33) );
  XNOR2X1M U36 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n38) );
  XNOR2X1M U37 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n37) );
  AOI211X1M U38 ( .A0(i_div_ratio[0]), .A1(n39), .B0(n15), .C0(counter[7]), 
        .Y(n31) );
  XNOR2X1M U39 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n30) );
  XNOR2X1M U40 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n29) );
  CLKINVX1M U41 ( .A(n15), .Y(N1) );
  OAI21X1M U42 ( .A0(n40), .A1(n41), .B0(i_clk_en), .Y(n15) );
  OR3X1M U43 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n41) );
  OR4X1M U44 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n40) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  NOR4X1M U11 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  OAI211X2M U12 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U13 ( .A(n7), .B(n6), .Y(n9) );
  NAND4BX1M U14 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U15 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U16 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND3X2M U17 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  NOR3X2M U18 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR4X1M U19 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(IN[2]), .Y(n15) );
  INVX2M U21 ( .A(IN[1]), .Y(n16) );
  INVX2M U22 ( .A(IN[0]), .Y(n17) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
endmodule


module rst_sync_0 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   \shift_reg[0] ;

  DFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .CK(clk), .RN(rst), .Q(
        sync_rst) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(rst), .CK(clk), .RN(rst), .Q(\shift_reg[0] ) );
endmodule


module rst_sync_1 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   \shift_reg[0] ;

  DFFRQX2M \shift_reg_reg[1]  ( .D(\shift_reg[0] ), .CK(clk), .RN(rst), .Q(
        sync_rst) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(rst), .CK(clk), .RN(rst), .Q(\shift_reg[0] ) );
endmodule


module data_sync ( unsync_bus, bus_enable, clk, rst, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst;
  output enable_pulse;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] shift_reg;

  DFFRQX2M enable_flop_reg ( .D(shift_reg[1]), .CK(clk), .RN(rst), .Q(
        enable_flop) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst), .Q(sync_bus[7]) );
  DFFRQX2M \shift_reg_reg[1]  ( .D(shift_reg[0]), .CK(clk), .RN(rst), .Q(
        shift_reg[1]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(sync_bus[1]) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(bus_enable), .CK(clk), .RN(rst), .Q(
        shift_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(shift_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module fifo_mem ( wdata, rdata, wclk, wrst, waddr, raddr, winc, wfull );
  input [7:0] wdata;
  output [7:0] rdata;
  input [2:0] waddr;
  input [2:0] raddr;
  input wclk, wrst, winc, wfull;
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
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  DFFRQX2M \mem_reg[5][7]  ( .D(n69), .CK(wclk), .RN(n98), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n68), .CK(wclk), .RN(n98), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n67), .CK(wclk), .RN(n98), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n66), .CK(wclk), .RN(n98), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n65), .CK(wclk), .RN(n98), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n64), .CK(wclk), .RN(n98), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n63), .CK(wclk), .RN(n98), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n62), .CK(wclk), .RN(n98), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[1][7]  ( .D(n37), .CK(wclk), .RN(n100), .Q(\mem[1][7] ) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n36), .CK(wclk), .RN(n100), .Q(\mem[1][6] ) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n35), .CK(wclk), .RN(n100), .Q(\mem[1][5] ) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n34), .CK(wclk), .RN(n100), .Q(\mem[1][4] ) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n33), .CK(wclk), .RN(n101), .Q(\mem[1][3] ) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n32), .CK(wclk), .RN(n101), .Q(\mem[1][2] ) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n31), .CK(wclk), .RN(n101), .Q(\mem[1][1] ) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n30), .CK(wclk), .RN(n101), .Q(\mem[1][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n85), .CK(wclk), .RN(n97), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n84), .CK(wclk), .RN(n97), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n83), .CK(wclk), .RN(n97), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n82), .CK(wclk), .RN(n97), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n81), .CK(wclk), .RN(n97), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n80), .CK(wclk), .RN(n97), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n79), .CK(wclk), .RN(n97), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n78), .CK(wclk), .RN(n97), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n53), .CK(wclk), .RN(n99), .Q(\mem[3][7] ) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n52), .CK(wclk), .RN(n99), .Q(\mem[3][6] ) );
  DFFRQX2M \mem_reg[3][5]  ( .D(n51), .CK(wclk), .RN(n99), .Q(\mem[3][5] ) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n50), .CK(wclk), .RN(n99), .Q(\mem[3][4] ) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n49), .CK(wclk), .RN(n99), .Q(\mem[3][3] ) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n48), .CK(wclk), .RN(n99), .Q(\mem[3][2] ) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n47), .CK(wclk), .RN(n99), .Q(\mem[3][1] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n46), .CK(wclk), .RN(n100), .Q(\mem[3][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n77), .CK(wclk), .RN(n97), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n76), .CK(wclk), .RN(n97), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n75), .CK(wclk), .RN(n97), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n74), .CK(wclk), .RN(n97), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n73), .CK(wclk), .RN(n97), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n72), .CK(wclk), .RN(n98), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n71), .CK(wclk), .RN(n98), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n70), .CK(wclk), .RN(n98), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[2][7]  ( .D(n45), .CK(wclk), .RN(n100), .Q(\mem[2][7] ) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n44), .CK(wclk), .RN(n100), .Q(\mem[2][6] ) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n43), .CK(wclk), .RN(n100), .Q(\mem[2][5] ) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n42), .CK(wclk), .RN(n100), .Q(\mem[2][4] ) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n41), .CK(wclk), .RN(n100), .Q(\mem[2][3] ) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n40), .CK(wclk), .RN(n100), .Q(\mem[2][2] ) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n39), .CK(wclk), .RN(n100), .Q(\mem[2][1] ) );
  DFFRQX2M \mem_reg[2][0]  ( .D(n38), .CK(wclk), .RN(n100), .Q(\mem[2][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n61), .CK(wclk), .RN(n98), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n60), .CK(wclk), .RN(n98), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n59), .CK(wclk), .RN(n99), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n58), .CK(wclk), .RN(n99), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n57), .CK(wclk), .RN(n99), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n56), .CK(wclk), .RN(n99), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n55), .CK(wclk), .RN(n99), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n54), .CK(wclk), .RN(n99), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n29), .CK(wclk), .RN(n101), .Q(\mem[0][7] ) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n28), .CK(wclk), .RN(n101), .Q(\mem[0][6] ) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n27), .CK(wclk), .RN(n101), .Q(\mem[0][5] ) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n26), .CK(wclk), .RN(n101), .Q(\mem[0][4] ) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n25), .CK(wclk), .RN(n101), .Q(\mem[0][3] ) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n24), .CK(wclk), .RN(n101), .Q(\mem[0][2] ) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n23), .CK(wclk), .RN(n101), .Q(\mem[0][1] ) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n22), .CK(wclk), .RN(n101), .Q(\mem[0][0] ) );
  NOR2BX2M U2 ( .AN(n16), .B(waddr[2]), .Y(n12) );
  BUFX2M U3 ( .A(n20), .Y(n94) );
  BUFX2M U4 ( .A(n21), .Y(n93) );
  BUFX2M U5 ( .A(n95), .Y(n99) );
  BUFX2M U6 ( .A(n95), .Y(n98) );
  BUFX2M U7 ( .A(n95), .Y(n97) );
  BUFX2M U8 ( .A(n96), .Y(n100) );
  BUFX2M U9 ( .A(n96), .Y(n101) );
  NOR2BX2M U10 ( .AN(winc), .B(wfull), .Y(n16) );
  BUFX2M U11 ( .A(wrst), .Y(n95) );
  BUFX2M U12 ( .A(wrst), .Y(n96) );
  NAND3X2M U13 ( .A(n110), .B(n111), .C(n18), .Y(n17) );
  NAND3X2M U14 ( .A(n110), .B(n111), .C(n12), .Y(n11) );
  NAND3X2M U15 ( .A(n12), .B(n110), .C(waddr[1]), .Y(n14) );
  NAND3X2M U16 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n15) );
  NAND3X2M U17 ( .A(waddr[0]), .B(n111), .C(n18), .Y(n19) );
  NAND3X2M U18 ( .A(n12), .B(n111), .C(waddr[0]), .Y(n13) );
  INVX2M U19 ( .A(wdata[0]), .Y(n102) );
  INVX2M U20 ( .A(wdata[1]), .Y(n103) );
  INVX2M U21 ( .A(wdata[2]), .Y(n104) );
  INVX2M U22 ( .A(wdata[3]), .Y(n105) );
  INVX2M U23 ( .A(wdata[4]), .Y(n106) );
  INVX2M U24 ( .A(wdata[5]), .Y(n107) );
  INVX2M U25 ( .A(wdata[6]), .Y(n108) );
  INVX2M U26 ( .A(wdata[7]), .Y(n109) );
  OAI2BB2X1M U27 ( .B0(n11), .B1(n102), .A0N(\mem[0][0] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U28 ( .B0(n11), .B1(n103), .A0N(\mem[0][1] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U29 ( .B0(n11), .B1(n104), .A0N(\mem[0][2] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U30 ( .B0(n11), .B1(n105), .A0N(\mem[0][3] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U31 ( .B0(n11), .B1(n106), .A0N(\mem[0][4] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U32 ( .B0(n11), .B1(n107), .A0N(\mem[0][5] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U33 ( .B0(n11), .B1(n108), .A0N(\mem[0][6] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U34 ( .B0(n11), .B1(n109), .A0N(\mem[0][7] ), .A1N(n11), .Y(n29)
         );
  OAI2BB2X1M U35 ( .B0(n102), .B1(n15), .A0N(\mem[3][0] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U36 ( .B0(n103), .B1(n15), .A0N(\mem[3][1] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U37 ( .B0(n104), .B1(n15), .A0N(\mem[3][2] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U38 ( .B0(n105), .B1(n15), .A0N(\mem[3][3] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U39 ( .B0(n106), .B1(n15), .A0N(\mem[3][4] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U40 ( .B0(n107), .B1(n15), .A0N(\mem[3][5] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U41 ( .B0(n108), .B1(n15), .A0N(\mem[3][6] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U42 ( .B0(n109), .B1(n15), .A0N(\mem[3][7] ), .A1N(n15), .Y(n53)
         );
  OAI2BB2X1M U43 ( .B0(n102), .B1(n19), .A0N(\mem[5][0] ), .A1N(n19), .Y(n62)
         );
  OAI2BB2X1M U44 ( .B0(n103), .B1(n19), .A0N(\mem[5][1] ), .A1N(n19), .Y(n63)
         );
  OAI2BB2X1M U45 ( .B0(n104), .B1(n19), .A0N(\mem[5][2] ), .A1N(n19), .Y(n64)
         );
  OAI2BB2X1M U46 ( .B0(n105), .B1(n19), .A0N(\mem[5][3] ), .A1N(n19), .Y(n65)
         );
  OAI2BB2X1M U47 ( .B0(n106), .B1(n19), .A0N(\mem[5][4] ), .A1N(n19), .Y(n66)
         );
  OAI2BB2X1M U48 ( .B0(n107), .B1(n19), .A0N(\mem[5][5] ), .A1N(n19), .Y(n67)
         );
  OAI2BB2X1M U49 ( .B0(n108), .B1(n19), .A0N(\mem[5][6] ), .A1N(n19), .Y(n68)
         );
  OAI2BB2X1M U50 ( .B0(n109), .B1(n19), .A0N(\mem[5][7] ), .A1N(n19), .Y(n69)
         );
  OAI2BB2X1M U51 ( .B0(n102), .B1(n14), .A0N(\mem[2][0] ), .A1N(n14), .Y(n38)
         );
  OAI2BB2X1M U52 ( .B0(n103), .B1(n14), .A0N(\mem[2][1] ), .A1N(n14), .Y(n39)
         );
  OAI2BB2X1M U53 ( .B0(n104), .B1(n14), .A0N(\mem[2][2] ), .A1N(n14), .Y(n40)
         );
  OAI2BB2X1M U54 ( .B0(n105), .B1(n14), .A0N(\mem[2][3] ), .A1N(n14), .Y(n41)
         );
  OAI2BB2X1M U55 ( .B0(n106), .B1(n14), .A0N(\mem[2][4] ), .A1N(n14), .Y(n42)
         );
  OAI2BB2X1M U56 ( .B0(n107), .B1(n14), .A0N(\mem[2][5] ), .A1N(n14), .Y(n43)
         );
  OAI2BB2X1M U57 ( .B0(n108), .B1(n14), .A0N(\mem[2][6] ), .A1N(n14), .Y(n44)
         );
  OAI2BB2X1M U58 ( .B0(n109), .B1(n14), .A0N(\mem[2][7] ), .A1N(n14), .Y(n45)
         );
  OAI2BB2X1M U59 ( .B0(n102), .B1(n13), .A0N(\mem[1][0] ), .A1N(n13), .Y(n30)
         );
  OAI2BB2X1M U60 ( .B0(n103), .B1(n13), .A0N(\mem[1][1] ), .A1N(n13), .Y(n31)
         );
  OAI2BB2X1M U61 ( .B0(n104), .B1(n13), .A0N(\mem[1][2] ), .A1N(n13), .Y(n32)
         );
  OAI2BB2X1M U62 ( .B0(n105), .B1(n13), .A0N(\mem[1][3] ), .A1N(n13), .Y(n33)
         );
  OAI2BB2X1M U63 ( .B0(n106), .B1(n13), .A0N(\mem[1][4] ), .A1N(n13), .Y(n34)
         );
  OAI2BB2X1M U64 ( .B0(n107), .B1(n13), .A0N(\mem[1][5] ), .A1N(n13), .Y(n35)
         );
  OAI2BB2X1M U65 ( .B0(n108), .B1(n13), .A0N(\mem[1][6] ), .A1N(n13), .Y(n36)
         );
  OAI2BB2X1M U66 ( .B0(n109), .B1(n13), .A0N(\mem[1][7] ), .A1N(n13), .Y(n37)
         );
  OAI2BB2X1M U67 ( .B0(n102), .B1(n17), .A0N(\mem[4][0] ), .A1N(n17), .Y(n54)
         );
  OAI2BB2X1M U68 ( .B0(n103), .B1(n17), .A0N(\mem[4][1] ), .A1N(n17), .Y(n55)
         );
  OAI2BB2X1M U69 ( .B0(n104), .B1(n17), .A0N(\mem[4][2] ), .A1N(n17), .Y(n56)
         );
  OAI2BB2X1M U70 ( .B0(n105), .B1(n17), .A0N(\mem[4][3] ), .A1N(n17), .Y(n57)
         );
  OAI2BB2X1M U71 ( .B0(n106), .B1(n17), .A0N(\mem[4][4] ), .A1N(n17), .Y(n58)
         );
  OAI2BB2X1M U72 ( .B0(n107), .B1(n17), .A0N(\mem[4][5] ), .A1N(n17), .Y(n59)
         );
  OAI2BB2X1M U73 ( .B0(n108), .B1(n17), .A0N(\mem[4][6] ), .A1N(n17), .Y(n60)
         );
  OAI2BB2X1M U74 ( .B0(n109), .B1(n17), .A0N(\mem[4][7] ), .A1N(n17), .Y(n61)
         );
  OAI2BB2X1M U75 ( .B0(n102), .B1(n94), .A0N(\mem[6][0] ), .A1N(n94), .Y(n70)
         );
  OAI2BB2X1M U76 ( .B0(n103), .B1(n94), .A0N(\mem[6][1] ), .A1N(n94), .Y(n71)
         );
  OAI2BB2X1M U77 ( .B0(n104), .B1(n94), .A0N(\mem[6][2] ), .A1N(n94), .Y(n72)
         );
  OAI2BB2X1M U78 ( .B0(n105), .B1(n94), .A0N(\mem[6][3] ), .A1N(n94), .Y(n73)
         );
  OAI2BB2X1M U79 ( .B0(n106), .B1(n94), .A0N(\mem[6][4] ), .A1N(n94), .Y(n74)
         );
  OAI2BB2X1M U80 ( .B0(n107), .B1(n94), .A0N(\mem[6][5] ), .A1N(n94), .Y(n75)
         );
  OAI2BB2X1M U81 ( .B0(n108), .B1(n94), .A0N(\mem[6][6] ), .A1N(n94), .Y(n76)
         );
  OAI2BB2X1M U82 ( .B0(n109), .B1(n94), .A0N(\mem[6][7] ), .A1N(n94), .Y(n77)
         );
  OAI2BB2X1M U83 ( .B0(n102), .B1(n93), .A0N(\mem[7][0] ), .A1N(n93), .Y(n78)
         );
  OAI2BB2X1M U84 ( .B0(n103), .B1(n93), .A0N(\mem[7][1] ), .A1N(n93), .Y(n79)
         );
  OAI2BB2X1M U85 ( .B0(n104), .B1(n93), .A0N(\mem[7][2] ), .A1N(n93), .Y(n80)
         );
  OAI2BB2X1M U86 ( .B0(n105), .B1(n93), .A0N(\mem[7][3] ), .A1N(n93), .Y(n81)
         );
  OAI2BB2X1M U87 ( .B0(n106), .B1(n93), .A0N(\mem[7][4] ), .A1N(n93), .Y(n82)
         );
  OAI2BB2X1M U88 ( .B0(n107), .B1(n93), .A0N(\mem[7][5] ), .A1N(n93), .Y(n83)
         );
  OAI2BB2X1M U89 ( .B0(n108), .B1(n93), .A0N(\mem[7][6] ), .A1N(n93), .Y(n84)
         );
  OAI2BB2X1M U90 ( .B0(n109), .B1(n93), .A0N(\mem[7][7] ), .A1N(n93), .Y(n85)
         );
  AND2X2M U91 ( .A(waddr[2]), .B(n16), .Y(n18) );
  NAND3X2M U92 ( .A(waddr[1]), .B(n110), .C(n18), .Y(n20) );
  NAND3X2M U93 ( .A(waddr[1]), .B(waddr[0]), .C(n18), .Y(n21) );
  INVX2M U94 ( .A(waddr[1]), .Y(n111) );
  INVX2M U95 ( .A(waddr[0]), .Y(n110) );
  BUFX4M U96 ( .A(N10), .Y(n92) );
  MX2X2M U97 ( .A(n4), .B(n3), .S0(N12), .Y(rdata[1]) );
  MX4X1M U98 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n92), .S1(N11), .Y(n3) );
  MX4X1M U99 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n92), .S1(N11), .Y(n4) );
  MX2X2M U100 ( .A(n6), .B(n5), .S0(N12), .Y(rdata[2]) );
  MX4X1M U101 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n92), .S1(N11), .Y(n5) );
  MX4X1M U102 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n92), .S1(N11), .Y(n6) );
  MX2X2M U103 ( .A(n8), .B(n7), .S0(N12), .Y(rdata[3]) );
  MX4X1M U104 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n92), .S1(N11), .Y(n7) );
  MX4X1M U105 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n92), .S1(N11), .Y(n8) );
  MX2X2M U106 ( .A(n10), .B(n9), .S0(N12), .Y(rdata[4]) );
  MX4X1M U107 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n92), .S1(N11), .Y(n9) );
  MX4X1M U108 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n92), .S1(N11), .Y(n10) );
  MX2X2M U109 ( .A(n87), .B(n86), .S0(N12), .Y(rdata[5]) );
  MX4X1M U110 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n92), .S1(N11), .Y(n86) );
  MX4X1M U111 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n92), .S1(N11), .Y(n87) );
  MX2X2M U112 ( .A(n89), .B(n88), .S0(N12), .Y(rdata[6]) );
  MX4X1M U113 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n92), .S1(N11), .Y(n88) );
  MX4X1M U114 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n92), .S1(N11), .Y(n89) );
  MX2X2M U115 ( .A(n91), .B(n90), .S0(N12), .Y(rdata[7]) );
  MX4X1M U116 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n92), .S1(N11), .Y(n90) );
  MX4X1M U117 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n92), .S1(N11), .Y(n91) );
  MX2X2M U118 ( .A(n2), .B(n1), .S0(N12), .Y(rdata[0]) );
  MX4X1M U119 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n92), .S1(N11), .Y(n1) );
  MX4X1M U120 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n92), .S1(N11), .Y(n2) );
endmodule


module fifo_w ( winc, wclk, wrst, wq2_rptr, wfull, waddr, wptr );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wclk, wrst;
  output wfull;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n3;
  wire   [2:0] bin;
  wire   [3:0] gray;

  DFFRQX2M \waddr_reg[2]  ( .D(n13), .CK(wclk), .RN(wrst), .Q(waddr[2]) );
  DFFRQX2M \waddr_reg[0]  ( .D(n15), .CK(wclk), .RN(wrst), .Q(waddr[0]) );
  DFFRQX2M \waddr_reg[1]  ( .D(n14), .CK(wclk), .RN(wrst), .Q(waddr[1]) );
  DFFRQX2M \bin_reg[3]  ( .D(n16), .CK(wclk), .RN(wrst), .Q(gray[3]) );
  DFFRQX2M \bin_reg[2]  ( .D(n17), .CK(wclk), .RN(wrst), .Q(bin[2]) );
  DFFRQX2M \bin_reg[1]  ( .D(n18), .CK(wclk), .RN(wrst), .Q(bin[1]) );
  DFFRX1M \bin_reg[0]  ( .D(n19), .CK(wclk), .RN(wrst), .QN(n1) );
  DFFRQX2M \wptr_reg[0]  ( .D(gray[0]), .CK(wclk), .RN(wrst), .Q(wptr[0]) );
  DFFRQX2M \wptr_reg[2]  ( .D(gray[2]), .CK(wclk), .RN(wrst), .Q(wptr[2]) );
  DFFRQX2M \wptr_reg[1]  ( .D(gray[1]), .CK(wclk), .RN(wrst), .Q(wptr[1]) );
  DFFRQX2M \wptr_reg[3]  ( .D(gray[3]), .CK(wclk), .RN(wrst), .Q(wptr[3]) );
  NAND2X2M U3 ( .A(winc), .B(n2), .Y(n5) );
  INVX2M U4 ( .A(n2), .Y(wfull) );
  XNOR2X2M U5 ( .A(n1), .B(bin[1]), .Y(gray[0]) );
  NOR2X2M U6 ( .A(n5), .B(n1), .Y(n8) );
  XNOR2X2M U7 ( .A(waddr[0]), .B(n5), .Y(n15) );
  XNOR2X2M U8 ( .A(gray[3]), .B(n6), .Y(n16) );
  NAND2BX2M U9 ( .AN(n7), .B(bin[2]), .Y(n6) );
  XNOR2X2M U10 ( .A(bin[2]), .B(n7), .Y(n17) );
  NAND4X2M U11 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n2) );
  CLKXOR2X2M U12 ( .A(wq2_rptr[3]), .B(gray[3]), .Y(n12) );
  XNOR2X2M U13 ( .A(gray[1]), .B(wq2_rptr[1]), .Y(n9) );
  XNOR2X2M U14 ( .A(gray[0]), .B(wq2_rptr[0]), .Y(n10) );
  NOR2BX2M U15 ( .AN(waddr[0]), .B(n5), .Y(n4) );
  NAND2X2M U16 ( .A(n8), .B(bin[1]), .Y(n7) );
  CLKXOR2X2M U17 ( .A(gray[3]), .B(bin[2]), .Y(gray[2]) );
  CLKXOR2X2M U18 ( .A(wq2_rptr[2]), .B(gray[2]), .Y(n11) );
  CLKXOR2X2M U19 ( .A(bin[1]), .B(bin[2]), .Y(gray[1]) );
  CLKXOR2X2M U20 ( .A(waddr[1]), .B(n4), .Y(n14) );
  CLKXOR2X2M U21 ( .A(bin[1]), .B(n8), .Y(n18) );
  XNOR2X2M U22 ( .A(waddr[2]), .B(n3), .Y(n13) );
  NAND2X2M U23 ( .A(n4), .B(waddr[1]), .Y(n3) );
  CLKXOR2X2M U24 ( .A(n1), .B(n5), .Y(n19) );
endmodule


module fifo_r ( rinc, rclk, rrst, rq2_wptr, rempty, raddr, rptr );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, rclk, rrst;
  output rempty;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n3;
  wire   [2:0] bin;
  wire   [3:0] ggray;

  DFFRQX2M \raddr_reg[2]  ( .D(n13), .CK(rclk), .RN(rrst), .Q(raddr[2]) );
  DFFRQX2M \raddr_reg[0]  ( .D(n15), .CK(rclk), .RN(rrst), .Q(raddr[0]) );
  DFFRQX2M \bin_reg[3]  ( .D(n16), .CK(rclk), .RN(rrst), .Q(ggray[3]) );
  DFFRQX2M \bin_reg[2]  ( .D(n17), .CK(rclk), .RN(rrst), .Q(bin[2]) );
  DFFRQX2M \bin_reg[1]  ( .D(n18), .CK(rclk), .RN(rrst), .Q(bin[1]) );
  DFFRX1M \bin_reg[0]  ( .D(n19), .CK(rclk), .RN(rrst), .QN(n1) );
  DFFRQX2M \raddr_reg[1]  ( .D(n14), .CK(rclk), .RN(rrst), .Q(raddr[1]) );
  DFFRQX2M \rptr_reg[0]  ( .D(ggray[0]), .CK(rclk), .RN(rrst), .Q(rptr[0]) );
  DFFRQX2M \rptr_reg[2]  ( .D(ggray[2]), .CK(rclk), .RN(rrst), .Q(rptr[2]) );
  DFFRQX2M \rptr_reg[1]  ( .D(ggray[1]), .CK(rclk), .RN(rrst), .Q(rptr[1]) );
  DFFRQX2M \rptr_reg[3]  ( .D(ggray[3]), .CK(rclk), .RN(rrst), .Q(rptr[3]) );
  INVX2M U3 ( .A(n2), .Y(rempty) );
  XNOR2X2M U4 ( .A(ggray[1]), .B(rq2_wptr[1]), .Y(n9) );
  XNOR2X2M U5 ( .A(n1), .B(bin[1]), .Y(ggray[0]) );
  NOR2X2M U6 ( .A(n5), .B(n1), .Y(n8) );
  XNOR2X2M U7 ( .A(raddr[0]), .B(n5), .Y(n15) );
  XNOR2X2M U8 ( .A(ggray[3]), .B(n6), .Y(n16) );
  NAND2BX2M U9 ( .AN(n7), .B(bin[2]), .Y(n6) );
  XNOR2X2M U10 ( .A(bin[2]), .B(n7), .Y(n17) );
  NAND4X2M U11 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n2) );
  XNOR2X2M U12 ( .A(ggray[3]), .B(rq2_wptr[3]), .Y(n11) );
  XNOR2X2M U13 ( .A(ggray[2]), .B(rq2_wptr[2]), .Y(n12) );
  XNOR2X2M U14 ( .A(ggray[0]), .B(rq2_wptr[0]), .Y(n10) );
  NOR2BX2M U15 ( .AN(raddr[0]), .B(n5), .Y(n4) );
  NAND2X2M U16 ( .A(rinc), .B(n2), .Y(n5) );
  NAND2X2M U17 ( .A(n8), .B(bin[1]), .Y(n7) );
  CLKXOR2X2M U18 ( .A(bin[1]), .B(bin[2]), .Y(ggray[1]) );
  CLKXOR2X2M U19 ( .A(ggray[3]), .B(bin[2]), .Y(ggray[2]) );
  CLKXOR2X2M U20 ( .A(bin[1]), .B(n8), .Y(n18) );
  CLKXOR2X2M U21 ( .A(raddr[1]), .B(n4), .Y(n14) );
  XNOR2X2M U22 ( .A(raddr[2]), .B(n3), .Y(n13) );
  NAND2X2M U23 ( .A(n4), .B(raddr[1]), .Y(n3) );
  CLKXOR2X2M U24 ( .A(n1), .B(n5), .Y(n19) );
endmodule


module sync_r2w ( wclk, wrst, rptr, wq2_rptr );
  input [3:0] rptr;
  output [3:0] wq2_rptr;
  input wclk, wrst;

  wire   [3:0] mem;

  DFFRQX2M \wq2_rptr_reg[1]  ( .D(mem[1]), .CK(wclk), .RN(wrst), .Q(
        wq2_rptr[1]) );
  DFFRQX2M \wq2_rptr_reg[0]  ( .D(mem[0]), .CK(wclk), .RN(wrst), .Q(
        wq2_rptr[0]) );
  DFFRQX2M \wq2_rptr_reg[3]  ( .D(mem[3]), .CK(wclk), .RN(wrst), .Q(
        wq2_rptr[3]) );
  DFFRQX2M \wq2_rptr_reg[2]  ( .D(mem[2]), .CK(wclk), .RN(wrst), .Q(
        wq2_rptr[2]) );
  DFFRQX2M \mem_reg[3]  ( .D(rptr[3]), .CK(wclk), .RN(wrst), .Q(mem[3]) );
  DFFRQX2M \mem_reg[2]  ( .D(rptr[2]), .CK(wclk), .RN(wrst), .Q(mem[2]) );
  DFFRQX2M \mem_reg[1]  ( .D(rptr[1]), .CK(wclk), .RN(wrst), .Q(mem[1]) );
  DFFRQX2M \mem_reg[0]  ( .D(rptr[0]), .CK(wclk), .RN(wrst), .Q(mem[0]) );
endmodule


module sync_w2r ( rclk, rrst, wptr, rq2_rptr );
  input [3:0] wptr;
  output [3:0] rq2_rptr;
  input rclk, rrst;

  wire   [3:0] mem;

  DFFRQX2M \rq2_rptr_reg[3]  ( .D(mem[3]), .CK(rclk), .RN(rrst), .Q(
        rq2_rptr[3]) );
  DFFRQX2M \rq2_rptr_reg[2]  ( .D(mem[2]), .CK(rclk), .RN(rrst), .Q(
        rq2_rptr[2]) );
  DFFRQX2M \rq2_rptr_reg[1]  ( .D(mem[1]), .CK(rclk), .RN(rrst), .Q(
        rq2_rptr[1]) );
  DFFRQX2M \rq2_rptr_reg[0]  ( .D(mem[0]), .CK(rclk), .RN(rrst), .Q(
        rq2_rptr[0]) );
  DFFRQX2M \mem_reg[3]  ( .D(wptr[3]), .CK(rclk), .RN(rrst), .Q(mem[3]) );
  DFFRQX2M \mem_reg[2]  ( .D(wptr[2]), .CK(rclk), .RN(rrst), .Q(mem[2]) );
  DFFRQX2M \mem_reg[1]  ( .D(wptr[1]), .CK(rclk), .RN(rrst), .Q(mem[1]) );
  DFFRQX2M \mem_reg[0]  ( .D(wptr[0]), .CK(rclk), .RN(rrst), .Q(mem[0]) );
endmodule


module fifo_top ( wclk_t, wrst_t, winc_t, rclk_t, rrst_t, rinc_t, wdata_t, 
        full_t, empty_t, rdata_t );
  input [7:0] wdata_t;
  output [7:0] rdata_t;
  input wclk_t, wrst_t, winc_t, rclk_t, rrst_t, rinc_t;
  output full_t, empty_t;
  wire   n1, n2, n3, n4;
  wire   [2:0] waddr_t;
  wire   [2:0] raddr_t;
  wire   [3:0] wq2_rptr_t;
  wire   [3:0] wptr_t;
  wire   [3:0] rq2_rptr_t;
  wire   [3:0] rptr_t;

  fifo_mem memory ( .wdata(wdata_t), .rdata(rdata_t), .wclk(wclk_t), .wrst(n1), 
        .waddr(waddr_t), .raddr(raddr_t), .winc(winc_t), .wfull(full_t) );
  fifo_w write_domain ( .winc(winc_t), .wclk(wclk_t), .wrst(n1), .wq2_rptr(
        wq2_rptr_t), .wfull(full_t), .waddr(waddr_t), .wptr(wptr_t) );
  fifo_r read_domain ( .rinc(rinc_t), .rclk(rclk_t), .rrst(n3), .rq2_wptr(
        rq2_rptr_t), .rempty(empty_t), .raddr(raddr_t), .rptr(rptr_t) );
  sync_r2w r2w ( .wclk(wclk_t), .wrst(n1), .rptr(rptr_t), .wq2_rptr(wq2_rptr_t) );
  sync_w2r w2r ( .rclk(rclk_t), .rrst(n3), .wptr(wptr_t), .rq2_rptr(rq2_rptr_t) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(wrst_t), .Y(n2) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(rrst_t), .Y(n4) );
endmodule


module reg_file ( rst, clk, RdEn, WrEn, address, WrData, RdData, rd_d_vld, 
        REG0, REG1, REG2, REG3 );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input rst, clk, RdEn, WrEn;
  output rd_d_vld;
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
         N42, N43, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];

  DFFSQX2M \mem_reg[2][0]  ( .D(n65), .CK(clk), .SN(n205), .Q(REG2[0]) );
  DFFRQX2M rd_d_vld_reg ( .D(n48), .CK(clk), .RN(n205), .Q(rd_d_vld) );
  DFFRQX2M \mem_reg[13][7]  ( .D(n160), .CK(clk), .RN(n213), .Q(\mem[13][7] )
         );
  DFFRQX2M \mem_reg[13][6]  ( .D(n159), .CK(clk), .RN(n213), .Q(\mem[13][6] )
         );
  DFFRQX2M \mem_reg[13][5]  ( .D(n158), .CK(clk), .RN(n212), .Q(\mem[13][5] )
         );
  DFFRQX2M \mem_reg[13][4]  ( .D(n157), .CK(clk), .RN(n212), .Q(\mem[13][4] )
         );
  DFFRQX2M \mem_reg[13][3]  ( .D(n156), .CK(clk), .RN(n212), .Q(\mem[13][3] )
         );
  DFFRQX2M \mem_reg[13][2]  ( .D(n155), .CK(clk), .RN(n212), .Q(\mem[13][2] )
         );
  DFFRQX2M \mem_reg[13][1]  ( .D(n154), .CK(clk), .RN(n212), .Q(\mem[13][1] )
         );
  DFFRQX2M \mem_reg[13][0]  ( .D(n153), .CK(clk), .RN(n212), .Q(\mem[13][0] )
         );
  DFFRQX2M \mem_reg[9][7]  ( .D(n128), .CK(clk), .RN(n210), .Q(\mem[9][7] ) );
  DFFRQX2M \mem_reg[9][6]  ( .D(n127), .CK(clk), .RN(n210), .Q(\mem[9][6] ) );
  DFFRQX2M \mem_reg[9][5]  ( .D(n126), .CK(clk), .RN(n210), .Q(\mem[9][5] ) );
  DFFRQX2M \mem_reg[9][4]  ( .D(n125), .CK(clk), .RN(n210), .Q(\mem[9][4] ) );
  DFFRQX2M \mem_reg[9][3]  ( .D(n124), .CK(clk), .RN(n210), .Q(\mem[9][3] ) );
  DFFRQX2M \mem_reg[9][2]  ( .D(n123), .CK(clk), .RN(n210), .Q(\mem[9][2] ) );
  DFFRQX2M \mem_reg[9][1]  ( .D(n122), .CK(clk), .RN(n210), .Q(\mem[9][1] ) );
  DFFRQX2M \mem_reg[9][0]  ( .D(n121), .CK(clk), .RN(n210), .Q(\mem[9][0] ) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n96), .CK(clk), .RN(n208), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n95), .CK(clk), .RN(n208), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n94), .CK(clk), .RN(n208), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n93), .CK(clk), .RN(n208), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n92), .CK(clk), .RN(n208), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n91), .CK(clk), .RN(n208), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n90), .CK(clk), .RN(n208), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n89), .CK(clk), .RN(n208), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[15][7]  ( .D(n176), .CK(clk), .RN(n205), .Q(\mem[15][7] )
         );
  DFFRQX2M \mem_reg[15][6]  ( .D(n175), .CK(clk), .RN(n214), .Q(\mem[15][6] )
         );
  DFFRQX2M \mem_reg[15][5]  ( .D(n174), .CK(clk), .RN(n214), .Q(\mem[15][5] )
         );
  DFFRQX2M \mem_reg[15][4]  ( .D(n173), .CK(clk), .RN(n213), .Q(\mem[15][4] )
         );
  DFFRQX2M \mem_reg[15][3]  ( .D(n172), .CK(clk), .RN(n213), .Q(\mem[15][3] )
         );
  DFFRQX2M \mem_reg[15][2]  ( .D(n171), .CK(clk), .RN(n213), .Q(\mem[15][2] )
         );
  DFFRQX2M \mem_reg[15][1]  ( .D(n170), .CK(clk), .RN(n213), .Q(\mem[15][1] )
         );
  DFFRQX2M \mem_reg[15][0]  ( .D(n169), .CK(clk), .RN(n213), .Q(\mem[15][0] )
         );
  DFFRQX2M \mem_reg[11][7]  ( .D(n144), .CK(clk), .RN(n212), .Q(\mem[11][7] )
         );
  DFFRQX2M \mem_reg[11][6]  ( .D(n143), .CK(clk), .RN(n211), .Q(\mem[11][6] )
         );
  DFFRQX2M \mem_reg[11][5]  ( .D(n142), .CK(clk), .RN(n211), .Q(\mem[11][5] )
         );
  DFFRQX2M \mem_reg[11][4]  ( .D(n141), .CK(clk), .RN(n211), .Q(\mem[11][4] )
         );
  DFFRQX2M \mem_reg[11][3]  ( .D(n140), .CK(clk), .RN(n211), .Q(\mem[11][3] )
         );
  DFFRQX2M \mem_reg[11][2]  ( .D(n139), .CK(clk), .RN(n211), .Q(\mem[11][2] )
         );
  DFFRQX2M \mem_reg[11][1]  ( .D(n138), .CK(clk), .RN(n211), .Q(\mem[11][1] )
         );
  DFFRQX2M \mem_reg[11][0]  ( .D(n137), .CK(clk), .RN(n211), .Q(\mem[11][0] )
         );
  DFFRQX2M \mem_reg[7][7]  ( .D(n112), .CK(clk), .RN(n209), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n111), .CK(clk), .RN(n209), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n110), .CK(clk), .RN(n209), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n109), .CK(clk), .RN(n209), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n108), .CK(clk), .RN(n209), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n107), .CK(clk), .RN(n209), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n106), .CK(clk), .RN(n209), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n105), .CK(clk), .RN(n209), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[14][7]  ( .D(n168), .CK(clk), .RN(n213), .Q(\mem[14][7] )
         );
  DFFRQX2M \mem_reg[14][6]  ( .D(n167), .CK(clk), .RN(n213), .Q(\mem[14][6] )
         );
  DFFRQX2M \mem_reg[14][5]  ( .D(n166), .CK(clk), .RN(n213), .Q(\mem[14][5] )
         );
  DFFRQX2M \mem_reg[14][4]  ( .D(n165), .CK(clk), .RN(n213), .Q(\mem[14][4] )
         );
  DFFRQX2M \mem_reg[14][3]  ( .D(n164), .CK(clk), .RN(n213), .Q(\mem[14][3] )
         );
  DFFRQX2M \mem_reg[14][2]  ( .D(n163), .CK(clk), .RN(n213), .Q(\mem[14][2] )
         );
  DFFRQX2M \mem_reg[14][1]  ( .D(n162), .CK(clk), .RN(n213), .Q(\mem[14][1] )
         );
  DFFRQX2M \mem_reg[14][0]  ( .D(n161), .CK(clk), .RN(n213), .Q(\mem[14][0] )
         );
  DFFRQX2M \mem_reg[10][7]  ( .D(n136), .CK(clk), .RN(n211), .Q(\mem[10][7] )
         );
  DFFRQX2M \mem_reg[10][6]  ( .D(n135), .CK(clk), .RN(n211), .Q(\mem[10][6] )
         );
  DFFRQX2M \mem_reg[10][5]  ( .D(n134), .CK(clk), .RN(n211), .Q(\mem[10][5] )
         );
  DFFRQX2M \mem_reg[10][4]  ( .D(n133), .CK(clk), .RN(n211), .Q(\mem[10][4] )
         );
  DFFRQX2M \mem_reg[10][3]  ( .D(n132), .CK(clk), .RN(n211), .Q(\mem[10][3] )
         );
  DFFRQX2M \mem_reg[10][2]  ( .D(n131), .CK(clk), .RN(n211), .Q(\mem[10][2] )
         );
  DFFRQX2M \mem_reg[10][1]  ( .D(n130), .CK(clk), .RN(n211), .Q(\mem[10][1] )
         );
  DFFRQX2M \mem_reg[10][0]  ( .D(n129), .CK(clk), .RN(n211), .Q(\mem[10][0] )
         );
  DFFRQX2M \mem_reg[6][7]  ( .D(n104), .CK(clk), .RN(n209), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n103), .CK(clk), .RN(n209), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n102), .CK(clk), .RN(n209), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n101), .CK(clk), .RN(n209), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n100), .CK(clk), .RN(n209), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n99), .CK(clk), .RN(n208), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n98), .CK(clk), .RN(n208), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n97), .CK(clk), .RN(n208), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[12][7]  ( .D(n152), .CK(clk), .RN(n212), .Q(\mem[12][7] )
         );
  DFFRQX2M \mem_reg[12][6]  ( .D(n151), .CK(clk), .RN(n212), .Q(\mem[12][6] )
         );
  DFFRQX2M \mem_reg[12][5]  ( .D(n150), .CK(clk), .RN(n212), .Q(\mem[12][5] )
         );
  DFFRQX2M \mem_reg[12][4]  ( .D(n149), .CK(clk), .RN(n212), .Q(\mem[12][4] )
         );
  DFFRQX2M \mem_reg[12][3]  ( .D(n148), .CK(clk), .RN(n212), .Q(\mem[12][3] )
         );
  DFFRQX2M \mem_reg[12][2]  ( .D(n147), .CK(clk), .RN(n212), .Q(\mem[12][2] )
         );
  DFFRQX2M \mem_reg[12][1]  ( .D(n146), .CK(clk), .RN(n212), .Q(\mem[12][1] )
         );
  DFFRQX2M \mem_reg[12][0]  ( .D(n145), .CK(clk), .RN(n212), .Q(\mem[12][0] )
         );
  DFFRQX2M \mem_reg[8][7]  ( .D(n120), .CK(clk), .RN(n210), .Q(\mem[8][7] ) );
  DFFRQX2M \mem_reg[8][6]  ( .D(n119), .CK(clk), .RN(n210), .Q(\mem[8][6] ) );
  DFFRQX2M \mem_reg[8][5]  ( .D(n118), .CK(clk), .RN(n210), .Q(\mem[8][5] ) );
  DFFRQX2M \mem_reg[8][4]  ( .D(n117), .CK(clk), .RN(n210), .Q(\mem[8][4] ) );
  DFFRQX2M \mem_reg[8][3]  ( .D(n116), .CK(clk), .RN(n210), .Q(\mem[8][3] ) );
  DFFRQX2M \mem_reg[8][2]  ( .D(n115), .CK(clk), .RN(n210), .Q(\mem[8][2] ) );
  DFFRQX2M \mem_reg[8][1]  ( .D(n114), .CK(clk), .RN(n210), .Q(\mem[8][1] ) );
  DFFRQX2M \mem_reg[8][0]  ( .D(n113), .CK(clk), .RN(n209), .Q(\mem[8][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n88), .CK(clk), .RN(n208), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n87), .CK(clk), .RN(n208), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n86), .CK(clk), .RN(n208), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n85), .CK(clk), .RN(n208), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n84), .CK(clk), .RN(n207), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n83), .CK(clk), .RN(n207), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n82), .CK(clk), .RN(n207), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n81), .CK(clk), .RN(n207), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n73), .CK(clk), .RN(n207), .Q(REG3[0]) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n66), .CK(clk), .RN(n206), .Q(REG2[1]) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n74), .CK(clk), .RN(n207), .Q(REG3[1]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(clk), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(clk), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(clk), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(clk), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(clk), .RN(n205), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(clk), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(clk), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(clk), .RN(n209), .Q(RdData[0]) );
  DFFSQX2M \mem_reg[3][5]  ( .D(n78), .CK(clk), .SN(n205), .Q(REG3[5]) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n76), .CK(clk), .RN(n207), .Q(REG3[3]) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n77), .CK(clk), .RN(n207), .Q(REG3[4]) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n75), .CK(clk), .RN(n207), .Q(REG3[2]) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n79), .CK(clk), .RN(n207), .Q(REG3[6]) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n80), .CK(clk), .RN(n207), .Q(REG3[7]) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n67), .CK(clk), .RN(n207), .Q(REG2[2]) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n69), .CK(clk), .RN(n207), .Q(REG2[4]) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n68), .CK(clk), .RN(n206), .Q(REG2[3]) );
  DFFSQX2M \mem_reg[2][7]  ( .D(n72), .CK(clk), .SN(n205), .Q(REG2[7]) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n70), .CK(clk), .RN(n207), .Q(REG2[5]) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n71), .CK(clk), .RN(n207), .Q(REG2[6]) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n50), .CK(clk), .RN(n205), .Q(REG0[1]) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n49), .CK(clk), .RN(n205), .Q(REG0[0]) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n51), .CK(clk), .RN(n205), .Q(REG0[2]) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n52), .CK(clk), .RN(n206), .Q(REG0[3]) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n53), .CK(clk), .RN(n206), .Q(REG0[4]) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n54), .CK(clk), .RN(n206), .Q(REG0[5]) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n56), .CK(clk), .RN(n206), .Q(REG0[7]) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n55), .CK(clk), .RN(n206), .Q(REG0[6]) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n63), .CK(clk), .RN(n206), .Q(REG1[6]) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n58), .CK(clk), .RN(n206), .Q(REG1[1]) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n62), .CK(clk), .RN(n206), .Q(REG1[5]) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n61), .CK(clk), .RN(n206), .Q(REG1[4]) );
  DFFRQX2M \mem_reg[1][7]  ( .D(n64), .CK(clk), .RN(n206), .Q(REG1[7]) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n60), .CK(clk), .RN(n206), .Q(REG1[3]) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n59), .CK(clk), .RN(n206), .Q(REG1[2]) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n57), .CK(clk), .RN(n206), .Q(REG1[0]) );
  INVX2M U3 ( .A(WrData[7]), .Y(n228) );
  NOR2X2M U4 ( .A(n204), .B(N13), .Y(n20) );
  NOR2X2M U5 ( .A(n199), .B(N13), .Y(n15) );
  NOR2BX2M U6 ( .AN(N13), .B(n199), .Y(n23) );
  NOR2BX2M U7 ( .AN(N13), .B(n204), .Y(n26) );
  INVX2M U8 ( .A(n200), .Y(n201) );
  INVX2M U9 ( .A(n198), .Y(n199) );
  INVX2M U10 ( .A(n200), .Y(n202) );
  BUFX2M U11 ( .A(n203), .Y(n200) );
  BUFX2M U12 ( .A(n204), .Y(n198) );
  INVX2M U13 ( .A(n12), .Y(n220) );
  BUFX2M U14 ( .A(n219), .Y(n205) );
  BUFX2M U15 ( .A(n219), .Y(n206) );
  BUFX2M U16 ( .A(n218), .Y(n207) );
  BUFX2M U17 ( .A(n218), .Y(n208) );
  BUFX2M U18 ( .A(n217), .Y(n209) );
  BUFX2M U19 ( .A(n217), .Y(n210) );
  BUFX2M U20 ( .A(n216), .Y(n211) );
  BUFX2M U21 ( .A(n216), .Y(n212) );
  BUFX2M U22 ( .A(n215), .Y(n213) );
  BUFX2M U23 ( .A(n215), .Y(n214) );
  NOR2BX2M U24 ( .AN(n27), .B(N11), .Y(n16) );
  NOR2BX2M U25 ( .AN(n27), .B(n203), .Y(n18) );
  NOR2BX2M U26 ( .AN(n38), .B(N11), .Y(n30) );
  NOR2BX2M U27 ( .AN(n38), .B(n203), .Y(n32) );
  NAND2X2M U28 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U29 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U30 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U31 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U32 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U33 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U34 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U35 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U36 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U37 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U38 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U39 ( .A(n30), .B(n23), .Y(n35) );
  NAND2X2M U40 ( .A(n32), .B(n23), .Y(n36) );
  NAND2X2M U41 ( .A(n30), .B(n26), .Y(n37) );
  NAND2X2M U42 ( .A(n32), .B(n26), .Y(n39) );
  NAND2X2M U43 ( .A(n15), .B(n16), .Y(n14) );
  NOR2BX2M U44 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  INVX2M U45 ( .A(WrData[0]), .Y(n227) );
  INVX2M U46 ( .A(WrData[5]), .Y(n222) );
  NAND2BX2M U47 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  INVX2M U48 ( .A(WrData[1]), .Y(n226) );
  INVX2M U49 ( .A(WrData[2]), .Y(n225) );
  INVX2M U50 ( .A(WrData[3]), .Y(n224) );
  INVX2M U51 ( .A(WrData[4]), .Y(n223) );
  INVX2M U52 ( .A(WrData[6]), .Y(n221) );
  BUFX2M U53 ( .A(rst), .Y(n218) );
  BUFX2M U54 ( .A(rst), .Y(n217) );
  BUFX2M U55 ( .A(rst), .Y(n216) );
  BUFX2M U56 ( .A(rst), .Y(n215) );
  BUFX2M U57 ( .A(rst), .Y(n219) );
  OAI2BB2X1M U58 ( .B0(n14), .B1(n227), .A0N(REG0[0]), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U59 ( .B0(n14), .B1(n226), .A0N(REG0[1]), .A1N(n14), .Y(n50) );
  OAI2BB2X1M U60 ( .B0(n14), .B1(n225), .A0N(REG0[2]), .A1N(n14), .Y(n51) );
  OAI2BB2X1M U61 ( .B0(n14), .B1(n224), .A0N(REG0[3]), .A1N(n14), .Y(n52) );
  OAI2BB2X1M U62 ( .B0(n14), .B1(n223), .A0N(REG0[4]), .A1N(n14), .Y(n53) );
  OAI2BB2X1M U63 ( .B0(n14), .B1(n222), .A0N(REG0[5]), .A1N(n14), .Y(n54) );
  OAI2BB2X1M U64 ( .B0(n14), .B1(n221), .A0N(REG0[6]), .A1N(n14), .Y(n55) );
  OAI2BB2X1M U65 ( .B0(n14), .B1(n228), .A0N(REG0[7]), .A1N(n14), .Y(n56) );
  OAI2BB2X1M U66 ( .B0(n227), .B1(n17), .A0N(REG1[0]), .A1N(n17), .Y(n57) );
  OAI2BB2X1M U67 ( .B0(n226), .B1(n17), .A0N(REG1[1]), .A1N(n17), .Y(n58) );
  OAI2BB2X1M U68 ( .B0(n225), .B1(n17), .A0N(REG1[2]), .A1N(n17), .Y(n59) );
  OAI2BB2X1M U69 ( .B0(n224), .B1(n17), .A0N(REG1[3]), .A1N(n17), .Y(n60) );
  OAI2BB2X1M U70 ( .B0(n223), .B1(n17), .A0N(REG1[4]), .A1N(n17), .Y(n61) );
  OAI2BB2X1M U71 ( .B0(n222), .B1(n17), .A0N(REG1[5]), .A1N(n17), .Y(n62) );
  OAI2BB2X1M U72 ( .B0(n221), .B1(n17), .A0N(REG1[6]), .A1N(n17), .Y(n63) );
  OAI2BB2X1M U73 ( .B0(n228), .B1(n17), .A0N(REG1[7]), .A1N(n17), .Y(n64) );
  OAI2BB2X1M U74 ( .B0(n227), .B1(n22), .A0N(\mem[4][0] ), .A1N(n22), .Y(n81)
         );
  OAI2BB2X1M U75 ( .B0(n226), .B1(n22), .A0N(\mem[4][1] ), .A1N(n22), .Y(n82)
         );
  OAI2BB2X1M U76 ( .B0(n225), .B1(n22), .A0N(\mem[4][2] ), .A1N(n22), .Y(n83)
         );
  OAI2BB2X1M U77 ( .B0(n224), .B1(n22), .A0N(\mem[4][3] ), .A1N(n22), .Y(n84)
         );
  OAI2BB2X1M U78 ( .B0(n223), .B1(n22), .A0N(\mem[4][4] ), .A1N(n22), .Y(n85)
         );
  OAI2BB2X1M U79 ( .B0(n222), .B1(n22), .A0N(\mem[4][5] ), .A1N(n22), .Y(n86)
         );
  OAI2BB2X1M U80 ( .B0(n221), .B1(n22), .A0N(\mem[4][6] ), .A1N(n22), .Y(n87)
         );
  OAI2BB2X1M U81 ( .B0(n228), .B1(n22), .A0N(\mem[4][7] ), .A1N(n22), .Y(n88)
         );
  OAI2BB2X1M U82 ( .B0(n227), .B1(n24), .A0N(\mem[5][0] ), .A1N(n24), .Y(n89)
         );
  OAI2BB2X1M U83 ( .B0(n226), .B1(n24), .A0N(\mem[5][1] ), .A1N(n24), .Y(n90)
         );
  OAI2BB2X1M U84 ( .B0(n225), .B1(n24), .A0N(\mem[5][2] ), .A1N(n24), .Y(n91)
         );
  OAI2BB2X1M U85 ( .B0(n224), .B1(n24), .A0N(\mem[5][3] ), .A1N(n24), .Y(n92)
         );
  OAI2BB2X1M U86 ( .B0(n223), .B1(n24), .A0N(\mem[5][4] ), .A1N(n24), .Y(n93)
         );
  OAI2BB2X1M U87 ( .B0(n222), .B1(n24), .A0N(\mem[5][5] ), .A1N(n24), .Y(n94)
         );
  OAI2BB2X1M U88 ( .B0(n221), .B1(n24), .A0N(\mem[5][6] ), .A1N(n24), .Y(n95)
         );
  OAI2BB2X1M U89 ( .B0(n228), .B1(n24), .A0N(\mem[5][7] ), .A1N(n24), .Y(n96)
         );
  OAI2BB2X1M U90 ( .B0(n227), .B1(n25), .A0N(\mem[6][0] ), .A1N(n25), .Y(n97)
         );
  OAI2BB2X1M U91 ( .B0(n226), .B1(n25), .A0N(\mem[6][1] ), .A1N(n25), .Y(n98)
         );
  OAI2BB2X1M U92 ( .B0(n225), .B1(n25), .A0N(\mem[6][2] ), .A1N(n25), .Y(n99)
         );
  OAI2BB2X1M U93 ( .B0(n224), .B1(n25), .A0N(\mem[6][3] ), .A1N(n25), .Y(n100)
         );
  OAI2BB2X1M U94 ( .B0(n223), .B1(n25), .A0N(\mem[6][4] ), .A1N(n25), .Y(n101)
         );
  OAI2BB2X1M U95 ( .B0(n222), .B1(n25), .A0N(\mem[6][5] ), .A1N(n25), .Y(n102)
         );
  OAI2BB2X1M U96 ( .B0(n221), .B1(n25), .A0N(\mem[6][6] ), .A1N(n25), .Y(n103)
         );
  OAI2BB2X1M U97 ( .B0(n228), .B1(n25), .A0N(\mem[6][7] ), .A1N(n25), .Y(n104)
         );
  OAI2BB2X1M U98 ( .B0(n227), .B1(n28), .A0N(\mem[7][0] ), .A1N(n28), .Y(n105)
         );
  OAI2BB2X1M U99 ( .B0(n226), .B1(n28), .A0N(\mem[7][1] ), .A1N(n28), .Y(n106)
         );
  OAI2BB2X1M U100 ( .B0(n225), .B1(n28), .A0N(\mem[7][2] ), .A1N(n28), .Y(n107) );
  OAI2BB2X1M U101 ( .B0(n224), .B1(n28), .A0N(\mem[7][3] ), .A1N(n28), .Y(n108) );
  OAI2BB2X1M U102 ( .B0(n223), .B1(n28), .A0N(\mem[7][4] ), .A1N(n28), .Y(n109) );
  OAI2BB2X1M U103 ( .B0(n222), .B1(n28), .A0N(\mem[7][5] ), .A1N(n28), .Y(n110) );
  OAI2BB2X1M U104 ( .B0(n221), .B1(n28), .A0N(\mem[7][6] ), .A1N(n28), .Y(n111) );
  OAI2BB2X1M U105 ( .B0(n228), .B1(n28), .A0N(\mem[7][7] ), .A1N(n28), .Y(n112) );
  OAI2BB2X1M U106 ( .B0(n227), .B1(n29), .A0N(\mem[8][0] ), .A1N(n29), .Y(n113) );
  OAI2BB2X1M U107 ( .B0(n226), .B1(n29), .A0N(\mem[8][1] ), .A1N(n29), .Y(n114) );
  OAI2BB2X1M U108 ( .B0(n225), .B1(n29), .A0N(\mem[8][2] ), .A1N(n29), .Y(n115) );
  OAI2BB2X1M U109 ( .B0(n224), .B1(n29), .A0N(\mem[8][3] ), .A1N(n29), .Y(n116) );
  OAI2BB2X1M U110 ( .B0(n223), .B1(n29), .A0N(\mem[8][4] ), .A1N(n29), .Y(n117) );
  OAI2BB2X1M U111 ( .B0(n222), .B1(n29), .A0N(\mem[8][5] ), .A1N(n29), .Y(n118) );
  OAI2BB2X1M U112 ( .B0(n221), .B1(n29), .A0N(\mem[8][6] ), .A1N(n29), .Y(n119) );
  OAI2BB2X1M U113 ( .B0(n228), .B1(n29), .A0N(\mem[8][7] ), .A1N(n29), .Y(n120) );
  OAI2BB2X1M U114 ( .B0(n227), .B1(n31), .A0N(\mem[9][0] ), .A1N(n31), .Y(n121) );
  OAI2BB2X1M U115 ( .B0(n226), .B1(n31), .A0N(\mem[9][1] ), .A1N(n31), .Y(n122) );
  OAI2BB2X1M U116 ( .B0(n225), .B1(n31), .A0N(\mem[9][2] ), .A1N(n31), .Y(n123) );
  OAI2BB2X1M U117 ( .B0(n224), .B1(n31), .A0N(\mem[9][3] ), .A1N(n31), .Y(n124) );
  OAI2BB2X1M U118 ( .B0(n223), .B1(n31), .A0N(\mem[9][4] ), .A1N(n31), .Y(n125) );
  OAI2BB2X1M U119 ( .B0(n222), .B1(n31), .A0N(\mem[9][5] ), .A1N(n31), .Y(n126) );
  OAI2BB2X1M U120 ( .B0(n221), .B1(n31), .A0N(\mem[9][6] ), .A1N(n31), .Y(n127) );
  OAI2BB2X1M U121 ( .B0(n228), .B1(n31), .A0N(\mem[9][7] ), .A1N(n31), .Y(n128) );
  OAI2BB2X1M U122 ( .B0(n227), .B1(n33), .A0N(\mem[10][0] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U123 ( .B0(n226), .B1(n33), .A0N(\mem[10][1] ), .A1N(n33), .Y(
        n130) );
  OAI2BB2X1M U124 ( .B0(n225), .B1(n33), .A0N(\mem[10][2] ), .A1N(n33), .Y(
        n131) );
  OAI2BB2X1M U125 ( .B0(n224), .B1(n33), .A0N(\mem[10][3] ), .A1N(n33), .Y(
        n132) );
  OAI2BB2X1M U126 ( .B0(n223), .B1(n33), .A0N(\mem[10][4] ), .A1N(n33), .Y(
        n133) );
  OAI2BB2X1M U127 ( .B0(n222), .B1(n33), .A0N(\mem[10][5] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U128 ( .B0(n221), .B1(n33), .A0N(\mem[10][6] ), .A1N(n33), .Y(
        n135) );
  OAI2BB2X1M U129 ( .B0(n228), .B1(n33), .A0N(\mem[10][7] ), .A1N(n33), .Y(
        n136) );
  OAI2BB2X1M U130 ( .B0(n227), .B1(n34), .A0N(\mem[11][0] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U131 ( .B0(n226), .B1(n34), .A0N(\mem[11][1] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U132 ( .B0(n225), .B1(n34), .A0N(\mem[11][2] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U133 ( .B0(n224), .B1(n34), .A0N(\mem[11][3] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U134 ( .B0(n223), .B1(n34), .A0N(\mem[11][4] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U135 ( .B0(n222), .B1(n34), .A0N(\mem[11][5] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U136 ( .B0(n221), .B1(n34), .A0N(\mem[11][6] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U137 ( .B0(n228), .B1(n34), .A0N(\mem[11][7] ), .A1N(n34), .Y(
        n144) );
  OAI2BB2X1M U138 ( .B0(n227), .B1(n35), .A0N(\mem[12][0] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U139 ( .B0(n226), .B1(n35), .A0N(\mem[12][1] ), .A1N(n35), .Y(
        n146) );
  OAI2BB2X1M U140 ( .B0(n225), .B1(n35), .A0N(\mem[12][2] ), .A1N(n35), .Y(
        n147) );
  OAI2BB2X1M U141 ( .B0(n224), .B1(n35), .A0N(\mem[12][3] ), .A1N(n35), .Y(
        n148) );
  OAI2BB2X1M U142 ( .B0(n223), .B1(n35), .A0N(\mem[12][4] ), .A1N(n35), .Y(
        n149) );
  OAI2BB2X1M U143 ( .B0(n222), .B1(n35), .A0N(\mem[12][5] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U144 ( .B0(n221), .B1(n35), .A0N(\mem[12][6] ), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U145 ( .B0(n228), .B1(n35), .A0N(\mem[12][7] ), .A1N(n35), .Y(
        n152) );
  OAI2BB2X1M U146 ( .B0(n227), .B1(n36), .A0N(\mem[13][0] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U147 ( .B0(n226), .B1(n36), .A0N(\mem[13][1] ), .A1N(n36), .Y(
        n154) );
  OAI2BB2X1M U148 ( .B0(n225), .B1(n36), .A0N(\mem[13][2] ), .A1N(n36), .Y(
        n155) );
  OAI2BB2X1M U149 ( .B0(n224), .B1(n36), .A0N(\mem[13][3] ), .A1N(n36), .Y(
        n156) );
  OAI2BB2X1M U150 ( .B0(n223), .B1(n36), .A0N(\mem[13][4] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U151 ( .B0(n222), .B1(n36), .A0N(\mem[13][5] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U152 ( .B0(n221), .B1(n36), .A0N(\mem[13][6] ), .A1N(n36), .Y(
        n159) );
  OAI2BB2X1M U153 ( .B0(n228), .B1(n36), .A0N(\mem[13][7] ), .A1N(n36), .Y(
        n160) );
  OAI2BB2X1M U154 ( .B0(n227), .B1(n37), .A0N(\mem[14][0] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U155 ( .B0(n226), .B1(n37), .A0N(\mem[14][1] ), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U156 ( .B0(n225), .B1(n37), .A0N(\mem[14][2] ), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U157 ( .B0(n224), .B1(n37), .A0N(\mem[14][3] ), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U158 ( .B0(n223), .B1(n37), .A0N(\mem[14][4] ), .A1N(n37), .Y(
        n165) );
  OAI2BB2X1M U159 ( .B0(n222), .B1(n37), .A0N(\mem[14][5] ), .A1N(n37), .Y(
        n166) );
  OAI2BB2X1M U160 ( .B0(n221), .B1(n37), .A0N(\mem[14][6] ), .A1N(n37), .Y(
        n167) );
  OAI2BB2X1M U161 ( .B0(n228), .B1(n37), .A0N(\mem[14][7] ), .A1N(n37), .Y(
        n168) );
  OAI2BB2X1M U162 ( .B0(n227), .B1(n39), .A0N(\mem[15][0] ), .A1N(n39), .Y(
        n169) );
  OAI2BB2X1M U163 ( .B0(n226), .B1(n39), .A0N(\mem[15][1] ), .A1N(n39), .Y(
        n170) );
  OAI2BB2X1M U164 ( .B0(n225), .B1(n39), .A0N(\mem[15][2] ), .A1N(n39), .Y(
        n171) );
  OAI2BB2X1M U165 ( .B0(n224), .B1(n39), .A0N(\mem[15][3] ), .A1N(n39), .Y(
        n172) );
  OAI2BB2X1M U166 ( .B0(n223), .B1(n39), .A0N(\mem[15][4] ), .A1N(n39), .Y(
        n173) );
  OAI2BB2X1M U167 ( .B0(n222), .B1(n39), .A0N(\mem[15][5] ), .A1N(n39), .Y(
        n174) );
  OAI2BB2X1M U168 ( .B0(n221), .B1(n39), .A0N(\mem[15][6] ), .A1N(n39), .Y(
        n175) );
  OAI2BB2X1M U169 ( .B0(n228), .B1(n39), .A0N(\mem[15][7] ), .A1N(n39), .Y(
        n176) );
  OAI2BB2X1M U170 ( .B0(n226), .B1(n19), .A0N(REG2[1]), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U171 ( .B0(n225), .B1(n19), .A0N(REG2[2]), .A1N(n19), .Y(n67) );
  OAI2BB2X1M U172 ( .B0(n224), .B1(n19), .A0N(REG2[3]), .A1N(n19), .Y(n68) );
  OAI2BB2X1M U173 ( .B0(n223), .B1(n19), .A0N(REG2[4]), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U174 ( .B0(n222), .B1(n19), .A0N(REG2[5]), .A1N(n19), .Y(n70) );
  OAI2BB2X1M U175 ( .B0(n221), .B1(n19), .A0N(REG2[6]), .A1N(n19), .Y(n71) );
  OAI2BB2X1M U176 ( .B0(n227), .B1(n21), .A0N(REG3[0]), .A1N(n21), .Y(n73) );
  OAI2BB2X1M U177 ( .B0(n226), .B1(n21), .A0N(REG3[1]), .A1N(n21), .Y(n74) );
  OAI2BB2X1M U178 ( .B0(n225), .B1(n21), .A0N(REG3[2]), .A1N(n21), .Y(n75) );
  OAI2BB2X1M U179 ( .B0(n224), .B1(n21), .A0N(REG3[3]), .A1N(n21), .Y(n76) );
  OAI2BB2X1M U180 ( .B0(n223), .B1(n21), .A0N(REG3[4]), .A1N(n21), .Y(n77) );
  OAI2BB2X1M U181 ( .B0(n221), .B1(n21), .A0N(REG3[6]), .A1N(n21), .Y(n79) );
  OAI2BB2X1M U182 ( .B0(n228), .B1(n21), .A0N(REG3[7]), .A1N(n21), .Y(n80) );
  NOR2BX2M U183 ( .AN(n13), .B(N14), .Y(n27) );
  OAI2BB2X1M U184 ( .B0(n227), .B1(n19), .A0N(REG2[0]), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U185 ( .B0(n228), .B1(n19), .A0N(REG2[7]), .A1N(n19), .Y(n72) );
  OAI2BB2X1M U186 ( .B0(n222), .B1(n21), .A0N(REG3[5]), .A1N(n21), .Y(n78) );
  AND2X2M U187 ( .A(N14), .B(n13), .Y(n38) );
  MX4X1M U188 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(n199), .Y(n8) );
  MX4X1M U189 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N11), .S1(n199), .Y(n3) );
  MX4X1M U190 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n201), .S1(n199), .Y(n7) );
  MX4X1M U191 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n201), .S1(N12), .Y(n11) );
  MX4X1M U192 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n201), .S1(N12), .Y(n180) );
  MX4X1M U193 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n201), .S1(N12), .Y(n184) );
  MX4X1M U194 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n202), .S1(N12), .Y(n188) );
  MX4X1M U195 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n202), .S1(N12), .Y(n192) );
  MX4X1M U196 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n202), .S1(N12), .Y(n196) );
  MX4X1M U197 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(n202), .S1(n199), .Y(n1) );
  MX4X1M U198 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n201), .S1(n199), .Y(n9) );
  MX4X1M U199 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n201), .S1(n199), .Y(n178) );
  MX4X1M U200 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n201), .S1(N12), .Y(n182) );
  MX4X1M U201 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n202), .S1(n199), .Y(n186) );
  MX4X1M U202 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n202), .S1(n199), .Y(n190) );
  MX4X1M U203 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n202), .S1(n199), .Y(n194) );
  OAI2BB1X2M U204 ( .A0N(rd_d_vld), .A1N(n13), .B0(n12), .Y(n48) );
  AO22X1M U205 ( .A0(N43), .A1(n220), .B0(RdData[0]), .B1(n12), .Y(n40) );
  MX4X1M U206 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U207 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n199), .Y(n4) );
  MX4X1M U208 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N11), .S1(n199), .Y(n2) );
  AO22X1M U209 ( .A0(N42), .A1(n220), .B0(RdData[1]), .B1(n12), .Y(n41) );
  MX4X1M U210 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U211 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N11), .S1(n199), .Y(n6) );
  MX4X1M U212 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(n201), .S1(n199), .Y(n5) );
  AO22X1M U213 ( .A0(N41), .A1(n220), .B0(RdData[2]), .B1(n12), .Y(n42) );
  MX4X1M U214 ( .A(n177), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41) );
  MX4X1M U215 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(N12), .Y(n177) );
  MX4X1M U216 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n201), .S1(N12), .Y(n10) );
  AO22X1M U217 ( .A0(N40), .A1(n220), .B0(RdData[3]), .B1(n12), .Y(n43) );
  MX4X1M U218 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U219 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(N12), .Y(n181) );
  MX4X1M U220 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n201), .S1(N12), .Y(n179) );
  AO22X1M U221 ( .A0(N39), .A1(n220), .B0(RdData[4]), .B1(n12), .Y(n44) );
  MX4X1M U222 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U223 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(N12), .Y(n185) );
  MX4X1M U224 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n201), .S1(N12), .Y(n183) );
  AO22X1M U225 ( .A0(N38), .A1(n220), .B0(RdData[5]), .B1(n12), .Y(n45) );
  MX4X1M U226 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U227 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(N12), .Y(n189) );
  MX4X1M U228 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n202), .S1(N12), .Y(n187) );
  AO22X1M U229 ( .A0(N37), .A1(n220), .B0(RdData[6]), .B1(n12), .Y(n46) );
  MX4X1M U230 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U231 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(N12), .Y(n193) );
  MX4X1M U232 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n202), .S1(N12), .Y(n191) );
  AO22X1M U233 ( .A0(N36), .A1(n220), .B0(RdData[7]), .B1(n12), .Y(n47) );
  MX4X1M U234 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U235 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(N12), .Y(n197) );
  MX4X1M U236 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n202), .S1(N12), .Y(n195) );
  INVX2M U237 ( .A(N11), .Y(n203) );
  INVX2M U238 ( .A(N12), .Y(n204) );
endmodule


module pulse_gen ( busy, clk, rst, enable_pulse );
  input busy, clk, rst;
  output enable_pulse;
  wire   enable_flop;

  DFFRQX2M enable_flop_reg ( .D(busy), .CK(clk), .RN(rst), .Q(enable_flop) );
  NOR2BX2M U3 ( .AN(busy), .B(enable_flop), .Y(enable_pulse) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  alu_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n13, n15, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U32 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[3]), .Y(n36) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[7]), .Y(n32) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[5]), .Y(n34) );
  INVX2M U46 ( .A(B[3]), .Y(n28) );
  INVX2M U47 ( .A(B[7]), .Y(n24) );
  INVX2M U48 ( .A(B[4]), .Y(n27) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[0]), .Y(n31) );
  INVX2M U51 ( .A(B[2]), .Y(n29) );
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
endmodule


module alu ( A, b, ALU_FUN, clk, rst, enable, ALU_OUT, valid );
  input [7:0] A;
  input [7:0] b;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, rst, enable;
  output valid;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N164, N165, N166, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] res;

  alu_DW_div_uns_0 div_48 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), .b({b[7], 
        n4, b[5:0]}), .quotient({N131, N130, N129, N128, N127, N126, N125, 
        N124}) );
  alu_DW01_sub_0 sub_35 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, b[7], n4, b[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, N104, 
        N103, N102, N101, N100, N99}) );
  alu_DW01_add_0 add_29 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, b[7], n4, b[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, 
        N93, N92, N91, N90}) );
  alu_DW02_mult_0 mult_42 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), .B({b[7], 
        n4, b[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(res[15]), .CK(clk), .RN(rst), .Q(ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(res[14]), .CK(clk), .RN(rst), .Q(ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(res[13]), .CK(clk), .RN(rst), .Q(ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(res[12]), .CK(clk), .RN(rst), .Q(ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(res[11]), .CK(clk), .RN(rst), .Q(ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(res[10]), .CK(clk), .RN(rst), .Q(ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(res[9]), .CK(clk), .RN(rst), .Q(ALU_OUT[9])
         );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(res[8]), .CK(clk), .RN(rst), .Q(ALU_OUT[8])
         );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(res[7]), .CK(clk), .RN(rst), .Q(ALU_OUT[7])
         );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(res[6]), .CK(clk), .RN(rst), .Q(ALU_OUT[6])
         );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(res[5]), .CK(clk), .RN(rst), .Q(ALU_OUT[5])
         );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(res[4]), .CK(clk), .RN(rst), .Q(ALU_OUT[4])
         );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(res[3]), .CK(clk), .RN(rst), .Q(ALU_OUT[3])
         );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(res[2]), .CK(clk), .RN(rst), .Q(ALU_OUT[2])
         );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(res[1]), .CK(clk), .RN(rst), .Q(ALU_OUT[1])
         );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(res[0]), .CK(clk), .RN(rst), .Q(ALU_OUT[0])
         );
  DFFRQX2M valid_reg ( .D(enable), .CK(clk), .RN(rst), .Q(valid) );
  BUFX2M U3 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U4 ( .A0N(n126), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U7 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  AND2X2M U8 ( .A(n99), .B(n105), .Y(n42) );
  BUFX2M U9 ( .A(n41), .Y(n13) );
  NOR2X2M U10 ( .A(n107), .B(n124), .Y(n41) );
  INVX2M U11 ( .A(n100), .Y(n124) );
  INVX2M U12 ( .A(n107), .Y(n126) );
  NOR2BX2M U13 ( .AN(n106), .B(n124), .Y(n37) );
  AND2X2M U14 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U15 ( .A(n91), .Y(n125) );
  OAI2BB1X2M U16 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(res[15]) );
  OAI2BB1X2M U17 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(res[14]) );
  OAI2BB1X2M U18 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(res[12]) );
  OAI2BB1X2M U19 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(res[13]) );
  OAI2BB1X2M U20 ( .A0N(N117), .A1N(n31), .B0(n32), .Y(res[9]) );
  OAI2BB1X2M U21 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(res[10]) );
  OAI2BB1X2M U22 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(res[11]) );
  NOR3BX2M U23 ( .AN(n105), .B(n127), .C(ALU_FUN[2]), .Y(n49) );
  NOR2X2M U24 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U25 ( .A(n106), .B(n128), .C(n3), .Y(n46) );
  NAND2X2M U26 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U27 ( .A(ALU_FUN[0]), .Y(n128) );
  NOR2X2M U28 ( .A(n128), .B(n3), .Y(n105) );
  NOR2X2M U29 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  INVX2M U30 ( .A(ALU_FUN[1]), .Y(n127) );
  NAND3X2M U31 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  AND2X2M U32 ( .A(ALU_FUN[2]), .B(n127), .Y(n99) );
  AND4X2M U33 ( .A(N166), .B(n99), .C(n3), .D(n128), .Y(n90) );
  NOR3X2M U34 ( .A(n124), .B(ALU_FUN[2]), .C(n127), .Y(n35) );
  NAND3X2M U35 ( .A(n126), .B(n128), .C(n3), .Y(n36) );
  NAND3X2M U36 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  NOR2BX2M U37 ( .AN(n35), .B(n129), .Y(n31) );
  AOI31X2M U38 ( .A0(n93), .A1(n94), .A2(n95), .B0(n129), .Y(res[0]) );
  AOI22X1M U39 ( .A0(N99), .A1(n50), .B0(N90), .B1(n37), .Y(n93) );
  AOI211X2M U40 ( .A0(n13), .A1(n140), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U41 ( .A0(N108), .A1(n35), .B0(n5), .B1(n42), .C0(N124), .C1(n49), 
        .Y(n94) );
  AOI31X2M U42 ( .A0(n81), .A1(n82), .A2(n83), .B0(n129), .Y(res[1]) );
  AOI222X1M U43 ( .A0(N91), .A1(n37), .B0(N109), .B1(n35), .C0(N100), .C1(n50), 
        .Y(n81) );
  AOI211X2M U44 ( .A0(n7), .A1(n125), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U45 ( .A0(N125), .A1(n49), .B0(n13), .B1(n139), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U46 ( .A0(n75), .A1(n76), .A2(n77), .B0(n129), .Y(res[2]) );
  AOI22X1M U47 ( .A0(N101), .A1(n50), .B0(N92), .B1(n37), .Y(n75) );
  AOI221XLM U48 ( .A0(n8), .A1(n125), .B0(n13), .B1(n138), .C0(n78), .Y(n77)
         );
  AOI222X1M U49 ( .A0(N110), .A1(n35), .B0(n7), .B1(n42), .C0(N126), .C1(n49), 
        .Y(n76) );
  AOI31X2M U50 ( .A0(n69), .A1(n70), .A2(n71), .B0(n129), .Y(res[3]) );
  AOI22X1M U51 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n69) );
  AOI221XLM U52 ( .A0(n9), .A1(n125), .B0(n13), .B1(n137), .C0(n72), .Y(n71)
         );
  AOI222X1M U53 ( .A0(N111), .A1(n35), .B0(n8), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n70) );
  AOI31X2M U54 ( .A0(n63), .A1(n64), .A2(n65), .B0(n129), .Y(res[4]) );
  AOI22X1M U55 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n63) );
  AOI221XLM U56 ( .A0(n125), .A1(n10), .B0(n13), .B1(n136), .C0(n66), .Y(n65)
         );
  AOI222X1M U57 ( .A0(N112), .A1(n35), .B0(n9), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n64) );
  AOI31X2M U58 ( .A0(n51), .A1(n52), .A2(n53), .B0(n129), .Y(res[6]) );
  AOI22X1M U59 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n51) );
  AOI221XLM U60 ( .A0(n125), .A1(n12), .B0(n13), .B1(n134), .C0(n54), .Y(n53)
         );
  AOI222X1M U61 ( .A0(N114), .A1(n35), .B0(n42), .B1(n11), .C0(N130), .C1(n49), 
        .Y(n52) );
  AOI31X2M U62 ( .A0(n57), .A1(n58), .A2(n59), .B0(n129), .Y(res[5]) );
  AOI22X1M U63 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n57) );
  AOI221XLM U64 ( .A0(n125), .A1(n11), .B0(n13), .B1(n135), .C0(n60), .Y(n59)
         );
  AOI222X1M U65 ( .A0(N113), .A1(n35), .B0(n10), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n58) );
  AOI31X2M U66 ( .A0(n38), .A1(n39), .A2(n40), .B0(n129), .Y(res[7]) );
  AOI22X1M U67 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n38) );
  AOI221XLM U68 ( .A0(n13), .A1(n133), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U69 ( .A0(N131), .A1(n49), .B0(N115), .B1(n35), .Y(n39) );
  AOI21X2M U70 ( .A0(n33), .A1(n34), .B0(n129), .Y(res[8]) );
  AOI21X2M U71 ( .A0(N98), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U72 ( .B0(N116), .B1(n35), .A0N(n133), .A1N(n36), .Y(n34) );
  OAI222X1M U73 ( .A0(n55), .A1(n122), .B0(n4), .B1(n56), .C0(n36), .C1(n135), 
        .Y(n54) );
  AOI221XLM U74 ( .A0(n11), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n56)
         );
  AOI221XLM U75 ( .A0(n46), .A1(n134), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  INVX2M U76 ( .A(n4), .Y(n122) );
  NAND2X2M U77 ( .A(enable), .B(n123), .Y(n32) );
  INVX2M U78 ( .A(n92), .Y(n123) );
  AOI211X2M U79 ( .A0(N107), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  BUFX2M U80 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U81 ( .A(enable), .Y(n129) );
  INVX2M U82 ( .A(n6), .Y(n139) );
  INVX2M U83 ( .A(n5), .Y(n140) );
  INVX2M U84 ( .A(n11), .Y(n134) );
  INVX2M U85 ( .A(n12), .Y(n133) );
  INVX2M U86 ( .A(n8), .Y(n137) );
  INVX2M U87 ( .A(n7), .Y(n138) );
  INVX2M U88 ( .A(n10), .Y(n135) );
  INVX2M U89 ( .A(n9), .Y(n136) );
  BUFX2M U90 ( .A(b[6]), .Y(n4) );
  BUFX2M U91 ( .A(A[7]), .Y(n12) );
  BUFX2M U92 ( .A(A[5]), .Y(n10) );
  BUFX2M U93 ( .A(A[4]), .Y(n9) );
  BUFX2M U94 ( .A(A[3]), .Y(n8) );
  BUFX2M U95 ( .A(A[2]), .Y(n7) );
  BUFX2M U96 ( .A(A[1]), .Y(n6) );
  BUFX2M U97 ( .A(A[0]), .Y(n5) );
  INVX2M U98 ( .A(n25), .Y(n120) );
  OAI2B2X1M U99 ( .A1N(b[1]), .A0(n86), .B0(n36), .B1(n140), .Y(n85) );
  AOI221XLM U100 ( .A0(n46), .A1(n139), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI222X1M U101 ( .A0(n79), .A1(n119), .B0(b[2]), .B1(n80), .C0(n36), .C1(
        n139), .Y(n78) );
  AOI221XLM U102 ( .A0(n7), .A1(n46), .B0(n47), .B1(n138), .C0(n13), .Y(n80)
         );
  AOI221XLM U103 ( .A0(n46), .A1(n138), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U104 ( .A0(n73), .A1(n121), .B0(b[3]), .B1(n74), .C0(n36), .C1(
        n138), .Y(n72) );
  AOI221XLM U105 ( .A0(n8), .A1(n46), .B0(n47), .B1(n137), .C0(n13), .Y(n74)
         );
  AOI221XLM U106 ( .A0(n46), .A1(n137), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U107 ( .A0(n67), .A1(n132), .B0(b[4]), .B1(n68), .C0(n36), .C1(
        n137), .Y(n66) );
  INVX2M U108 ( .A(b[4]), .Y(n132) );
  AOI221XLM U109 ( .A0(n9), .A1(n46), .B0(n47), .B1(n136), .C0(n13), .Y(n68)
         );
  AOI221XLM U110 ( .A0(n46), .A1(n136), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U111 ( .A0(n61), .A1(n131), .B0(b[5]), .B1(n62), .C0(n36), .C1(
        n136), .Y(n60) );
  INVX2M U112 ( .A(b[5]), .Y(n131) );
  AOI221XLM U113 ( .A0(n10), .A1(n46), .B0(n47), .B1(n135), .C0(n13), .Y(n62)
         );
  AOI221XLM U114 ( .A0(n46), .A1(n135), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U115 ( .A0(n44), .A1(n130), .B0(b[7]), .B1(n45), .C0(n36), .C1(
        n134), .Y(n43) );
  INVX2M U116 ( .A(b[7]), .Y(n130) );
  AOI221XLM U117 ( .A0(n46), .A1(n12), .B0(n47), .B1(n133), .C0(n13), .Y(n45)
         );
  AOI221XLM U118 ( .A0(n46), .A1(n133), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U119 ( .A(n14), .Y(n118) );
  OAI2B2X1M U120 ( .A1N(b[0]), .A0(n98), .B0(n91), .B1(n139), .Y(n97) );
  AOI221XLM U121 ( .A0(n46), .A1(n140), .B0(n5), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI21X2M U122 ( .A0(b[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U123 ( .A0(n5), .A1(n46), .B0(n47), .B1(n140), .C0(n13), .Y(n102)
         );
  AOI31X2M U124 ( .A0(N164), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U125 ( .A(n127), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U126 ( .A0(b[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U127 ( .A0(n6), .A1(n46), .B0(n47), .B1(n139), .C0(n13), .Y(n87)
         );
  AOI31X2M U128 ( .A0(N165), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U129 ( .A(n128), .B(ALU_FUN[2]), .C(n127), .Y(n89) );
  INVX2M U130 ( .A(b[0]), .Y(n117) );
  INVX2M U131 ( .A(b[2]), .Y(n119) );
  INVX2M U132 ( .A(b[3]), .Y(n121) );
  NOR2X1M U133 ( .A(n133), .B(b[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(b[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(b[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n121), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n119), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n119), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n139), .B0(b[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n118), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n121), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(b[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(b[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n134), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(b[7]), .B(n133), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N166) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n139), .B0(b[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n139), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n120), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n122), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N165) );
  NOR2X1M U161 ( .A(N166), .B(N165), .Y(N164) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module sys_crl ( alu_out, out_valid, rx_p_data, rx_d_vld, rd_data, rd_d_vld, 
        clk, rst, fifo_full, alu_en, alu_fun, gate_en, addr, wr_en, rd_en, 
        wr_data, tx_p_data, tx_d_vld );
  input [15:0] alu_out;
  input [7:0] rx_p_data;
  input [7:0] rd_data;
  output [3:0] alu_fun;
  output [3:0] addr;
  output [7:0] wr_data;
  output [7:0] tx_p_data;
  input out_valid, rx_d_vld, rd_d_vld, clk, rst, fifo_full;
  output alu_en, gate_en, wr_en, rd_en, tx_d_vld;
  wire   n9, n10, n14, n15, n17, n19, n23, n26, n29, n32, n35, n38, n41, n42,
         n43, n44, n46, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n80, n81, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n1,
         n2, n3, n4, n5, n6, n7, n8, n11, n12, n13, n16, n18, n20, n21, n22,
         n24, n25, n27, n28, n30, n31, n33, n34, n36, n37, n39, n40, n45, n47,
         n48, n66, n79, n82, n83, n104;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] stored_alu;

  DFFRQX2M \stored_alu_reg[15]  ( .D(n99), .CK(clk), .RN(rst), .Q(
        stored_alu[15]) );
  DFFRQX2M \stored_alu_reg[14]  ( .D(n98), .CK(clk), .RN(rst), .Q(
        stored_alu[14]) );
  DFFRQX2M \stored_alu_reg[13]  ( .D(n97), .CK(clk), .RN(rst), .Q(
        stored_alu[13]) );
  DFFRQX2M \stored_alu_reg[12]  ( .D(n96), .CK(clk), .RN(rst), .Q(
        stored_alu[12]) );
  DFFRQX2M \stored_alu_reg[11]  ( .D(n95), .CK(clk), .RN(rst), .Q(
        stored_alu[11]) );
  DFFRQX2M \stored_alu_reg[10]  ( .D(n94), .CK(clk), .RN(rst), .Q(
        stored_alu[10]) );
  DFFRQX2M \stored_alu_reg[9]  ( .D(n93), .CK(clk), .RN(rst), .Q(stored_alu[9]) );
  DFFRQX2M \stored_alu_reg[8]  ( .D(n92), .CK(clk), .RN(rst), .Q(stored_alu[8]) );
  DFFRQX2M \stored_alu_reg[7]  ( .D(n91), .CK(clk), .RN(rst), .Q(stored_alu[7]) );
  DFFRQX2M \stored_alu_reg[6]  ( .D(n90), .CK(clk), .RN(rst), .Q(stored_alu[6]) );
  DFFRQX2M \stored_alu_reg[5]  ( .D(n89), .CK(clk), .RN(rst), .Q(stored_alu[5]) );
  DFFRQX2M \stored_alu_reg[4]  ( .D(n88), .CK(clk), .RN(rst), .Q(stored_alu[4]) );
  DFFRQX2M \stored_alu_reg[3]  ( .D(n87), .CK(clk), .RN(rst), .Q(stored_alu[3]) );
  DFFRQX2M \stored_alu_reg[2]  ( .D(n86), .CK(clk), .RN(rst), .Q(stored_alu[2]) );
  DFFRQX2M \stored_alu_reg[1]  ( .D(n85), .CK(clk), .RN(rst), .Q(stored_alu[1]) );
  DFFRQX2M \stored_alu_reg[0]  ( .D(n84), .CK(clk), .RN(rst), .Q(stored_alu[0]) );
  DFFRQX2M \addr_reg[1]  ( .D(n101), .CK(clk), .RN(rst), .Q(addr[1]) );
  DFFRQX2M \addr_reg[2]  ( .D(n102), .CK(clk), .RN(rst), .Q(addr[2]) );
  DFFRQX2M \addr_reg[3]  ( .D(n103), .CK(clk), .RN(rst), .Q(addr[3]) );
  DFFRQX2M \addr_reg[0]  ( .D(n100), .CK(clk), .RN(rst), .Q(addr[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(rst), .Q(
        current_state[3]) );
  NOR2X2M U3 ( .A(n82), .B(n8), .Y(alu_fun[2]) );
  NOR2X2M U4 ( .A(n104), .B(n8), .Y(alu_fun[0]) );
  NOR2X2M U5 ( .A(n11), .B(current_state[3]), .Y(n71) );
  INVX2M U6 ( .A(n77), .Y(n8) );
  INVX2M U7 ( .A(n42), .Y(n7) );
  INVX2M U8 ( .A(n59), .Y(rd_en) );
  INVX2M U9 ( .A(fifo_full), .Y(n4) );
  NOR2X2M U10 ( .A(n83), .B(n8), .Y(alu_fun[1]) );
  NOR2X2M U11 ( .A(n55), .B(n45), .Y(n77) );
  NOR2X2M U12 ( .A(n79), .B(n8), .Y(alu_fun[3]) );
  INVX2M U13 ( .A(n71), .Y(n6) );
  NOR2X2M U14 ( .A(n5), .B(n104), .Y(wr_data[0]) );
  NOR2X2M U15 ( .A(n5), .B(n48), .Y(wr_data[5]) );
  NOR2X2M U16 ( .A(n12), .B(n16), .Y(n70) );
  INVX2M U17 ( .A(wr_en), .Y(n5) );
  NAND2X2M U18 ( .A(n70), .B(n71), .Y(n42) );
  NAND2X2M U19 ( .A(n43), .B(n44), .Y(n17) );
  NOR2X2M U20 ( .A(n5), .B(n83), .Y(wr_data[1]) );
  NOR2X2M U21 ( .A(n5), .B(n82), .Y(wr_data[2]) );
  NOR2X2M U22 ( .A(n5), .B(n79), .Y(wr_data[3]) );
  NOR2X2M U23 ( .A(n5), .B(n66), .Y(wr_data[4]) );
  NOR2X2M U24 ( .A(n5), .B(n47), .Y(wr_data[6]) );
  NAND3X2M U25 ( .A(n11), .B(n13), .C(n70), .Y(n59) );
  NAND3X2M U26 ( .A(n15), .B(n17), .C(n42), .Y(tx_d_vld) );
  NAND3X2M U27 ( .A(n11), .B(n13), .C(n49), .Y(n10) );
  NAND2X2M U28 ( .A(n49), .B(n71), .Y(n14) );
  NAND2BX2M U29 ( .AN(n43), .B(n44), .Y(n53) );
  NOR2BX2M U30 ( .AN(n81), .B(n75), .Y(n78) );
  NAND2X2M U31 ( .A(n71), .B(n12), .Y(n81) );
  OAI21X2M U32 ( .A0(n45), .A1(n10), .B0(n46), .Y(next_state[3]) );
  BUFX2M U33 ( .A(n58), .Y(n3) );
  BUFX2M U34 ( .A(n58), .Y(n2) );
  NOR2BX2M U35 ( .AN(n75), .B(n12), .Y(n52) );
  NOR2X2M U36 ( .A(n16), .B(current_state[1]), .Y(n49) );
  AOI2B1X1M U37 ( .A1N(n9), .A0(n10), .B0(n45), .Y(wr_en) );
  OAI31X1M U38 ( .A0(n12), .A1(current_state[2]), .A2(n6), .B0(n14), .Y(n9) );
  NAND3X2M U39 ( .A(n49), .B(n11), .C(current_state[3]), .Y(n55) );
  INVX2M U40 ( .A(current_state[0]), .Y(n11) );
  INVX2M U41 ( .A(current_state[2]), .Y(n16) );
  OAI32X1M U42 ( .A0(n57), .A1(rx_p_data[4]), .A2(rx_p_data[0]), .B0(n42), 
        .B1(n4), .Y(n50) );
  OAI21X2M U43 ( .A0(out_valid), .A1(n56), .B0(n8), .Y(alu_en) );
  NAND3X2M U44 ( .A(current_state[0]), .B(n4), .C(n44), .Y(n15) );
  OAI221X1M U45 ( .A0(n15), .A1(n40), .B0(n17), .B1(n28), .C0(n41), .Y(
        tx_p_data[0]) );
  NAND2X2M U46 ( .A(rd_data[0]), .B(n7), .Y(n41) );
  OAI221X1M U47 ( .A0(n15), .A1(n39), .B0(n17), .B1(n27), .C0(n38), .Y(
        tx_p_data[1]) );
  NAND2X2M U48 ( .A(rd_data[1]), .B(n7), .Y(n38) );
  OAI221X1M U49 ( .A0(n15), .A1(n37), .B0(n17), .B1(n25), .C0(n35), .Y(
        tx_p_data[2]) );
  NAND2X2M U50 ( .A(rd_data[2]), .B(n7), .Y(n35) );
  OAI221X1M U51 ( .A0(n15), .A1(n36), .B0(n17), .B1(n24), .C0(n32), .Y(
        tx_p_data[3]) );
  NAND2X2M U52 ( .A(rd_data[3]), .B(n7), .Y(n32) );
  OAI221X1M U53 ( .A0(n15), .A1(n34), .B0(n17), .B1(n22), .C0(n29), .Y(
        tx_p_data[4]) );
  NAND2X2M U54 ( .A(rd_data[4]), .B(n7), .Y(n29) );
  OAI221X1M U55 ( .A0(n15), .A1(n33), .B0(n17), .B1(n21), .C0(n26), .Y(
        tx_p_data[5]) );
  NAND2X2M U56 ( .A(rd_data[5]), .B(n7), .Y(n26) );
  OAI221X1M U57 ( .A0(n15), .A1(n31), .B0(n17), .B1(n20), .C0(n23), .Y(
        tx_p_data[6]) );
  NAND2X2M U58 ( .A(rd_data[6]), .B(n7), .Y(n23) );
  OAI221X1M U59 ( .A0(n15), .A1(n30), .B0(n17), .B1(n18), .C0(n19), .Y(
        tx_p_data[7]) );
  NAND2X2M U60 ( .A(rd_data[7]), .B(n7), .Y(n19) );
  NOR2X2M U61 ( .A(fifo_full), .B(current_state[0]), .Y(n43) );
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
  INVX2M U74 ( .A(rx_p_data[1]), .Y(n83) );
  INVX2M U75 ( .A(rx_p_data[2]), .Y(n82) );
  AND4X2M U76 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n46) );
  NAND3BX2M U77 ( .AN(n57), .B(rx_p_data[0]), .C(rx_p_data[4]), .Y(n54) );
  INVX2M U78 ( .A(rx_p_data[0]), .Y(n104) );
  INVX2M U79 ( .A(rx_p_data[3]), .Y(n79) );
  NAND3BX2M U80 ( .AN(n50), .B(n46), .C(n51), .Y(next_state[2]) );
  AOI211X2M U81 ( .A0(n52), .A1(rx_d_vld), .B0(rd_en), .C0(n49), .Y(n51) );
  NOR3X2M U82 ( .A(current_state[2]), .B(current_state[3]), .C(
        current_state[0]), .Y(n75) );
  OAI21X2M U83 ( .A0(n52), .A1(n62), .B0(rx_d_vld), .Y(n80) );
  OAI31X1M U84 ( .A0(n64), .A1(n66), .A2(n104), .B0(n65), .Y(n63) );
  NAND4X2M U85 ( .A(current_state[1]), .B(n16), .C(n13), .D(n45), .Y(n65) );
  NOR2BX2M U86 ( .AN(out_valid), .B(n56), .Y(n58) );
  NAND3X2M U87 ( .A(n49), .B(current_state[0]), .C(current_state[3]), .Y(n56)
         );
  OAI21X2M U88 ( .A0(out_valid), .A1(n56), .B0(n55), .Y(gate_en) );
  NOR2X2M U89 ( .A(n81), .B(current_state[2]), .Y(n62) );
  AND4X2M U90 ( .A(n75), .B(rx_p_data[3]), .C(n76), .D(rx_p_data[7]), .Y(n72)
         );
  NOR2X2M U91 ( .A(current_state[1]), .B(n45), .Y(n76) );
  OAI2BB2X1M U92 ( .B0(n2), .B1(n40), .A0N(alu_out[0]), .A1N(n3), .Y(n84) );
  OAI2BB2X1M U93 ( .B0(n2), .B1(n39), .A0N(alu_out[1]), .A1N(n3), .Y(n85) );
  OAI2BB2X1M U94 ( .B0(n2), .B1(n37), .A0N(alu_out[2]), .A1N(n3), .Y(n86) );
  OAI2BB2X1M U95 ( .B0(n2), .B1(n36), .A0N(alu_out[3]), .A1N(n3), .Y(n87) );
  OAI2BB2X1M U96 ( .B0(n2), .B1(n34), .A0N(alu_out[4]), .A1N(n3), .Y(n88) );
  OAI2BB2X1M U97 ( .B0(n2), .B1(n33), .A0N(alu_out[5]), .A1N(n3), .Y(n89) );
  OAI2BB2X1M U98 ( .B0(n2), .B1(n31), .A0N(alu_out[6]), .A1N(n3), .Y(n90) );
  OAI2BB2X1M U99 ( .B0(n2), .B1(n30), .A0N(alu_out[7]), .A1N(n3), .Y(n91) );
  OAI2BB2X1M U100 ( .B0(n2), .B1(n28), .A0N(alu_out[8]), .A1N(n3), .Y(n92) );
  OAI2BB2X1M U101 ( .B0(n2), .B1(n27), .A0N(alu_out[9]), .A1N(n3), .Y(n93) );
  OAI2BB2X1M U102 ( .B0(n2), .B1(n25), .A0N(alu_out[10]), .A1N(n3), .Y(n94) );
  OAI2BB2X1M U103 ( .B0(n3), .B1(n24), .A0N(alu_out[11]), .A1N(n3), .Y(n95) );
  OAI2BB2X1M U104 ( .B0(n3), .B1(n22), .A0N(alu_out[12]), .A1N(n3), .Y(n96) );
  OAI2BB2X1M U105 ( .B0(n3), .B1(n21), .A0N(alu_out[13]), .A1N(n3), .Y(n97) );
  OAI2BB2X1M U106 ( .B0(n3), .B1(n20), .A0N(alu_out[14]), .A1N(n3), .Y(n98) );
  OAI2BB2X1M U107 ( .B0(n2), .B1(n18), .A0N(alu_out[15]), .A1N(n3), .Y(n99) );
  OAI2BB2X1M U108 ( .B0(n83), .B1(n80), .A0N(addr[1]), .A1N(n78), .Y(n101) );
  OAI2BB2X1M U109 ( .B0(n82), .B1(n80), .A0N(addr[2]), .A1N(n78), .Y(n102) );
  OAI2BB2X1M U110 ( .B0(n79), .B1(n80), .A0N(addr[3]), .A1N(n78), .Y(n103) );
  NAND3X2M U111 ( .A(n72), .B(rx_p_data[1]), .C(n74), .Y(n64) );
  NOR3X2M U112 ( .A(n48), .B(rx_p_data[6]), .C(rx_p_data[2]), .Y(n74) );
  NAND3X2M U113 ( .A(n72), .B(rx_p_data[2]), .C(n73), .Y(n57) );
  NOR3X2M U114 ( .A(n47), .B(rx_p_data[5]), .C(rx_p_data[1]), .Y(n73) );
  INVX2M U115 ( .A(rx_p_data[5]), .Y(n48) );
  INVX2M U116 ( .A(rx_p_data[6]), .Y(n47) );
  INVX2M U117 ( .A(rx_p_data[4]), .Y(n66) );
  AO21XLM U118 ( .A0(addr[0]), .A1(n78), .B0(n1), .Y(n100) );
  OAI22X1M U119 ( .A0(n80), .A1(n104), .B0(n14), .B1(n45), .Y(n1) );
  INVX2M U120 ( .A(stored_alu[8]), .Y(n28) );
  INVX2M U121 ( .A(stored_alu[9]), .Y(n27) );
  INVX2M U122 ( .A(stored_alu[10]), .Y(n25) );
  INVX2M U123 ( .A(stored_alu[11]), .Y(n24) );
  INVX2M U124 ( .A(stored_alu[12]), .Y(n22) );
  INVX2M U125 ( .A(stored_alu[13]), .Y(n21) );
  INVX2M U126 ( .A(stored_alu[14]), .Y(n20) );
  INVX2M U127 ( .A(stored_alu[15]), .Y(n18) );
  INVX2M U128 ( .A(stored_alu[0]), .Y(n40) );
  INVX2M U129 ( .A(stored_alu[1]), .Y(n39) );
  INVX2M U130 ( .A(stored_alu[2]), .Y(n37) );
  INVX2M U131 ( .A(stored_alu[3]), .Y(n36) );
  INVX2M U132 ( .A(stored_alu[4]), .Y(n34) );
  INVX2M U133 ( .A(stored_alu[5]), .Y(n33) );
  INVX2M U134 ( .A(stored_alu[6]), .Y(n31) );
  INVX2M U135 ( .A(stored_alu[7]), .Y(n30) );
endmodule


module SYS_TOP ( RST_N, REF_CLK, UART_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, REF_CLK, UART_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   sync_rst2, tx_clk, rx_clk, RX_OUT_V_wire, busy, f_empty, sync_rst1,
         RX_OUT_V_wire_s, WR_inc, RD_inc, FIFO_Full, RdEn, WrEn, Rd_D_vid, En,
         ALU_valid, gate_en, ALU_clk, n1, n2, n3, n4, n5, n6, n7;
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

  UART uart_inst ( .RST(n6), .TX_CLK(tx_clk), .RX_CLK(rx_clk), .RX_IN_S(
        UART_RX_IN), .RX_OUT_P(RX_OUT_P_wire), .RX_OUT_V(RX_OUT_V_wire), 
        .TX_IN_P(RD_DATA), .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(busy), 
        .Prescale(conf[7:2]), .parity_enable(conf[0]), .parity_type(conf[1]), 
        .parity_error(parity_error), .framing_error(framing_error) );
  clkdiv_0 div_tx ( .i_ref_clk(UART_CLK), .i_rst_n(n6), .i_clk_en(1'b1), 
        .i_div_ratio(div_ratio), .o_div_clk(tx_clk) );
  clkdiv_1 div_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n6), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, Rx_div_ratio[3:0]}), .o_div_clk(
        rx_clk) );
  CLKDIV_MUX div_mux ( .IN(conf[7:2]), .OUT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, Rx_div_ratio[3:0]}) );
  rst_sync_0 rst_syn2 ( .rst(RST_N), .clk(UART_CLK), .sync_rst(sync_rst2) );
  rst_sync_1 rst_syn1 ( .rst(RST_N), .clk(REF_CLK), .sync_rst(sync_rst1) );
  data_sync data_syn ( .unsync_bus(RX_OUT_P_wire), .bus_enable(RX_OUT_V_wire), 
        .clk(REF_CLK), .rst(n4), .sync_bus(RX_OUT_P_wire_s), .enable_pulse(
        RX_OUT_V_wire_s) );
  fifo_top fifo ( .wclk_t(REF_CLK), .wrst_t(n4), .winc_t(WR_inc), .rclk_t(
        tx_clk), .rrst_t(n6), .rinc_t(RD_inc), .wdata_t(WR_data), .full_t(
        FIFO_Full), .empty_t(f_empty), .rdata_t(RD_DATA) );
  reg_file register_file ( .rst(n4), .clk(REF_CLK), .RdEn(RdEn), .WrEn(WrEn), 
        .address({addr[3:2], n3, n2}), .WrData(Wr_D), .RdData(Rd_D), 
        .rd_d_vld(Rd_D_vid), .REG0(op_a), .REG1(op_b), .REG2(conf), .REG3(
        div_ratio) );
  pulse_gen pulse_gen_inst ( .busy(busy), .clk(tx_clk), .rst(n6), 
        .enable_pulse(RD_inc) );
  alu alu_inst ( .A(op_a), .b(op_b), .ALU_FUN(fun), .clk(REF_CLK), .rst(n4), 
        .enable(En), .ALU_OUT(ALU_OUT), .valid(ALU_valid) );
  CLK_GATE clock_gate_inst ( .CLK_EN(gate_en), .CLK(REF_CLK), .GATED_CLK(
        ALU_clk) );
  sys_crl control ( .alu_out(ALU_OUT), .out_valid(ALU_valid), .rx_p_data(
        RX_OUT_P_wire_s), .rx_d_vld(RX_OUT_V_wire_s), .rd_data(Rd_D), 
        .rd_d_vld(Rd_D_vid), .clk(REF_CLK), .rst(n4), .fifo_full(FIFO_Full), 
        .alu_en(En), .alu_fun(fun), .gate_en(gate_en), .addr(addr), .wr_en(
        WrEn), .rd_en(RdEn), .wr_data(Wr_D), .tx_p_data(WR_data), .tx_d_vld(
        WR_inc) );
  INVX4M U3 ( .A(n5), .Y(n4) );
  INVX2M U4 ( .A(n7), .Y(n6) );
  INVX2M U5 ( .A(f_empty), .Y(n1) );
  BUFX2M U6 ( .A(addr[0]), .Y(n2) );
  BUFX2M U7 ( .A(addr[1]), .Y(n3) );
  INVX2M U8 ( .A(sync_rst1), .Y(n5) );
  INVX2M U9 ( .A(sync_rst2), .Y(n7) );
endmodule

