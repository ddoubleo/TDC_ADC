module LUT_test(
    output reg_out, delay_out
);
wire a, b, c, alu_out;
wire clk;

assign a = 1;
assign b = 0;
assign c = 1;


Gowin_OSC osc_test(
    .oscout(clk) //output oscout
);

//1 bit ALU 
LUT3 test_lut1(
    .I0(a),
    .I1(b),
    .I2(c),
    .F(alu_out)
);//goes to reg

DFF test_reg(
    .D(alu_out),
    .CLK(clk),
    .Q(reg_out)
);//counts delay

//1 bit ALU
LUT3 test_lut2(
    .I0(a),
    .I1(b),
    .I2(alu_out),
    .F(delay_out)
);//propagates delay


defparam test_lut1.INIT=8'hE0;
defparam test_lut2.INIT=8'hE0;


endmodule 