`timescale 1ns / 1ps


module bcd_tenseg (
    input [8:0] bcd,
    input [1:0] seg_sel,
    output [7:0] seg,
    output [3:0] seg_comm
);


    wire [3:0] w_bcd, w_digit_1, w_digit_10, w_digit_100, w_digit_1000;
    dig_splitter u0 (
        .bcd(bcd),
        .digit_1(w_digit_1),
        .digit_10(w_digit_10),
        .digit_100(w_digit_100),
        .digit_1000(w_digit_1000)
    );

    decoder_2X4 u2(
    .seg_sel(seg_sel),
    .seg_comm(seg_comm)

    );
    mux_4x1 u1(
    .sel(seg_sel),
    .digit_1(w_digit_1),
    .digit_10(w_digit_10),
    .digit_100(w_digit_100),
    .digit_1000(w_digit_1000),
    .bcd(w_bcd)

    );
    bcd_to_tenteg bcdto (
        .bcd(w_bcd),
        .seg(seg)
    );
endmodule

module mux_4x1 (
    input [1:0] sel,
    input [3:0] digit_1,
    input [3:0] digit_10,
    input [3:0] digit_100,
    input [3:0] digit_1000,
    output [3:0] bcd
);  reg [3:0] r_bcd;
    assign bcd = r_bcd;
    always @(sel,digit_1,digit_10,digit_100,digit_1000) 
    begin
    case (sel)
        2'b00 : r_bcd =digit_1;
        2'b01 : r_bcd =digit_10;
        2'b10 : r_bcd =digit_100;
        2'b11 : r_bcd =digit_1000;
        default: r_bcd = 4'bx;
    endcase     
    end
endmodule

module decoder_2X4 (
    input [1:0] seg_sel,
    output reg [3:0] seg_comm
);
    // 2X4 decoder 
    always @(seg_sel)
begin
        case (seg_sel)
            2'b00: seg_comm = 4'b1110; //0
            2'b01: seg_comm = 4'b1101; //1
            2'b10: seg_comm = 4'b1011; //2
            2'b11: seg_comm = 4'b0111; //3
            default: seg_comm = 4'b1110;
        endcase
    end
endmodule

module dig_splitter (
    input  [8:0] bcd,
    output [3:0] digit_1,
    output [3:0] digit_10,
    output [3:0] digit_100,
    output [3:0] digit_1000
);
    assign digit_1 = bcd % 10;
    assign digit_10 = bcd / 10 % 10;
    assign digit_100 = bcd / 100 % 10;
    assign digit_1000 = bcd / 1000 % 10;
endmodule

module bcd_to_tenteg (
    input [3:0] bcd,
    output reg [7:0] seg
);


    always @(bcd) //bcd의 이벤트를 감시(항상감시하다) always문의 출력은 항상 reg
begin

        case (bcd)
            4'h00:   seg = 8'hc0;
            4'h01:   seg = 8'hf9;
            4'h02:   seg = 8'ha4;
            4'h03:   seg = 8'hb0;
            4'h04:   seg = 8'h99;
            4'h05:   seg = 8'h92;
            4'h06:   seg = 8'h82;
            4'h07:   seg = 8'hf8;
            4'h08:   seg = 8'h80;
            4'h09:   seg = 8'h90;
            default: seg = 8'hff;
        endcase


    end


endmodule

