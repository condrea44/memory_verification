// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Mar 12 20:59:36 2025
// Host        : Denisa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    d,
    clk,
    we,
    qspo_ce,
    spo,
    qspo);
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  input qspo_ce;
  output [15:0]spo;
  output [15:0]qspo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]qspo;
  wire qspo_ce;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "1" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_15 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(qspo_ce),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16272)
`pragma protect data_block
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
7//n7cp1QME8uECtM8MTESTqr30FdseXXKB/
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
