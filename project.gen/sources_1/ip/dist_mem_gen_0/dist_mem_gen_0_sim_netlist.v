// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Mar 12 20:59:37 2025
// Host        : Denisa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/denis/Desktop/proiect/project/project.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
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
  dist_mem_gen_0_dist_mem_gen_v8_0_15 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16256)
`pragma protect data_block
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
TefWhAh/9E5KJ0I=
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
