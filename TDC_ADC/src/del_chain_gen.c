#include <stdio.h>

int  main(){
	FILE *fp;

	int N = 255;

	fp = fopen("TDC.v", "w");

	//module declaration
	fprintf(fp, "module TDC ( \n input clk, \n input start, \n input reset, \n output [%d:0] regs_out\n);\n\n", N - 1);
	//wires out
	for(int i = 0; i < N; i++){
		fprintf(fp, "wire out%d \/\* synthesis syn_keep=1 \*\/ ;\n", i);
	}
	fprintf(fp, "\n");
	
	fprintf(fp, "del_elem inst0(\n");
	fprintf(fp, ".clk(clk),\n");
	fprintf(fp, ".delay_in(start),\n");
	fprintf(fp, ".reset(reset),\n");
	fprintf(fp, ".delay_out(out0),\n");
	fprintf(fp, ".reg_out(regs_out[0])\n");
	fprintf(fp, ") \/\* synthesis syn_noprune=1 \*\/;\n\n");
	
	for(int i = 1; i < N; i++){
	    	fprintf(fp, "del_elem inst%d(\n", i);
	    	fprintf(fp, ".clk(clk),\n");
	    	fprintf(fp, ".delay_in(out%d),\n", i - 1);
			fprintf(fp, ".reset(reset),\n");
			fprintf(fp, ".delay_out(out%d),\n", i);
			fprintf(fp, ".reg_out(regs_out[%d])\n", i);
			fprintf(fp, ") \/\* synthesis syn_noprune=1 \*\/;\n\n");
	}
	fprintf(fp, "endmodule\n");
	fclose(fp);
	return 0;
}
 
