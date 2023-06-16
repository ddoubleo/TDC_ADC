module TDC_top(
    input clk,
    input start,
    output out,
    output [7:0] out_bin
);

wire [254:0] regs_out /* synthesis syn_keep=1*/; 
//wire start;
//assign start = 255'd1023;

TDC TDC_inst(
    .clk(clk),
    .start(start),
    .regs_out(regs_out),
    .out(out)
);

unary2binary u2b_inst(
    .unaryb(regs_out),
    .binary(out_bin)
);

endmodule