module unary2binary #(parameter unary_width = 255) (
    input [unary_width-1:0] unaryb,
    output reg [7:0] binary
);

reg [unary_width-1:0] unary;
reg [7:0] bin1, bin2;
integer i, j, k;

always @(unaryb) begin
    for (k=0; k<=unary_width-3; k=k+1)
        unary[k] <= unaryb[k] && ~unaryb[k+1] && ~unaryb[k+2];
        unary[unary_width-2] <= unaryb[unary_width-2] && ~unaryb [unary_width-1];
        unary[unary_width-1] <= unaryb[unary_width-1];
end

always @(unary) begin
    bin1=0;
    for (i=1; i<=128; i=i+1)
        if (unary[i-1]==1'b1) bin1 = i;
end

always @(unary) begin 
    bin2=0;
    for (j=1; j<=127; j=j+1)
        if (unary[j+127] == 1'b1) bin2 = j;
end

always @ (bin1 or bin2)
if (bin2>0)
    binary = bin2 + 128;
else binary = bin1;

endmodule
