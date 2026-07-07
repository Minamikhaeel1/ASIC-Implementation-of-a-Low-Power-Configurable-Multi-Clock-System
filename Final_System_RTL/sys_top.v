module SYS_TOP(
input RST_N , 
input REF_CLK,
input UART_CLK,
input UART_RX_IN,
output  UART_TX_O ,
output  parity_error ,
output  framing_error 
);

wire WrEn ; 
wire RdEn ; 
wire [3:0] addr ; 
wire [7:0] Wr_D ; 
wire [7:0] Rd_D ; 
wire Rd_D_vid ;
wire [7:0] op_a ;
wire [7:0] op_b ;
wire sync_rst1 ;
wire [3:0] fun ;
wire En ;
wire ALU_valid ;
wire [15:0] ALU_OUT ;
wire gate_en ;
wire ALU_clk ;
wire  [7:0] conf ;
wire sync_rst2 ;
wire rx_clk ;
wire tx_clk ;
wire [7:0] div_ratio ;
wire f_empty ; 
wire [7:0] RD_DATA ; 
wire busy ;
wire RD_inc ; 
wire WR_inc ; 
wire [7:0] WR_data ; 
wire FIFO_Full ; 
wire [7:0] RX_OUT_P_wire ; 
wire RX_OUT_V_wire ; 
wire [7:0] RX_OUT_P_wire_s ; 
wire RX_OUT_V_wire_s ; 
wire [7:0] Rx_div_ratio;
///********************************************************///
//////////// UART /////////////////
///********************************************************///

UART uart_inst
(
.RST(sync_rst2),
.TX_CLK(tx_clk),
.RX_CLK(rx_clk),
.RX_IN_S(UART_RX_IN),
.RX_OUT_P(RX_OUT_P_wire), 
.RX_OUT_V(RX_OUT_V_wire),
.TX_IN_P(RD_DATA), 
.TX_IN_V(!f_empty), 
.TX_OUT_S(UART_TX_O),
.TX_OUT_V(busy),  
.Prescale(conf[7:2]), 
.parity_enable(conf[0]),
.parity_type(conf[1]),
.parity_error(parity_error),
.framing_error(framing_error)
);
///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

clkdiv div_tx(
.i_ref_clk(UART_CLK) ,
.i_rst_n(sync_rst2) ,
.i_clk_en(1'b1) ,
.i_div_ratio(div_ratio) , 
.o_div_clk(tx_clk)
);



///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///

clkdiv div_RX(
.i_ref_clk(UART_CLK) ,
.i_rst_n(sync_rst2) ,
.i_clk_en(1'b1) ,
.i_div_ratio(Rx_div_ratio) , 
.o_div_clk(rx_clk)
);


CLKDIV_MUX div_mux (
.IN(conf[7:2]),
.OUT(Rx_div_ratio)
);

///********************************************************///
//////////// rst sync 2  /////////////////
///********************************************************///
rst_sync rst_syn2(
.rst(RST_N) , 
.clk(UART_CLK) , 
.sync_rst(sync_rst2) 
);

///********************************************************///
//////////// rst sync 1  /////////////////
///********************************************************///
rst_sync rst_syn1(
.rst(RST_N) , 
.clk(REF_CLK) , 
.sync_rst(sync_rst1) 
);
///********************************************************///
//////////// data sync /////////////////
///********************************************************///
data_sync data_syn(
.unsync_bus(RX_OUT_P_wire) ,
.bus_enable(RX_OUT_V_wire) , 
.clk(REF_CLK) , 
.rst(sync_rst1) , 
.sync_bus(RX_OUT_P_wire_s) ,
.enable_pulse(RX_OUT_V_wire_s)
);
///********************************************************///
//////////// FIFO /////////////////
///********************************************************///
fifo_top fifo(
.wclk_t(REF_CLK) ,
.wrst_t(sync_rst1) , 
.winc_t(WR_inc) , 
.rclk_t(tx_clk) , 
.rrst_t(sync_rst2) , 
.rinc_t(RD_inc) , 
.wdata_t(WR_data) ,
.full_t(FIFO_Full) ,
.empty_t(f_empty) , 
.rdata_t(RD_DATA)
);
///********************************************************///
//////////// reg file /////////////////
///********************************************************///
reg_file register_file(
.rst(sync_rst1) , 
.clk(REF_CLK), 
.RdEn(RdEn), 
.WrEn(WrEn), 
.address(addr), 
.WrData(Wr_D) , 
.RdData(Rd_D),
.rd_d_vld(Rd_D_vid),
.REG0(op_a),
.REG1(op_b),
.REG2(conf),
.REG3(div_ratio)
);
///********************************************************///
//////////// pulse gen /////////////////
///********************************************************///
pulse_gen pulse_gen_inst(

.busy(busy) , 
.clk(tx_clk) , 
.rst(sync_rst2) , 
.enable_pulse(RD_inc)
);
///********************************************************///
//////////// alu /////////////////
///********************************************************///
alu alu_inst(
.A(op_a) , 
.b(op_b) , 
.ALU_FUN(fun) , 
.clk(REF_CLK) , 
.rst(sync_rst1) ,
.ALU_OUT(ALU_OUT),
.enable(En),
.valid(ALU_valid)
  );
///********************************************************///
//////////// clock gating /////////////////
///********************************************************///
CLK_GATE clock_gate_inst(
.CLK_EN(gate_en),
.CLK(REF_CLK),
.GATED_CLK(ALU_clk)
);
///********************************************************///
//////////// control sys /////////////////
///********************************************************///
sys_crl control(
.alu_out(ALU_OUT) ,
.out_valid(ALU_valid) ,
.rx_p_data(RX_OUT_P_wire_s) , 
.rx_d_vld(RX_OUT_V_wire_s) , 
.rd_data(Rd_D) , 
.rd_d_vld(Rd_D_vid) , 
.clk(REF_CLK) ,
.rst(sync_rst1) ,
.alu_en(En) , 
.alu_fun(fun) , 
.gate_en(gate_en) , 
.addr(addr), 
.wr_en(WrEn) ,
.rd_en(RdEn) ,
.wr_data(Wr_D),
.tx_p_data(WR_data) , 
.tx_d_vld(WR_inc) ,
.fifo_full(FIFO_Full)
);

endmodule