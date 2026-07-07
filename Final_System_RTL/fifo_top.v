module fifo_top #(parameter width = 8 , parameter depth = 8, parameter address_width =3)(
input wclk_t ,
input wrst_t , 
input winc_t , 
input rclk_t , 
input rrst_t , 
input rinc_t , 
input [width-1 : 0] wdata_t ,
output full_t ,
output empty_t , 
output [width-1 : 0] rdata_t
);

wire [address_width-1 : 0] waddr_t ;
wire [address_width : 0] wptr_t ;
wire [address_width-1 : 0] raddr_t ;
wire [address_width : 0] rptr_t ;
wire [address_width : 0] wq2_rptr_t;
wire [address_width : 0] rq2_rptr_t;

fifo_mem memory(
.wdata(wdata_t),
.rdata(rdata_t),
.wclk(wclk_t),
.wrst(wrst_t),
.waddr(waddr_t),
.raddr(raddr_t),
.winc(winc_t),
.wfull(full_t)
);

fifo_w write_domain (
.winc(winc_t),
.wclk(wclk_t),
.wrst(wrst_t),
.wq2_rptr(wq2_rptr_t),
.wfull(full_t),
.waddr(waddr_t),
.wptr(wptr_t)
);

fifo_r read_domain(
.rinc(rinc_t) , 
.rclk(rclk_t) , 
.rrst(rrst_t) , 
.rq2_wptr(rq2_rptr_t) , 
.rempty(empty_t) , 
.raddr(raddr_t) , 
.rptr(rptr_t) 
);

sync_r2w r2w(
.wclk(wclk_t),
.wrst(wrst_t),
.rptr(rptr_t), 
.wq2_rptr(wq2_rptr_t)

);

sync_w2r w2r (
.rclk(rclk_t),
.rrst(rrst_t) ,
.wptr(wptr_t) , 
.rq2_rptr(rq2_rptr_t) 
);

endmodule