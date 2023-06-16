module del_elem(
    input clk,
    input delay_in,
    input reset,
    output delay_out,
    output reg_out
);

wire a, b, start, alu_out /* synthesis syn_keep=1 */;

assign a = 0;
assign b = 1;
assign delay_out = alu_out;


LUT3 lut_1(
    .I0(a),
    .I1(b),
    .I2(delay_in),
    .F(alu_out)
);

DFF reg_1(
    .D(alu_out),
    .CLK(clk),
    //.RESET(reset),
    .Q(reg_out)
)/*synthesis syn_noprune=1*/;

defparam lut_1.INIT=8'hE0;
defparam reg_1.INIT=1'b0;

endmodule