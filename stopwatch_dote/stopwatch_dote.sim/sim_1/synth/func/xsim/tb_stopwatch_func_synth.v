// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 12 16:30:52 2025
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/FPGA_Harman/stopwatch_dote/stopwatch_dote.sim/sim_1/synth/func/xsim/tb_stopwatch_func_synth.v
// Design      : top_stopwatch
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bcd_mux
   (fnd_font_OBUF,
    DI,
    S,
    \fnd_font_OBUF[4]_inst_i_1_0 ,
    \fnd_font_OBUF[4]_inst_i_1_1 ,
    \fnd_font[7] ,
    led_OBUF,
    w_2hz,
    sw_IBUF);
  output [7:0]fnd_font_OBUF;
  input [0:0]DI;
  input [3:0]S;
  input [0:0]\fnd_font_OBUF[4]_inst_i_1_0 ;
  input [3:0]\fnd_font_OBUF[4]_inst_i_1_1 ;
  input [1:0]\fnd_font[7] ;
  input [0:0]led_OBUF;
  input w_2hz;
  input [0:0]sw_IBUF;

  wire [0:0]DI;
  wire [3:0]S;
  wire [1:0]\fnd_font[7] ;
  wire [7:0]fnd_font_OBUF;
  wire [0:0]\fnd_font_OBUF[4]_inst_i_1_0 ;
  wire [3:0]\fnd_font_OBUF[4]_inst_i_1_1 ;
  wire [0:0]led_OBUF;
  wire seg_out0_carry__0_n_1;
  wire seg_out0_carry__0_n_2;
  wire seg_out0_carry__0_n_3;
  wire seg_out0_carry__0_n_4;
  wire seg_out0_carry__0_n_5;
  wire seg_out0_carry__0_n_6;
  wire seg_out0_carry__0_n_7;
  wire seg_out0_carry_n_0;
  wire seg_out0_carry_n_1;
  wire seg_out0_carry_n_2;
  wire seg_out0_carry_n_3;
  wire seg_out0_carry_n_4;
  wire seg_out0_carry_n_5;
  wire seg_out0_carry_n_6;
  wire seg_out0_carry_n_7;
  wire [0:0]sw_IBUF;
  wire w_2hz;
  wire [3:3]NLW_seg_out0_carry__0_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[0]_inst_i_1 
       (.I0(seg_out0_carry_n_7),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[0]));
  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[1]_inst_i_1 
       (.I0(seg_out0_carry_n_6),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[1]));
  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[2]_inst_i_1 
       (.I0(seg_out0_carry_n_5),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[2]));
  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[3]_inst_i_1 
       (.I0(seg_out0_carry_n_4),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[3]));
  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[4]_inst_i_1 
       (.I0(seg_out0_carry__0_n_7),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[4]));
  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[5]_inst_i_1 
       (.I0(seg_out0_carry__0_n_6),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[5]));
  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[6]_inst_i_1 
       (.I0(seg_out0_carry__0_n_5),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[6]));
  LUT6 #(
    .INIT(64'hEBAAAAAAEAAAAAAA)) 
    \fnd_font_OBUF[7]_inst_i_1 
       (.I0(seg_out0_carry__0_n_4),
        .I1(\fnd_font[7] [1]),
        .I2(led_OBUF),
        .I3(w_2hz),
        .I4(sw_IBUF),
        .I5(\fnd_font[7] [0]),
        .O(fnd_font_OBUF[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seg_out0_carry
       (.CI(1'b0),
        .CO({seg_out0_carry_n_0,seg_out0_carry_n_1,seg_out0_carry_n_2,seg_out0_carry_n_3}),
        .CYINIT(DI),
        .DI({DI,DI,DI,DI}),
        .O({seg_out0_carry_n_4,seg_out0_carry_n_5,seg_out0_carry_n_6,seg_out0_carry_n_7}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 seg_out0_carry__0
       (.CI(seg_out0_carry_n_0),
        .CO({NLW_seg_out0_carry__0_CO_UNCONNECTED[3],seg_out0_carry__0_n_1,seg_out0_carry__0_n_2,seg_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,DI,DI,\fnd_font_OBUF[4]_inst_i_1_0 }),
        .O({seg_out0_carry__0_n_4,seg_out0_carry__0_n_5,seg_out0_carry__0_n_6,seg_out0_carry__0_n_7}),
        .S(\fnd_font_OBUF[4]_inst_i_1_1 ));
endmodule

module btn_debounce
   (\edge_detect_reg[0]_0 ,
    CLK,
    AR,
    D);
  output \edge_detect_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire btn_debounce;
  wire [17:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[17]_i_2_n_0 ;
  wire \counter[17]_i_3_n_0 ;
  wire \counter[17]_i_4_n_0 ;
  wire \counter[17]_i_5_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [17:1]data0;
  wire [0:0]edge_detect;
  wire \edge_detect[0]_i_2_n_0 ;
  wire \edge_detect_reg[0]_0 ;
  wire [6:0]q_next;
  wire \q_reg_reg_n_0_[0] ;
  wire r_1khz;
  wire r_1khz_reg_n_0;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(edge_detect),
        .I1(\edge_detect[0]_i_2_n_0 ),
        .I2(\q_reg_reg_n_0_[0] ),
        .I3(q_next[1]),
        .I4(q_next[4]),
        .I5(q_next[6]),
        .O(\edge_detect_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3:1],data0[17]}),
        .S({1'b0,1'b0,1'b0,\counter_reg_n_0_[17] }));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[10]),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[11]),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[12]),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[13]),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[14]),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[15]),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[16]),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[17]),
        .O(counter[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \counter[17]_i_2 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter[17]_i_3_n_0 ),
        .I5(\counter[17]_i_4_n_0 ),
        .O(\counter[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \counter[17]_i_3 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[0] ),
        .O(\counter[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \counter[17]_i_4 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter[17]_i_5_n_0 ),
        .O(\counter[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[17]_i_5 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[12] ),
        .O(\counter[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[2]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[3]),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[4]),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[6]),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[7]),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \edge_detect[0]_i_1 
       (.I0(q_next[6]),
        .I1(q_next[4]),
        .I2(q_next[1]),
        .I3(\q_reg_reg_n_0_[0] ),
        .I4(\edge_detect[0]_i_2_n_0 ),
        .O(btn_debounce));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \edge_detect[0]_i_2 
       (.I0(q_next[3]),
        .I1(q_next[5]),
        .I2(q_next[0]),
        .I3(q_next[2]),
        .O(\edge_detect[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \edge_detect_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(btn_debounce),
        .Q(edge_detect));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[0]),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[1]),
        .Q(q_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[2]),
        .Q(q_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[3]),
        .Q(q_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[4]),
        .Q(q_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[5]),
        .Q(q_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[6]),
        .Q(q_next[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(q_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT1 #(
    .INIT(2'h1)) 
    r_1khz_i_1
       (.I0(\counter[17]_i_2_n_0 ),
        .O(r_1khz));
  FDCE #(
    .INIT(1'b0)) 
    r_1khz_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(r_1khz),
        .Q(r_1khz_reg_n_0));
endmodule

(* ORIG_REF_NAME = "btn_debounce" *) 
module btn_debounce_0
   (\q_reg_reg[0]_0 ,
    CLK,
    AR,
    D);
  output \q_reg_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire btn_debounce;
  wire [17:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[17]_i_2__0_n_0 ;
  wire \counter[17]_i_3__0_n_0 ;
  wire \counter[17]_i_4__0_n_0 ;
  wire \counter[17]_i_5__0_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [17:1]data0;
  wire [0:0]edge_detect;
  wire \edge_detect[0]_i_2__0_n_0 ;
  wire [6:0]q_next;
  wire \q_reg_reg[0]_0 ;
  wire \q_reg_reg_n_0_[0] ;
  wire r_1khz;
  wire r_1khz_reg_n_0;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\edge_detect[0]_i_2__0_n_0 ),
        .I1(\q_reg_reg_n_0_[0] ),
        .I2(q_next[1]),
        .I3(q_next[4]),
        .I4(q_next[6]),
        .I5(edge_detect),
        .O(\q_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3:1],data0[17]}),
        .S({1'b0,1'b0,1'b0,\counter_reg_n_0_[17] }));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[10]),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[11]),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[12]),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[13]),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[14]),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[15]),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[16]),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[17]),
        .O(counter[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \counter[17]_i_2__0 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter[17]_i_3__0_n_0 ),
        .I5(\counter[17]_i_4__0_n_0 ),
        .O(\counter[17]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \counter[17]_i_3__0 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[0] ),
        .O(\counter[17]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \counter[17]_i_4__0 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter[17]_i_5__0_n_0 ),
        .O(\counter[17]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[17]_i_5__0 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[12] ),
        .O(\counter[17]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[2]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[3]),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[4]),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[6]),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[7]),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__0 
       (.I0(\counter[17]_i_2__0_n_0 ),
        .I1(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \edge_detect[0]_i_1__0 
       (.I0(q_next[6]),
        .I1(q_next[4]),
        .I2(q_next[1]),
        .I3(\q_reg_reg_n_0_[0] ),
        .I4(\edge_detect[0]_i_2__0_n_0 ),
        .O(btn_debounce));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \edge_detect[0]_i_2__0 
       (.I0(q_next[3]),
        .I1(q_next[5]),
        .I2(q_next[0]),
        .I3(q_next[2]),
        .O(\edge_detect[0]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \edge_detect_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(btn_debounce),
        .Q(edge_detect));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[0]),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[1]),
        .Q(q_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[2]),
        .Q(q_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[3]),
        .Q(q_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[4]),
        .Q(q_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[5]),
        .Q(q_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[6]),
        .Q(q_next[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(q_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT1 #(
    .INIT(2'h1)) 
    r_1khz_i_1__0
       (.I0(\counter[17]_i_2__0_n_0 ),
        .O(r_1khz));
  FDCE #(
    .INIT(1'b0)) 
    r_1khz_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(r_1khz),
        .Q(r_1khz_reg_n_0));
endmodule

(* ORIG_REF_NAME = "btn_debounce" *) 
module btn_debounce_1
   (\q_reg_reg[0]_0 ,
    CLK,
    AR,
    D);
  output \q_reg_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire btn_debounce;
  wire [17:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[17]_i_2__1_n_0 ;
  wire \counter[17]_i_3__1_n_0 ;
  wire \counter[17]_i_4__1_n_0 ;
  wire \counter[17]_i_5__1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [17:1]data0;
  wire [0:0]edge_detect;
  wire \edge_detect[0]_i_2__1_n_0 ;
  wire [6:0]q_next;
  wire \q_reg_reg[0]_0 ;
  wire \q_reg_reg_n_0_[0] ;
  wire r_1khz;
  wire r_1khz_reg_n_0;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \count_reg[5]_i_7 
       (.I0(\edge_detect[0]_i_2__1_n_0 ),
        .I1(\q_reg_reg_n_0_[0] ),
        .I2(q_next[1]),
        .I3(q_next[4]),
        .I4(q_next[6]),
        .I5(edge_detect),
        .O(\q_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3:1],data0[17]}),
        .S({1'b0,1'b0,1'b0,\counter_reg_n_0_[17] }));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[10]),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[11]),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[12]),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[13]),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[14]),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[15]),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[16]),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[17]),
        .O(counter[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \counter[17]_i_2__1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter[17]_i_3__1_n_0 ),
        .I5(\counter[17]_i_4__1_n_0 ),
        .O(\counter[17]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \counter[17]_i_3__1 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[0] ),
        .O(\counter[17]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \counter[17]_i_4__1 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter[17]_i_5__1_n_0 ),
        .O(\counter[17]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[17]_i_5__1 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[12] ),
        .O(\counter[17]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[2]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[3]),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[4]),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[6]),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[7]),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__1 
       (.I0(\counter[17]_i_2__1_n_0 ),
        .I1(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \edge_detect[0]_i_1__1 
       (.I0(q_next[6]),
        .I1(q_next[4]),
        .I2(q_next[1]),
        .I3(\q_reg_reg_n_0_[0] ),
        .I4(\edge_detect[0]_i_2__1_n_0 ),
        .O(btn_debounce));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \edge_detect[0]_i_2__1 
       (.I0(q_next[3]),
        .I1(q_next[5]),
        .I2(q_next[0]),
        .I3(q_next[2]),
        .O(\edge_detect[0]_i_2__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \edge_detect_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(btn_debounce),
        .Q(edge_detect));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[0]),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[1]),
        .Q(q_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[2]),
        .Q(q_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[3]),
        .Q(q_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[4]),
        .Q(q_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[5]),
        .Q(q_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[6]),
        .Q(q_next[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(q_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT1 #(
    .INIT(2'h1)) 
    r_1khz_i_1__1
       (.I0(\counter[17]_i_2__1_n_0 ),
        .O(r_1khz));
  FDCE #(
    .INIT(1'b0)) 
    r_1khz_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(r_1khz),
        .Q(r_1khz_reg_n_0));
endmodule

(* ORIG_REF_NAME = "btn_debounce" *) 
module btn_debounce_2
   (\edge_detect_reg[0]_0 ,
    CLK,
    AR,
    sw_IBUF,
    \count_reg_reg[5] ,
    D);
  output \edge_detect_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]sw_IBUF;
  input \count_reg_reg[5] ;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire btn_debounce;
  wire \count_reg_reg[5] ;
  wire [17:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[17]_i_2__2_n_0 ;
  wire \counter[17]_i_3__2_n_0 ;
  wire \counter[17]_i_4__2_n_0 ;
  wire \counter[17]_i_5__2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [17:1]data0;
  wire [0:0]edge_detect;
  wire \edge_detect[0]_i_2__2_n_0 ;
  wire \edge_detect_reg[0]_0 ;
  wire [6:0]q_next;
  wire \q_reg_reg_n_0_[0] ;
  wire r_1khz;
  wire r_1khz_reg_n_0;
  wire [0:0]sw_IBUF;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8A88)) 
    \count_reg[5]_i_3 
       (.I0(sw_IBUF),
        .I1(\count_reg_reg[5] ),
        .I2(edge_detect),
        .I3(btn_debounce),
        .O(\edge_detect_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3:1],data0[17]}),
        .S({1'b0,1'b0,1'b0,\counter_reg_n_0_[17] }));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__2 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[10]),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[11]),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[12]),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[13]),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[14]),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[15]),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[16]),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[17]),
        .O(counter[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \counter[17]_i_2__2 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter[17]_i_3__2_n_0 ),
        .I5(\counter[17]_i_4__2_n_0 ),
        .O(\counter[17]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \counter[17]_i_3__2 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[0] ),
        .O(\counter[17]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \counter[17]_i_4__2 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter[17]_i_5__2_n_0 ),
        .O(\counter[17]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[17]_i_5__2 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[12] ),
        .O(\counter[17]_i_5__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[2]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[3]),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[4]),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[6]),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[7]),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__2 
       (.I0(\counter[17]_i_2__2_n_0 ),
        .I1(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \edge_detect[0]_i_1__2 
       (.I0(q_next[6]),
        .I1(q_next[4]),
        .I2(q_next[1]),
        .I3(\q_reg_reg_n_0_[0] ),
        .I4(\edge_detect[0]_i_2__2_n_0 ),
        .O(btn_debounce));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \edge_detect[0]_i_2__2 
       (.I0(q_next[3]),
        .I1(q_next[5]),
        .I2(q_next[0]),
        .I3(q_next[2]),
        .O(\edge_detect[0]_i_2__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \edge_detect_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(btn_debounce),
        .Q(edge_detect));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[0]),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[1]),
        .Q(q_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[2]),
        .Q(q_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[3]),
        .Q(q_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[4]),
        .Q(q_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[5]),
        .Q(q_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[6]),
        .Q(q_next[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(q_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT1 #(
    .INIT(2'h1)) 
    r_1khz_i_1__2
       (.I0(\counter[17]_i_2__2_n_0 ),
        .O(r_1khz));
  FDCE #(
    .INIT(1'b0)) 
    r_1khz_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(r_1khz),
        .Q(r_1khz_reg_n_0));
endmodule

(* ORIG_REF_NAME = "btn_debounce" *) 
module btn_debounce_3
   (\q_reg_reg[0]_0 ,
    CLK,
    AR,
    D);
  output \q_reg_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire btn_debounce;
  wire [17:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[17]_i_2__3_n_0 ;
  wire \counter[17]_i_3__3_n_0 ;
  wire \counter[17]_i_4__3_n_0 ;
  wire \counter[17]_i_5__3_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [17:1]data0;
  wire [0:0]edge_detect;
  wire \edge_detect[0]_i_2__3_n_0 ;
  wire [6:0]q_next;
  wire \q_reg_reg[0]_0 ;
  wire \q_reg_reg_n_0_[0] ;
  wire r_1khz;
  wire r_1khz_reg_n_0;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__3_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3:1],data0[17]}),
        .S({1'b0,1'b0,1'b0,\counter_reg_n_0_[17] }));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__3 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[10]),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[11]),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[12]),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[13]),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[14]),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[15]),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[16]),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[17]),
        .O(counter[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \counter[17]_i_2__3 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter[17]_i_3__3_n_0 ),
        .I5(\counter[17]_i_4__3_n_0 ),
        .O(\counter[17]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \counter[17]_i_3__3 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[0] ),
        .O(\counter[17]_i_3__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \counter[17]_i_4__3 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter[17]_i_5__3_n_0 ),
        .O(\counter[17]_i_4__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[17]_i_5__3 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[12] ),
        .O(\counter[17]_i_5__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[2]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[3]),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[4]),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[6]),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[7]),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__3 
       (.I0(\counter[17]_i_2__3_n_0 ),
        .I1(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \edge_detect[0]_i_1__3 
       (.I0(q_next[6]),
        .I1(q_next[4]),
        .I2(q_next[1]),
        .I3(\q_reg_reg_n_0_[0] ),
        .I4(\edge_detect[0]_i_2__3_n_0 ),
        .O(btn_debounce));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \edge_detect[0]_i_2__3 
       (.I0(q_next[3]),
        .I1(q_next[5]),
        .I2(q_next[0]),
        .I3(q_next[2]),
        .O(\edge_detect[0]_i_2__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \edge_detect_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(btn_debounce),
        .Q(edge_detect));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[0]),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[1]),
        .Q(q_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[2]),
        .Q(q_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[3]),
        .Q(q_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[4]),
        .Q(q_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[5]),
        .Q(q_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[6]),
        .Q(q_next[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(r_1khz_reg_n_0),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(q_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT1 #(
    .INIT(2'h1)) 
    r_1khz_i_1__3
       (.I0(\counter[17]_i_2__3_n_0 ),
        .O(r_1khz));
  FDCE #(
    .INIT(1'b0)) 
    r_1khz_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(r_1khz),
        .Q(r_1khz_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \state[1]_i_2 
       (.I0(\edge_detect[0]_i_2__3_n_0 ),
        .I1(\q_reg_reg_n_0_[0] ),
        .I2(q_next[1]),
        .I3(q_next[4]),
        .I4(q_next[6]),
        .I5(edge_detect),
        .O(\q_reg_reg[0]_0 ));
endmodule

module clk_div_100
   (clk_reg_reg_0,
    CLK,
    AR);
  output [0:0]clk_reg_reg_0;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_next;
  wire [0:0]clk_reg_reg_0;
  wire [19:0]count_next;
  wire count_next0_carry__0_n_0;
  wire count_next0_carry__0_n_1;
  wire count_next0_carry__0_n_2;
  wire count_next0_carry__0_n_3;
  wire count_next0_carry__0_n_4;
  wire count_next0_carry__0_n_5;
  wire count_next0_carry__0_n_6;
  wire count_next0_carry__0_n_7;
  wire count_next0_carry__1_n_0;
  wire count_next0_carry__1_n_1;
  wire count_next0_carry__1_n_2;
  wire count_next0_carry__1_n_3;
  wire count_next0_carry__1_n_4;
  wire count_next0_carry__1_n_5;
  wire count_next0_carry__1_n_6;
  wire count_next0_carry__1_n_7;
  wire count_next0_carry__2_n_0;
  wire count_next0_carry__2_n_1;
  wire count_next0_carry__2_n_2;
  wire count_next0_carry__2_n_3;
  wire count_next0_carry__2_n_4;
  wire count_next0_carry__2_n_5;
  wire count_next0_carry__2_n_6;
  wire count_next0_carry__2_n_7;
  wire count_next0_carry__3_n_2;
  wire count_next0_carry__3_n_3;
  wire count_next0_carry__3_n_5;
  wire count_next0_carry__3_n_6;
  wire count_next0_carry__3_n_7;
  wire count_next0_carry_n_0;
  wire count_next0_carry_n_1;
  wire count_next0_carry_n_2;
  wire count_next0_carry_n_3;
  wire count_next0_carry_n_4;
  wire count_next0_carry_n_5;
  wire count_next0_carry_n_6;
  wire count_next0_carry_n_7;
  wire [19:0]count_reg;
  wire \count_reg[19]_i_2_n_0 ;
  wire \count_reg[19]_i_3__0_n_0 ;
  wire \count_reg[19]_i_4__0_n_0 ;
  wire \count_reg[19]_i_5__0_n_0 ;
  wire \count_reg[19]_i_6__0_n_0 ;
  wire [3:2]NLW_count_next0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_count_next0_carry__3_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    clk_reg_i_1
       (.I0(\count_reg[19]_i_2_n_0 ),
        .O(clk_next));
  FDCE #(
    .INIT(1'b0)) 
    clk_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_next),
        .Q(clk_reg_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry
       (.CI(1'b0),
        .CO({count_next0_carry_n_0,count_next0_carry_n_1,count_next0_carry_n_2,count_next0_carry_n_3}),
        .CYINIT(count_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry_n_4,count_next0_carry_n_5,count_next0_carry_n_6,count_next0_carry_n_7}),
        .S(count_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__0
       (.CI(count_next0_carry_n_0),
        .CO({count_next0_carry__0_n_0,count_next0_carry__0_n_1,count_next0_carry__0_n_2,count_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry__0_n_4,count_next0_carry__0_n_5,count_next0_carry__0_n_6,count_next0_carry__0_n_7}),
        .S(count_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__1
       (.CI(count_next0_carry__0_n_0),
        .CO({count_next0_carry__1_n_0,count_next0_carry__1_n_1,count_next0_carry__1_n_2,count_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry__1_n_4,count_next0_carry__1_n_5,count_next0_carry__1_n_6,count_next0_carry__1_n_7}),
        .S(count_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__2
       (.CI(count_next0_carry__1_n_0),
        .CO({count_next0_carry__2_n_0,count_next0_carry__2_n_1,count_next0_carry__2_n_2,count_next0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry__2_n_4,count_next0_carry__2_n_5,count_next0_carry__2_n_6,count_next0_carry__2_n_7}),
        .S(count_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__3
       (.CI(count_next0_carry__2_n_0),
        .CO({NLW_count_next0_carry__3_CO_UNCONNECTED[3:2],count_next0_carry__3_n_2,count_next0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count_next0_carry__3_O_UNCONNECTED[3],count_next0_carry__3_n_5,count_next0_carry__3_n_6,count_next0_carry__3_n_7}),
        .S({1'b0,count_reg[19:17]}));
  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[0]_i_1__8 
       (.I0(count_reg[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[10]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__1_n_6),
        .O(count_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[11]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__1_n_5),
        .O(count_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[12]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__1_n_4),
        .O(count_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[13]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__2_n_7),
        .O(count_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[14]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__2_n_6),
        .O(count_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[15]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__2_n_5),
        .O(count_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[16]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__2_n_4),
        .O(count_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[17]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__3_n_7),
        .O(count_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[18]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__3_n_6),
        .O(count_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[19]_i_1__0 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__3_n_5),
        .O(count_next[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \count_reg[19]_i_2 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(\count_reg[19]_i_3__0_n_0 ),
        .I5(\count_reg[19]_i_4__0_n_0 ),
        .O(\count_reg[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \count_reg[19]_i_3__0 
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .I2(count_reg[12]),
        .I3(count_reg[13]),
        .I4(\count_reg[19]_i_5__0_n_0 ),
        .O(\count_reg[19]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \count_reg[19]_i_4__0 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .I4(\count_reg[19]_i_6__0_n_0 ),
        .O(\count_reg[19]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count_reg[19]_i_5__0 
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .I2(count_reg[19]),
        .I3(count_reg[18]),
        .O(\count_reg[19]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count_reg[19]_i_6__0 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[11]),
        .I3(count_reg[10]),
        .O(\count_reg[19]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[1]_i_1__3 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry_n_7),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[2]_i_1__6 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry_n_6),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[3]_i_1__7 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry_n_5),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[4]_i_1__6 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry_n_4),
        .O(count_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[5]_i_1__5 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__0_n_7),
        .O(count_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[6]_i_1__1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__0_n_6),
        .O(count_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[7]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__0_n_5),
        .O(count_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[8]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__0_n_4),
        .O(count_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[9]_i_1 
       (.I0(\count_reg[19]_i_2_n_0 ),
        .I1(count_next0_carry__1_n_7),
        .O(count_next[9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[0]),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[10]),
        .Q(count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[11]),
        .Q(count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[12]),
        .Q(count_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[13]),
        .Q(count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[14]),
        .Q(count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[15]),
        .Q(count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[16]),
        .Q(count_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[17]),
        .Q(count_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[18]),
        .Q(count_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[19]),
        .Q(count_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[2]),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[3]),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[4]),
        .Q(count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[5]),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[6]),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[7]),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[8]),
        .Q(count_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(count_next[9]),
        .Q(count_reg[9]));
endmodule

module clk_div_1002
   (w_clk_100hz,
    Q,
    clk_reg_reg_0,
    CLK,
    AR,
    \count_reg_reg[0]_0 ,
    w_run,
    \count_reg_reg[0]_1 ,
    D);
  output w_clk_100hz;
  output [0:0]Q;
  output [0:0]clk_reg_reg_0;
  input CLK;
  input [0:0]AR;
  input [0:0]\count_reg_reg[0]_0 ;
  input w_run;
  input [0:0]\count_reg_reg[0]_1 ;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire clk_reg_i_1__0_n_0;
  wire [0:0]clk_reg_reg_0;
  wire [19:1]count_next;
  wire count_next0_carry__0_n_0;
  wire count_next0_carry__0_n_1;
  wire count_next0_carry__0_n_2;
  wire count_next0_carry__0_n_3;
  wire count_next0_carry__0_n_4;
  wire count_next0_carry__0_n_5;
  wire count_next0_carry__0_n_6;
  wire count_next0_carry__0_n_7;
  wire count_next0_carry__1_n_0;
  wire count_next0_carry__1_n_1;
  wire count_next0_carry__1_n_2;
  wire count_next0_carry__1_n_3;
  wire count_next0_carry__1_n_4;
  wire count_next0_carry__1_n_5;
  wire count_next0_carry__1_n_6;
  wire count_next0_carry__1_n_7;
  wire count_next0_carry__2_n_0;
  wire count_next0_carry__2_n_1;
  wire count_next0_carry__2_n_2;
  wire count_next0_carry__2_n_3;
  wire count_next0_carry__2_n_4;
  wire count_next0_carry__2_n_5;
  wire count_next0_carry__2_n_6;
  wire count_next0_carry__2_n_7;
  wire count_next0_carry__3_n_2;
  wire count_next0_carry__3_n_3;
  wire count_next0_carry__3_n_5;
  wire count_next0_carry__3_n_6;
  wire count_next0_carry__3_n_7;
  wire count_next0_carry_n_0;
  wire count_next0_carry_n_1;
  wire count_next0_carry_n_2;
  wire count_next0_carry_n_3;
  wire count_next0_carry_n_4;
  wire count_next0_carry_n_5;
  wire count_next0_carry_n_6;
  wire count_next0_carry_n_7;
  wire [19:1]count_reg;
  wire \count_reg[19]_i_3_n_0 ;
  wire \count_reg[19]_i_4_n_0 ;
  wire \count_reg[19]_i_5_n_0 ;
  wire \count_reg[19]_i_6_n_0 ;
  wire \count_reg[19]_i_7_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire w_clk_100hz;
  wire w_run;
  wire [3:2]NLW_count_next0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_count_next0_carry__3_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    clk_reg_i_1__0
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .O(clk_reg_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_reg_i_1__0_n_0),
        .Q(w_clk_100hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry
       (.CI(1'b0),
        .CO({count_next0_carry_n_0,count_next0_carry_n_1,count_next0_carry_n_2,count_next0_carry_n_3}),
        .CYINIT(Q),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry_n_4,count_next0_carry_n_5,count_next0_carry_n_6,count_next0_carry_n_7}),
        .S(count_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__0
       (.CI(count_next0_carry_n_0),
        .CO({count_next0_carry__0_n_0,count_next0_carry__0_n_1,count_next0_carry__0_n_2,count_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry__0_n_4,count_next0_carry__0_n_5,count_next0_carry__0_n_6,count_next0_carry__0_n_7}),
        .S(count_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__1
       (.CI(count_next0_carry__0_n_0),
        .CO({count_next0_carry__1_n_0,count_next0_carry__1_n_1,count_next0_carry__1_n_2,count_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry__1_n_4,count_next0_carry__1_n_5,count_next0_carry__1_n_6,count_next0_carry__1_n_7}),
        .S(count_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__2
       (.CI(count_next0_carry__1_n_0),
        .CO({count_next0_carry__2_n_0,count_next0_carry__2_n_1,count_next0_carry__2_n_2,count_next0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count_next0_carry__2_n_4,count_next0_carry__2_n_5,count_next0_carry__2_n_6,count_next0_carry__2_n_7}),
        .S(count_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count_next0_carry__3
       (.CI(count_next0_carry__2_n_0),
        .CO({NLW_count_next0_carry__3_CO_UNCONNECTED[3:2],count_next0_carry__3_n_2,count_next0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count_next0_carry__3_O_UNCONNECTED[3],count_next0_carry__3_n_5,count_next0_carry__3_n_6,count_next0_carry__3_n_7}),
        .S({1'b0,count_reg[19:17]}));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1 
       (.I0(w_clk_100hz),
        .I1(\count_reg_reg[0]_0 ),
        .O(clk_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[10]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__1_n_6),
        .O(count_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[11]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__1_n_5),
        .O(count_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[12]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__1_n_4),
        .O(count_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[13]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__2_n_7),
        .O(count_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[14]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__2_n_6),
        .O(count_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[15]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__2_n_5),
        .O(count_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[16]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__2_n_4),
        .O(count_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[17]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__3_n_7),
        .O(count_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[18]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__3_n_6),
        .O(count_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[19]_i_2__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__3_n_5),
        .O(count_next[19]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \count_reg[19]_i_3 
       (.I0(\count_reg[19]_i_4_n_0 ),
        .I1(count_reg[15]),
        .I2(count_reg[1]),
        .I3(Q),
        .I4(count_reg[12]),
        .I5(\count_reg[19]_i_5_n_0 ),
        .O(\count_reg[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count_reg[19]_i_4 
       (.I0(count_reg[4]),
        .I1(count_reg[6]),
        .I2(count_reg[2]),
        .I3(count_reg[11]),
        .O(\count_reg[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \count_reg[19]_i_5 
       (.I0(count_reg[17]),
        .I1(count_reg[19]),
        .I2(count_reg[7]),
        .I3(count_reg[13]),
        .I4(\count_reg[19]_i_6_n_0 ),
        .I5(\count_reg[19]_i_7_n_0 ),
        .O(\count_reg[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count_reg[19]_i_6 
       (.I0(count_reg[18]),
        .I1(count_reg[10]),
        .I2(count_reg[16]),
        .I3(count_reg[5]),
        .O(\count_reg[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \count_reg[19]_i_7 
       (.I0(count_reg[14]),
        .I1(count_reg[3]),
        .I2(count_reg[9]),
        .I3(count_reg[8]),
        .O(\count_reg[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[1]_i_1__8 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry_n_7),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[2]_i_1__7 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry_n_6),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[3]_i_1__8 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry_n_5),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[4]_i_1__7 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry_n_4),
        .O(count_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[5]_i_1__6 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__0_n_7),
        .O(count_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[6]_i_1__2 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__0_n_6),
        .O(count_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[7]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__0_n_5),
        .O(count_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[8]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__0_n_4),
        .O(count_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count_reg[9]_i_1__0 
       (.I0(\count_reg[19]_i_3_n_0 ),
        .I1(w_run),
        .I2(count_next0_carry__1_n_7),
        .O(count_next[9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(D),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[10] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[10]),
        .Q(count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[11] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[11]),
        .Q(count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[12] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[12]),
        .Q(count_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[13] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[13]),
        .Q(count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[14] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[14]),
        .Q(count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[15] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[15]),
        .Q(count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[16] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[16]),
        .Q(count_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[17] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[17]),
        .Q(count_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[18] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[18]),
        .Q(count_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[19] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[19]),
        .Q(count_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[2]),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[3]),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[4]),
        .Q(count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[5]),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[6] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[6]),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[7] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[7]),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[8] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[8]),
        .Q(count_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[9] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(count_next[9]),
        .Q(count_reg[9]));
endmodule

module clock_div
   (CLK,
    \r_counter_reg[16]_0 ,
    AR);
  output CLK;
  input \r_counter_reg[16]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire r_clk;
  wire [16:0]r_counter;
  wire r_counter0_carry__0_n_0;
  wire r_counter0_carry__0_n_1;
  wire r_counter0_carry__0_n_2;
  wire r_counter0_carry__0_n_3;
  wire r_counter0_carry__0_n_4;
  wire r_counter0_carry__0_n_5;
  wire r_counter0_carry__0_n_6;
  wire r_counter0_carry__0_n_7;
  wire r_counter0_carry__1_n_0;
  wire r_counter0_carry__1_n_1;
  wire r_counter0_carry__1_n_2;
  wire r_counter0_carry__1_n_3;
  wire r_counter0_carry__1_n_4;
  wire r_counter0_carry__1_n_5;
  wire r_counter0_carry__1_n_6;
  wire r_counter0_carry__1_n_7;
  wire r_counter0_carry__2_n_1;
  wire r_counter0_carry__2_n_2;
  wire r_counter0_carry__2_n_3;
  wire r_counter0_carry__2_n_4;
  wire r_counter0_carry__2_n_5;
  wire r_counter0_carry__2_n_6;
  wire r_counter0_carry__2_n_7;
  wire r_counter0_carry_n_0;
  wire r_counter0_carry_n_1;
  wire r_counter0_carry_n_2;
  wire r_counter0_carry_n_3;
  wire r_counter0_carry_n_4;
  wire r_counter0_carry_n_5;
  wire r_counter0_carry_n_6;
  wire r_counter0_carry_n_7;
  wire \r_counter[16]_i_2_n_0 ;
  wire \r_counter[16]_i_3_n_0 ;
  wire \r_counter[16]_i_4_n_0 ;
  wire \r_counter[16]_i_5_n_0 ;
  wire [16:0]r_counter_0;
  wire \r_counter_reg[16]_0 ;
  wire [3:3]NLW_r_counter0_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    r_clk_i_1
       (.I0(\r_counter[16]_i_2_n_0 ),
        .O(r_clk));
  FDCE #(
    .INIT(1'b0)) 
    r_clk_reg
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_clk),
        .Q(CLK));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry
       (.CI(1'b0),
        .CO({r_counter0_carry_n_0,r_counter0_carry_n_1,r_counter0_carry_n_2,r_counter0_carry_n_3}),
        .CYINIT(r_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry_n_4,r_counter0_carry_n_5,r_counter0_carry_n_6,r_counter0_carry_n_7}),
        .S(r_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__0
       (.CI(r_counter0_carry_n_0),
        .CO({r_counter0_carry__0_n_0,r_counter0_carry__0_n_1,r_counter0_carry__0_n_2,r_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__0_n_4,r_counter0_carry__0_n_5,r_counter0_carry__0_n_6,r_counter0_carry__0_n_7}),
        .S(r_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__1
       (.CI(r_counter0_carry__0_n_0),
        .CO({r_counter0_carry__1_n_0,r_counter0_carry__1_n_1,r_counter0_carry__1_n_2,r_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__1_n_4,r_counter0_carry__1_n_5,r_counter0_carry__1_n_6,r_counter0_carry__1_n_7}),
        .S(r_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__2
       (.CI(r_counter0_carry__1_n_0),
        .CO({NLW_r_counter0_carry__2_CO_UNCONNECTED[3],r_counter0_carry__2_n_1,r_counter0_carry__2_n_2,r_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__2_n_4,r_counter0_carry__2_n_5,r_counter0_carry__2_n_6,r_counter0_carry__2_n_7}),
        .S(r_counter[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_counter[0]_i_1__0 
       (.I0(r_counter[0]),
        .O(r_counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[10]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__1_n_6),
        .O(r_counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[11]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__1_n_5),
        .O(r_counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[12]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__1_n_4),
        .O(r_counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[13]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__2_n_7),
        .O(r_counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[14]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__2_n_6),
        .O(r_counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[15]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__2_n_5),
        .O(r_counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[16]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__2_n_4),
        .O(r_counter_0[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \r_counter[16]_i_2 
       (.I0(r_counter[4]),
        .I1(r_counter[3]),
        .I2(r_counter[6]),
        .I3(r_counter[5]),
        .I4(\r_counter[16]_i_3_n_0 ),
        .I5(\r_counter[16]_i_4_n_0 ),
        .O(\r_counter[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_counter[16]_i_3 
       (.I0(r_counter[0]),
        .I1(r_counter[15]),
        .I2(r_counter[16]),
        .I3(r_counter[2]),
        .I4(r_counter[1]),
        .O(\r_counter[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \r_counter[16]_i_4 
       (.I0(r_counter[9]),
        .I1(r_counter[10]),
        .I2(r_counter[8]),
        .I3(r_counter[7]),
        .I4(\r_counter[16]_i_5_n_0 ),
        .O(\r_counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_counter[16]_i_5 
       (.I0(r_counter[12]),
        .I1(r_counter[11]),
        .I2(r_counter[14]),
        .I3(r_counter[13]),
        .O(\r_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[1]_i_1__0 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry_n_7),
        .O(r_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[2]_i_1__0 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry_n_6),
        .O(r_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[3]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry_n_5),
        .O(r_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[4]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry_n_4),
        .O(r_counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[5]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__0_n_7),
        .O(r_counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[6]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__0_n_6),
        .O(r_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[7]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__0_n_5),
        .O(r_counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[8]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__0_n_4),
        .O(r_counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[9]_i_1 
       (.I0(\r_counter[16]_i_2_n_0 ),
        .I1(r_counter0_carry__1_n_7),
        .O(r_counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[0] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[0]),
        .Q(r_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[10] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[10]),
        .Q(r_counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[11] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[11]),
        .Q(r_counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[12] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[12]),
        .Q(r_counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[13] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[13]),
        .Q(r_counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[14] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[14]),
        .Q(r_counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[15] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[15]),
        .Q(r_counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[16] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[16]),
        .Q(r_counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[1] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[1]),
        .Q(r_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[2] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[2]),
        .Q(r_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[3] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[3]),
        .Q(r_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[4] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[4]),
        .Q(r_counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[5] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[5]),
        .Q(r_counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[6] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[6]),
        .Q(r_counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[7] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[7]),
        .Q(r_counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[8] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[8]),
        .Q(r_counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[9] 
       (.C(\r_counter_reg[16]_0 ),
        .CE(1'b1),
        .CLR(AR),
        .D(r_counter_0[9]),
        .Q(r_counter[9]));
endmodule

module clock_div2hz
   (w_2hz,
    CLK,
    AR);
  output w_2hz;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire r_clk_i_1__0_n_0;
  wire r_counter0_carry__0_n_0;
  wire r_counter0_carry__0_n_1;
  wire r_counter0_carry__0_n_2;
  wire r_counter0_carry__0_n_3;
  wire r_counter0_carry__0_n_4;
  wire r_counter0_carry__0_n_5;
  wire r_counter0_carry__0_n_6;
  wire r_counter0_carry__0_n_7;
  wire r_counter0_carry__1_n_0;
  wire r_counter0_carry__1_n_1;
  wire r_counter0_carry__1_n_2;
  wire r_counter0_carry__1_n_3;
  wire r_counter0_carry__1_n_4;
  wire r_counter0_carry__1_n_5;
  wire r_counter0_carry__1_n_6;
  wire r_counter0_carry__1_n_7;
  wire r_counter0_carry__2_n_0;
  wire r_counter0_carry__2_n_1;
  wire r_counter0_carry__2_n_2;
  wire r_counter0_carry__2_n_3;
  wire r_counter0_carry__2_n_4;
  wire r_counter0_carry__2_n_5;
  wire r_counter0_carry__2_n_6;
  wire r_counter0_carry__2_n_7;
  wire r_counter0_carry__3_n_0;
  wire r_counter0_carry__3_n_1;
  wire r_counter0_carry__3_n_2;
  wire r_counter0_carry__3_n_3;
  wire r_counter0_carry__3_n_4;
  wire r_counter0_carry__3_n_5;
  wire r_counter0_carry__3_n_6;
  wire r_counter0_carry__3_n_7;
  wire r_counter0_carry__4_n_0;
  wire r_counter0_carry__4_n_1;
  wire r_counter0_carry__4_n_2;
  wire r_counter0_carry__4_n_3;
  wire r_counter0_carry__4_n_4;
  wire r_counter0_carry__4_n_5;
  wire r_counter0_carry__4_n_6;
  wire r_counter0_carry__4_n_7;
  wire r_counter0_carry__5_n_7;
  wire r_counter0_carry_n_0;
  wire r_counter0_carry_n_1;
  wire r_counter0_carry_n_2;
  wire r_counter0_carry_n_3;
  wire r_counter0_carry_n_4;
  wire r_counter0_carry_n_5;
  wire r_counter0_carry_n_6;
  wire r_counter0_carry_n_7;
  wire \r_counter[0]_i_1__1_n_0 ;
  wire \r_counter[10]_i_1__0_n_0 ;
  wire \r_counter[11]_i_1__0_n_0 ;
  wire \r_counter[12]_i_1__0_n_0 ;
  wire \r_counter[13]_i_1__0_n_0 ;
  wire \r_counter[14]_i_1__0_n_0 ;
  wire \r_counter[15]_i_1__0_n_0 ;
  wire \r_counter[16]_i_1__0_n_0 ;
  wire \r_counter[17]_i_1_n_0 ;
  wire \r_counter[18]_i_1_n_0 ;
  wire \r_counter[19]_i_1_n_0 ;
  wire \r_counter[1]_i_1__1_n_0 ;
  wire \r_counter[20]_i_1_n_0 ;
  wire \r_counter[21]_i_1_n_0 ;
  wire \r_counter[22]_i_1_n_0 ;
  wire \r_counter[23]_i_1_n_0 ;
  wire \r_counter[24]_i_1_n_0 ;
  wire \r_counter[25]_i_1_n_0 ;
  wire \r_counter[25]_i_2_n_0 ;
  wire \r_counter[25]_i_3_n_0 ;
  wire \r_counter[25]_i_4_n_0 ;
  wire \r_counter[25]_i_5_n_0 ;
  wire \r_counter[25]_i_6_n_0 ;
  wire \r_counter[25]_i_7_n_0 ;
  wire \r_counter[25]_i_8_n_0 ;
  wire \r_counter[25]_i_9_n_0 ;
  wire \r_counter[2]_i_1__1_n_0 ;
  wire \r_counter[3]_i_1__0_n_0 ;
  wire \r_counter[4]_i_1__0_n_0 ;
  wire \r_counter[5]_i_1__0_n_0 ;
  wire \r_counter[6]_i_1__0_n_0 ;
  wire \r_counter[7]_i_1__0_n_0 ;
  wire \r_counter[8]_i_1__0_n_0 ;
  wire \r_counter[9]_i_1__0_n_0 ;
  wire \r_counter_reg_n_0_[0] ;
  wire \r_counter_reg_n_0_[10] ;
  wire \r_counter_reg_n_0_[11] ;
  wire \r_counter_reg_n_0_[12] ;
  wire \r_counter_reg_n_0_[13] ;
  wire \r_counter_reg_n_0_[14] ;
  wire \r_counter_reg_n_0_[15] ;
  wire \r_counter_reg_n_0_[16] ;
  wire \r_counter_reg_n_0_[17] ;
  wire \r_counter_reg_n_0_[18] ;
  wire \r_counter_reg_n_0_[19] ;
  wire \r_counter_reg_n_0_[1] ;
  wire \r_counter_reg_n_0_[20] ;
  wire \r_counter_reg_n_0_[21] ;
  wire \r_counter_reg_n_0_[22] ;
  wire \r_counter_reg_n_0_[23] ;
  wire \r_counter_reg_n_0_[24] ;
  wire \r_counter_reg_n_0_[25] ;
  wire \r_counter_reg_n_0_[2] ;
  wire \r_counter_reg_n_0_[3] ;
  wire \r_counter_reg_n_0_[4] ;
  wire \r_counter_reg_n_0_[5] ;
  wire \r_counter_reg_n_0_[6] ;
  wire \r_counter_reg_n_0_[7] ;
  wire \r_counter_reg_n_0_[8] ;
  wire \r_counter_reg_n_0_[9] ;
  wire w_2hz;
  wire [3:0]NLW_r_counter0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_r_counter0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFD0C)) 
    r_clk_i_1__0
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(w_2hz),
        .O(r_clk_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    r_clk_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(r_clk_i_1__0_n_0),
        .Q(w_2hz));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry
       (.CI(1'b0),
        .CO({r_counter0_carry_n_0,r_counter0_carry_n_1,r_counter0_carry_n_2,r_counter0_carry_n_3}),
        .CYINIT(\r_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry_n_4,r_counter0_carry_n_5,r_counter0_carry_n_6,r_counter0_carry_n_7}),
        .S({\r_counter_reg_n_0_[4] ,\r_counter_reg_n_0_[3] ,\r_counter_reg_n_0_[2] ,\r_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__0
       (.CI(r_counter0_carry_n_0),
        .CO({r_counter0_carry__0_n_0,r_counter0_carry__0_n_1,r_counter0_carry__0_n_2,r_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__0_n_4,r_counter0_carry__0_n_5,r_counter0_carry__0_n_6,r_counter0_carry__0_n_7}),
        .S({\r_counter_reg_n_0_[8] ,\r_counter_reg_n_0_[7] ,\r_counter_reg_n_0_[6] ,\r_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__1
       (.CI(r_counter0_carry__0_n_0),
        .CO({r_counter0_carry__1_n_0,r_counter0_carry__1_n_1,r_counter0_carry__1_n_2,r_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__1_n_4,r_counter0_carry__1_n_5,r_counter0_carry__1_n_6,r_counter0_carry__1_n_7}),
        .S({\r_counter_reg_n_0_[12] ,\r_counter_reg_n_0_[11] ,\r_counter_reg_n_0_[10] ,\r_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__2
       (.CI(r_counter0_carry__1_n_0),
        .CO({r_counter0_carry__2_n_0,r_counter0_carry__2_n_1,r_counter0_carry__2_n_2,r_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__2_n_4,r_counter0_carry__2_n_5,r_counter0_carry__2_n_6,r_counter0_carry__2_n_7}),
        .S({\r_counter_reg_n_0_[16] ,\r_counter_reg_n_0_[15] ,\r_counter_reg_n_0_[14] ,\r_counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__3
       (.CI(r_counter0_carry__2_n_0),
        .CO({r_counter0_carry__3_n_0,r_counter0_carry__3_n_1,r_counter0_carry__3_n_2,r_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__3_n_4,r_counter0_carry__3_n_5,r_counter0_carry__3_n_6,r_counter0_carry__3_n_7}),
        .S({\r_counter_reg_n_0_[20] ,\r_counter_reg_n_0_[19] ,\r_counter_reg_n_0_[18] ,\r_counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__4
       (.CI(r_counter0_carry__3_n_0),
        .CO({r_counter0_carry__4_n_0,r_counter0_carry__4_n_1,r_counter0_carry__4_n_2,r_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_counter0_carry__4_n_4,r_counter0_carry__4_n_5,r_counter0_carry__4_n_6,r_counter0_carry__4_n_7}),
        .S({\r_counter_reg_n_0_[24] ,\r_counter_reg_n_0_[23] ,\r_counter_reg_n_0_[22] ,\r_counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_counter0_carry__5
       (.CI(r_counter0_carry__4_n_0),
        .CO(NLW_r_counter0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_counter0_carry__5_O_UNCONNECTED[3:1],r_counter0_carry__5_n_7}),
        .S({1'b0,1'b0,1'b0,\r_counter_reg_n_0_[25] }));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_counter[0]_i_1__1 
       (.I0(\r_counter_reg_n_0_[0] ),
        .O(\r_counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[10]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__1_n_6),
        .O(\r_counter[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[11]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__1_n_5),
        .O(\r_counter[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[12]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__1_n_4),
        .O(\r_counter[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[13]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__2_n_7),
        .O(\r_counter[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[14]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__2_n_6),
        .O(\r_counter[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[15]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__2_n_5),
        .O(\r_counter[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[16]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__2_n_4),
        .O(\r_counter[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[17]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__3_n_7),
        .O(\r_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[18]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__3_n_6),
        .O(\r_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[19]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__3_n_5),
        .O(\r_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[1]_i_1__1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry_n_7),
        .O(\r_counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[20]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__3_n_4),
        .O(\r_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[21]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__4_n_7),
        .O(\r_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[22]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__4_n_6),
        .O(\r_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[23]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__4_n_5),
        .O(\r_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[24]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__4_n_4),
        .O(\r_counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[25]_i_1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__5_n_7),
        .O(\r_counter[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \r_counter[25]_i_2 
       (.I0(\r_counter_reg_n_0_[17] ),
        .I1(\r_counter_reg_n_0_[18] ),
        .I2(\r_counter_reg_n_0_[11] ),
        .I3(\r_counter[25]_i_5_n_0 ),
        .O(\r_counter[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_counter[25]_i_3 
       (.I0(\r_counter_reg_n_0_[11] ),
        .I1(\r_counter_reg_n_0_[23] ),
        .I2(\r_counter_reg_n_0_[18] ),
        .I3(\r_counter[25]_i_6_n_0 ),
        .O(\r_counter[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \r_counter[25]_i_4 
       (.I0(\r_counter[25]_i_7_n_0 ),
        .I1(\r_counter[25]_i_8_n_0 ),
        .I2(\r_counter[25]_i_9_n_0 ),
        .I3(\r_counter_reg_n_0_[13] ),
        .I4(\r_counter_reg_n_0_[14] ),
        .I5(\r_counter_reg_n_0_[19] ),
        .O(\r_counter[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \r_counter[25]_i_5 
       (.I0(\r_counter_reg_n_0_[24] ),
        .I1(\r_counter_reg_n_0_[15] ),
        .I2(\r_counter_reg_n_0_[25] ),
        .I3(\r_counter_reg_n_0_[16] ),
        .I4(\r_counter_reg_n_0_[23] ),
        .I5(\r_counter_reg_n_0_[6] ),
        .O(\r_counter[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \r_counter[25]_i_6 
       (.I0(\r_counter_reg_n_0_[25] ),
        .I1(\r_counter_reg_n_0_[24] ),
        .I2(\r_counter_reg_n_0_[6] ),
        .I3(\r_counter_reg_n_0_[15] ),
        .I4(\r_counter_reg_n_0_[16] ),
        .I5(\r_counter_reg_n_0_[17] ),
        .O(\r_counter[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \r_counter[25]_i_7 
       (.I0(\r_counter_reg_n_0_[7] ),
        .I1(\r_counter_reg_n_0_[9] ),
        .I2(\r_counter_reg_n_0_[8] ),
        .I3(\r_counter_reg_n_0_[10] ),
        .I4(\r_counter_reg_n_0_[5] ),
        .I5(\r_counter_reg_n_0_[4] ),
        .O(\r_counter[25]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_counter[25]_i_8 
       (.I0(\r_counter_reg_n_0_[21] ),
        .I1(\r_counter_reg_n_0_[20] ),
        .I2(\r_counter_reg_n_0_[22] ),
        .I3(\r_counter_reg_n_0_[12] ),
        .O(\r_counter[25]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_counter[25]_i_9 
       (.I0(\r_counter_reg_n_0_[3] ),
        .I1(\r_counter_reg_n_0_[2] ),
        .I2(\r_counter_reg_n_0_[1] ),
        .I3(\r_counter_reg_n_0_[0] ),
        .O(\r_counter[25]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[2]_i_1__1 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry_n_6),
        .O(\r_counter[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[3]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry_n_5),
        .O(\r_counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[4]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry_n_4),
        .O(\r_counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[5]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__0_n_7),
        .O(\r_counter[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    \r_counter[6]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__0_n_6),
        .O(\r_counter[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[7]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__0_n_5),
        .O(\r_counter[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[8]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__0_n_4),
        .O(\r_counter[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \r_counter[9]_i_1__0 
       (.I0(\r_counter[25]_i_2_n_0 ),
        .I1(\r_counter[25]_i_3_n_0 ),
        .I2(\r_counter[25]_i_4_n_0 ),
        .I3(r_counter0_carry__1_n_7),
        .O(\r_counter[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[0]_i_1__1_n_0 ),
        .Q(\r_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[10]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[11]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[12]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[13]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[14]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[15]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[16]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[17]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[18]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[19]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[1]_i_1__1_n_0 ),
        .Q(\r_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[20]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[21]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[22]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[23]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[24]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[25]_i_1_n_0 ),
        .Q(\r_counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[2]_i_1__1_n_0 ),
        .Q(\r_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[3]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[4]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[5]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[6]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[7]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[8]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[9]_i_1__0_n_0 ),
        .Q(\r_counter_reg_n_0_[9] ));
endmodule

module clock_set
   (E,
    Q,
    tick_reg_reg,
    w_min_tick,
    \count_reg_reg[5] ,
    w_sec_tick,
    \state_reg[1]_0 ,
    CLK,
    AR);
  output [0:0]E;
  output [1:0]Q;
  output [0:0]tick_reg_reg;
  input w_min_tick;
  input \count_reg_reg[5] ;
  input w_sec_tick;
  input \state_reg[1]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [1:0]Q;
  wire \count_reg_reg[5] ;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[1]_0 ;
  wire [0:0]tick_reg_reg;
  wire w_min_tick;
  wire w_sec_tick;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \count_reg[4]_i_1__0 
       (.I0(w_min_tick),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count_reg_reg[5] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \count_reg[5]_i_1 
       (.I0(w_sec_tick),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count_reg_reg[5] ),
        .O(tick_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state[0]_i_1 
       (.I0(Q[0]),
        .I1(\state_reg[1]_0 ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \state[1]_i_1 
       (.I0(Q[1]),
        .I1(\state_reg[1]_0 ),
        .I2(Q[0]),
        .O(\state[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[1]_i_1_n_0 ),
        .Q(Q[1]));
endmodule

module counter_4
   (\r_counter_reg[1]_0 ,
    Q,
    \r_counter_reg[1]_1 ,
    S,
    fnd_comm_OBUF,
    \r_counter_reg[1]_2 ,
    DI,
    \r_counter_reg[1]_3 ,
    \r_counter_reg[0]_0 ,
    \r_counter_reg[0]_1 ,
    \r_counter_reg[2]_0 ,
    \r_counter_reg[1]_4 ,
    \r_counter_reg[0]_2 ,
    seg_out0_carry_i_7,
    seg_out0_carry_i_7_0,
    sw_IBUF,
    seg_out0_carry_i_7_1,
    seg_out0_carry_i_8,
    seg_out0_carry_i_8_0,
    led_OBUF,
    w_2hz,
    seg_out0_carry_i_4,
    seg_out0_carry_i_4_0,
    seg_out0_carry_i_6_0,
    seg_out0_carry_i_6_1,
    seg_out0_carry_i_12_0,
    seg_out0_carry_i_12_1,
    seg_out0_carry_i_7_2,
    seg_out0_carry_i_7_3,
    seg_out0_carry_i_21,
    seg_out0_carry_i_21_0,
    seg_out0_carry_i_21_1,
    seg_out0_carry_i_12_2,
    seg_out0_carry_i_12_3,
    seg_out0_carry,
    seg_out0_carry_0,
    seg_out0_carry_1,
    CLK,
    AR);
  output \r_counter_reg[1]_0 ;
  output [2:0]Q;
  output \r_counter_reg[1]_1 ;
  output [1:0]S;
  output [3:0]fnd_comm_OBUF;
  output \r_counter_reg[1]_2 ;
  output [0:0]DI;
  output \r_counter_reg[1]_3 ;
  output \r_counter_reg[0]_0 ;
  output \r_counter_reg[0]_1 ;
  output \r_counter_reg[2]_0 ;
  output [0:0]\r_counter_reg[1]_4 ;
  output [1:0]\r_counter_reg[0]_2 ;
  input seg_out0_carry_i_7;
  input [0:0]seg_out0_carry_i_7_0;
  input [0:0]sw_IBUF;
  input [0:0]seg_out0_carry_i_7_1;
  input seg_out0_carry_i_8;
  input seg_out0_carry_i_8_0;
  input [0:0]led_OBUF;
  input w_2hz;
  input seg_out0_carry_i_4;
  input seg_out0_carry_i_4_0;
  input seg_out0_carry_i_6_0;
  input seg_out0_carry_i_6_1;
  input [0:0]seg_out0_carry_i_12_0;
  input [0:0]seg_out0_carry_i_12_1;
  input seg_out0_carry_i_7_2;
  input seg_out0_carry_i_7_3;
  input seg_out0_carry_i_21;
  input seg_out0_carry_i_21_0;
  input seg_out0_carry_i_21_1;
  input [0:0]seg_out0_carry_i_12_2;
  input [0:0]seg_out0_carry_i_12_3;
  input seg_out0_carry;
  input seg_out0_carry_0;
  input seg_out0_carry_1;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]DI;
  wire [2:0]Q;
  wire [1:0]S;
  wire [3:0]fnd_comm_OBUF;
  wire [0:0]led_OBUF;
  wire \r_counter[0]_i_1_n_0 ;
  wire \r_counter[1]_i_1_n_0 ;
  wire \r_counter[2]_i_1_n_0 ;
  wire \r_counter_reg[0]_0 ;
  wire \r_counter_reg[0]_1 ;
  wire [1:0]\r_counter_reg[0]_2 ;
  wire \r_counter_reg[1]_0 ;
  wire \r_counter_reg[1]_1 ;
  wire \r_counter_reg[1]_2 ;
  wire \r_counter_reg[1]_3 ;
  wire [0:0]\r_counter_reg[1]_4 ;
  wire \r_counter_reg[2]_0 ;
  wire seg_out0_carry;
  wire seg_out0_carry_0;
  wire seg_out0_carry_1;
  wire [0:0]seg_out0_carry_i_12_0;
  wire [0:0]seg_out0_carry_i_12_1;
  wire [0:0]seg_out0_carry_i_12_2;
  wire [0:0]seg_out0_carry_i_12_3;
  wire seg_out0_carry_i_12_n_0;
  wire seg_out0_carry_i_21;
  wire seg_out0_carry_i_21_0;
  wire seg_out0_carry_i_21_1;
  wire seg_out0_carry_i_31_n_0;
  wire seg_out0_carry_i_32_n_0;
  wire seg_out0_carry_i_4;
  wire seg_out0_carry_i_4_0;
  wire seg_out0_carry_i_6_0;
  wire seg_out0_carry_i_6_1;
  wire seg_out0_carry_i_7;
  wire seg_out0_carry_i_71_n_0;
  wire [0:0]seg_out0_carry_i_7_0;
  wire [0:0]seg_out0_carry_i_7_1;
  wire seg_out0_carry_i_7_2;
  wire seg_out0_carry_i_7_3;
  wire seg_out0_carry_i_8;
  wire seg_out0_carry_i_8_0;
  wire [0:0]sw_IBUF;
  wire w_2hz;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fnd_comm_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fnd_comm_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fnd_comm_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fnd_comm_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fnd_comm_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(fnd_comm_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fnd_comm_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fnd_comm_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_counter[0]_i_1 
       (.I0(Q[0]),
        .O(\r_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\r_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_counter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\r_counter[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\r_counter[2]_i_1_n_0 ),
        .Q(Q[2]));
  LUT2 #(
    .INIT(4'h2)) 
    seg_out0_carry__0_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\r_counter_reg[1]_4 ));
  LUT3 #(
    .INIT(8'hEF)) 
    seg_out0_carry__0_i_2
       (.I0(w_2hz),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'hAE51AEAE)) 
    seg_out0_carry__0_i_5
       (.I0(\r_counter_reg[1]_2 ),
        .I1(seg_out0_carry),
        .I2(seg_out0_carry_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    seg_out0_carry_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(DI));
  LUT6 #(
    .INIT(64'h0302030300020303)) 
    seg_out0_carry_i_12
       (.I0(seg_out0_carry_i_6_0),
        .I1(seg_out0_carry_i_31_n_0),
        .I2(seg_out0_carry_i_32_n_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(seg_out0_carry_i_6_1),
        .O(seg_out0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h80B0FFFFFFFFFFFF)) 
    seg_out0_carry_i_17
       (.I0(seg_out0_carry_i_7_2),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(seg_out0_carry_i_7_3),
        .I4(led_OBUF),
        .I5(Q[2]),
        .O(\r_counter_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFDDFFDFDFDDFDFDF)) 
    seg_out0_carry_i_18
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(seg_out0_carry_i_7),
        .I3(seg_out0_carry_i_7_0),
        .I4(sw_IBUF),
        .I5(seg_out0_carry_i_7_1),
        .O(\r_counter_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC050)) 
    seg_out0_carry_i_19
       (.I0(seg_out0_carry_i_8),
        .I1(seg_out0_carry_i_8_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(led_OBUF),
        .I5(Q[2]),
        .O(\r_counter_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0686F97906860686)) 
    seg_out0_carry_i_2
       (.I0(\r_counter_reg[1]_2 ),
        .I1(seg_out0_carry),
        .I2(seg_out0_carry_0),
        .I3(seg_out0_carry_1),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\r_counter_reg[0]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000CA00)) 
    seg_out0_carry_i_31
       (.I0(seg_out0_carry_i_12_0),
        .I1(seg_out0_carry_i_12_1),
        .I2(sw_IBUF),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(seg_out0_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEEEEEEEFEEE)) 
    seg_out0_carry_i_32
       (.I0(Q[2]),
        .I1(led_OBUF),
        .I2(\r_counter_reg[0]_1 ),
        .I3(seg_out0_carry_i_12_2),
        .I4(sw_IBUF),
        .I5(seg_out0_carry_i_12_3),
        .O(seg_out0_carry_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    seg_out0_carry_i_39
       (.I0(led_OBUF),
        .I1(Q[2]),
        .O(\r_counter_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    seg_out0_carry_i_47
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\r_counter_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF500050C0)) 
    seg_out0_carry_i_48
       (.I0(seg_out0_carry_i_21),
        .I1(seg_out0_carry_i_21_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(seg_out0_carry_i_21_1),
        .I5(seg_out0_carry_i_71_n_0),
        .O(\r_counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0684F97B06840684)) 
    seg_out0_carry_i_5
       (.I0(\r_counter_reg[1]_2 ),
        .I1(seg_out0_carry),
        .I2(seg_out0_carry_0),
        .I3(seg_out0_carry_1),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\r_counter_reg[0]_2 [0]));
  LUT6 #(
    .INIT(64'h00000000FD5DFFFF)) 
    seg_out0_carry_i_6
       (.I0(led_OBUF),
        .I1(seg_out0_carry_i_4),
        .I2(Q[1]),
        .I3(seg_out0_carry_i_4_0),
        .I4(Q[2]),
        .I5(seg_out0_carry_i_12_n_0),
        .O(\r_counter_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    seg_out0_carry_i_71
       (.I0(led_OBUF),
        .I1(Q[2]),
        .O(seg_out0_carry_i_71_n_0));
endmodule

module fnd_controlloer
   (p_1_in,
    \r_counter_reg[1] ,
    Q,
    \r_counter_reg[1]_0 ,
    fnd_comm_OBUF,
    \r_counter_reg[1]_1 ,
    \r_counter_reg[1]_2 ,
    \r_counter_reg[0] ,
    \r_counter_reg[0]_0 ,
    \r_counter_reg[2] ,
    fnd_font_OBUF,
    CLK,
    AR,
    S,
    \fnd_font_OBUF[4]_inst_i_1 ,
    seg_out0_carry_i_7,
    seg_out0_carry_i_7_0,
    sw_IBUF,
    seg_out0_carry_i_7_1,
    seg_out0_carry_i_8,
    seg_out0_carry_i_8_0,
    led_OBUF,
    seg_out0_carry_i_4,
    seg_out0_carry_i_4_0,
    seg_out0_carry_i_6,
    seg_out0_carry_i_6_0,
    seg_out0_carry_i_12,
    seg_out0_carry_i_12_0,
    seg_out0_carry_i_7_2,
    seg_out0_carry_i_7_3,
    seg_out0_carry_i_21,
    seg_out0_carry_i_21_0,
    seg_out0_carry_i_21_1,
    seg_out0_carry_i_12_1,
    seg_out0_carry_i_12_2,
    \fnd_font[7] ,
    seg_out0_carry,
    seg_out0_carry_0,
    seg_out0_carry_1);
  output [0:0]p_1_in;
  output \r_counter_reg[1] ;
  output [2:0]Q;
  output \r_counter_reg[1]_0 ;
  output [3:0]fnd_comm_OBUF;
  output \r_counter_reg[1]_1 ;
  output \r_counter_reg[1]_2 ;
  output \r_counter_reg[0] ;
  output \r_counter_reg[0]_0 ;
  output \r_counter_reg[2] ;
  output [7:0]fnd_font_OBUF;
  input CLK;
  input [0:0]AR;
  input [1:0]S;
  input [1:0]\fnd_font_OBUF[4]_inst_i_1 ;
  input seg_out0_carry_i_7;
  input [0:0]seg_out0_carry_i_7_0;
  input [0:0]sw_IBUF;
  input [0:0]seg_out0_carry_i_7_1;
  input seg_out0_carry_i_8;
  input seg_out0_carry_i_8_0;
  input [0:0]led_OBUF;
  input seg_out0_carry_i_4;
  input seg_out0_carry_i_4_0;
  input seg_out0_carry_i_6;
  input seg_out0_carry_i_6_0;
  input [0:0]seg_out0_carry_i_12;
  input [0:0]seg_out0_carry_i_12_0;
  input seg_out0_carry_i_7_2;
  input seg_out0_carry_i_7_3;
  input seg_out0_carry_i_21;
  input seg_out0_carry_i_21_0;
  input seg_out0_carry_i_21_1;
  input [0:0]seg_out0_carry_i_12_1;
  input [0:0]seg_out0_carry_i_12_2;
  input [1:0]\fnd_font[7] ;
  input seg_out0_carry;
  input seg_out0_carry_0;
  input seg_out0_carry_1;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]Q;
  wire [1:0]S;
  wire [3:0]fnd_comm_OBUF;
  wire [1:0]\fnd_font[7] ;
  wire [7:0]fnd_font_OBUF;
  wire [1:0]\fnd_font_OBUF[4]_inst_i_1 ;
  wire [0:0]led_OBUF;
  wire [0:0]p_1_in;
  wire \r_counter_reg[0] ;
  wire \r_counter_reg[0]_0 ;
  wire \r_counter_reg[1] ;
  wire \r_counter_reg[1]_0 ;
  wire \r_counter_reg[1]_1 ;
  wire \r_counter_reg[1]_2 ;
  wire \r_counter_reg[2] ;
  wire seg_out0_carry;
  wire seg_out0_carry_0;
  wire seg_out0_carry_1;
  wire [0:0]seg_out0_carry_i_12;
  wire [0:0]seg_out0_carry_i_12_0;
  wire [0:0]seg_out0_carry_i_12_1;
  wire [0:0]seg_out0_carry_i_12_2;
  wire seg_out0_carry_i_21;
  wire seg_out0_carry_i_21_0;
  wire seg_out0_carry_i_21_1;
  wire seg_out0_carry_i_4;
  wire seg_out0_carry_i_4_0;
  wire seg_out0_carry_i_6;
  wire seg_out0_carry_i_6_0;
  wire seg_out0_carry_i_7;
  wire [0:0]seg_out0_carry_i_7_0;
  wire [0:0]seg_out0_carry_i_7_1;
  wire seg_out0_carry_i_7_2;
  wire seg_out0_carry_i_7_3;
  wire seg_out0_carry_i_8;
  wire seg_out0_carry_i_8_0;
  wire [0:0]sw_IBUF;
  wire u0_n_17;
  wire u0_n_18;
  wire u0_n_19;
  wire u0_n_5;
  wire u0_n_6;
  wire u_clock_div_n_0;
  wire w_2hz;

  counter_4 u0
       (.AR(AR),
        .CLK(u_clock_div_n_0),
        .DI(p_1_in),
        .Q(Q),
        .S({u0_n_5,u0_n_6}),
        .fnd_comm_OBUF(fnd_comm_OBUF),
        .led_OBUF(led_OBUF),
        .\r_counter_reg[0]_0 (\r_counter_reg[0] ),
        .\r_counter_reg[0]_1 (\r_counter_reg[0]_0 ),
        .\r_counter_reg[0]_2 ({u0_n_18,u0_n_19}),
        .\r_counter_reg[1]_0 (\r_counter_reg[1] ),
        .\r_counter_reg[1]_1 (\r_counter_reg[1]_0 ),
        .\r_counter_reg[1]_2 (\r_counter_reg[1]_1 ),
        .\r_counter_reg[1]_3 (\r_counter_reg[1]_2 ),
        .\r_counter_reg[1]_4 (u0_n_17),
        .\r_counter_reg[2]_0 (\r_counter_reg[2] ),
        .seg_out0_carry(seg_out0_carry),
        .seg_out0_carry_0(seg_out0_carry_0),
        .seg_out0_carry_1(seg_out0_carry_1),
        .seg_out0_carry_i_12_0(seg_out0_carry_i_12),
        .seg_out0_carry_i_12_1(seg_out0_carry_i_12_0),
        .seg_out0_carry_i_12_2(seg_out0_carry_i_12_1),
        .seg_out0_carry_i_12_3(seg_out0_carry_i_12_2),
        .seg_out0_carry_i_21(seg_out0_carry_i_21),
        .seg_out0_carry_i_21_0(seg_out0_carry_i_21_0),
        .seg_out0_carry_i_21_1(seg_out0_carry_i_21_1),
        .seg_out0_carry_i_4(seg_out0_carry_i_4),
        .seg_out0_carry_i_4_0(seg_out0_carry_i_4_0),
        .seg_out0_carry_i_6_0(seg_out0_carry_i_6),
        .seg_out0_carry_i_6_1(seg_out0_carry_i_6_0),
        .seg_out0_carry_i_7(seg_out0_carry_i_7),
        .seg_out0_carry_i_7_0(seg_out0_carry_i_7_0),
        .seg_out0_carry_i_7_1(seg_out0_carry_i_7_1),
        .seg_out0_carry_i_7_2(seg_out0_carry_i_7_2),
        .seg_out0_carry_i_7_3(seg_out0_carry_i_7_3),
        .seg_out0_carry_i_8(seg_out0_carry_i_8),
        .seg_out0_carry_i_8_0(seg_out0_carry_i_8_0),
        .sw_IBUF(sw_IBUF),
        .w_2hz(w_2hz));
  clock_div2hz u2hz
       (.AR(AR),
        .CLK(CLK),
        .w_2hz(w_2hz));
  clock_div u_clock_div
       (.AR(AR),
        .CLK(u_clock_div_n_0),
        .\r_counter_reg[16]_0 (CLK));
  bcd_mux ubcd_mux
       (.DI(p_1_in),
        .S({u0_n_18,S,u0_n_19}),
        .\fnd_font[7] (\fnd_font[7] ),
        .fnd_font_OBUF(fnd_font_OBUF),
        .\fnd_font_OBUF[4]_inst_i_1_0 (u0_n_17),
        .\fnd_font_OBUF[4]_inst_i_1_1 ({u0_n_5,\fnd_font_OBUF[4]_inst_i_1 ,u0_n_6}),
        .led_OBUF(led_OBUF),
        .sw_IBUF(sw_IBUF),
        .w_2hz(w_2hz));
endmodule

module stopwatch_cu2
   (E,
    w_run,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    \FSM_onehot_state_reg[2]_3 ,
    D,
    w_clk_100hz,
    w_msec_tick,
    w_sec_tick,
    w_min_tick,
    Q,
    \FSM_onehot_state_reg[2]_4 ,
    \FSM_onehot_state_reg[2]_5 ,
    sw_IBUF,
    CLK,
    AR);
  output [0:0]E;
  output w_run;
  output [0:0]\FSM_onehot_state_reg[2]_0 ;
  output [0:0]\FSM_onehot_state_reg[2]_1 ;
  output [0:0]\FSM_onehot_state_reg[2]_2 ;
  output [0:0]\FSM_onehot_state_reg[2]_3 ;
  output [0:0]D;
  input w_clk_100hz;
  input w_msec_tick;
  input w_sec_tick;
  input w_min_tick;
  input [0:0]Q;
  input \FSM_onehot_state_reg[2]_4 ;
  input \FSM_onehot_state_reg[2]_5 ;
  input [0:0]sw_IBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_1 ;
  wire [0:0]\FSM_onehot_state_reg[2]_2 ;
  wire [0:0]\FSM_onehot_state_reg[2]_3 ;
  wire \FSM_onehot_state_reg[2]_4 ;
  wire \FSM_onehot_state_reg[2]_5 ;
  wire [0:0]Q;
  wire [0:0]state;
  wire [0:0]sw_IBUF;
  wire w_clear;
  wire w_clk_100hz;
  wire w_min_tick;
  wire w_msec_tick;
  wire w_run;
  wire w_sec_tick;

  LUT6 #(
    .INIT(64'hF7F7F5F407030500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_5 ),
        .I1(\FSM_onehot_state_reg[2]_4 ),
        .I2(sw_IBUF),
        .I3(w_clear),
        .I4(w_run),
        .I5(state),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF703F400)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_5 ),
        .I1(\FSM_onehot_state_reg[2]_4 ),
        .I2(sw_IBUF),
        .I3(w_run),
        .I4(state),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC08FC08FC08FC00)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_4 ),
        .I1(\FSM_onehot_state_reg[2]_5 ),
        .I2(sw_IBUF),
        .I3(w_clear),
        .I4(w_run),
        .I5(state),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RUN:010,CLEAR:100,STOP:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(state));
  (* FSM_ENCODED_STATES = "RUN:010,CLEAR:100,STOP:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(w_run));
  (* FSM_ENCODED_STATES = "RUN:010,CLEAR:100,STOP:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(w_clear));
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__3 
       (.I0(w_run),
        .I1(Q),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_reg[19]_i_1 
       (.I0(w_clear),
        .I1(w_run),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_reg[5]_i_1__1 
       (.I0(w_clear),
        .I1(w_msec_tick),
        .O(\FSM_onehot_state_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_reg[5]_i_1__2 
       (.I0(w_clear),
        .I1(w_sec_tick),
        .O(\FSM_onehot_state_reg[2]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count_reg[5]_i_1__3 
       (.I0(w_clear),
        .I1(w_min_tick),
        .O(\FSM_onehot_state_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_reg[6]_i_1 
       (.I0(w_clear),
        .I1(w_clk_100hz),
        .O(\FSM_onehot_state_reg[2]_0 ));
endmodule

module stopwatch_dp
   (Q,
    \count_reg_reg[4] ,
    \state_reg[1] ,
    \count_reg_reg[0] ,
    \count_reg_reg[0]_0 ,
    \r_counter_reg[1] ,
    \count_reg_reg[2] ,
    \r_counter_reg[1]_0 ,
    \r_counter_reg[2] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[5] ,
    \count_reg_reg[5]_0 ,
    \count_reg_reg[5]_1 ,
    \r_counter_reg[0] ,
    \r_counter_reg[0]_0 ,
    \count_reg_reg[1] ,
    \count_reg_reg[5]_2 ,
    \count_reg_reg[1]_0 ,
    S,
    \r_counter_reg[0]_1 ,
    CLK,
    AR,
    \count_reg_reg[1]_1 ,
    \count_reg_reg[5]_3 ,
    \state_reg[1]_0 ,
    seg_out0_carry_i_5,
    seg_out0_carry_i_5_0,
    seg_out0_carry_i_5_1,
    seg_out0_carry_i_7,
    seg_out0_carry_i_5_2,
    p_1_in,
    led_OBUF,
    seg_out0_carry_i_9,
    seg_out0_carry_i_8,
    seg_out0_carry_i_8_0,
    sw_IBUF,
    seg_out0_carry_i_17,
    seg_out0_carry_i_8_1,
    seg_out0_carry_i_17_0,
    seg_out0_carry_i_14,
    seg_out0_carry_i_13,
    seg_out0_carry);
  output [2:0]Q;
  output [1:0]\count_reg_reg[4] ;
  output [1:0]\state_reg[1] ;
  output [0:0]\count_reg_reg[0] ;
  output [0:0]\count_reg_reg[0]_0 ;
  output \r_counter_reg[1] ;
  output \count_reg_reg[2] ;
  output \r_counter_reg[1]_0 ;
  output \r_counter_reg[2] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[5] ;
  output \count_reg_reg[5]_0 ;
  output \count_reg_reg[5]_1 ;
  output \r_counter_reg[0] ;
  output \r_counter_reg[0]_0 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[5]_2 ;
  output \count_reg_reg[1]_0 ;
  output [1:0]S;
  output [1:0]\r_counter_reg[0]_1 ;
  input CLK;
  input [0:0]AR;
  input \count_reg_reg[1]_1 ;
  input \count_reg_reg[5]_3 ;
  input \state_reg[1]_0 ;
  input seg_out0_carry_i_5;
  input seg_out0_carry_i_5_0;
  input [2:0]seg_out0_carry_i_5_1;
  input seg_out0_carry_i_7;
  input seg_out0_carry_i_5_2;
  input [0:0]p_1_in;
  input [0:0]led_OBUF;
  input seg_out0_carry_i_9;
  input seg_out0_carry_i_8;
  input seg_out0_carry_i_8_0;
  input [0:0]sw_IBUF;
  input [5:0]seg_out0_carry_i_17;
  input seg_out0_carry_i_8_1;
  input [5:0]seg_out0_carry_i_17_0;
  input [4:0]seg_out0_carry_i_14;
  input [5:0]seg_out0_carry_i_13;
  input seg_out0_carry;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]Q;
  wire [1:0]S;
  wire [0:0]\count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[1]_1 ;
  wire \count_reg_reg[2] ;
  wire [1:0]\count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[5] ;
  wire \count_reg_reg[5]_0 ;
  wire \count_reg_reg[5]_1 ;
  wire \count_reg_reg[5]_2 ;
  wire \count_reg_reg[5]_3 ;
  wire [0:0]led_OBUF;
  wire [0:0]p_1_in;
  wire \r_counter_reg[0] ;
  wire \r_counter_reg[0]_0 ;
  wire [1:0]\r_counter_reg[0]_1 ;
  wire \r_counter_reg[1] ;
  wire \r_counter_reg[1]_0 ;
  wire \r_counter_reg[2] ;
  wire seg_out0_carry;
  wire [5:0]seg_out0_carry_i_13;
  wire [4:0]seg_out0_carry_i_14;
  wire [5:0]seg_out0_carry_i_17;
  wire [5:0]seg_out0_carry_i_17_0;
  wire seg_out0_carry_i_5;
  wire seg_out0_carry_i_5_0;
  wire [2:0]seg_out0_carry_i_5_1;
  wire seg_out0_carry_i_5_2;
  wire seg_out0_carry_i_7;
  wire seg_out0_carry_i_8;
  wire seg_out0_carry_i_8_0;
  wire seg_out0_carry_i_8_1;
  wire seg_out0_carry_i_9;
  wire [1:0]\state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire [0:0]sw_IBUF;
  wire tick_next;
  wire u_ti2_n_1;
  wire u_ti2_n_4;
  wire u_ti2_n_6;
  wire u_ti3_n_1;
  wire u_ti3_n_10;
  wire u_ti3_n_2;
  wire u_ti3_n_5;
  wire u_ti3_n_7;
  wire u_ti_n_3;
  wire u_ti_n_5;
  wire uclock_set_n_0;
  wire uclock_set_n_3;
  wire w_clk_100hz;
  wire w_min_tick;
  wire w_msec_tick;
  wire w_sec_tick;

  time_counter u_ti
       (.AR(AR),
        .CLK(CLK),
        .E(w_msec_tick),
        .Q(\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1]_0 ),
        .\count_reg_reg[6]_0 (w_clk_100hz),
        .\r_counter_reg[1] (\r_counter_reg[1] ),
        .\r_counter_reg[1]_0 (u_ti_n_3),
        .\r_counter_reg[1]_1 (u_ti_n_5),
        .seg_out0_carry_i_13_0(seg_out0_carry_i_13),
        .seg_out0_carry_i_5(u_ti2_n_4),
        .seg_out0_carry_i_5_0(u_ti3_n_10),
        .seg_out0_carry_i_5_1(seg_out0_carry_i_5),
        .seg_out0_carry_i_5_2(seg_out0_carry_i_5_0),
        .seg_out0_carry_i_7_0(seg_out0_carry_i_5_1[1:0]),
        .sw_IBUF(sw_IBUF));
  time_counter_sec u_ti2
       (.AR(AR),
        .CLK(CLK),
        .E(w_msec_tick),
        .Q(\count_reg_reg[0]_0 ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1] ),
        .\count_reg_reg[1]_1 (\count_reg_reg[1]_1 ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2] ),
        .\count_reg_reg[5]_0 (\count_reg_reg[5]_2 ),
        .p_1_in(p_1_in),
        .\r_counter_reg[1] (u_ti2_n_4),
        .\r_counter_reg[1]_0 (u_ti2_n_6),
        .seg_out0_carry_i_14_0(seg_out0_carry_i_14),
        .seg_out0_carry_i_7(seg_out0_carry_i_5_1[1:0]),
        .seg_out0_carry_i_7_0(seg_out0_carry_i_7),
        .sw_IBUF(sw_IBUF),
        .tick_next(tick_next),
        .tick_reg_reg_0(u_ti2_n_1),
        .tick_reg_reg_1(u_ti3_n_2),
        .w_sec_tick(w_sec_tick));
  time_counter_min u_ti3
       (.AR(AR),
        .CLK(CLK),
        .E(uclock_set_n_3),
        .Q(\count_reg_reg[4] ),
        .\count_reg_reg[1]_0 (u_ti3_n_10),
        .\count_reg_reg[1]_1 (\count_reg_reg[1]_1 ),
        .\count_reg_reg[1]_2 (u_ti2_n_1),
        .\count_reg_reg[2]_0 (u_ti3_n_2),
        .\count_reg_reg[2]_1 (u_ti3_n_5),
        .\count_reg_reg[5]_0 (\count_reg_reg[5]_0 ),
        .\count_reg_reg[5]_1 (\count_reg_reg[5]_1 ),
        .\r_counter_reg[0] (u_ti3_n_7),
        .\r_counter_reg[0]_0 (\r_counter_reg[0] ),
        .seg_out0_carry_i_17(seg_out0_carry_i_17),
        .seg_out0_carry_i_7(seg_out0_carry_i_5_1[1:0]),
        .seg_out0_carry_i_8(seg_out0_carry_i_8),
        .seg_out0_carry_i_8_0(seg_out0_carry_i_8_0),
        .sw_IBUF(sw_IBUF),
        .tick_next(tick_next),
        .tick_reg_reg_0(u_ti3_n_1),
        .w_min_tick(w_min_tick));
  time_counter_hour u_ti4
       (.AR(AR),
        .CLK(CLK),
        .E(uclock_set_n_0),
        .Q(Q),
        .S(S),
        .\count_reg_reg[1]_0 (u_ti3_n_1),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_0 ),
        .\count_reg_reg[5] (\count_reg_reg[5] ),
        .led_OBUF(led_OBUF),
        .p_1_in(p_1_in),
        .\r_counter_reg[0] (\r_counter_reg[0]_0 ),
        .\r_counter_reg[0]_0 (\r_counter_reg[0]_1 ),
        .\r_counter_reg[1] (\r_counter_reg[1]_0 ),
        .\r_counter_reg[2] (\r_counter_reg[2] ),
        .seg_out0_carry(\r_counter_reg[1] ),
        .seg_out0_carry_0(seg_out0_carry),
        .seg_out0_carry_i_17(seg_out0_carry_i_17_0),
        .seg_out0_carry_i_5(seg_out0_carry_i_5_2),
        .seg_out0_carry_i_5_0(u_ti_n_3),
        .seg_out0_carry_i_5_1(u_ti3_n_5),
        .seg_out0_carry_i_5_2(u_ti3_n_7),
        .seg_out0_carry_i_5_3(u_ti_n_5),
        .seg_out0_carry_i_5_4(u_ti2_n_6),
        .seg_out0_carry_i_5_5(seg_out0_carry_i_5_1),
        .seg_out0_carry_i_8_0(seg_out0_carry_i_8_1),
        .seg_out0_carry_i_9_0(seg_out0_carry_i_9),
        .sw_IBUF(sw_IBUF));
  clk_div_100 uclk_100
       (.AR(AR),
        .CLK(CLK),
        .clk_reg_reg_0(w_clk_100hz));
  clock_set uclock_set
       (.AR(AR),
        .CLK(CLK),
        .E(uclock_set_n_0),
        .Q(\state_reg[1] ),
        .\count_reg_reg[5] (\count_reg_reg[5]_3 ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .tick_reg_reg(uclock_set_n_3),
        .w_min_tick(w_min_tick),
        .w_sec_tick(w_sec_tick));
endmodule

module stopwatch_dp2
   (w_msec_tick,
    w_sec_tick,
    w_min_tick,
    w_clk_100hz,
    Q,
    \count_reg_reg[6] ,
    \count_reg_reg[5] ,
    \count_reg_reg[5]_0 ,
    \count_reg_reg[5]_1 ,
    \count_reg_reg[3] ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[5]_2 ,
    CLK,
    AR,
    seg_out0_carry_i_48,
    sw_IBUF,
    seg_out0_carry_i_24,
    w_run,
    D,
    E,
    \count_reg_reg[0] ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[0]_1 ,
    \count_reg_reg[0]_2 );
  output w_msec_tick;
  output w_sec_tick;
  output w_min_tick;
  output w_clk_100hz;
  output [0:0]Q;
  output [6:0]\count_reg_reg[6] ;
  output [5:0]\count_reg_reg[5] ;
  output [5:0]\count_reg_reg[5]_0 ;
  output [5:0]\count_reg_reg[5]_1 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[5]_2 ;
  input CLK;
  input [0:0]AR;
  input [1:0]seg_out0_carry_i_48;
  input [0:0]sw_IBUF;
  input [1:0]seg_out0_carry_i_24;
  input w_run;
  input [0:0]D;
  input [0:0]E;
  input [0:0]\count_reg_reg[0] ;
  input [0:0]\count_reg_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_1 ;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]\count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4] ;
  wire [5:0]\count_reg_reg[5] ;
  wire [5:0]\count_reg_reg[5]_0 ;
  wire [5:0]\count_reg_reg[5]_1 ;
  wire \count_reg_reg[5]_2 ;
  wire [6:0]\count_reg_reg[6] ;
  wire [1:0]seg_out0_carry_i_24;
  wire [1:0]seg_out0_carry_i_48;
  wire [0:0]sw_IBUF;
  wire u_ti22_n_7;
  wire u_ti2_n_8;
  wire u_ti32_n_7;
  wire uclk_1002_n_2;
  wire w_clk_100hz;
  wire w_min_tick;
  wire w_msec_tick;
  wire w_run;
  wire w_sec_tick;

  time_counter2 u_ti2
       (.AR(AR),
        .CLK(CLK),
        .D(u_ti2_n_8),
        .E(E),
        .Q(\count_reg_reg[6] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[5] [0]),
        .\count_reg_reg[0]_1 (uclk_1002_n_2),
        .\count_reg_reg[1]_0 (w_clk_100hz),
        .tick_reg_reg_0(w_msec_tick));
  time_counter2__parameterized0 u_ti22
       (.AR(AR),
        .CLK(CLK),
        .D(u_ti22_n_7),
        .Q(\count_reg_reg[5] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[5]_0 [0]),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[0]_2 (u_ti2_n_8),
        .\count_reg_reg[1]_0 (w_msec_tick),
        .tick_reg_reg_0(w_sec_tick));
  time_counter2__parameterized0_4 u_ti32
       (.AR(AR),
        .CLK(CLK),
        .D(u_ti32_n_7),
        .Q(\count_reg_reg[5]_0 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[5]_1 [0]),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_2 (u_ti22_n_7),
        .\count_reg_reg[1]_0 (w_sec_tick),
        .\count_reg_reg[3]_0 (\count_reg_reg[3] ),
        .seg_out0_carry_i_48(seg_out0_carry_i_48),
        .sw_IBUF(sw_IBUF),
        .tick_reg_reg_0(w_min_tick));
  time_counter2__parameterized1 u_ti42
       (.AR(AR),
        .CLK(CLK),
        .D(u_ti32_n_7),
        .Q(\count_reg_reg[5]_1 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[1]_0 (w_min_tick),
        .\count_reg_reg[3]_0 (\count_reg_reg[3]_0 ),
        .\count_reg_reg[4]_0 (\count_reg_reg[4] ),
        .\count_reg_reg[5]_0 (\count_reg_reg[5]_2 ),
        .seg_out0_carry_i_24(seg_out0_carry_i_24),
        .sw_IBUF(sw_IBUF));
  clk_div_1002 uclk_1002
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .clk_reg_reg_0(uclk_1002_n_2),
        .\count_reg_reg[0]_0 (\count_reg_reg[6] [0]),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_2 ),
        .w_clk_100hz(w_clk_100hz),
        .w_run(w_run));
endmodule

module time_counter
   (E,
    Q,
    \r_counter_reg[1] ,
    \r_counter_reg[1]_0 ,
    \count_reg_reg[1]_0 ,
    \r_counter_reg[1]_1 ,
    CLK,
    AR,
    \count_reg_reg[6]_0 ,
    seg_out0_carry_i_5,
    seg_out0_carry_i_5_0,
    seg_out0_carry_i_5_1,
    seg_out0_carry_i_5_2,
    seg_out0_carry_i_7_0,
    sw_IBUF,
    seg_out0_carry_i_13_0);
  output [0:0]E;
  output [0:0]Q;
  output \r_counter_reg[1] ;
  output \r_counter_reg[1]_0 ;
  output \count_reg_reg[1]_0 ;
  output \r_counter_reg[1]_1 ;
  input CLK;
  input [0:0]AR;
  input [0:0]\count_reg_reg[6]_0 ;
  input seg_out0_carry_i_5;
  input seg_out0_carry_i_5_0;
  input seg_out0_carry_i_5_1;
  input seg_out0_carry_i_5_2;
  input [1:0]seg_out0_carry_i_7_0;
  input [0:0]sw_IBUF;
  input [5:0]seg_out0_carry_i_13_0;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
  wire [6:0]count_next;
  wire \count_reg[6]_i_2__0_n_0 ;
  wire \count_reg_reg[1]_0 ;
  wire [0:0]\count_reg_reg[6]_0 ;
  wire \r_counter_reg[1] ;
  wire \r_counter_reg[1]_0 ;
  wire \r_counter_reg[1]_1 ;
  wire [5:0]seg_out0_carry_i_13_0;
  wire seg_out0_carry_i_13_n_0;
  wire seg_out0_carry_i_15_n_0;
  wire seg_out0_carry_i_34_n_0;
  wire seg_out0_carry_i_35_n_0;
  wire seg_out0_carry_i_36_n_0;
  wire seg_out0_carry_i_44_n_0;
  wire seg_out0_carry_i_5;
  wire seg_out0_carry_i_58_n_0;
  wire seg_out0_carry_i_5_0;
  wire seg_out0_carry_i_5_1;
  wire seg_out0_carry_i_5_2;
  wire seg_out0_carry_i_63_n_0;
  wire seg_out0_carry_i_64_n_0;
  wire seg_out0_carry_i_65_n_0;
  wire seg_out0_carry_i_66_n_0;
  wire seg_out0_carry_i_67_n_0;
  wire seg_out0_carry_i_68_n_0;
  wire [1:0]seg_out0_carry_i_7_0;
  wire [0:0]sw_IBUF;
  wire tick_reg_i_1_n_0;
  wire tick_reg_i_2_n_0;
  wire [6:1]w_msec;

  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[0]_i_1__6 
       (.I0(Q),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__2 
       (.I0(Q),
        .I1(w_msec[1]),
        .O(count_next[1]));
  LUT6 #(
    .INIT(64'h0000FFFFFBFF0000)) 
    \count_reg[2]_i_1__4 
       (.I0(w_msec[4]),
        .I1(w_msec[5]),
        .I2(w_msec[3]),
        .I3(w_msec[6]),
        .I4(\count_reg[6]_i_2__0_n_0 ),
        .I5(w_msec[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_reg[3]_i_1__4 
       (.I0(w_msec[3]),
        .I1(Q),
        .I2(w_msec[1]),
        .I3(w_msec[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__4 
       (.I0(w_msec[4]),
        .I1(w_msec[2]),
        .I2(w_msec[1]),
        .I3(Q),
        .I4(w_msec[3]),
        .O(count_next[4]));
  LUT6 #(
    .INIT(64'h3CCCCCCCCCC4CCCC)) 
    \count_reg[5]_i_1__4 
       (.I0(w_msec[6]),
        .I1(w_msec[5]),
        .I2(w_msec[4]),
        .I3(w_msec[2]),
        .I4(\count_reg[6]_i_2__0_n_0 ),
        .I5(w_msec[3]),
        .O(count_next[5]));
  LUT6 #(
    .INIT(64'h7FFBFFFF80000000)) 
    \count_reg[6]_i_1__0 
       (.I0(w_msec[3]),
        .I1(\count_reg[6]_i_2__0_n_0 ),
        .I2(w_msec[2]),
        .I3(w_msec[4]),
        .I4(w_msec[5]),
        .I5(w_msec[6]),
        .O(count_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[6]_i_2__0 
       (.I0(Q),
        .I1(w_msec[1]),
        .O(\count_reg[6]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(\count_reg_reg[6]_0 ),
        .CLR(AR),
        .D(count_next[0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(\count_reg_reg[6]_0 ),
        .CLR(AR),
        .D(count_next[1]),
        .Q(w_msec[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(\count_reg_reg[6]_0 ),
        .CLR(AR),
        .D(count_next[2]),
        .Q(w_msec[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(\count_reg_reg[6]_0 ),
        .CLR(AR),
        .D(count_next[3]),
        .Q(w_msec[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(\count_reg_reg[6]_0 ),
        .CLR(AR),
        .D(count_next[4]),
        .Q(w_msec[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(\count_reg_reg[6]_0 ),
        .CLR(AR),
        .D(count_next[5]),
        .Q(w_msec[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[6] 
       (.C(CLK),
        .CE(\count_reg_reg[6]_0 ),
        .CLR(AR),
        .D(count_next[6]),
        .Q(w_msec[6]));
  LUT5 #(
    .INIT(32'h44040004)) 
    seg_out0_carry_i_13
       (.I0(seg_out0_carry_i_7_0[1]),
        .I1(seg_out0_carry_i_7_0[0]),
        .I2(seg_out0_carry_i_34_n_0),
        .I3(seg_out0_carry_i_35_n_0),
        .I4(seg_out0_carry_i_36_n_0),
        .O(seg_out0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF656A)) 
    seg_out0_carry_i_15
       (.I0(\count_reg_reg[1]_0 ),
        .I1(w_msec[1]),
        .I2(sw_IBUF),
        .I3(seg_out0_carry_i_13_0[0]),
        .I4(seg_out0_carry_i_7_0[1]),
        .I5(seg_out0_carry_i_7_0[0]),
        .O(seg_out0_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'hFEFEAEFE)) 
    seg_out0_carry_i_20
       (.I0(seg_out0_carry_i_7_0[1]),
        .I1(seg_out0_carry_i_44_n_0),
        .I2(seg_out0_carry_i_7_0[0]),
        .I3(seg_out0_carry_i_36_n_0),
        .I4(seg_out0_carry_i_35_n_0),
        .O(\r_counter_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0101510101010101)) 
    seg_out0_carry_i_26
       (.I0(seg_out0_carry_i_7_0[1]),
        .I1(seg_out0_carry_i_58_n_0),
        .I2(seg_out0_carry_i_7_0[0]),
        .I3(seg_out0_carry_i_34_n_0),
        .I4(seg_out0_carry_i_36_n_0),
        .I5(seg_out0_carry_i_35_n_0),
        .O(\r_counter_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hF7CF10710C10F7CF)) 
    seg_out0_carry_i_30
       (.I0(seg_out0_carry_i_63_n_0),
        .I1(seg_out0_carry_i_64_n_0),
        .I2(seg_out0_carry_i_65_n_0),
        .I3(seg_out0_carry_i_66_n_0),
        .I4(seg_out0_carry_i_67_n_0),
        .I5(seg_out0_carry_i_68_n_0),
        .O(\count_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB40BBD4B)) 
    seg_out0_carry_i_34
       (.I0(seg_out0_carry_i_68_n_0),
        .I1(seg_out0_carry_i_67_n_0),
        .I2(seg_out0_carry_i_66_n_0),
        .I3(seg_out0_carry_i_65_n_0),
        .I4(seg_out0_carry_i_64_n_0),
        .O(seg_out0_carry_i_34_n_0));
  LUT6 #(
    .INIT(64'hCCC0AAAACCC0A0A0)) 
    seg_out0_carry_i_35
       (.I0(seg_out0_carry_i_13_0[5]),
        .I1(w_msec[6]),
        .I2(seg_out0_carry_i_67_n_0),
        .I3(w_msec[4]),
        .I4(sw_IBUF),
        .I5(seg_out0_carry_i_13_0[3]),
        .O(seg_out0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'hBABF4540202A4540)) 
    seg_out0_carry_i_36
       (.I0(seg_out0_carry_i_65_n_0),
        .I1(w_msec[6]),
        .I2(sw_IBUF),
        .I3(seg_out0_carry_i_13_0[5]),
        .I4(seg_out0_carry_i_67_n_0),
        .I5(seg_out0_carry_i_68_n_0),
        .O(seg_out0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h3CE379C79E793CE3)) 
    seg_out0_carry_i_44
       (.I0(seg_out0_carry_i_63_n_0),
        .I1(seg_out0_carry_i_64_n_0),
        .I2(seg_out0_carry_i_65_n_0),
        .I3(seg_out0_carry_i_66_n_0),
        .I4(seg_out0_carry_i_67_n_0),
        .I5(seg_out0_carry_i_68_n_0),
        .O(seg_out0_carry_i_44_n_0));
  LUT6 #(
    .INIT(64'hFBDFE7BE7DE7FBDF)) 
    seg_out0_carry_i_58
       (.I0(seg_out0_carry_i_63_n_0),
        .I1(seg_out0_carry_i_64_n_0),
        .I2(seg_out0_carry_i_65_n_0),
        .I3(seg_out0_carry_i_66_n_0),
        .I4(seg_out0_carry_i_67_n_0),
        .I5(seg_out0_carry_i_68_n_0),
        .O(seg_out0_carry_i_58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_63
       (.I0(w_msec[1]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_13_0[0]),
        .O(seg_out0_carry_i_63_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_64
       (.I0(w_msec[2]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_13_0[1]),
        .O(seg_out0_carry_i_64_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_65
       (.I0(w_msec[4]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_13_0[3]),
        .O(seg_out0_carry_i_65_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_66
       (.I0(w_msec[6]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_13_0[5]),
        .O(seg_out0_carry_i_66_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_67
       (.I0(w_msec[5]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_13_0[4]),
        .O(seg_out0_carry_i_67_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_68
       (.I0(w_msec[3]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_13_0[2]),
        .O(seg_out0_carry_i_68_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    seg_out0_carry_i_7
       (.I0(seg_out0_carry_i_13_n_0),
        .I1(seg_out0_carry_i_5),
        .I2(seg_out0_carry_i_15_n_0),
        .I3(seg_out0_carry_i_5_0),
        .I4(seg_out0_carry_i_5_1),
        .I5(seg_out0_carry_i_5_2),
        .O(\r_counter_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    tick_reg_i_1
       (.I0(\count_reg_reg[6]_0 ),
        .I1(w_msec[6]),
        .I2(tick_reg_i_2_n_0),
        .O(tick_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    tick_reg_i_2
       (.I0(w_msec[2]),
        .I1(Q),
        .I2(w_msec[1]),
        .I3(w_msec[3]),
        .I4(w_msec[5]),
        .I5(w_msec[4]),
        .O(tick_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tick_reg_i_1_n_0),
        .Q(E));
endmodule

module time_counter2
   (tick_reg_reg_0,
    Q,
    D,
    CLK,
    AR,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    E,
    \count_reg_reg[0]_1 );
  output tick_reg_reg_0;
  output [6:0]Q;
  output [0:0]D;
  input CLK;
  input [0:0]AR;
  input \count_reg_reg[1]_0 ;
  input [0:0]\count_reg_reg[0]_0 ;
  input [0:0]E;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire \count_reg[1]_i_1__4_n_0 ;
  wire \count_reg[2]_i_1__1_n_0 ;
  wire \count_reg[2]_i_2_n_0 ;
  wire \count_reg[3]_i_1__1_n_0 ;
  wire \count_reg[4]_i_1__1_n_0 ;
  wire \count_reg[5]_i_1__0_n_0 ;
  wire \count_reg[5]_i_2__2_n_0 ;
  wire \count_reg[5]_i_3__0_n_0 ;
  wire \count_reg[6]_i_2_n_0 ;
  wire \count_reg[6]_i_3_n_0 ;
  wire \count_reg[6]_i_4_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire tick_reg_i_1__1_n_0;
  wire tick_reg_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__0 
       (.I0(tick_reg_reg_0),
        .I1(\count_reg_reg[0]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count_reg_reg[1]_0 ),
        .O(\count_reg[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h28880888)) 
    \count_reg[2]_i_1__1 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\count_reg[2]_i_2_n_0 ),
        .O(\count_reg[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count_reg[2]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[4]),
        .O(\count_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \count_reg[3]_i_1__1 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_reg[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count_reg[4]_i_1__1 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_reg[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h1444444444444444)) 
    \count_reg[5]_i_1__0 
       (.I0(\count_reg[5]_i_2__2_n_0 ),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\count_reg[5]_i_3__0_n_0 ),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_reg[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    \count_reg[5]_i_2__2 
       (.I0(\count_reg[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\count_reg_reg[1]_0 ),
        .O(\count_reg[5]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[5]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_reg[5]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0600)) 
    \count_reg[6]_i_2 
       (.I0(Q[6]),
        .I1(\count_reg[6]_i_3_n_0 ),
        .I2(\count_reg[6]_i_4_n_0 ),
        .I3(\count_reg_reg[1]_0 ),
        .O(\count_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_reg[6]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \count_reg[6]_i_4 
       (.I0(Q[2]),
        .I1(\count_reg[5]_i_3__0_n_0 ),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_reg[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg_reg[0]_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[1]_i_1__4_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[3]_i_1__1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[4]_i_1__1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[6]_i_2_n_0 ),
        .Q(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    tick_reg_i_1__1
       (.I0(\count_reg[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\count_reg_reg[1]_0 ),
        .O(tick_reg_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tick_reg_i_1__1_n_0),
        .Q(tick_reg_reg_0));
endmodule

(* ORIG_REF_NAME = "time_counter2" *) 
module time_counter2__parameterized0
   (tick_reg_reg_0,
    Q,
    D,
    CLK,
    AR,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[0]_1 ,
    \count_reg_reg[0]_2 );
  output tick_reg_reg_0;
  output [5:0]Q;
  output [0:0]D;
  input CLK;
  input [0:0]AR;
  input \count_reg_reg[1]_0 ;
  input [0:0]\count_reg_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_1 ;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [5:0]Q;
  wire \count_reg[1]_i_1__5_n_0 ;
  wire \count_reg[2]_i_1__2_n_0 ;
  wire \count_reg[2]_i_2__0_n_0 ;
  wire \count_reg[3]_i_1__2_n_0 ;
  wire \count_reg[4]_i_1__2_n_0 ;
  wire \count_reg[5]_i_2_n_0 ;
  wire \count_reg[5]_i_3__1_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1]_0 ;
  wire tick_reg_i_1__2_n_0;
  wire tick_reg_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__1 
       (.I0(tick_reg_reg_0),
        .I1(\count_reg_reg[0]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count_reg_reg[1]_0 ),
        .O(\count_reg[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \count_reg[2]_i_1__2 
       (.I0(\count_reg[2]_i_2__0_n_0 ),
        .I1(\count_reg_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count_reg[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \count_reg[2]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\count_reg[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00F070F0F0000000)) 
    \count_reg[3]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\count_reg_reg[1]_0 ),
        .I3(\count_reg[5]_i_3__1_n_0 ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_reg[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC4CCCC0000000)) 
    \count_reg[4]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_reg_reg[1]_0 ),
        .I2(Q[3]),
        .I3(\count_reg[5]_i_3__1_n_0 ),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_reg[4]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h2888888808888888)) 
    \count_reg[5]_i_2 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\count_reg[5]_i_3__1_n_0 ),
        .I5(Q[2]),
        .O(\count_reg[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[5]_i_3__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_reg[5]_i_3__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg_reg[0]_2 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[1]_i_1__5_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[2]_i_1__2_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[3]_i_1__2_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[4]_i_1__2_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[5]_i_2_n_0 ),
        .Q(Q[5]));
  LUT2 #(
    .INIT(4'h8)) 
    tick_reg_i_1__2
       (.I0(\count_reg[2]_i_2__0_n_0 ),
        .I1(\count_reg_reg[1]_0 ),
        .O(tick_reg_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tick_reg_i_1__2_n_0),
        .Q(tick_reg_reg_0));
endmodule

(* ORIG_REF_NAME = "time_counter2" *) 
module time_counter2__parameterized0_4
   (tick_reg_reg_0,
    Q,
    D,
    \count_reg_reg[3]_0 ,
    CLK,
    AR,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    seg_out0_carry_i_48,
    sw_IBUF,
    \count_reg_reg[0]_1 ,
    \count_reg_reg[0]_2 );
  output tick_reg_reg_0;
  output [5:0]Q;
  output [0:0]D;
  output \count_reg_reg[3]_0 ;
  input CLK;
  input [0:0]AR;
  input \count_reg_reg[1]_0 ;
  input [0:0]\count_reg_reg[0]_0 ;
  input [1:0]seg_out0_carry_i_48;
  input [0:0]sw_IBUF;
  input [0:0]\count_reg_reg[0]_1 ;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [5:0]Q;
  wire \count_reg[1]_i_1__6_n_0 ;
  wire \count_reg[2]_i_1__3_n_0 ;
  wire \count_reg[2]_i_2__1_n_0 ;
  wire \count_reg[3]_i_1__3_n_0 ;
  wire \count_reg[4]_i_1__3_n_0 ;
  wire \count_reg[5]_i_2__0_n_0 ;
  wire \count_reg[5]_i_3__2_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire [1:0]seg_out0_carry_i_48;
  wire [0:0]sw_IBUF;
  wire tick_reg_i_1__3_n_0;
  wire tick_reg_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__2 
       (.I0(tick_reg_reg_0),
        .I1(\count_reg_reg[0]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count_reg_reg[1]_0 ),
        .O(\count_reg[1]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \count_reg[2]_i_1__3 
       (.I0(\count_reg[2]_i_2__1_n_0 ),
        .I1(\count_reg_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count_reg[2]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \count_reg[2]_i_2__1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\count_reg[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00F070F0F0000000)) 
    \count_reg[3]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\count_reg_reg[1]_0 ),
        .I3(\count_reg[5]_i_3__2_n_0 ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_reg[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0CCC4CCCC0000000)) 
    \count_reg[4]_i_1__3 
       (.I0(Q[5]),
        .I1(\count_reg_reg[1]_0 ),
        .I2(Q[3]),
        .I3(\count_reg[5]_i_3__2_n_0 ),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_reg[4]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h2888888808888888)) 
    \count_reg[5]_i_2__0 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\count_reg[5]_i_3__2_n_0 ),
        .I5(Q[2]),
        .O(\count_reg[5]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[5]_i_3__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_reg[5]_i_3__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg_reg[0]_2 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[1]_i_1__6_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[2]_i_1__3_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[3]_i_1__3_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[4]_i_1__3_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_1 ),
        .CLR(AR),
        .D(\count_reg[5]_i_2__0_n_0 ),
        .Q(Q[5]));
  LUT5 #(
    .INIT(32'h00053305)) 
    seg_out0_carry_i_70
       (.I0(Q[3]),
        .I1(seg_out0_carry_i_48[0]),
        .I2(Q[4]),
        .I3(sw_IBUF),
        .I4(seg_out0_carry_i_48[1]),
        .O(\count_reg_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    tick_reg_i_1__3
       (.I0(\count_reg[2]_i_2__1_n_0 ),
        .I1(\count_reg_reg[1]_0 ),
        .O(tick_reg_i_1__3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tick_reg_i_1__3_n_0),
        .Q(tick_reg_reg_0));
endmodule

(* ORIG_REF_NAME = "time_counter2" *) 
module time_counter2__parameterized1
   (Q,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[5]_0 ,
    \count_reg_reg[1]_0 ,
    seg_out0_carry_i_24,
    sw_IBUF,
    \count_reg_reg[0]_0 ,
    CLK,
    AR,
    D);
  output [5:0]Q;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[5]_0 ;
  input \count_reg_reg[1]_0 ;
  input [1:0]seg_out0_carry_i_24;
  input [0:0]sw_IBUF;
  input [0:0]\count_reg_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [5:0]Q;
  wire \count_reg[1]_i_1__1_n_0 ;
  wire \count_reg[2]_i_1__5_n_0 ;
  wire \count_reg[3]_i_1__5_n_0 ;
  wire \count_reg[4]_i_1__5_n_0 ;
  wire \count_reg[5]_i_2__1_n_0 ;
  wire \count_reg[5]_i_3__3_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[5]_0 ;
  wire [1:0]seg_out0_carry_i_24;
  wire [0:0]sw_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1__1 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\count_reg[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF007F000000)) 
    \count_reg[2]_i_1__5 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\count_reg_reg[1]_0 ),
        .I4(\count_reg[5]_i_3__3_n_0 ),
        .I5(Q[2]),
        .O(\count_reg[2]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h00F070F0F0000000)) 
    \count_reg[3]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\count_reg_reg[1]_0 ),
        .I3(\count_reg[5]_i_3__3_n_0 ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_reg[3]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h04CCCCCCC0000000)) 
    \count_reg[4]_i_1__5 
       (.I0(Q[5]),
        .I1(\count_reg_reg[1]_0 ),
        .I2(Q[2]),
        .I3(\count_reg[5]_i_3__3_n_0 ),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_reg[4]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h2808888888888888)) 
    \count_reg[5]_i_2__1 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(\count_reg[5]_i_3__3_n_0 ),
        .I5(Q[3]),
        .O(\count_reg[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg[5]_i_3__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_reg[5]_i_3__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_0 ),
        .CLR(AR),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\count_reg[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\count_reg[2]_i_1__5_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\count_reg[3]_i_1__5_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\count_reg[4]_i_1__5_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(\count_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\count_reg[5]_i_2__1_n_0 ),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    seg_out0_carry_i_51
       (.I0(Q[5]),
        .I1(sw_IBUF),
        .O(\count_reg_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    seg_out0_carry_i_54
       (.I0(Q[3]),
        .I1(seg_out0_carry_i_24[1]),
        .I2(\count_reg_reg[4]_0 ),
        .I3(seg_out0_carry_i_24[0]),
        .I4(sw_IBUF),
        .I5(Q[2]),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    seg_out0_carry_i_69
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(sw_IBUF),
        .I3(Q[5]),
        .O(\count_reg_reg[4]_0 ));
endmodule

module time_counter_hour
   (Q,
    \r_counter_reg[1] ,
    \r_counter_reg[2] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[5] ,
    \r_counter_reg[0] ,
    S,
    \r_counter_reg[0]_0 ,
    \count_reg_reg[1]_0 ,
    seg_out0_carry_i_5,
    seg_out0_carry_i_5_0,
    seg_out0_carry_i_5_1,
    p_1_in,
    seg_out0_carry_i_5_2,
    led_OBUF,
    seg_out0_carry_i_5_3,
    seg_out0_carry_i_5_4,
    seg_out0_carry_i_5_5,
    seg_out0_carry_i_9_0,
    seg_out0_carry_i_8_0,
    seg_out0_carry_i_17,
    sw_IBUF,
    seg_out0_carry,
    seg_out0_carry_0,
    E,
    CLK,
    AR);
  output [2:0]Q;
  output \r_counter_reg[1] ;
  output \r_counter_reg[2] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[5] ;
  output \r_counter_reg[0] ;
  output [1:0]S;
  output [1:0]\r_counter_reg[0]_0 ;
  input \count_reg_reg[1]_0 ;
  input seg_out0_carry_i_5;
  input seg_out0_carry_i_5_0;
  input seg_out0_carry_i_5_1;
  input [0:0]p_1_in;
  input seg_out0_carry_i_5_2;
  input [0:0]led_OBUF;
  input seg_out0_carry_i_5_3;
  input seg_out0_carry_i_5_4;
  input [2:0]seg_out0_carry_i_5_5;
  input seg_out0_carry_i_9_0;
  input seg_out0_carry_i_8_0;
  input [5:0]seg_out0_carry_i_17;
  input [0:0]sw_IBUF;
  input seg_out0_carry;
  input seg_out0_carry_0;
  input [0:0]E;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]S;
  wire [4:0]count_next;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[5] ;
  wire [0:0]led_OBUF;
  wire [0:0]p_1_in;
  wire \r_counter_reg[0] ;
  wire [1:0]\r_counter_reg[0]_0 ;
  wire \r_counter_reg[1] ;
  wire \r_counter_reg[2] ;
  wire seg_out0_carry;
  wire seg_out0_carry_0;
  wire [5:0]seg_out0_carry_i_17;
  wire seg_out0_carry_i_22_n_0;
  wire seg_out0_carry_i_23_n_0;
  wire seg_out0_carry_i_24_n_0;
  wire seg_out0_carry_i_49_n_0;
  wire seg_out0_carry_i_5;
  wire seg_out0_carry_i_50_n_0;
  wire seg_out0_carry_i_52_n_0;
  wire seg_out0_carry_i_53_n_0;
  wire seg_out0_carry_i_5_0;
  wire seg_out0_carry_i_5_1;
  wire seg_out0_carry_i_5_2;
  wire seg_out0_carry_i_5_3;
  wire seg_out0_carry_i_5_4;
  wire [2:0]seg_out0_carry_i_5_5;
  wire seg_out0_carry_i_8_0;
  wire seg_out0_carry_i_9_0;
  wire [0:0]sw_IBUF;
  wire [4:0]w_hour;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[0]_i_1__7 
       (.I0(w_hour[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \count_reg[1]_i_1 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(w_hour[0]),
        .I2(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \count_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(w_hour[0]),
        .I2(Q[0]),
        .I3(\count_reg_reg[1]_0 ),
        .O(count_next[2]));
  LUT6 #(
    .INIT(64'hAFFFFFF510000008)) 
    \count_reg[3]_i_1 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(w_hour[4]),
        .I2(Q[1]),
        .I3(w_hour[0]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(count_next[3]));
  LUT6 #(
    .INIT(64'hAFFFFFFD40000002)) 
    \count_reg[4]_i_2 
       (.I0(\count_reg_reg[1]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(w_hour[0]),
        .I4(Q[0]),
        .I5(w_hour[4]),
        .O(count_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(count_next[0]),
        .Q(w_hour[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(count_next[1]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(count_next[2]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(count_next[3]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(count_next[4]),
        .Q(w_hour[4]));
  LUT6 #(
    .INIT(64'h06A4F95B06A406A4)) 
    seg_out0_carry__0_i_3
       (.I0(seg_out0_carry),
        .I1(seg_out0_carry_0),
        .I2(\r_counter_reg[1] ),
        .I3(\r_counter_reg[2] ),
        .I4(seg_out0_carry_i_5_5[0]),
        .I5(seg_out0_carry_i_5_5[1]),
        .O(\r_counter_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h06D4F92B06D406D4)) 
    seg_out0_carry__0_i_4
       (.I0(seg_out0_carry),
        .I1(seg_out0_carry_0),
        .I2(\r_counter_reg[1] ),
        .I3(\r_counter_reg[2] ),
        .I4(seg_out0_carry_i_5_5[0]),
        .I5(seg_out0_carry_i_5_5[1]),
        .O(\r_counter_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    seg_out0_carry_i_11
       (.I0(\count_reg_reg[4]_0 ),
        .I1(seg_out0_carry_i_5_5[0]),
        .I2(w_hour[0]),
        .I3(sw_IBUF),
        .I4(seg_out0_carry_i_17[0]),
        .O(\r_counter_reg[0] ));
  LUT6 #(
    .INIT(64'h5695996966559969)) 
    seg_out0_carry_i_22
       (.I0(seg_out0_carry_i_49_n_0),
        .I1(seg_out0_carry_i_50_n_0),
        .I2(seg_out0_carry_i_8_0),
        .I3(seg_out0_carry_i_52_n_0),
        .I4(seg_out0_carry_i_53_n_0),
        .I5(seg_out0_carry_i_17[4]),
        .O(seg_out0_carry_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h001D)) 
    seg_out0_carry_i_23
       (.I0(seg_out0_carry_i_17[1]),
        .I1(sw_IBUF),
        .I2(Q[0]),
        .I3(\count_reg_reg[4]_0 ),
        .O(seg_out0_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h80880C00880C0080)) 
    seg_out0_carry_i_24
       (.I0(\count_reg_reg[4]_0 ),
        .I1(p_1_in),
        .I2(seg_out0_carry_i_49_n_0),
        .I3(seg_out0_carry_i_50_n_0),
        .I4(seg_out0_carry_i_9_0),
        .I5(\count_reg_reg[5] ),
        .O(seg_out0_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h4BF009308D3C850C)) 
    seg_out0_carry_i_29
       (.I0(seg_out0_carry_i_17[4]),
        .I1(seg_out0_carry_i_53_n_0),
        .I2(seg_out0_carry_i_52_n_0),
        .I3(seg_out0_carry_i_8_0),
        .I4(seg_out0_carry_i_49_n_0),
        .I5(seg_out0_carry_i_50_n_0),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0410FBEF04100410)) 
    seg_out0_carry_i_3
       (.I0(seg_out0_carry),
        .I1(seg_out0_carry_0),
        .I2(\r_counter_reg[1] ),
        .I3(\r_counter_reg[2] ),
        .I4(seg_out0_carry_i_5_5[0]),
        .I5(seg_out0_carry_i_5_5[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0409FBF604090409)) 
    seg_out0_carry_i_4
       (.I0(seg_out0_carry),
        .I1(seg_out0_carry_0),
        .I2(\r_counter_reg[1] ),
        .I3(\r_counter_reg[2] ),
        .I4(seg_out0_carry_i_5_5[0]),
        .I5(seg_out0_carry_i_5_5[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFBA20B02F0AC000C)) 
    seg_out0_carry_i_40
       (.I0(seg_out0_carry_i_50_n_0),
        .I1(seg_out0_carry_i_17[5]),
        .I2(sw_IBUF),
        .I3(seg_out0_carry_i_52_n_0),
        .I4(w_hour[4]),
        .I5(seg_out0_carry_i_17[4]),
        .O(\count_reg_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_49
       (.I0(Q[0]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[1]),
        .O(seg_out0_carry_i_49_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_50
       (.I0(Q[1]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[2]),
        .O(seg_out0_carry_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_52
       (.I0(Q[2]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[3]),
        .O(seg_out0_carry_i_52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_53
       (.I0(w_hour[4]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[4]),
        .O(seg_out0_carry_i_53_n_0));
  LUT6 #(
    .INIT(64'h4F4F444F444F4F4F)) 
    seg_out0_carry_i_8
       (.I0(seg_out0_carry_i_5),
        .I1(seg_out0_carry_i_5_0),
        .I2(seg_out0_carry_i_5_1),
        .I3(p_1_in),
        .I4(seg_out0_carry_i_22_n_0),
        .I5(seg_out0_carry_i_23_n_0),
        .O(\r_counter_reg[1] ));
  LUT6 #(
    .INIT(64'hEFEFEFEFFFFFFFF0)) 
    seg_out0_carry_i_9
       (.I0(seg_out0_carry_i_24_n_0),
        .I1(seg_out0_carry_i_5_2),
        .I2(led_OBUF),
        .I3(seg_out0_carry_i_5_3),
        .I4(seg_out0_carry_i_5_4),
        .I5(seg_out0_carry_i_5_5[2]),
        .O(\r_counter_reg[2] ));
endmodule

module time_counter_min
   (w_min_tick,
    tick_reg_reg_0,
    \count_reg_reg[2]_0 ,
    Q,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[5]_0 ,
    \r_counter_reg[0] ,
    \count_reg_reg[5]_1 ,
    \r_counter_reg[0]_0 ,
    \count_reg_reg[1]_0 ,
    tick_next,
    CLK,
    AR,
    \count_reg_reg[1]_1 ,
    \count_reg_reg[1]_2 ,
    seg_out0_carry_i_8,
    seg_out0_carry_i_8_0,
    seg_out0_carry_i_7,
    sw_IBUF,
    seg_out0_carry_i_17,
    E);
  output w_min_tick;
  output tick_reg_reg_0;
  output \count_reg_reg[2]_0 ;
  output [1:0]Q;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[5]_0 ;
  output \r_counter_reg[0] ;
  output \count_reg_reg[5]_1 ;
  output \r_counter_reg[0]_0 ;
  output \count_reg_reg[1]_0 ;
  input tick_next;
  input CLK;
  input [0:0]AR;
  input \count_reg_reg[1]_1 ;
  input \count_reg_reg[1]_2 ;
  input seg_out0_carry_i_8;
  input seg_out0_carry_i_8_0;
  input [1:0]seg_out0_carry_i_7;
  input [0:0]sw_IBUF;
  input [5:0]seg_out0_carry_i_17;
  input [0:0]E;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [1:0]Q;
  wire \count_reg[0]_i_1__5_n_0 ;
  wire \count_reg[1]_i_1__0_n_0 ;
  wire \count_reg[2]_i_1__0_n_0 ;
  wire \count_reg[2]_i_2__3_n_0 ;
  wire \count_reg[3]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_2__0_n_0 ;
  wire \count_reg[4]_i_4_n_0 ;
  wire \count_reg[5]_i_5_n_0 ;
  wire \count_reg[5]_i_6_n_0 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[1]_1 ;
  wire \count_reg_reg[1]_2 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[5]_0 ;
  wire \count_reg_reg[5]_1 ;
  wire \count_reg_reg[5]_i_2_n_0 ;
  wire \r_counter_reg[0] ;
  wire \r_counter_reg[0]_0 ;
  wire [5:0]seg_out0_carry_i_17;
  wire seg_out0_carry_i_28_n_0;
  wire seg_out0_carry_i_45_n_0;
  wire seg_out0_carry_i_46_n_0;
  wire seg_out0_carry_i_55_n_0;
  wire seg_out0_carry_i_57_n_0;
  wire [1:0]seg_out0_carry_i_7;
  wire seg_out0_carry_i_8;
  wire seg_out0_carry_i_8_0;
  wire [0:0]sw_IBUF;
  wire tick_next;
  wire tick_reg_reg_0;
  wire [5:0]w_min;
  wire w_min_tick;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[0]_i_1__5 
       (.I0(w_min[0]),
        .O(\count_reg[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \count_reg[1]_i_1__0 
       (.I0(\count_reg_reg[1]_2 ),
        .I1(w_min[0]),
        .I2(w_min[1]),
        .O(\count_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B83030000088)) 
    \count_reg[2]_i_1__0 
       (.I0(\count_reg[2]_i_2__3_n_0 ),
        .I1(\count_reg_reg[1]_2 ),
        .I2(\count_reg_reg[2]_0 ),
        .I3(w_min[1]),
        .I4(w_min[0]),
        .I5(w_min[2]),
        .O(\count_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count_reg[2]_i_2__3 
       (.I0(w_min[5]),
        .I1(Q[0]),
        .I2(w_min[2]),
        .I3(w_min[1]),
        .I4(w_min[0]),
        .I5(Q[1]),
        .O(\count_reg[2]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEEEE44000000A)) 
    \count_reg[3]_i_1__0 
       (.I0(\count_reg_reg[1]_2 ),
        .I1(\count_reg_reg[2]_0 ),
        .I2(w_min[0]),
        .I3(w_min[1]),
        .I4(w_min[2]),
        .I5(Q[0]),
        .O(\count_reg[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B874444444)) 
    \count_reg[4]_i_1 
       (.I0(\count_reg[4]_i_2__0_n_0 ),
        .I1(\count_reg_reg[1]_2 ),
        .I2(\count_reg_reg[2]_0 ),
        .I3(\count_reg[4]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_reg[4]_i_2__0 
       (.I0(Q[0]),
        .I1(w_min[2]),
        .I2(w_min[1]),
        .I3(w_min[0]),
        .O(\count_reg[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count_reg[4]_i_3 
       (.I0(w_min_tick),
        .I1(\count_reg_reg[1]_1 ),
        .O(tick_reg_reg_0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \count_reg[4]_i_3__0 
       (.I0(w_min[2]),
        .I1(w_min[1]),
        .I2(w_min[0]),
        .I3(w_min[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \count_reg[4]_i_4 
       (.I0(w_min[0]),
        .I1(w_min[1]),
        .I2(w_min[2]),
        .O(\count_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFFFFF80000000)) 
    \count_reg[5]_i_5 
       (.I0(w_min[2]),
        .I1(w_min[1]),
        .I2(w_min[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(w_min[5]),
        .O(\count_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \count_reg[5]_i_6 
       (.I0(w_min[5]),
        .I1(Q[0]),
        .I2(w_min[2]),
        .I3(w_min[1]),
        .I4(w_min[0]),
        .I5(Q[1]),
        .O(\count_reg[5]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[0]_i_1__5_n_0 ),
        .Q(w_min[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[1]_i_1__0_n_0 ),
        .Q(w_min[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[2]_i_1__0_n_0 ),
        .Q(w_min[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[3]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[4]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg_reg[5]_i_2_n_0 ),
        .Q(w_min[5]));
  MUXF7 \count_reg_reg[5]_i_2 
       (.I0(\count_reg[5]_i_5_n_0 ),
        .I1(\count_reg[5]_i_6_n_0 ),
        .O(\count_reg_reg[5]_i_2_n_0 ),
        .S(\count_reg_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    seg_out0_carry_i_10
       (.I0(seg_out0_carry_i_28_n_0),
        .I1(seg_out0_carry_i_7[0]),
        .I2(w_min[0]),
        .I3(sw_IBUF),
        .I4(seg_out0_carry_i_17[0]),
        .O(\r_counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000000000000656A)) 
    seg_out0_carry_i_16
       (.I0(seg_out0_carry_i_28_n_0),
        .I1(w_min[1]),
        .I2(sw_IBUF),
        .I3(seg_out0_carry_i_17[1]),
        .I4(seg_out0_carry_i_7[1]),
        .I5(seg_out0_carry_i_7[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC3690000)) 
    seg_out0_carry_i_21
       (.I0(seg_out0_carry_i_28_n_0),
        .I1(seg_out0_carry_i_45_n_0),
        .I2(\count_reg_reg[5]_0 ),
        .I3(seg_out0_carry_i_46_n_0),
        .I4(seg_out0_carry_i_8),
        .I5(seg_out0_carry_i_8_0),
        .O(\count_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0020080082002008)) 
    seg_out0_carry_i_25
       (.I0(seg_out0_carry_i_8),
        .I1(seg_out0_carry_i_55_n_0),
        .I2(\count_reg_reg[5]_1 ),
        .I3(seg_out0_carry_i_57_n_0),
        .I4(seg_out0_carry_i_46_n_0),
        .I5(seg_out0_carry_i_45_n_0),
        .O(\r_counter_reg[0] ));
  LUT5 #(
    .INIT(32'h6D664964)) 
    seg_out0_carry_i_28
       (.I0(seg_out0_carry_i_55_n_0),
        .I1(\count_reg_reg[5]_1 ),
        .I2(seg_out0_carry_i_45_n_0),
        .I3(seg_out0_carry_i_57_n_0),
        .I4(seg_out0_carry_i_46_n_0),
        .O(seg_out0_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'h77733373CCC777C7)) 
    seg_out0_carry_i_41
       (.I0(seg_out0_carry_i_45_n_0),
        .I1(seg_out0_carry_i_57_n_0),
        .I2(seg_out0_carry_i_17[5]),
        .I3(sw_IBUF),
        .I4(w_min[5]),
        .I5(seg_out0_carry_i_55_n_0),
        .O(\count_reg_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_45
       (.I0(w_min[2]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[2]),
        .O(seg_out0_carry_i_45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_46
       (.I0(w_min[1]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[1]),
        .O(seg_out0_carry_i_46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_55
       (.I0(Q[0]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[3]),
        .O(seg_out0_carry_i_55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_56
       (.I0(w_min[5]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[5]),
        .O(\count_reg_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_57
       (.I0(Q[1]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_17[4]),
        .O(seg_out0_carry_i_57_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tick_next),
        .Q(w_min_tick));
endmodule

module time_counter_sec
   (w_sec_tick,
    tick_reg_reg_0,
    Q,
    tick_next,
    \r_counter_reg[1] ,
    \count_reg_reg[2]_0 ,
    \r_counter_reg[1]_0 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[5]_0 ,
    CLK,
    AR,
    \count_reg_reg[1]_1 ,
    E,
    tick_reg_reg_1,
    seg_out0_carry_i_7,
    seg_out0_carry_i_7_0,
    p_1_in,
    sw_IBUF,
    seg_out0_carry_i_14_0);
  output w_sec_tick;
  output tick_reg_reg_0;
  output [0:0]Q;
  output tick_next;
  output \r_counter_reg[1] ;
  output \count_reg_reg[2]_0 ;
  output \r_counter_reg[1]_0 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[5]_0 ;
  input CLK;
  input [0:0]AR;
  input \count_reg_reg[1]_1 ;
  input [0:0]E;
  input tick_reg_reg_1;
  input [1:0]seg_out0_carry_i_7;
  input seg_out0_carry_i_7_0;
  input [0:0]p_1_in;
  input [0:0]sw_IBUF;
  input [4:0]seg_out0_carry_i_14_0;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
  wire \count_reg[0]_i_1__4_n_0 ;
  wire \count_reg[1]_i_1__7_n_0 ;
  wire \count_reg[2]_i_2__2_n_0 ;
  wire \count_reg[2]_i_3_n_0 ;
  wire \count_reg[3]_i_1__6_n_0 ;
  wire \count_reg[3]_i_2_n_0 ;
  wire \count_reg[4]_i_1__8_n_0 ;
  wire \count_reg[5]_i_1__7_n_0 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[1]_1 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_i_1_n_0 ;
  wire \count_reg_reg[5]_0 ;
  wire [0:0]p_1_in;
  wire \r_counter_reg[1] ;
  wire \r_counter_reg[1]_0 ;
  wire [4:0]seg_out0_carry_i_14_0;
  wire seg_out0_carry_i_37_n_0;
  wire seg_out0_carry_i_38_n_0;
  wire seg_out0_carry_i_59_n_0;
  wire seg_out0_carry_i_60_n_0;
  wire seg_out0_carry_i_61_n_0;
  wire seg_out0_carry_i_62_n_0;
  wire [1:0]seg_out0_carry_i_7;
  wire seg_out0_carry_i_7_0;
  wire [0:0]sw_IBUF;
  wire tick_next;
  wire tick_reg_i_1__4_n_0;
  wire tick_reg_reg_0;
  wire tick_reg_reg_1;
  wire [5:1]w_sec;
  wire w_sec_tick;

  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[0]_i_1__4 
       (.I0(Q),
        .O(\count_reg[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__7 
       (.I0(Q),
        .I1(w_sec[1]),
        .O(\count_reg[1]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00000000FE)) 
    \count_reg[2]_i_2__2 
       (.I0(w_sec[4]),
        .I1(w_sec[3]),
        .I2(w_sec[5]),
        .I3(w_sec[1]),
        .I4(Q),
        .I5(w_sec[2]),
        .O(\count_reg[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h15AAAAAA55AAAAAA)) 
    \count_reg[2]_i_3 
       (.I0(w_sec[2]),
        .I1(w_sec[5]),
        .I2(w_sec[4]),
        .I3(Q),
        .I4(w_sec[1]),
        .I5(w_sec[3]),
        .O(\count_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \count_reg[3]_i_1__6 
       (.I0(\count_reg[3]_i_2_n_0 ),
        .I1(w_sec[3]),
        .I2(w_sec[2]),
        .I3(w_sec[1]),
        .I4(Q),
        .O(\count_reg[3]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \count_reg[3]_i_2 
       (.I0(w_sec[3]),
        .I1(w_sec[1]),
        .I2(Q),
        .I3(w_sec[4]),
        .I4(w_sec[5]),
        .I5(w_sec[2]),
        .O(\count_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFF80800000)) 
    \count_reg[4]_i_1__8 
       (.I0(Q),
        .I1(w_sec[1]),
        .I2(w_sec[3]),
        .I3(w_sec[5]),
        .I4(w_sec[2]),
        .I5(w_sec[4]),
        .O(\count_reg[4]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF80000000)) 
    \count_reg[5]_i_1__7 
       (.I0(Q),
        .I1(w_sec[1]),
        .I2(w_sec[3]),
        .I3(w_sec[4]),
        .I4(w_sec[2]),
        .I5(w_sec[5]),
        .O(\count_reg[5]_i_1__7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count_reg[5]_i_4 
       (.I0(w_sec_tick),
        .I1(\count_reg_reg[1]_1 ),
        .O(tick_reg_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[0]_i_1__4_n_0 ),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[1]_i_1__7_n_0 ),
        .Q(w_sec[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg_reg[2]_i_1_n_0 ),
        .Q(w_sec[2]));
  MUXF7 \count_reg_reg[2]_i_1 
       (.I0(\count_reg[2]_i_2__2_n_0 ),
        .I1(\count_reg[2]_i_3_n_0 ),
        .O(\count_reg_reg[2]_i_1_n_0 ),
        .S(E));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[3]_i_1__6_n_0 ),
        .Q(w_sec[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[4]_i_1__8_n_0 ),
        .Q(w_sec[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[5]_i_1__7_n_0 ),
        .Q(w_sec[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0090F090)) 
    seg_out0_carry_i_14
       (.I0(seg_out0_carry_i_37_n_0),
        .I1(\count_reg_reg[2]_0 ),
        .I2(seg_out0_carry_i_7[1]),
        .I3(seg_out0_carry_i_7[0]),
        .I4(seg_out0_carry_i_38_n_0),
        .I5(seg_out0_carry_i_7_0),
        .O(\r_counter_reg[1] ));
  LUT6 #(
    .INIT(64'h0820020800028000)) 
    seg_out0_carry_i_27
       (.I0(p_1_in),
        .I1(seg_out0_carry_i_37_n_0),
        .I2(seg_out0_carry_i_59_n_0),
        .I3(seg_out0_carry_i_60_n_0),
        .I4(seg_out0_carry_i_61_n_0),
        .I5(seg_out0_carry_i_62_n_0),
        .O(\r_counter_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h92C3B6D3)) 
    seg_out0_carry_i_33
       (.I0(seg_out0_carry_i_59_n_0),
        .I1(seg_out0_carry_i_60_n_0),
        .I2(seg_out0_carry_i_61_n_0),
        .I3(seg_out0_carry_i_62_n_0),
        .I4(seg_out0_carry_i_37_n_0),
        .O(\count_reg_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_37
       (.I0(w_sec[1]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_14_0[0]),
        .O(seg_out0_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'h55559A95DFD5BABF)) 
    seg_out0_carry_i_38
       (.I0(seg_out0_carry_i_62_n_0),
        .I1(w_sec[5]),
        .I2(sw_IBUF),
        .I3(seg_out0_carry_i_14_0[4]),
        .I4(seg_out0_carry_i_61_n_0),
        .I5(seg_out0_carry_i_59_n_0),
        .O(seg_out0_carry_i_38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hEC7E3793)) 
    seg_out0_carry_i_42
       (.I0(seg_out0_carry_i_37_n_0),
        .I1(seg_out0_carry_i_59_n_0),
        .I2(seg_out0_carry_i_60_n_0),
        .I3(seg_out0_carry_i_61_n_0),
        .I4(seg_out0_carry_i_62_n_0),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hCCC0AAAACCC0A0A0)) 
    seg_out0_carry_i_43
       (.I0(seg_out0_carry_i_14_0[4]),
        .I1(w_sec[5]),
        .I2(seg_out0_carry_i_61_n_0),
        .I3(w_sec[4]),
        .I4(sw_IBUF),
        .I5(seg_out0_carry_i_14_0[3]),
        .O(\count_reg_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_59
       (.I0(w_sec[2]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_14_0[1]),
        .O(seg_out0_carry_i_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_60
       (.I0(w_sec[5]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_14_0[4]),
        .O(seg_out0_carry_i_60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_61
       (.I0(w_sec[3]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_14_0[2]),
        .O(seg_out0_carry_i_61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    seg_out0_carry_i_62
       (.I0(w_sec[4]),
        .I1(sw_IBUF),
        .I2(seg_out0_carry_i_14_0[3]),
        .O(seg_out0_carry_i_62_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tick_reg_i_1__0
       (.I0(w_sec_tick),
        .I1(tick_reg_reg_1),
        .O(tick_next));
  LUT2 #(
    .INIT(4'h8)) 
    tick_reg_i_1__4
       (.I0(\count_reg[3]_i_2_n_0 ),
        .I1(E),
        .O(tick_reg_i_1__4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tick_reg_i_1__4_n_0),
        .Q(w_sec_tick));
endmodule

(* NotValidForBitStream *)
module top_stopwatch
   (clk,
    reset,
    sw,
    btn_run,
    btn_clear,
    btn_up,
    btn_set,
    btn_down,
    fnd_comm,
    fnd_font,
    led);
  input clk;
  input reset;
  input [1:0]sw;
  input btn_run;
  input btn_clear;
  input btn_up;
  input btn_set;
  input btn_down;
  output [3:0]fnd_comm;
  output [7:0]fnd_font;
  output [1:0]led;

  wire U_CU2_n_0;
  wire U_CU2_n_2;
  wire U_CU2_n_3;
  wire U_CU2_n_4;
  wire U_CU2_n_5;
  wire U_counter_n_1;
  wire U_counter_n_10;
  wire U_counter_n_11;
  wire U_counter_n_12;
  wire U_counter_n_13;
  wire U_counter_n_14;
  wire U_counter_n_2;
  wire U_counter_n_3;
  wire U_counter_n_4;
  wire U_counter_n_5;
  wire btn_clear;
  wire btn_clear_IBUF;
  wire btn_down;
  wire btn_down_IBUF;
  wire btn_run;
  wire btn_run_IBUF;
  wire btn_set;
  wire btn_set_IBUF;
  wire btn_up;
  wire btn_up_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]count_next;
  wire [0:0]count_reg;
  wire dps2_n_30;
  wire dps2_n_31;
  wire dps2_n_32;
  wire dps2_n_33;
  wire dps_n_10;
  wire dps_n_11;
  wire dps_n_12;
  wire dps_n_13;
  wire dps_n_14;
  wire dps_n_15;
  wire dps_n_16;
  wire dps_n_17;
  wire dps_n_18;
  wire dps_n_19;
  wire dps_n_20;
  wire dps_n_21;
  wire dps_n_22;
  wire dps_n_23;
  wire dps_n_24;
  wire dps_n_25;
  wire dps_n_9;
  wire [3:0]fnd_comm;
  wire [3:0]fnd_comm_OBUF;
  wire [7:0]fnd_font;
  wire [7:0]fnd_font_OBUF;
  wire [1:0]led;
  wire [1:0]led_OBUF;
  wire [6:6]p_1_in;
  wire reset;
  wire reset_IBUF;
  wire [1:0]sw;
  wire [1:1]sw_IBUF;
  wire u_btn2_n_0;
  wire u_btn3_n_0;
  wire u_btn4_n_0;
  wire u_btn5_n_0;
  wire u_btn_n_0;
  wire w_clk_100hz;
  wire [3:1]w_hour;
  wire [5:0]w_hour2;
  wire [4:3]w_min;
  wire [5:0]w_min2;
  wire w_min_tick;
  wire [0:0]w_msec;
  wire [6:0]w_msec2;
  wire w_msec_tick;
  wire w_run;
  wire [0:0]w_sec;
  wire [5:0]w_sec2;
  wire w_sec_tick;
  wire [1:0]w_set;

  stopwatch_cu2 U_CU2
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(count_next),
        .E(U_CU2_n_0),
        .\FSM_onehot_state_reg[2]_0 (U_CU2_n_2),
        .\FSM_onehot_state_reg[2]_1 (U_CU2_n_3),
        .\FSM_onehot_state_reg[2]_2 (U_CU2_n_4),
        .\FSM_onehot_state_reg[2]_3 (U_CU2_n_5),
        .\FSM_onehot_state_reg[2]_4 (u_btn_n_0),
        .\FSM_onehot_state_reg[2]_5 (u_btn2_n_0),
        .Q(count_reg),
        .sw_IBUF(sw_IBUF),
        .w_clk_100hz(w_clk_100hz),
        .w_min_tick(w_min_tick),
        .w_msec_tick(w_msec_tick),
        .w_run(w_run),
        .w_sec_tick(w_sec_tick));
  fnd_controlloer U_counter
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q({U_counter_n_2,U_counter_n_3,U_counter_n_4}),
        .S({dps_n_22,dps_n_23}),
        .fnd_comm_OBUF(fnd_comm_OBUF),
        .\fnd_font[7] (w_set),
        .fnd_font_OBUF(fnd_font_OBUF),
        .\fnd_font_OBUF[4]_inst_i_1 ({dps_n_24,dps_n_25}),
        .led_OBUF(led_OBUF[1]),
        .p_1_in(p_1_in),
        .\r_counter_reg[0] (U_counter_n_12),
        .\r_counter_reg[0]_0 (U_counter_n_13),
        .\r_counter_reg[1] (U_counter_n_1),
        .\r_counter_reg[1]_0 (U_counter_n_5),
        .\r_counter_reg[1]_1 (U_counter_n_10),
        .\r_counter_reg[1]_2 (U_counter_n_11),
        .\r_counter_reg[2] (U_counter_n_14),
        .seg_out0_carry(dps_n_9),
        .seg_out0_carry_0(dps_n_11),
        .seg_out0_carry_1(dps_n_12),
        .seg_out0_carry_i_12(w_sec2[0]),
        .seg_out0_carry_i_12_0(w_sec),
        .seg_out0_carry_i_12_1(w_msec2[0]),
        .seg_out0_carry_i_12_2(w_msec),
        .seg_out0_carry_i_21(dps2_n_32),
        .seg_out0_carry_i_21_0(dps_n_16),
        .seg_out0_carry_i_21_1(dps2_n_30),
        .seg_out0_carry_i_4(dps_n_17),
        .seg_out0_carry_i_4_0(dps_n_18),
        .seg_out0_carry_i_6(dps_n_21),
        .seg_out0_carry_i_6_0(dps_n_10),
        .seg_out0_carry_i_7(dps_n_13),
        .seg_out0_carry_i_7_0(w_hour[1]),
        .seg_out0_carry_i_7_1(w_hour2[1]),
        .seg_out0_carry_i_7_2(dps_n_14),
        .seg_out0_carry_i_7_3(dps_n_15),
        .seg_out0_carry_i_8(dps_n_19),
        .seg_out0_carry_i_8_0(dps_n_20),
        .sw_IBUF(sw_IBUF));
  IBUF btn_clear_IBUF_inst
       (.I(btn_clear),
        .O(btn_clear_IBUF));
  IBUF btn_down_IBUF_inst
       (.I(btn_down),
        .O(btn_down_IBUF));
  IBUF btn_run_IBUF_inst
       (.I(btn_run),
        .O(btn_run_IBUF));
  IBUF btn_set_IBUF_inst
       (.I(btn_set),
        .O(btn_set_IBUF));
  IBUF btn_up_IBUF_inst
       (.I(btn_up),
        .O(btn_up_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  stopwatch_dp dps
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q(w_hour),
        .S({dps_n_22,dps_n_23}),
        .\count_reg_reg[0] (w_msec),
        .\count_reg_reg[0]_0 (w_sec),
        .\count_reg_reg[1] (dps_n_19),
        .\count_reg_reg[1]_0 (dps_n_21),
        .\count_reg_reg[1]_1 (u_btn3_n_0),
        .\count_reg_reg[2] (dps_n_10),
        .\count_reg_reg[4] (w_min),
        .\count_reg_reg[4]_0 (dps_n_13),
        .\count_reg_reg[5] (dps_n_14),
        .\count_reg_reg[5]_0 (dps_n_15),
        .\count_reg_reg[5]_1 (dps_n_16),
        .\count_reg_reg[5]_2 (dps_n_20),
        .\count_reg_reg[5]_3 (u_btn4_n_0),
        .led_OBUF(led_OBUF[1]),
        .p_1_in(p_1_in),
        .\r_counter_reg[0] (dps_n_17),
        .\r_counter_reg[0]_0 (dps_n_18),
        .\r_counter_reg[0]_1 ({dps_n_24,dps_n_25}),
        .\r_counter_reg[1] (dps_n_9),
        .\r_counter_reg[1]_0 (dps_n_11),
        .\r_counter_reg[2] (dps_n_12),
        .seg_out0_carry(U_counter_n_10),
        .seg_out0_carry_i_13(w_msec2[6:1]),
        .seg_out0_carry_i_14(w_sec2[5:1]),
        .seg_out0_carry_i_17(w_min2),
        .seg_out0_carry_i_17_0(w_hour2),
        .seg_out0_carry_i_5(U_counter_n_11),
        .seg_out0_carry_i_5_0(U_counter_n_1),
        .seg_out0_carry_i_5_1({U_counter_n_2,U_counter_n_3,U_counter_n_4}),
        .seg_out0_carry_i_5_2(U_counter_n_5),
        .seg_out0_carry_i_7(U_counter_n_14),
        .seg_out0_carry_i_8(U_counter_n_13),
        .seg_out0_carry_i_8_0(U_counter_n_12),
        .seg_out0_carry_i_8_1(dps2_n_33),
        .seg_out0_carry_i_9(dps2_n_31),
        .\state_reg[1] (w_set),
        .\state_reg[1]_0 (u_btn5_n_0),
        .sw_IBUF(sw_IBUF));
  stopwatch_dp2 dps2
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(count_next),
        .E(U_CU2_n_2),
        .Q(count_reg),
        .\count_reg_reg[0] (U_CU2_n_3),
        .\count_reg_reg[0]_0 (U_CU2_n_4),
        .\count_reg_reg[0]_1 (U_CU2_n_5),
        .\count_reg_reg[0]_2 (U_CU2_n_0),
        .\count_reg_reg[3] (dps2_n_30),
        .\count_reg_reg[3]_0 (dps2_n_31),
        .\count_reg_reg[4] (dps2_n_32),
        .\count_reg_reg[5] (w_sec2),
        .\count_reg_reg[5]_0 (w_min2),
        .\count_reg_reg[5]_1 (w_hour2),
        .\count_reg_reg[5]_2 (dps2_n_33),
        .\count_reg_reg[6] (w_msec2),
        .seg_out0_carry_i_24(w_hour[3:2]),
        .seg_out0_carry_i_48(w_min),
        .sw_IBUF(sw_IBUF),
        .w_clk_100hz(w_clk_100hz),
        .w_min_tick(w_min_tick),
        .w_msec_tick(w_msec_tick),
        .w_run(w_run),
        .w_sec_tick(w_sec_tick));
  OBUF \fnd_comm_OBUF[0]_inst 
       (.I(fnd_comm_OBUF[0]),
        .O(fnd_comm[0]));
  OBUF \fnd_comm_OBUF[1]_inst 
       (.I(fnd_comm_OBUF[1]),
        .O(fnd_comm[1]));
  OBUF \fnd_comm_OBUF[2]_inst 
       (.I(fnd_comm_OBUF[2]),
        .O(fnd_comm[2]));
  OBUF \fnd_comm_OBUF[3]_inst 
       (.I(fnd_comm_OBUF[3]),
        .O(fnd_comm[3]));
  OBUF \fnd_font_OBUF[0]_inst 
       (.I(fnd_font_OBUF[0]),
        .O(fnd_font[0]));
  OBUF \fnd_font_OBUF[1]_inst 
       (.I(fnd_font_OBUF[1]),
        .O(fnd_font[1]));
  OBUF \fnd_font_OBUF[2]_inst 
       (.I(fnd_font_OBUF[2]),
        .O(fnd_font[2]));
  OBUF \fnd_font_OBUF[3]_inst 
       (.I(fnd_font_OBUF[3]),
        .O(fnd_font[3]));
  OBUF \fnd_font_OBUF[4]_inst 
       (.I(fnd_font_OBUF[4]),
        .O(fnd_font[4]));
  OBUF \fnd_font_OBUF[5]_inst 
       (.I(fnd_font_OBUF[5]),
        .O(fnd_font[5]));
  OBUF \fnd_font_OBUF[6]_inst 
       (.I(fnd_font_OBUF[6]),
        .O(fnd_font[6]));
  OBUF \fnd_font_OBUF[7]_inst 
       (.I(fnd_font_OBUF[7]),
        .O(fnd_font[7]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(led_OBUF[1]),
        .O(led_OBUF[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(led_OBUF[1]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF));
  btn_debounce u_btn
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(btn_run_IBUF),
        .\edge_detect_reg[0]_0 (u_btn_n_0));
  btn_debounce_0 u_btn2
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(btn_clear_IBUF),
        .\q_reg_reg[0]_0 (u_btn2_n_0));
  btn_debounce_1 u_btn3
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(btn_up_IBUF),
        .\q_reg_reg[0]_0 (u_btn3_n_0));
  btn_debounce_2 u_btn4
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(btn_down_IBUF),
        .\count_reg_reg[5] (u_btn3_n_0),
        .\edge_detect_reg[0]_0 (u_btn4_n_0),
        .sw_IBUF(sw_IBUF));
  btn_debounce_3 u_btn5
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(btn_set_IBUF),
        .\q_reg_reg[0]_0 (u_btn5_n_0));
endmodule
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
