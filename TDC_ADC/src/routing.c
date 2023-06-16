#include <stdio.h>

int main (){
	FILE *fp;
	
	int N = 255;
	int R = 2;
	int C = 2;
	int tmp = 0;
	int del_in_CLU = 0;
	
	const char *io_port = "IO_PORT";
	const char *ins_loc = "INS_LOC";
	const char *io_loc  = "IO_LOC";

	fp = fopen("routing.cst", "w");

	fprintf(fp, "%s \"clk\" 6\n", io_loc);
	fprintf(fp, "%s \"clk\" PULL_MODE=UP;\n", io_port);
	for(int i=0; i < N; i++){
		if(C == 24) { 
			R++;
			C = 2; }
		if(del_in_CLU == 3) { del_in_CLU = 0; }
		//fprintf(fp, "%s \"TDC_inst/inst%d/reg_1\" R%dC%d[%d][A]\;\n", ins_loc, i, R, C, del_in_CLU);
		fprintf(fp, "%s \"TDC_inst/inst%d/lut_1\" R%dC%d[%d][A]\;\n", ins_loc, i, R, C, del_in_CLU);
		tmp++;
		i++;
		if(i == N) {
			break;
		}
		//fprintf(fp, "%s \"TDC_inst/inst%d/reg_1\" R%dC%d[%d][B]\;\n", ins_loc, i, R, C, del_in_CLU);
		fprintf(fp, "%s \"TDC_inst/inst%d/lut_1\" R%dC%d[%d][B]\;\n", ins_loc, i, R, C, del_in_CLU);
		if(tmp == 3) {
			 C++;
			 tmp = 0;
		 }
		del_in_CLU++;
	}
	  
	fclose(fp);
	return 0;
}
