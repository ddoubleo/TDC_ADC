module ADC_top(
    input clk,
    input start,
    input rst,
    //output out,
    output [7:0] out_bin,
    //output wire spi_csn, spi_clk, spi_mosi,
    output clkout
    //output [4:0] test
);
wire [7:0] out;
wire clk2_7;
wire clk118;
wire rdy;
wire [254:0] regs_out /* synthesis syn_keep=1*/; 
//wire start;
//assign start = 255'd1023;


Gowin_rPLL pll_inst(
    .clkout(clk118), //output clkout
    .clkoutd(clk2_7), //output clkoutd
    .clkin(clk) //input clkin
);

assign clkout = ~clk2_7;

TDC TDC_inst(
    .clk(clkout),
    .start(start),
    .regs_out(regs_out),
    .reset(rst)
    /*.rdy(rdy),
    .out(out)*/
);

//TDC TDC_inst2(
//    .clk(~clk2_7),
//    .start(~start),
//    .regs_out(regs_out),
//    .reset(rst)
//    .out(out)
//);

//spi_transmitter #(
//    .N(8),
//    .CLK_FREQ(2700000),
//    .SPI_FREQ(1350000)
//) debug_spi               
//  (
//    .clk(clk),
//        .rst(rst),
//        .data({out_bin}),
//    .tx_start(~start), 
//    .spi_csn(spi_csn),     // IO5
//    .spi_clk(spi_clk),     // IO4
//    .spi_mosi(spi_mosi)     // IO3
//  );




unary2binary u2b_inst(
    //.clk(clk2_7),
    .unaryb(regs_out),
    .binary(out_bin)
);




//assign test = regs_out[4:0];


endmodule
