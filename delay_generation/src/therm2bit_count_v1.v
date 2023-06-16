`timescale 1 ns / 1 ns
module therm2bit_count_v1 #(parameter N = 7) (
    input clk,
    //input [N-1:0] regs_in,
    output [2:0] bin_code
);

reg [6:0] regs_in = 7'b1111111;
reg [2:0] pipe1;
wire [2:0] pwire;

always @(posedge clk) begin
    pipe1 <= pwire;
end

MUX2 inst0 (
    .I0(regs_in[0]),
    .I1(regs_in[4]),
    .S0(regs_in[3]),
    .O(pwire[0])
);

MUX2 inst1 (
    .I0(regs_in[1]),
    .I1(regs_in[5]),
    .S0(regs_in[3]),
    .O(pwire[1])
);

MUX2 inst2 (
    .I0(regs_in[2]),
    .I1(regs_in[6]),
    .S0(regs_in[3]),
    .O(pwire[2])
);

LUT3 lut_0(
    .I0(pipe1[2]),
    .I1(pipe1[1]),
    .I2(pipe1[0]),
    .F(bin_code[0])
);

LUT3 lut_1(
    .I0(pipe1[2]),
    .I1(pipe1[1]),
    .I2(pipe1[0]),
    .F(bin_code[1])
);



defparam lut_0.INIT=8'b10010000;
defparam lut_1.INIT=8'b11000000;


assign bin_code[2] = regs_in[3];

endmodule