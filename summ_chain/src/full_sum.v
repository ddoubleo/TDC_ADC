module full_sum(
    input a, b, cin, clk,
    output s, cout,
    output reg reg_out
);

assign s = cin ^ (a ^ b);
assign cout = (a & b) | (cin & (a ^ b));

always @(posedge clk) begin
    reg_out <= cout;
end 
    
endmodule