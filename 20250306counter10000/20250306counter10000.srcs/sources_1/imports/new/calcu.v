// `timescale 1ns / 1ps


// module calculator (
//     input clk,
//     input run,
//     input clear,
//     input reset,
//     output [7:0] seg_out,
//     output [3:0] seg_comm
// );
//     wire carry;
//     wire [7:0] sum;
//     wire [15:0] w_count1;
//     wire [15:0] w_count2;
//     wire w_n_clk;
//     wire w_run;
//     wire w_clear;
//     wire btn_run;
//     wire btn_clear;

//     // counter9999 U_counter (
//     //     .clk  (w_n_clk),
//     //     .clear(w_clear),
//     //     .reset(reset),
//     //     .count(w_count)

//     // );
//     btn_debounce u_btn (
//         .i_btn(run),
//         .clk  (clk),
//         .reset(reset),
//         .o_btn(btn_run)
//     );

//     btn_debounce u_btn2 (
//         .i_btn(clear),
//         .clk  (clk),
//         .reset(reset),
//         .o_btn(btn_clear)
//     );


//     tick_100hz u_count (
//         .clk(clk),
//         .runs(w_run),
//         .o_tick_100hz(w_n_clk),
//         .reset(reset)
//     );
//     counter_tick#(.TICK_COUNT (6000)) asd (
//     .clk(clk),
//     .reset(reset),
//     .tick(w_n_clk),
//     .clear(clear),
//     .counter(w_count2)
// );
//     counter_tick u_counter_tick (
//         .clk(clk),
//         .reset(reset),
//         .clear(w_clear),
//         .tick(w_n_clk),
//         .counter(w_count1)
//     );

//     fnd_controlloer U_cotrol (
//         .bcd_num1(w_count1),
//         .bcd_num2(w_count2),
//         .clk(clk),
//         .reset(reset),
//         .seg_out(seg_out),
//         .seg_comm(seg_comm)
//     );
//     control_unit u_con (
//         .clk(clk),
//         .reset(reset),
//         .i_run_stop(btn_run),
//         .i_clear(btn_clear),
//         .o_run_stop(w_run),
//         .o_clear(w_clear)
//     );
// endmodule





// // module clk_count (
// //     input  clk,
// //     input  run,
// //     output o_clk,
// //     input  reset
// // );

// //     parameter FCOUNT = 1_000_0000;
// //     reg [$clog2(FCOUNT)-1:0] r_counter;
// //     reg r_clk;
// //     assign o_clk = r_clk;
// //     always @(posedge clk, posedge reset) begin
// //         if (run == 1'b1) begin

// //             if (reset == 1'b1) begin
// //                 r_counter <= 0;
// //                 r_clk <= 1'b0;
// //             end else begin
// //                 if (r_counter == FCOUNT - 1) begin
// //                     r_counter <= 0;
// //                     r_clk <= 1;
// //                 end else if (r_counter == (FCOUNT / 2) - 1) begin
// //                     r_counter <= r_counter + 1;
// //                     r_clk <= 1'b0;
// //                 end else begin
// //                     r_counter <= r_counter + 1;
// //                 end
// //             end
// //         end
// //     end

// // endmodule

module counter_4 (
    input clk,
    input reset,
    output [1:0] o_sel
);
    reg [1:0] r_counter;
    assign o_sel = r_counter;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            r_counter <= 0;
        end else begin
            r_counter <= r_counter + 1;  //0,1,2,3,0,1,2,3....
        end

    end
endmodule

module clock_div (
    input  clk,
    input  reset,
    output o_clk
);
    parameter FCOUNT = 1_00_000;
    reg [$clog2(FCOUNT)-1:0] r_counter;
    reg r_clk;
    assign o_clk = r_clk;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            r_counter <= 0;
            r_clk <= 1'b0;
        end else begin
            if (r_counter == FCOUNT - 1) begin
                r_counter <= 0;
                r_clk <= 1;
            end else begin
                r_counter <= r_counter + 1;
                r_clk <= 1'b0;
            end
        end
    end
endmodule

module decoder_2x4 (
    input [1:0] seg_sel,
    output reg [3:0] seg_comm
);
    always @(seg_sel) begin
        case (seg_sel)
            2'b00:   seg_comm = 4'b1110;
            2'b01:   seg_comm = 4'b1101;
            2'b10:   seg_comm = 4'b1011;
            2'b11:   seg_comm = 4'b0111;
            default: seg_comm = 4'b1111;
        endcase
    end
endmodule


// module digit_splitter1 (
//     input  [15:0] sum,
//     output [ 3:0] digit_1,
//     output [ 3:0] digit_10,
// );
//     assign digit_1 = sum % 10;
//     assign digit_10 = sum / 10 % 10;
//     assign digit_100 = sum / 100 % 10;
//     assign digit_1000 = sum / 1000 % 10;

// endmodule

// module digit_splitter2 (
//     input  [15:0] sum,

