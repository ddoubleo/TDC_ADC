module therm2bit_counter #(parameter N = 255) (
	input clk,
	input [N-1:0] regs_in,
	output reg [log2(N)-1:0] bin_code
);

integer i;

function integer log2;
	input integer in_depth;
		begin for(log2=0; in_depth > 0; log2=log2+1)
			in_depth = in_depth >> 1;
		end
endfunction

wire [N/2-1:0] mux_out_line0;
wire [N/4-1:0] mux_out_line1;
wire [N/8-1:0] mux_out_line2;
wire [N/16-1:0] mux_out_line3;

reg [N/2-1:0] reg_out_line0;
reg [N/4-1:0] reg_out_line1;
reg [N/8-1:0] reg_out_line2;
reg [N/16-1:0] reg_out_line3;

always @(posedge clk) begin 
	reg_out_line0 <= mux_out_line0;
	reg_out_line1 <= mux_out_line1;
	reg_out_line2 <= mux_out_line2;
	reg_out_line3 <= mux_out_line3;
end

always @(posedge clk) begin
	for(i=0; i < N/32; i=i+1) begin
		if(reg_out_line3[i] == 1'b1) bin_code <= bin_code + 1'b1;
	end
end

MUX2 line0_inst0 (
	.I0(regs_in[0]),
	.I1(regs_in[128]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[0])
);

MUX2 line0_inst1 (
	.I0(regs_in[1]),
	.I1(regs_in[129]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[1])
);

MUX2 line0_inst2 (
	.I0(regs_in[2]),
	.I1(regs_in[130]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[2])
);

MUX2 line0_inst3 (
	.I0(regs_in[3]),
	.I1(regs_in[131]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[3])
);

MUX2 line0_inst4 (
	.I0(regs_in[4]),
	.I1(regs_in[132]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[4])
);

MUX2 line0_inst5 (
	.I0(regs_in[5]),
	.I1(regs_in[133]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[5])
);

MUX2 line0_inst6 (
	.I0(regs_in[6]),
	.I1(regs_in[134]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[6])
);

MUX2 line0_inst7 (
	.I0(regs_in[7]),
	.I1(regs_in[135]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[7])
);

MUX2 line0_inst8 (
	.I0(regs_in[8]),
	.I1(regs_in[136]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[8])
);

MUX2 line0_inst9 (
	.I0(regs_in[9]),
	.I1(regs_in[137]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[9])
);

MUX2 line0_inst10 (
	.I0(regs_in[10]),
	.I1(regs_in[138]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[10])
);

MUX2 line0_inst11 (
	.I0(regs_in[11]),
	.I1(regs_in[139]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[11])
);

MUX2 line0_inst12 (
	.I0(regs_in[12]),
	.I1(regs_in[140]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[12])
);

MUX2 line0_inst13 (
	.I0(regs_in[13]),
	.I1(regs_in[141]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[13])
);

MUX2 line0_inst14 (
	.I0(regs_in[14]),
	.I1(regs_in[142]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[14])
);

MUX2 line0_inst15 (
	.I0(regs_in[15]),
	.I1(regs_in[143]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[15])
);

MUX2 line0_inst16 (
	.I0(regs_in[16]),
	.I1(regs_in[144]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[16])
);

MUX2 line0_inst17 (
	.I0(regs_in[17]),
	.I1(regs_in[145]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[17])
);

MUX2 line0_inst18 (
	.I0(regs_in[18]),
	.I1(regs_in[146]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[18])
);

MUX2 line0_inst19 (
	.I0(regs_in[19]),
	.I1(regs_in[147]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[19])
);

MUX2 line0_inst20 (
	.I0(regs_in[20]),
	.I1(regs_in[148]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[20])
);

MUX2 line0_inst21 (
	.I0(regs_in[21]),
	.I1(regs_in[149]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[21])
);

MUX2 line0_inst22 (
	.I0(regs_in[22]),
	.I1(regs_in[150]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[22])
);

MUX2 line0_inst23 (
	.I0(regs_in[23]),
	.I1(regs_in[151]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[23])
);

MUX2 line0_inst24 (
	.I0(regs_in[24]),
	.I1(regs_in[152]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[24])
);

MUX2 line0_inst25 (
	.I0(regs_in[25]),
	.I1(regs_in[153]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[25])
);

MUX2 line0_inst26 (
	.I0(regs_in[26]),
	.I1(regs_in[154]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[26])
);

MUX2 line0_inst27 (
	.I0(regs_in[27]),
	.I1(regs_in[155]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[27])
);

MUX2 line0_inst28 (
	.I0(regs_in[28]),
	.I1(regs_in[156]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[28])
);

MUX2 line0_inst29 (
	.I0(regs_in[29]),
	.I1(regs_in[157]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[29])
);

MUX2 line0_inst30 (
	.I0(regs_in[30]),
	.I1(regs_in[158]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[30])
);

MUX2 line0_inst31 (
	.I0(regs_in[31]),
	.I1(regs_in[159]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[31])
);

MUX2 line0_inst32 (
	.I0(regs_in[32]),
	.I1(regs_in[160]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[32])
);

MUX2 line0_inst33 (
	.I0(regs_in[33]),
	.I1(regs_in[161]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[33])
);

MUX2 line0_inst34 (
	.I0(regs_in[34]),
	.I1(regs_in[162]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[34])
);

MUX2 line0_inst35 (
	.I0(regs_in[35]),
	.I1(regs_in[163]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[35])
);

MUX2 line0_inst36 (
	.I0(regs_in[36]),
	.I1(regs_in[164]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[36])
);

MUX2 line0_inst37 (
	.I0(regs_in[37]),
	.I1(regs_in[165]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[37])
);

MUX2 line0_inst38 (
	.I0(regs_in[38]),
	.I1(regs_in[166]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[38])
);

MUX2 line0_inst39 (
	.I0(regs_in[39]),
	.I1(regs_in[167]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[39])
);

MUX2 line0_inst40 (
	.I0(regs_in[40]),
	.I1(regs_in[168]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[40])
);

MUX2 line0_inst41 (
	.I0(regs_in[41]),
	.I1(regs_in[169]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[41])
);

MUX2 line0_inst42 (
	.I0(regs_in[42]),
	.I1(regs_in[170]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[42])
);

MUX2 line0_inst43 (
	.I0(regs_in[43]),
	.I1(regs_in[171]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[43])
);

MUX2 line0_inst44 (
	.I0(regs_in[44]),
	.I1(regs_in[172]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[44])
);

MUX2 line0_inst45 (
	.I0(regs_in[45]),
	.I1(regs_in[173]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[45])
);

MUX2 line0_inst46 (
	.I0(regs_in[46]),
	.I1(regs_in[174]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[46])
);

MUX2 line0_inst47 (
	.I0(regs_in[47]),
	.I1(regs_in[175]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[47])
);

MUX2 line0_inst48 (
	.I0(regs_in[48]),
	.I1(regs_in[176]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[48])
);

MUX2 line0_inst49 (
	.I0(regs_in[49]),
	.I1(regs_in[177]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[49])
);

MUX2 line0_inst50 (
	.I0(regs_in[50]),
	.I1(regs_in[178]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[50])
);

MUX2 line0_inst51 (
	.I0(regs_in[51]),
	.I1(regs_in[179]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[51])
);

MUX2 line0_inst52 (
	.I0(regs_in[52]),
	.I1(regs_in[180]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[52])
);

MUX2 line0_inst53 (
	.I0(regs_in[53]),
	.I1(regs_in[181]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[53])
);

MUX2 line0_inst54 (
	.I0(regs_in[54]),
	.I1(regs_in[182]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[54])
);

MUX2 line0_inst55 (
	.I0(regs_in[55]),
	.I1(regs_in[183]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[55])
);

MUX2 line0_inst56 (
	.I0(regs_in[56]),
	.I1(regs_in[184]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[56])
);

MUX2 line0_inst57 (
	.I0(regs_in[57]),
	.I1(regs_in[185]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[57])
);

MUX2 line0_inst58 (
	.I0(regs_in[58]),
	.I1(regs_in[186]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[58])
);

MUX2 line0_inst59 (
	.I0(regs_in[59]),
	.I1(regs_in[187]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[59])
);

MUX2 line0_inst60 (
	.I0(regs_in[60]),
	.I1(regs_in[188]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[60])
);

MUX2 line0_inst61 (
	.I0(regs_in[61]),
	.I1(regs_in[189]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[61])
);

MUX2 line0_inst62 (
	.I0(regs_in[62]),
	.I1(regs_in[190]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[62])
);

MUX2 line0_inst63 (
	.I0(regs_in[63]),
	.I1(regs_in[191]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[63])
);

MUX2 line0_inst64 (
	.I0(regs_in[64]),
	.I1(regs_in[192]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[64])
);

MUX2 line0_inst65 (
	.I0(regs_in[65]),
	.I1(regs_in[193]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[65])
);

MUX2 line0_inst66 (
	.I0(regs_in[66]),
	.I1(regs_in[194]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[66])
);

MUX2 line0_inst67 (
	.I0(regs_in[67]),
	.I1(regs_in[195]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[67])
);

MUX2 line0_inst68 (
	.I0(regs_in[68]),
	.I1(regs_in[196]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[68])
);

MUX2 line0_inst69 (
	.I0(regs_in[69]),
	.I1(regs_in[197]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[69])
);

MUX2 line0_inst70 (
	.I0(regs_in[70]),
	.I1(regs_in[198]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[70])
);

MUX2 line0_inst71 (
	.I0(regs_in[71]),
	.I1(regs_in[199]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[71])
);

MUX2 line0_inst72 (
	.I0(regs_in[72]),
	.I1(regs_in[200]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[72])
);

MUX2 line0_inst73 (
	.I0(regs_in[73]),
	.I1(regs_in[201]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[73])
);

MUX2 line0_inst74 (
	.I0(regs_in[74]),
	.I1(regs_in[202]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[74])
);

MUX2 line0_inst75 (
	.I0(regs_in[75]),
	.I1(regs_in[203]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[75])
);

MUX2 line0_inst76 (
	.I0(regs_in[76]),
	.I1(regs_in[204]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[76])
);

MUX2 line0_inst77 (
	.I0(regs_in[77]),
	.I1(regs_in[205]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[77])
);

MUX2 line0_inst78 (
	.I0(regs_in[78]),
	.I1(regs_in[206]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[78])
);

MUX2 line0_inst79 (
	.I0(regs_in[79]),
	.I1(regs_in[207]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[79])
);

MUX2 line0_inst80 (
	.I0(regs_in[80]),
	.I1(regs_in[208]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[80])
);

MUX2 line0_inst81 (
	.I0(regs_in[81]),
	.I1(regs_in[209]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[81])
);

MUX2 line0_inst82 (
	.I0(regs_in[82]),
	.I1(regs_in[210]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[82])
);

MUX2 line0_inst83 (
	.I0(regs_in[83]),
	.I1(regs_in[211]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[83])
);

MUX2 line0_inst84 (
	.I0(regs_in[84]),
	.I1(regs_in[212]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[84])
);

MUX2 line0_inst85 (
	.I0(regs_in[85]),
	.I1(regs_in[213]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[85])
);

MUX2 line0_inst86 (
	.I0(regs_in[86]),
	.I1(regs_in[214]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[86])
);

MUX2 line0_inst87 (
	.I0(regs_in[87]),
	.I1(regs_in[215]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[87])
);

MUX2 line0_inst88 (
	.I0(regs_in[88]),
	.I1(regs_in[216]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[88])
);

MUX2 line0_inst89 (
	.I0(regs_in[89]),
	.I1(regs_in[217]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[89])
);

MUX2 line0_inst90 (
	.I0(regs_in[90]),
	.I1(regs_in[218]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[90])
);

MUX2 line0_inst91 (
	.I0(regs_in[91]),
	.I1(regs_in[219]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[91])
);

MUX2 line0_inst92 (
	.I0(regs_in[92]),
	.I1(regs_in[220]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[92])
);

MUX2 line0_inst93 (
	.I0(regs_in[93]),
	.I1(regs_in[221]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[93])
);

MUX2 line0_inst94 (
	.I0(regs_in[94]),
	.I1(regs_in[222]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[94])
);

MUX2 line0_inst95 (
	.I0(regs_in[95]),
	.I1(regs_in[223]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[95])
);

MUX2 line0_inst96 (
	.I0(regs_in[96]),
	.I1(regs_in[224]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[96])
);

MUX2 line0_inst97 (
	.I0(regs_in[97]),
	.I1(regs_in[225]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[97])
);

MUX2 line0_inst98 (
	.I0(regs_in[98]),
	.I1(regs_in[226]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[98])
);

MUX2 line0_inst99 (
	.I0(regs_in[99]),
	.I1(regs_in[227]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[99])
);

MUX2 line0_inst100 (
	.I0(regs_in[100]),
	.I1(regs_in[228]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[100])
);

MUX2 line0_inst101 (
	.I0(regs_in[101]),
	.I1(regs_in[229]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[101])
);

MUX2 line0_inst102 (
	.I0(regs_in[102]),
	.I1(regs_in[230]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[102])
);

MUX2 line0_inst103 (
	.I0(regs_in[103]),
	.I1(regs_in[231]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[103])
);

MUX2 line0_inst104 (
	.I0(regs_in[104]),
	.I1(regs_in[232]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[104])
);

MUX2 line0_inst105 (
	.I0(regs_in[105]),
	.I1(regs_in[233]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[105])
);

MUX2 line0_inst106 (
	.I0(regs_in[106]),
	.I1(regs_in[234]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[106])
);

MUX2 line0_inst107 (
	.I0(regs_in[107]),
	.I1(regs_in[235]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[107])
);

MUX2 line0_inst108 (
	.I0(regs_in[108]),
	.I1(regs_in[236]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[108])
);

MUX2 line0_inst109 (
	.I0(regs_in[109]),
	.I1(regs_in[237]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[109])
);

MUX2 line0_inst110 (
	.I0(regs_in[110]),
	.I1(regs_in[238]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[110])
);

MUX2 line0_inst111 (
	.I0(regs_in[111]),
	.I1(regs_in[239]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[111])
);

MUX2 line0_inst112 (
	.I0(regs_in[112]),
	.I1(regs_in[240]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[112])
);

MUX2 line0_inst113 (
	.I0(regs_in[113]),
	.I1(regs_in[241]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[113])
);

MUX2 line0_inst114 (
	.I0(regs_in[114]),
	.I1(regs_in[242]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[114])
);

MUX2 line0_inst115 (
	.I0(regs_in[115]),
	.I1(regs_in[243]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[115])
);

MUX2 line0_inst116 (
	.I0(regs_in[116]),
	.I1(regs_in[244]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[116])
);

MUX2 line0_inst117 (
	.I0(regs_in[117]),
	.I1(regs_in[245]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[117])
);

MUX2 line0_inst118 (
	.I0(regs_in[118]),
	.I1(regs_in[246]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[118])
);

MUX2 line0_inst119 (
	.I0(regs_in[119]),
	.I1(regs_in[247]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[119])
);

MUX2 line0_inst120 (
	.I0(regs_in[120]),
	.I1(regs_in[248]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[120])
);

MUX2 line0_inst121 (
	.I0(regs_in[121]),
	.I1(regs_in[249]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[121])
);

MUX2 line0_inst122 (
	.I0(regs_in[122]),
	.I1(regs_in[250]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[122])
);

MUX2 line0_inst123 (
	.I0(regs_in[123]),
	.I1(regs_in[251]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[123])
);

MUX2 line0_inst124 (
	.I0(regs_in[124]),
	.I1(regs_in[252]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[124])
);

MUX2 line0_inst125 (
	.I0(regs_in[125]),
	.I1(regs_in[253]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[125])
);

MUX2 line0_inst126 (
	.I0(regs_in[126]),
	.I1(regs_in[254]), 
	.S0(regs_in[127]),
   .O(mux_out_line0[126])
);

MUX2 line1_inst0 (
	.I0(reg_out_line0[0]),
	.I1(reg_out_line0[64]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[0])
);

MUX2 line1_inst1 (
	.I0(reg_out_line0[1]),
	.I1(reg_out_line0[65]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[1])
);

MUX2 line1_inst2 (
	.I0(reg_out_line0[2]),
	.I1(reg_out_line0[66]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[2])
);

MUX2 line1_inst3 (
	.I0(reg_out_line0[3]),
	.I1(reg_out_line0[67]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[3])
);

MUX2 line1_inst4 (
	.I0(reg_out_line0[4]),
	.I1(reg_out_line0[68]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[4])
);

MUX2 line1_inst5 (
	.I0(reg_out_line0[5]),
	.I1(reg_out_line0[69]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[5])
);

MUX2 line1_inst6 (
	.I0(reg_out_line0[6]),
	.I1(reg_out_line0[70]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[6])
);

MUX2 line1_inst7 (
	.I0(reg_out_line0[7]),
	.I1(reg_out_line0[71]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[7])
);

MUX2 line1_inst8 (
	.I0(reg_out_line0[8]),
	.I1(reg_out_line0[72]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[8])
);

MUX2 line1_inst9 (
	.I0(reg_out_line0[9]),
	.I1(reg_out_line0[73]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[9])
);

MUX2 line1_inst10 (
	.I0(reg_out_line0[10]),
	.I1(reg_out_line0[74]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[10])
);

MUX2 line1_inst11 (
	.I0(reg_out_line0[11]),
	.I1(reg_out_line0[75]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[11])
);

MUX2 line1_inst12 (
	.I0(reg_out_line0[12]),
	.I1(reg_out_line0[76]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[12])
);

MUX2 line1_inst13 (
	.I0(reg_out_line0[13]),
	.I1(reg_out_line0[77]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[13])
);

MUX2 line1_inst14 (
	.I0(reg_out_line0[14]),
	.I1(reg_out_line0[78]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[14])
);

MUX2 line1_inst15 (
	.I0(reg_out_line0[15]),
	.I1(reg_out_line0[79]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[15])
);

MUX2 line1_inst16 (
	.I0(reg_out_line0[16]),
	.I1(reg_out_line0[80]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[16])
);

MUX2 line1_inst17 (
	.I0(reg_out_line0[17]),
	.I1(reg_out_line0[81]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[17])
);

MUX2 line1_inst18 (
	.I0(reg_out_line0[18]),
	.I1(reg_out_line0[82]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[18])
);

MUX2 line1_inst19 (
	.I0(reg_out_line0[19]),
	.I1(reg_out_line0[83]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[19])
);

MUX2 line1_inst20 (
	.I0(reg_out_line0[20]),
	.I1(reg_out_line0[84]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[20])
);

MUX2 line1_inst21 (
	.I0(reg_out_line0[21]),
	.I1(reg_out_line0[85]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[21])
);

MUX2 line1_inst22 (
	.I0(reg_out_line0[22]),
	.I1(reg_out_line0[86]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[22])
);

MUX2 line1_inst23 (
	.I0(reg_out_line0[23]),
	.I1(reg_out_line0[87]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[23])
);

MUX2 line1_inst24 (
	.I0(reg_out_line0[24]),
	.I1(reg_out_line0[88]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[24])
);

MUX2 line1_inst25 (
	.I0(reg_out_line0[25]),
	.I1(reg_out_line0[89]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[25])
);

MUX2 line1_inst26 (
	.I0(reg_out_line0[26]),
	.I1(reg_out_line0[90]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[26])
);

MUX2 line1_inst27 (
	.I0(reg_out_line0[27]),
	.I1(reg_out_line0[91]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[27])
);

MUX2 line1_inst28 (
	.I0(reg_out_line0[28]),
	.I1(reg_out_line0[92]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[28])
);

MUX2 line1_inst29 (
	.I0(reg_out_line0[29]),
	.I1(reg_out_line0[93]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[29])
);

MUX2 line1_inst30 (
	.I0(reg_out_line0[30]),
	.I1(reg_out_line0[94]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[30])
);

MUX2 line1_inst31 (
	.I0(reg_out_line0[31]),
	.I1(reg_out_line0[95]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[31])
);

MUX2 line1_inst32 (
	.I0(reg_out_line0[32]),
	.I1(reg_out_line0[96]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[32])
);

MUX2 line1_inst33 (
	.I0(reg_out_line0[33]),
	.I1(reg_out_line0[97]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[33])
);

MUX2 line1_inst34 (
	.I0(reg_out_line0[34]),
	.I1(reg_out_line0[98]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[34])
);

MUX2 line1_inst35 (
	.I0(reg_out_line0[35]),
	.I1(reg_out_line0[99]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[35])
);

MUX2 line1_inst36 (
	.I0(reg_out_line0[36]),
	.I1(reg_out_line0[100]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[36])
);

MUX2 line1_inst37 (
	.I0(reg_out_line0[37]),
	.I1(reg_out_line0[101]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[37])
);

MUX2 line1_inst38 (
	.I0(reg_out_line0[38]),
	.I1(reg_out_line0[102]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[38])
);

MUX2 line1_inst39 (
	.I0(reg_out_line0[39]),
	.I1(reg_out_line0[103]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[39])
);

MUX2 line1_inst40 (
	.I0(reg_out_line0[40]),
	.I1(reg_out_line0[104]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[40])
);

MUX2 line1_inst41 (
	.I0(reg_out_line0[41]),
	.I1(reg_out_line0[105]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[41])
);

MUX2 line1_inst42 (
	.I0(reg_out_line0[42]),
	.I1(reg_out_line0[106]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[42])
);

MUX2 line1_inst43 (
	.I0(reg_out_line0[43]),
	.I1(reg_out_line0[107]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[43])
);

MUX2 line1_inst44 (
	.I0(reg_out_line0[44]),
	.I1(reg_out_line0[108]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[44])
);

MUX2 line1_inst45 (
	.I0(reg_out_line0[45]),
	.I1(reg_out_line0[109]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[45])
);

MUX2 line1_inst46 (
	.I0(reg_out_line0[46]),
	.I1(reg_out_line0[110]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[46])
);

MUX2 line1_inst47 (
	.I0(reg_out_line0[47]),
	.I1(reg_out_line0[111]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[47])
);

MUX2 line1_inst48 (
	.I0(reg_out_line0[48]),
	.I1(reg_out_line0[112]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[48])
);

MUX2 line1_inst49 (
	.I0(reg_out_line0[49]),
	.I1(reg_out_line0[113]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[49])
);

MUX2 line1_inst50 (
	.I0(reg_out_line0[50]),
	.I1(reg_out_line0[114]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[50])
);

MUX2 line1_inst51 (
	.I0(reg_out_line0[51]),
	.I1(reg_out_line0[115]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[51])
);

MUX2 line1_inst52 (
	.I0(reg_out_line0[52]),
	.I1(reg_out_line0[116]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[52])
);

MUX2 line1_inst53 (
	.I0(reg_out_line0[53]),
	.I1(reg_out_line0[117]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[53])
);

MUX2 line1_inst54 (
	.I0(reg_out_line0[54]),
	.I1(reg_out_line0[118]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[54])
);

MUX2 line1_inst55 (
	.I0(reg_out_line0[55]),
	.I1(reg_out_line0[119]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[55])
);

MUX2 line1_inst56 (
	.I0(reg_out_line0[56]),
	.I1(reg_out_line0[120]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[56])
);

MUX2 line1_inst57 (
	.I0(reg_out_line0[57]),
	.I1(reg_out_line0[121]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[57])
);

MUX2 line1_inst58 (
	.I0(reg_out_line0[58]),
	.I1(reg_out_line0[122]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[58])
);

MUX2 line1_inst59 (
	.I0(reg_out_line0[59]),
	.I1(reg_out_line0[123]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[59])
);

MUX2 line1_inst60 (
	.I0(reg_out_line0[60]),
	.I1(reg_out_line0[124]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[60])
);

MUX2 line1_inst61 (
	.I0(reg_out_line0[61]),
	.I1(reg_out_line0[125]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[61])
);

MUX2 line1_inst62 (
	.I0(reg_out_line0[62]),
	.I1(reg_out_line0[126]), 
	.S0(reg_out_line0[63]),
	.O(mux_out_line1[62])
);

MUX2 line2_inst0 (
	.I0(reg_out_line1[0]),
	.I1(reg_out_line1[32]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[0])
);

MUX2 line2_inst1 (
	.I0(reg_out_line1[1]),
	.I1(reg_out_line1[33]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[1])
);

MUX2 line2_inst2 (
	.I0(reg_out_line1[2]),
	.I1(reg_out_line1[34]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[2])
);

MUX2 line2_inst3 (
	.I0(reg_out_line1[3]),
	.I1(reg_out_line1[35]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[3])
);

MUX2 line2_inst4 (
	.I0(reg_out_line1[4]),
	.I1(reg_out_line1[36]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[4])
);

MUX2 line2_inst5 (
	.I0(reg_out_line1[5]),
	.I1(reg_out_line1[37]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[5])
);

MUX2 line2_inst6 (
	.I0(reg_out_line1[6]),
	.I1(reg_out_line1[38]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[6])
);

MUX2 line2_inst7 (
	.I0(reg_out_line1[7]),
	.I1(reg_out_line1[39]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[7])
);

MUX2 line2_inst8 (
	.I0(reg_out_line1[8]),
	.I1(reg_out_line1[40]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[8])
);

MUX2 line2_inst9 (
	.I0(reg_out_line1[9]),
	.I1(reg_out_line1[41]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[9])
);

MUX2 line2_inst10 (
	.I0(reg_out_line1[10]),
	.I1(reg_out_line1[42]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[10])
);

MUX2 line2_inst11 (
	.I0(reg_out_line1[11]),
	.I1(reg_out_line1[43]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[11])
);

MUX2 line2_inst12 (
	.I0(reg_out_line1[12]),
	.I1(reg_out_line1[44]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[12])
);

MUX2 line2_inst13 (
	.I0(reg_out_line1[13]),
	.I1(reg_out_line1[45]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[13])
);

MUX2 line2_inst14 (
	.I0(reg_out_line1[14]),
	.I1(reg_out_line1[46]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[14])
);

MUX2 line2_inst15 (
	.I0(reg_out_line1[15]),
	.I1(reg_out_line1[47]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[15])
);

MUX2 line2_inst16 (
	.I0(reg_out_line1[16]),
	.I1(reg_out_line1[48]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[16])
);

MUX2 line2_inst17 (
	.I0(reg_out_line1[17]),
	.I1(reg_out_line1[49]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[17])
);

MUX2 line2_inst18 (
	.I0(reg_out_line1[18]),
	.I1(reg_out_line1[50]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[18])
);

MUX2 line2_inst19 (
	.I0(reg_out_line1[19]),
	.I1(reg_out_line1[51]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[19])
);

MUX2 line2_inst20 (
	.I0(reg_out_line1[20]),
	.I1(reg_out_line1[52]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[20])
);

MUX2 line2_inst21 (
	.I0(reg_out_line1[21]),
	.I1(reg_out_line1[53]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[21])
);

MUX2 line2_inst22 (
	.I0(reg_out_line1[22]),
	.I1(reg_out_line1[54]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[22])
);

MUX2 line2_inst23 (
	.I0(reg_out_line1[23]),
	.I1(reg_out_line1[55]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[23])
);

MUX2 line2_inst24 (
	.I0(reg_out_line1[24]),
	.I1(reg_out_line1[56]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[24])
);

MUX2 line2_inst25 (
	.I0(reg_out_line1[25]),
	.I1(reg_out_line1[57]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[25])
);

MUX2 line2_inst26 (
	.I0(reg_out_line1[26]),
	.I1(reg_out_line1[58]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[26])
);

MUX2 line2_inst27 (
	.I0(reg_out_line1[27]),
	.I1(reg_out_line1[59]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[27])
);

MUX2 line2_inst28 (
	.I0(reg_out_line1[28]),
	.I1(reg_out_line1[60]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[28])
);

MUX2 line2_inst29 (
	.I0(reg_out_line1[29]),
	.I1(reg_out_line1[61]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[29])
);

MUX2 line2_inst30 (
	.I0(reg_out_line1[30]),
	.I1(reg_out_line1[62]), 
	.S0(reg_out_line1[31]),
	.O(mux_out_line2[30])
);

MUX2 line3_inst0 (
	.I0(reg_out_line2[0]),
	.I1(reg_out_line2[16]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[0])
);

MUX2 line3_inst1 (
	.I0(reg_out_line2[1]),
	.I1(reg_out_line2[17]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[1])
);

MUX2 line3_inst2 (
	.I0(reg_out_line2[2]),
	.I1(reg_out_line2[18]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[2])
);

MUX2 line3_inst3 (
	.I0(reg_out_line2[3]),
	.I1(reg_out_line2[19]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[3])
);

MUX2 line3_inst4 (
	.I0(reg_out_line2[4]),
	.I1(reg_out_line2[20]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[4])
);

MUX2 line3_inst5 (
	.I0(reg_out_line2[5]),
	.I1(reg_out_line2[21]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[5])
);

MUX2 line3_inst6 (
	.I0(reg_out_line2[6]),
	.I1(reg_out_line2[22]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[6])
);

MUX2 line3_inst7 (
	.I0(reg_out_line2[7]),
	.I1(reg_out_line2[23]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[7])
);

MUX2 line3_inst8 (
	.I0(reg_out_line2[8]),
	.I1(reg_out_line2[24]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[8])
);

MUX2 line3_inst9 (
	.I0(reg_out_line2[9]),
	.I1(reg_out_line2[25]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[9])
);

MUX2 line3_inst10 (
	.I0(reg_out_line2[10]),
	.I1(reg_out_line2[26]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[10])
);

MUX2 line3_inst11 (
	.I0(reg_out_line2[11]),
	.I1(reg_out_line2[27]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[11])
);

MUX2 line3_inst12 (
	.I0(reg_out_line2[12]),
	.I1(reg_out_line2[28]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[12])
);

MUX2 line3_inst13 (
	.I0(reg_out_line2[13]),
	.I1(reg_out_line2[29]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[13])
);

MUX2 line3_inst14 (
	.I0(reg_out_line2[14]),
	.I1(reg_out_line2[30]), 
	.S0(reg_out_line2[15]),
	.O(mux_out_line3[14])
);

endmodule 
