module summ_chain #(parameter length = 8)(
    input start, clk,
    output [length-1:0] regs_out,
    output out, o1, o2, o3
);

wire out0;
full_sum summ_inst0(
    .a(1'b1),
    .b(1'b0),
    .cin(start),
    .clk(clk),
    .cout(out0),
    .reg_out(regs_out[0])
);/*synthesis syn_noprune = 1 */

wire out1;
full_sum summ_inst1(
    .a(1'b1),
    .b(1'b1),
    .cin(out0),
    .clk(clk),
    .cout(out1),
    .reg_out(regs_out[1])
);/*synthesis syn_noprune = 1 */

wire out2;
full_sum summ_inst2(
    .a(1'b1),
    .b(1'b1),
    .cin(out1),
    .clk(clk),
    .cout(out),
    .reg_out(regs_out[2])
);/*synthesis syn_noprune = 1 */
assign o0 = out0;
assign o1 = out1;


endmodule