module therm2bit_count_v1 #(parameter N = 255) (
    input clk,
    //input [N-1:0] regs_in,
    output [2:0] bin_code
);

reg [N-1:0] regs_in = 7'b1111111;
wire mux0_out,mux1_out,mux2_out;

MUX2 inst0 (
 .I0(regs_in[0]),
 .I1(regs_in[N/2 + 1]),
 .S0(regs_in[3]),
 .O(mux0_out)
);

MUX2 inst1 (
 .I0(regs_in[1]),
 .I1(regs_in[]),
 .S0(regs_in[3]),
 .O(mux1_out)
);

MUX2 inst2 (
 .I0(regs_in[2]),
 .I1(regs_in[6]),
 .S0(regs_in[3]),
 .O(mux2_out)
);

LUT3 lut_0(
    .I0(mux0_out),
    .I1(mux1_out),
    .I2(mux2_out),
    .F(bin_code[0])
);

LUT3 lut_1(
    .I0(mux0_out),
    .I1(mux1_out),
    .I2(mux2_out),
    .F(bin_code[1])
);


defparam lut_0.INIT=8'b10001000;
defparam lut_1.INIT=8'b10000010;

assign bin_code[2] = regs_in[3];

endmodule