//     output [ 3:0] digit_100,
//     output [ 3:0] digit_1000
// );
//     assign digit_1 = sum % 10;
//     assign digit_10 = sum / 10 % 10;
//     assign digit_100 = sum / 100 % 10;
//     assign digit_1000 = sum / 1000 % 10;

// endmodule

module digit_splitter #(parameter BIT_WIDTH = 7) (
    input  [BIT_WIDTH-1:0] sum1,
    output [ 3:0] digit_1,
    output [ 3:0] digit_10
);
    assign digit_1 = sum1 % 10;
    assign digit_10 = sum1 / 10 % 10;

endmodule


// module modmux16x4(
// input mod,
// input  [3:0] digit_1,
// input  [3:0] digit_10,
// input  [3:0] digit_100,
// input  [3:0] digit_1000,
// input  [3:0] digit_1_ms,
// input  [3:0] digit_10_ms,
// input  [3:0] digit_100_ms,
// input  [3:0] digit_1000_ms,
// output  [3:0] o_digit_1,
// output  [3:0] o_digit_10,
// output  [3:0] o_digit_100,
// output  [3:0] o_digit_1000
// );

// case (mod)
//     1'b0 : 
//     1'b1 :
//     default: 
// endcase

// endmodule
module mux_4x1 (
    input  [3:0] sel,
    input  [3:0] digit_1,
    input  [3:0] digit_10,
    input  [3:0] digit_100,
    input  [3:0] digit_1000,
    output [3:0] bcd
);
    reg [3:0] r_bcd;
    assign bcd = r_bcd;
    always @(sel, digit_1, digit_10, digit_100, digit_1000) begin
        case (sel)
            4'b1110: r_bcd = digit_1;
            4'b1101: r_bcd = digit_10;
            4'b1011: r_bcd = digit_100;
            4'b0111: r_bcd = digit_1000;
            default: r_bcd = 4'bx;
        endcase
    end
endmodule

module fnd_controlloer (  //control anod segments
    input clk,
    input reset,
    input [6:0] msec,
    input [6:0] sec,
    input [6:0] min,
    input [5:0] hour,
    output [7:0] seg_out,
    output [3:0] seg_comm
);
    wire [3:0] digit_1, digit_10;
    wire [3:0] splited_bcd;
    wire [1:0] w_seg_sel;
    wire o_clk;
    wire [3:0] w_digit_mec_1, w_digit_mec_10, w_digit_sec_1,w_digit_sec_10;
    wire [3:0] w_digit_min_1, w_digit_min_10, w_digit_hour_1,w_digit_hour_10;
    clock_div u_clock_div (
        .clk  (clk),
        .reset(reset),
        .o_clk(o_clk)
    );

    counter_4 u0 (
        .clk  (o_clk),
        .reset(reset),
        .o_sel(w_seg_sel)
    );

    decoder_2x4 U_sellection (
        .seg_sel (w_seg_sel),
        .seg_comm(seg_comm)
    );

    digit_splitter U_splitter (
        .sum1(msec),
        .digit_1(w_digit_mec_1),
        .digit_10(w_digit_mec_10)
    );
    digit_splitter#(.BIT_WIDTH(7)) U_sec (
     .sum1(sec),
    .digit_1(w_digit_sec_1),
    .digit_10(w_digit_sec_10)
    );
    digit_splitter#(.BIT_WIDTH(7)) U_min (
     .sum1(min),
    .digit_1(w_digit_min_1),
    .digit_10(w_digit_min_10)
    );
    digit_splitter#(.BIT_WIDTH(5)) U_hour (
     .sum1(hour),
    .digit_1(w_digit_hour_1),
    .digit_10(w_digit_hour_10)
    );
    mux_4x1 U_Mux_4x1 (
        .sel(seg_comm),
        .digit_1(w_digit_mec_1),
        .digit_10(w_digit_mec_10),
        .digit_100(w_digit_sec_1),
        .digit_1000(w_digit_sec_10),
        .bcd(splited_bcd)
    );

    bcdtoseg U_bcdToSeg (
        .bcd(splited_bcd),
        .seg_out(seg_out)
    );

endmodule

module bcdtoseg (
    input [3:0] bcd,
    output reg [7:0] seg_out
);
    always @(bcd) begin
        case (bcd)
            4'h0: seg_out = 8'hC0;
            4'h1: seg_out = 8'hF9;
            4'h2: seg_out = 8'hA4;
            4'h3: seg_out = 8'hB0;
            4'h4: seg_out = 8'h99;
            4'h5: seg_out = 8'h92;
            4'h6: seg_out = 8'h82;
            4'h7: seg_out = 8'hf8;
            4'h8: seg_out = 8'h80;
            4'h9: seg_out = 8'h90;
            4'hA: seg_out = 8'h88;
            4'hB: seg_out = 8'h83;
            4'hC: seg_out = 8'hC6;
            4'hD: seg_out = 8'hA1;
            4'hE: seg_out = 8'h86;
            4'hF: seg_out = 8'h8E;
            default: seg_out = 8'hff;
        endcase
    end
endmodule
