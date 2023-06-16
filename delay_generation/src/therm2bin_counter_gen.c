#include <math.h>
#include <stdio.h>

int main(int argc, char* argv[]){
	FILE *fp;
	int N = atoi(argv[1]);
	fp = fopen("therm2bin_counter_v2.v","w");
	
	//module declaration
	fprintf(fp, "module therm2bit_counter #(parameter N = %d) (\n", N);
	fprintf(fp, " input clk,\n input [N-1:0] regs_in,\n output[log2(N)-1:0])\n);\n\n");
	//log2 function declaration
	fprintf(fp, "function integer log2;\n");
	fprintf(fp, "	input integer in_depth;\n");
	fprintf(fp, "		begin for(log2=0; in_depth > 0; log2=log2+1)\n");
	fprintf(fp, "			in_depth = in_depth >> 1;\n");
	fprintf(fp, "		end\n");
	fprintf(fp, "endfunction\n\n");

	fprintf(fp, "wire [N/2-1:0] mux_out_line0;\n");
	fprintf(fp, "wire [N/4-1:0] mux_out_line1;\n");
	fprintf(fp, "wire [N/8-1:0] mux_out_line2;\n");
	//pipeline regs
	fprintf(fp, "reg [N/2-1:0] reg_out_line0;\n");
	fprintf(fp, "reg [N/4-1:0] reg_out_line1;\n");
	fprintf(fp, "reg [N/8-1:0] reg_out_line2;\n");
	fprintf(fp, "\n");
	fprintf(fp, "always @(posedge clk) begin \n");
	fprintf(fp, "	reg_out_line0 <= mux_out_line0;\n");
	fprintf(fp, "end\n\n");
	//mux declaration
	//line 0
	for(int i = 0; i < N/2; i++){
		fprintf(fp, "MUX line0_inst%d (\n	.I0(regs_in[%d]),\n", i, i);
		fprintf(fp, "	.I1(regs_in[%d]), \n	.S0(regs_in[%d]),\n", N/2 + 1 + i, N/2);
		fprintf(fp, "   .O(mux_out_line0[%d])\n);\n\n", i);
	}
	//line 1
	for(int i = 0; i < N/4; i++){
		fprintf(fp, "MUX line1_inst%d (\n	.I0(regs_in[%d]),\n", i, i);
		fprintf(fp, "	.I1(regs_in[%d]), \n	.S0(regs_in[%d]),\n", N/4 + 1 + i, N/4);
		fprintf(fp, "	.O(mux_out_line1[%d])\n);\n\n", i);
	}
	//line 2
	for(int i = 0; i < N/8; i++){
		fprintf(fp, "MUX line2_inst%d (\n	.I0(regs_in[%d]),\n", i, i);
		fprintf(fp, "	.I1(regs_in[%d]), \n	.S0(regs_in[%d]),\n", N/8 + 1 + i, N/8);
		fprintf(fp, "	.O(mux_out_line2[%d])\n);\n\n", i);
	}
	fprintf(fp, "endmodule \n");
	fclose(fp);
	return 0;
}
