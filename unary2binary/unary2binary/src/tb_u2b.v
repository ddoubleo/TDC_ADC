`timescale 1 ns / 1 ns
module tb_u2b ();

reg clock;
reg [254:0] unary;
wire [7:0] binary;

unary2binary u2b_inst(
    .unaryb(unary),
    .binary(binary)
);

initial begin
    clock = 1'b0;
    unary = 255'd0;
    #100
    unary = 255'd1;
    #100
    unary = 255'd3;
    #100
    unary = 255'd1023;
    #500
    $stop;
end


always #10 clock = ~clock;  

endmodule