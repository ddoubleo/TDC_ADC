module gw_gao(
    \out_bin[7] ,
    \out_bin[6] ,
    \out_bin[5] ,
    \out_bin[4] ,
    \out_bin[3] ,
    \out_bin[2] ,
    \out_bin[1] ,
    \out_bin[0] ,
    \regs_out[254] ,
    \regs_out[253] ,
    \regs_out[252] ,
    \regs_out[251] ,
    \regs_out[250] ,
    \regs_out[249] ,
    \regs_out[248] ,
    \regs_out[247] ,
    \regs_out[246] ,
    \regs_out[245] ,
    \regs_out[244] ,
    \regs_out[243] ,
    \regs_out[242] ,
    \regs_out[241] ,
    \regs_out[240] ,
    \regs_out[239] ,
    \regs_out[238] ,
    \regs_out[237] ,
    \regs_out[236] ,
    \regs_out[235] ,
    \regs_out[234] ,
    \regs_out[233] ,
    \regs_out[232] ,
    \regs_out[231] ,
    \regs_out[230] ,
    \regs_out[229] ,
    \regs_out[228] ,
    \regs_out[227] ,
    \regs_out[226] ,
    \regs_out[225] ,
    \regs_out[224] ,
    \regs_out[223] ,
    \regs_out[222] ,
    \regs_out[221] ,
    \regs_out[220] ,
    \regs_out[219] ,
    \regs_out[218] ,
    \regs_out[217] ,
    \regs_out[216] ,
    \regs_out[215] ,
    \regs_out[214] ,
    \regs_out[213] ,
    \regs_out[212] ,
    \regs_out[211] ,
    \regs_out[210] ,
    \regs_out[209] ,
    \regs_out[208] ,
    \regs_out[207] ,
    \regs_out[206] ,
    \regs_out[205] ,
    \regs_out[204] ,
    \regs_out[203] ,
    \regs_out[202] ,
    \regs_out[201] ,
    \regs_out[200] ,
    \regs_out[199] ,
    \regs_out[198] ,
    \regs_out[197] ,
    \regs_out[196] ,
    \regs_out[195] ,
    \regs_out[194] ,
    \regs_out[193] ,
    \regs_out[192] ,
    \regs_out[191] ,
    \regs_out[190] ,
    \regs_out[189] ,
    \regs_out[188] ,
    \regs_out[187] ,
    \regs_out[186] ,
    \regs_out[185] ,
    \regs_out[184] ,
    \regs_out[183] ,
    \regs_out[182] ,
    \regs_out[181] ,
    \regs_out[180] ,
    \regs_out[179] ,
    \regs_out[178] ,
    \regs_out[177] ,
    \regs_out[176] ,
    \regs_out[175] ,
    \regs_out[174] ,
    \regs_out[173] ,
    \regs_out[172] ,
    \regs_out[171] ,
    \regs_out[170] ,
    \regs_out[169] ,
    \regs_out[168] ,
    \regs_out[167] ,
    \regs_out[166] ,
    \regs_out[165] ,
    \regs_out[164] ,
    \regs_out[163] ,
    \regs_out[162] ,
    \regs_out[161] ,
    \regs_out[160] ,
    \regs_out[159] ,
    \regs_out[158] ,
    \regs_out[157] ,
    \regs_out[156] ,
    \regs_out[155] ,
    \regs_out[154] ,
    \regs_out[153] ,
    \regs_out[152] ,
    \regs_out[151] ,
    \regs_out[150] ,
    \regs_out[149] ,
    \regs_out[148] ,
    \regs_out[147] ,
    \regs_out[146] ,
    \regs_out[145] ,
    \regs_out[144] ,
    \regs_out[143] ,
    \regs_out[142] ,
    \regs_out[141] ,
    \regs_out[140] ,
    \regs_out[139] ,
    \regs_out[138] ,
    \regs_out[137] ,
    \regs_out[136] ,
    \regs_out[135] ,
    \regs_out[134] ,
    \regs_out[133] ,
    \regs_out[132] ,
    \regs_out[131] ,
    \regs_out[130] ,
    \regs_out[129] ,
    \regs_out[128] ,
    \regs_out[127] ,
    \regs_out[126] ,
    \regs_out[125] ,
    \regs_out[124] ,
    \regs_out[123] ,
    \regs_out[122] ,
    \regs_out[121] ,
    \regs_out[120] ,
    \regs_out[119] ,
    \regs_out[118] ,
    \regs_out[117] ,
    \regs_out[116] ,
    \regs_out[115] ,
    \regs_out[114] ,
    \regs_out[113] ,
    \regs_out[112] ,
    \regs_out[111] ,
    \regs_out[110] ,
    \regs_out[109] ,
    \regs_out[108] ,
    \regs_out[107] ,
    \regs_out[106] ,
    \regs_out[105] ,
    \regs_out[104] ,
    \regs_out[103] ,
    \regs_out[102] ,
    \regs_out[101] ,
    \regs_out[100] ,
    \regs_out[99] ,
    \regs_out[98] ,
    \regs_out[97] ,
    \regs_out[96] ,
    \regs_out[95] ,
    \regs_out[94] ,
    \regs_out[93] ,
    \regs_out[92] ,
    \regs_out[91] ,
    \regs_out[90] ,
    \regs_out[89] ,
    \regs_out[88] ,
    \regs_out[87] ,
    \regs_out[86] ,
    \regs_out[85] ,
    \regs_out[84] ,
    \regs_out[83] ,
    \regs_out[82] ,
    \regs_out[81] ,
    \regs_out[80] ,
    \regs_out[79] ,
    \regs_out[78] ,
    \regs_out[77] ,
    \regs_out[76] ,
    \regs_out[75] ,
    \regs_out[74] ,
    \regs_out[73] ,
    \regs_out[72] ,
    \regs_out[71] ,
    \regs_out[70] ,
    \regs_out[69] ,
    \regs_out[68] ,
    \regs_out[67] ,
    \regs_out[66] ,
    \regs_out[65] ,
    \regs_out[64] ,
    \regs_out[63] ,
    \regs_out[62] ,
    \regs_out[61] ,
    \regs_out[60] ,
    \regs_out[59] ,
    \regs_out[58] ,
    \regs_out[57] ,
    \regs_out[56] ,
    \regs_out[55] ,
    \regs_out[54] ,
    \regs_out[53] ,
    \regs_out[52] ,
    \regs_out[51] ,
    \regs_out[50] ,
    \regs_out[49] ,
    \regs_out[48] ,
    \regs_out[47] ,
    \regs_out[46] ,
    \regs_out[45] ,
    \regs_out[44] ,
    \regs_out[43] ,
    \regs_out[42] ,
    \regs_out[41] ,
    \regs_out[40] ,
    \regs_out[39] ,
    \regs_out[38] ,
    \regs_out[37] ,
    \regs_out[36] ,
    \regs_out[35] ,
    \regs_out[34] ,
    \regs_out[33] ,
    \regs_out[32] ,
    \regs_out[31] ,
    \regs_out[30] ,
    \regs_out[29] ,
    \regs_out[28] ,
    \regs_out[27] ,
    \regs_out[26] ,
    \regs_out[25] ,
    \regs_out[24] ,
    \regs_out[23] ,
    \regs_out[22] ,
    \regs_out[21] ,
    \regs_out[20] ,
    \regs_out[19] ,
    \regs_out[18] ,
    \regs_out[17] ,
    \regs_out[16] ,
    \regs_out[15] ,
    \regs_out[14] ,
    \regs_out[13] ,
    \regs_out[12] ,
    \regs_out[11] ,
    \regs_out[10] ,
    \regs_out[9] ,
    \regs_out[8] ,
    \regs_out[7] ,
    \regs_out[6] ,
    \regs_out[5] ,
    \regs_out[4] ,
    \regs_out[3] ,
    \regs_out[2] ,
    \regs_out[1] ,
    \regs_out[0] ,
    start,
    clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \out_bin[7] ;
input \out_bin[6] ;
input \out_bin[5] ;
input \out_bin[4] ;
input \out_bin[3] ;
input \out_bin[2] ;
input \out_bin[1] ;
input \out_bin[0] ;
input \regs_out[254] ;
input \regs_out[253] ;
input \regs_out[252] ;
input \regs_out[251] ;
input \regs_out[250] ;
input \regs_out[249] ;
input \regs_out[248] ;
input \regs_out[247] ;
input \regs_out[246] ;
input \regs_out[245] ;
input \regs_out[244] ;
input \regs_out[243] ;
input \regs_out[242] ;
input \regs_out[241] ;
input \regs_out[240] ;
input \regs_out[239] ;
input \regs_out[238] ;
input \regs_out[237] ;
input \regs_out[236] ;
input \regs_out[235] ;
input \regs_out[234] ;
input \regs_out[233] ;
input \regs_out[232] ;
input \regs_out[231] ;
input \regs_out[230] ;
input \regs_out[229] ;
input \regs_out[228] ;
input \regs_out[227] ;
input \regs_out[226] ;
input \regs_out[225] ;
input \regs_out[224] ;
input \regs_out[223] ;
input \regs_out[222] ;
input \regs_out[221] ;
input \regs_out[220] ;
input \regs_out[219] ;
input \regs_out[218] ;
input \regs_out[217] ;
input \regs_out[216] ;
input \regs_out[215] ;
input \regs_out[214] ;
input \regs_out[213] ;
input \regs_out[212] ;
input \regs_out[211] ;
input \regs_out[210] ;
input \regs_out[209] ;
input \regs_out[208] ;
input \regs_out[207] ;
input \regs_out[206] ;
input \regs_out[205] ;
input \regs_out[204] ;
input \regs_out[203] ;
input \regs_out[202] ;
input \regs_out[201] ;
input \regs_out[200] ;
input \regs_out[199] ;
input \regs_out[198] ;
input \regs_out[197] ;
input \regs_out[196] ;
input \regs_out[195] ;
input \regs_out[194] ;
input \regs_out[193] ;
input \regs_out[192] ;
input \regs_out[191] ;
input \regs_out[190] ;
input \regs_out[189] ;
input \regs_out[188] ;
input \regs_out[187] ;
input \regs_out[186] ;
input \regs_out[185] ;
input \regs_out[184] ;
input \regs_out[183] ;
input \regs_out[182] ;
input \regs_out[181] ;
input \regs_out[180] ;
input \regs_out[179] ;
input \regs_out[178] ;
input \regs_out[177] ;
input \regs_out[176] ;
input \regs_out[175] ;
input \regs_out[174] ;
input \regs_out[173] ;
input \regs_out[172] ;
input \regs_out[171] ;
input \regs_out[170] ;
input \regs_out[169] ;
input \regs_out[168] ;
input \regs_out[167] ;
input \regs_out[166] ;
input \regs_out[165] ;
input \regs_out[164] ;
input \regs_out[163] ;
input \regs_out[162] ;
input \regs_out[161] ;
input \regs_out[160] ;
input \regs_out[159] ;
input \regs_out[158] ;
input \regs_out[157] ;
input \regs_out[156] ;
input \regs_out[155] ;
input \regs_out[154] ;
input \regs_out[153] ;
input \regs_out[152] ;
input \regs_out[151] ;
input \regs_out[150] ;
input \regs_out[149] ;
input \regs_out[148] ;
input \regs_out[147] ;
input \regs_out[146] ;
input \regs_out[145] ;
input \regs_out[144] ;
input \regs_out[143] ;
input \regs_out[142] ;
input \regs_out[141] ;
input \regs_out[140] ;
input \regs_out[139] ;
input \regs_out[138] ;
input \regs_out[137] ;
input \regs_out[136] ;
input \regs_out[135] ;
input \regs_out[134] ;
input \regs_out[133] ;
input \regs_out[132] ;
input \regs_out[131] ;
input \regs_out[130] ;
input \regs_out[129] ;
input \regs_out[128] ;
input \regs_out[127] ;
input \regs_out[126] ;
input \regs_out[125] ;
input \regs_out[124] ;
input \regs_out[123] ;
input \regs_out[122] ;
input \regs_out[121] ;
input \regs_out[120] ;
input \regs_out[119] ;
input \regs_out[118] ;
input \regs_out[117] ;
input \regs_out[116] ;
input \regs_out[115] ;
input \regs_out[114] ;
input \regs_out[113] ;
input \regs_out[112] ;
input \regs_out[111] ;
input \regs_out[110] ;
input \regs_out[109] ;
input \regs_out[108] ;
input \regs_out[107] ;
input \regs_out[106] ;
input \regs_out[105] ;
input \regs_out[104] ;
input \regs_out[103] ;
input \regs_out[102] ;
input \regs_out[101] ;
input \regs_out[100] ;
input \regs_out[99] ;
input \regs_out[98] ;
input \regs_out[97] ;
input \regs_out[96] ;
input \regs_out[95] ;
input \regs_out[94] ;
input \regs_out[93] ;
input \regs_out[92] ;
input \regs_out[91] ;
input \regs_out[90] ;
input \regs_out[89] ;
input \regs_out[88] ;
input \regs_out[87] ;
input \regs_out[86] ;
input \regs_out[85] ;
input \regs_out[84] ;
input \regs_out[83] ;
input \regs_out[82] ;
input \regs_out[81] ;
input \regs_out[80] ;
input \regs_out[79] ;
input \regs_out[78] ;
input \regs_out[77] ;
input \regs_out[76] ;
input \regs_out[75] ;
input \regs_out[74] ;
input \regs_out[73] ;
input \regs_out[72] ;
input \regs_out[71] ;
input \regs_out[70] ;
input \regs_out[69] ;
input \regs_out[68] ;
input \regs_out[67] ;
input \regs_out[66] ;
input \regs_out[65] ;
input \regs_out[64] ;
input \regs_out[63] ;
input \regs_out[62] ;
input \regs_out[61] ;
input \regs_out[60] ;
input \regs_out[59] ;
input \regs_out[58] ;
input \regs_out[57] ;
input \regs_out[56] ;
input \regs_out[55] ;
input \regs_out[54] ;
input \regs_out[53] ;
input \regs_out[52] ;
input \regs_out[51] ;
input \regs_out[50] ;
input \regs_out[49] ;
input \regs_out[48] ;
input \regs_out[47] ;
input \regs_out[46] ;
input \regs_out[45] ;
input \regs_out[44] ;
input \regs_out[43] ;
input \regs_out[42] ;
input \regs_out[41] ;
input \regs_out[40] ;
input \regs_out[39] ;
input \regs_out[38] ;
input \regs_out[37] ;
input \regs_out[36] ;
input \regs_out[35] ;
input \regs_out[34] ;
input \regs_out[33] ;
input \regs_out[32] ;
input \regs_out[31] ;
input \regs_out[30] ;
input \regs_out[29] ;
input \regs_out[28] ;
input \regs_out[27] ;
input \regs_out[26] ;
input \regs_out[25] ;
input \regs_out[24] ;
input \regs_out[23] ;
input \regs_out[22] ;
input \regs_out[21] ;
input \regs_out[20] ;
input \regs_out[19] ;
input \regs_out[18] ;
input \regs_out[17] ;
input \regs_out[16] ;
input \regs_out[15] ;
input \regs_out[14] ;
input \regs_out[13] ;
input \regs_out[12] ;
input \regs_out[11] ;
input \regs_out[10] ;
input \regs_out[9] ;
input \regs_out[8] ;
input \regs_out[7] ;
input \regs_out[6] ;
input \regs_out[5] ;
input \regs_out[4] ;
input \regs_out[3] ;
input \regs_out[2] ;
input \regs_out[1] ;
input \regs_out[0] ;
input start;
input clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \out_bin[7] ;
wire \out_bin[6] ;
wire \out_bin[5] ;
wire \out_bin[4] ;
wire \out_bin[3] ;
wire \out_bin[2] ;
wire \out_bin[1] ;
wire \out_bin[0] ;
wire \regs_out[254] ;
wire \regs_out[253] ;
wire \regs_out[252] ;
wire \regs_out[251] ;
wire \regs_out[250] ;
wire \regs_out[249] ;
wire \regs_out[248] ;
wire \regs_out[247] ;
wire \regs_out[246] ;
wire \regs_out[245] ;
wire \regs_out[244] ;
wire \regs_out[243] ;
wire \regs_out[242] ;
wire \regs_out[241] ;
wire \regs_out[240] ;
wire \regs_out[239] ;
wire \regs_out[238] ;
wire \regs_out[237] ;
wire \regs_out[236] ;
wire \regs_out[235] ;
wire \regs_out[234] ;
wire \regs_out[233] ;
wire \regs_out[232] ;
wire \regs_out[231] ;
wire \regs_out[230] ;
wire \regs_out[229] ;
wire \regs_out[228] ;
wire \regs_out[227] ;
wire \regs_out[226] ;
wire \regs_out[225] ;
wire \regs_out[224] ;
wire \regs_out[223] ;
wire \regs_out[222] ;
wire \regs_out[221] ;
wire \regs_out[220] ;
wire \regs_out[219] ;
wire \regs_out[218] ;
wire \regs_out[217] ;
wire \regs_out[216] ;
wire \regs_out[215] ;
wire \regs_out[214] ;
wire \regs_out[213] ;
wire \regs_out[212] ;
wire \regs_out[211] ;
wire \regs_out[210] ;
wire \regs_out[209] ;
wire \regs_out[208] ;
wire \regs_out[207] ;
wire \regs_out[206] ;
wire \regs_out[205] ;
wire \regs_out[204] ;
wire \regs_out[203] ;
wire \regs_out[202] ;
wire \regs_out[201] ;
wire \regs_out[200] ;
wire \regs_out[199] ;
wire \regs_out[198] ;
wire \regs_out[197] ;
wire \regs_out[196] ;
wire \regs_out[195] ;
wire \regs_out[194] ;
wire \regs_out[193] ;
wire \regs_out[192] ;
wire \regs_out[191] ;
wire \regs_out[190] ;
wire \regs_out[189] ;
wire \regs_out[188] ;
wire \regs_out[187] ;
wire \regs_out[186] ;
wire \regs_out[185] ;
wire \regs_out[184] ;
wire \regs_out[183] ;
wire \regs_out[182] ;
wire \regs_out[181] ;
wire \regs_out[180] ;
wire \regs_out[179] ;
wire \regs_out[178] ;
wire \regs_out[177] ;
wire \regs_out[176] ;
wire \regs_out[175] ;
wire \regs_out[174] ;
wire \regs_out[173] ;
wire \regs_out[172] ;
wire \regs_out[171] ;
wire \regs_out[170] ;
wire \regs_out[169] ;
wire \regs_out[168] ;
wire \regs_out[167] ;
wire \regs_out[166] ;
wire \regs_out[165] ;
wire \regs_out[164] ;
wire \regs_out[163] ;
wire \regs_out[162] ;
wire \regs_out[161] ;
wire \regs_out[160] ;
wire \regs_out[159] ;
wire \regs_out[158] ;
wire \regs_out[157] ;
wire \regs_out[156] ;
wire \regs_out[155] ;
wire \regs_out[154] ;
wire \regs_out[153] ;
wire \regs_out[152] ;
wire \regs_out[151] ;
wire \regs_out[150] ;
wire \regs_out[149] ;
wire \regs_out[148] ;
wire \regs_out[147] ;
wire \regs_out[146] ;
wire \regs_out[145] ;
wire \regs_out[144] ;
wire \regs_out[143] ;
wire \regs_out[142] ;
wire \regs_out[141] ;
wire \regs_out[140] ;
wire \regs_out[139] ;
wire \regs_out[138] ;
wire \regs_out[137] ;
wire \regs_out[136] ;
wire \regs_out[135] ;
wire \regs_out[134] ;
wire \regs_out[133] ;
wire \regs_out[132] ;
wire \regs_out[131] ;
wire \regs_out[130] ;
wire \regs_out[129] ;
wire \regs_out[128] ;
wire \regs_out[127] ;
wire \regs_out[126] ;
wire \regs_out[125] ;
wire \regs_out[124] ;
wire \regs_out[123] ;
wire \regs_out[122] ;
wire \regs_out[121] ;
wire \regs_out[120] ;
wire \regs_out[119] ;
wire \regs_out[118] ;
wire \regs_out[117] ;
wire \regs_out[116] ;
wire \regs_out[115] ;
wire \regs_out[114] ;
wire \regs_out[113] ;
wire \regs_out[112] ;
wire \regs_out[111] ;
wire \regs_out[110] ;
wire \regs_out[109] ;
wire \regs_out[108] ;
wire \regs_out[107] ;
wire \regs_out[106] ;
wire \regs_out[105] ;
wire \regs_out[104] ;
wire \regs_out[103] ;
wire \regs_out[102] ;
wire \regs_out[101] ;
wire \regs_out[100] ;
wire \regs_out[99] ;
wire \regs_out[98] ;
wire \regs_out[97] ;
wire \regs_out[96] ;
wire \regs_out[95] ;
wire \regs_out[94] ;
wire \regs_out[93] ;
wire \regs_out[92] ;
wire \regs_out[91] ;
wire \regs_out[90] ;
wire \regs_out[89] ;
wire \regs_out[88] ;
wire \regs_out[87] ;
wire \regs_out[86] ;
wire \regs_out[85] ;
wire \regs_out[84] ;
wire \regs_out[83] ;
wire \regs_out[82] ;
wire \regs_out[81] ;
wire \regs_out[80] ;
wire \regs_out[79] ;
wire \regs_out[78] ;
wire \regs_out[77] ;
wire \regs_out[76] ;
wire \regs_out[75] ;
wire \regs_out[74] ;
wire \regs_out[73] ;
wire \regs_out[72] ;
wire \regs_out[71] ;
wire \regs_out[70] ;
wire \regs_out[69] ;
wire \regs_out[68] ;
wire \regs_out[67] ;
wire \regs_out[66] ;
wire \regs_out[65] ;
wire \regs_out[64] ;
wire \regs_out[63] ;
wire \regs_out[62] ;
wire \regs_out[61] ;
wire \regs_out[60] ;
wire \regs_out[59] ;
wire \regs_out[58] ;
wire \regs_out[57] ;
wire \regs_out[56] ;
wire \regs_out[55] ;
wire \regs_out[54] ;
wire \regs_out[53] ;
wire \regs_out[52] ;
wire \regs_out[51] ;
wire \regs_out[50] ;
wire \regs_out[49] ;
wire \regs_out[48] ;
wire \regs_out[47] ;
wire \regs_out[46] ;
wire \regs_out[45] ;
wire \regs_out[44] ;
wire \regs_out[43] ;
wire \regs_out[42] ;
wire \regs_out[41] ;
wire \regs_out[40] ;
wire \regs_out[39] ;
wire \regs_out[38] ;
wire \regs_out[37] ;
wire \regs_out[36] ;
wire \regs_out[35] ;
wire \regs_out[34] ;
wire \regs_out[33] ;
wire \regs_out[32] ;
wire \regs_out[31] ;
wire \regs_out[30] ;
wire \regs_out[29] ;
wire \regs_out[28] ;
wire \regs_out[27] ;
wire \regs_out[26] ;
wire \regs_out[25] ;
wire \regs_out[24] ;
wire \regs_out[23] ;
wire \regs_out[22] ;
wire \regs_out[21] ;
wire \regs_out[20] ;
wire \regs_out[19] ;
wire \regs_out[18] ;
wire \regs_out[17] ;
wire \regs_out[16] ;
wire \regs_out[15] ;
wire \regs_out[14] ;
wire \regs_out[13] ;
wire \regs_out[12] ;
wire \regs_out[11] ;
wire \regs_out[10] ;
wire \regs_out[9] ;
wire \regs_out[8] ;
wire \regs_out[7] ;
wire \regs_out[6] ;
wire \regs_out[5] ;
wire \regs_out[4] ;
wire \regs_out[3] ;
wire \regs_out[2] ;
wire \regs_out[1] ;
wire \regs_out[0] ;
wire start;
wire clk;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i({\out_bin[7] ,\out_bin[6] ,\out_bin[5] ,\out_bin[4] ,\out_bin[3] ,\out_bin[2] ,\out_bin[1] ,\out_bin[0] }),
    .data_i({\out_bin[7] ,\out_bin[6] ,\out_bin[5] ,\out_bin[4] ,\out_bin[3] ,\out_bin[2] ,\out_bin[1] ,\out_bin[0] ,\regs_out[254] ,\regs_out[253] ,\regs_out[252] ,\regs_out[251] ,\regs_out[250] ,\regs_out[249] ,\regs_out[248] ,\regs_out[247] ,\regs_out[246] ,\regs_out[245] ,\regs_out[244] ,\regs_out[243] ,\regs_out[242] ,\regs_out[241] ,\regs_out[240] ,\regs_out[239] ,\regs_out[238] ,\regs_out[237] ,\regs_out[236] ,\regs_out[235] ,\regs_out[234] ,\regs_out[233] ,\regs_out[232] ,\regs_out[231] ,\regs_out[230] ,\regs_out[229] ,\regs_out[228] ,\regs_out[227] ,\regs_out[226] ,\regs_out[225] ,\regs_out[224] ,\regs_out[223] ,\regs_out[222] ,\regs_out[221] ,\regs_out[220] ,\regs_out[219] ,\regs_out[218] ,\regs_out[217] ,\regs_out[216] ,\regs_out[215] ,\regs_out[214] ,\regs_out[213] ,\regs_out[212] ,\regs_out[211] ,\regs_out[210] ,\regs_out[209] ,\regs_out[208] ,\regs_out[207] ,\regs_out[206] ,\regs_out[205] ,\regs_out[204] ,\regs_out[203] ,\regs_out[202] ,\regs_out[201] ,\regs_out[200] ,\regs_out[199] ,\regs_out[198] ,\regs_out[197] ,\regs_out[196] ,\regs_out[195] ,\regs_out[194] ,\regs_out[193] ,\regs_out[192] ,\regs_out[191] ,\regs_out[190] ,\regs_out[189] ,\regs_out[188] ,\regs_out[187] ,\regs_out[186] ,\regs_out[185] ,\regs_out[184] ,\regs_out[183] ,\regs_out[182] ,\regs_out[181] ,\regs_out[180] ,\regs_out[179] ,\regs_out[178] ,\regs_out[177] ,\regs_out[176] ,\regs_out[175] ,\regs_out[174] ,\regs_out[173] ,\regs_out[172] ,\regs_out[171] ,\regs_out[170] ,\regs_out[169] ,\regs_out[168] ,\regs_out[167] ,\regs_out[166] ,\regs_out[165] ,\regs_out[164] ,\regs_out[163] ,\regs_out[162] ,\regs_out[161] ,\regs_out[160] ,\regs_out[159] ,\regs_out[158] ,\regs_out[157] ,\regs_out[156] ,\regs_out[155] ,\regs_out[154] ,\regs_out[153] ,\regs_out[152] ,\regs_out[151] ,\regs_out[150] ,\regs_out[149] ,\regs_out[148] ,\regs_out[147] ,\regs_out[146] ,\regs_out[145] ,\regs_out[144] ,\regs_out[143] ,\regs_out[142] ,\regs_out[141] ,\regs_out[140] ,\regs_out[139] ,\regs_out[138] ,\regs_out[137] ,\regs_out[136] ,\regs_out[135] ,\regs_out[134] ,\regs_out[133] ,\regs_out[132] ,\regs_out[131] ,\regs_out[130] ,\regs_out[129] ,\regs_out[128] ,\regs_out[127] ,\regs_out[126] ,\regs_out[125] ,\regs_out[124] ,\regs_out[123] ,\regs_out[122] ,\regs_out[121] ,\regs_out[120] ,\regs_out[119] ,\regs_out[118] ,\regs_out[117] ,\regs_out[116] ,\regs_out[115] ,\regs_out[114] ,\regs_out[113] ,\regs_out[112] ,\regs_out[111] ,\regs_out[110] ,\regs_out[109] ,\regs_out[108] ,\regs_out[107] ,\regs_out[106] ,\regs_out[105] ,\regs_out[104] ,\regs_out[103] ,\regs_out[102] ,\regs_out[101] ,\regs_out[100] ,\regs_out[99] ,\regs_out[98] ,\regs_out[97] ,\regs_out[96] ,\regs_out[95] ,\regs_out[94] ,\regs_out[93] ,\regs_out[92] ,\regs_out[91] ,\regs_out[90] ,\regs_out[89] ,\regs_out[88] ,\regs_out[87] ,\regs_out[86] ,\regs_out[85] ,\regs_out[84] ,\regs_out[83] ,\regs_out[82] ,\regs_out[81] ,\regs_out[80] ,\regs_out[79] ,\regs_out[78] ,\regs_out[77] ,\regs_out[76] ,\regs_out[75] ,\regs_out[74] ,\regs_out[73] ,\regs_out[72] ,\regs_out[71] ,\regs_out[70] ,\regs_out[69] ,\regs_out[68] ,\regs_out[67] ,\regs_out[66] ,\regs_out[65] ,\regs_out[64] ,\regs_out[63] ,\regs_out[62] ,\regs_out[61] ,\regs_out[60] ,\regs_out[59] ,\regs_out[58] ,\regs_out[57] ,\regs_out[56] ,\regs_out[55] ,\regs_out[54] ,\regs_out[53] ,\regs_out[52] ,\regs_out[51] ,\regs_out[50] ,\regs_out[49] ,\regs_out[48] ,\regs_out[47] ,\regs_out[46] ,\regs_out[45] ,\regs_out[44] ,\regs_out[43] ,\regs_out[42] ,\regs_out[41] ,\regs_out[40] ,\regs_out[39] ,\regs_out[38] ,\regs_out[37] ,\regs_out[36] ,\regs_out[35] ,\regs_out[34] ,\regs_out[33] ,\regs_out[32] ,\regs_out[31] ,\regs_out[30] ,\regs_out[29] ,\regs_out[28] ,\regs_out[27] ,\regs_out[26] ,\regs_out[25] ,\regs_out[24] ,\regs_out[23] ,\regs_out[22] ,\regs_out[21] ,\regs_out[20] ,\regs_out[19] ,\regs_out[18] ,\regs_out[17] ,\regs_out[16] ,\regs_out[15] ,\regs_out[14] ,\regs_out[13] ,\regs_out[12] ,\regs_out[11] ,\regs_out[10] ,\regs_out[9] ,\regs_out[8] ,\regs_out[7] ,\regs_out[6] ,\regs_out[5] ,\regs_out[4] ,\regs_out[3] ,\regs_out[2] ,\regs_out[1] ,\regs_out[0] ,start}),
    .clk_i(clk)
);

endmodule
