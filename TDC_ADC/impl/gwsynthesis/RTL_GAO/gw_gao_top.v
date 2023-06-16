module gw_gao(
    start,
    clk2_7,
    clkout,
    \TDC_inst/clk ,
    \u2b_inst/binary[7] ,
    \u2b_inst/binary[6] ,
    \u2b_inst/binary[5] ,
    \u2b_inst/binary[4] ,
    \u2b_inst/binary[3] ,
    \u2b_inst/binary[2] ,
    \u2b_inst/binary[1] ,
    \u2b_inst/binary[0] ,
    \out_bin[7] ,
    \out_bin[6] ,
    \out_bin[5] ,
    \out_bin[4] ,
    \out_bin[3] ,
    \out_bin[2] ,
    \out_bin[1] ,
    \out_bin[0] ,
    \TDC_inst/filtered_hit ,
    \TDC_inst/ft_out0 ,
    \TDC_inst/ft_out1 ,
    clk118,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input start;
input clk2_7;
input clkout;
input \TDC_inst/clk ;
input \u2b_inst/binary[7] ;
input \u2b_inst/binary[6] ;
input \u2b_inst/binary[5] ;
input \u2b_inst/binary[4] ;
input \u2b_inst/binary[3] ;
input \u2b_inst/binary[2] ;
input \u2b_inst/binary[1] ;
input \u2b_inst/binary[0] ;
input \out_bin[7] ;
input \out_bin[6] ;
input \out_bin[5] ;
input \out_bin[4] ;
input \out_bin[3] ;
input \out_bin[2] ;
input \out_bin[1] ;
input \out_bin[0] ;
input \TDC_inst/filtered_hit ;
input \TDC_inst/ft_out0 ;
input \TDC_inst/ft_out1 ;
input clk118;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire start;
wire clk2_7;
wire clkout;
wire \TDC_inst/clk ;
wire \u2b_inst/binary[7] ;
wire \u2b_inst/binary[6] ;
wire \u2b_inst/binary[5] ;
wire \u2b_inst/binary[4] ;
wire \u2b_inst/binary[3] ;
wire \u2b_inst/binary[2] ;
wire \u2b_inst/binary[1] ;
wire \u2b_inst/binary[0] ;
wire \out_bin[7] ;
wire \out_bin[6] ;
wire \out_bin[5] ;
wire \out_bin[4] ;
wire \out_bin[3] ;
wire \out_bin[2] ;
wire \out_bin[1] ;
wire \out_bin[0] ;
wire \TDC_inst/filtered_hit ;
wire \TDC_inst/ft_out0 ;
wire \TDC_inst/ft_out1 ;
wire clk118;
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
    .trig0_i(clk118),
    .data_i({start,clk2_7,clkout,\TDC_inst/clk ,\u2b_inst/binary[7] ,\u2b_inst/binary[6] ,\u2b_inst/binary[5] ,\u2b_inst/binary[4] ,\u2b_inst/binary[3] ,\u2b_inst/binary[2] ,\u2b_inst/binary[1] ,\u2b_inst/binary[0] ,\out_bin[7] ,\out_bin[6] ,\out_bin[5] ,\out_bin[4] ,\out_bin[3] ,\out_bin[2] ,\out_bin[1] ,\out_bin[0] ,\TDC_inst/filtered_hit ,\TDC_inst/ft_out0 ,\TDC_inst/ft_out1 }),
    .clk_i(clk118)
);

endmodule
