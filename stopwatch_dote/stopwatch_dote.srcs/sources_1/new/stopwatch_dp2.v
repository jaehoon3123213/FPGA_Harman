`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 12:47:07
// Design Name: 
// Module Name: stopwatch_dp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module stopwatch_dp2 (
    input clk,
    input reset,
    input run,
    input clear,
    output [6:0] msec,
    output [6:0] sec,
    output [6:0] min,
    output [6:0] hour

);
    wire w_clk_100hz;
    wire w_msec_tick, w_sec_tick, w_min_tick;

    time_counter2 #(
        .TICK_COUNT(100),
        .BIT_WIDTH (7)
    ) u_ti2 (
        .clk(clk),
        .reset(reset),
        .tick(w_clk_100hz),
        .clear(clear),
        .o_time(msec),
        .o_tick(w_msec_tick)
    );
    time_counter2 #(
        .TICK_COUNT(60),
        .BIT_WIDTH (7)
    ) u_ti22 (
        .clk(clk),
        .reset(reset),
        .tick(w_msec_tick),
        .clear(clear),
        .o_time(sec),
        .o_tick(w_sec_tick)
    );

    time_counter2 #(
        .TICK_COUNT(60),
        .BIT_WIDTH (7)
    ) u_ti32 (
        .clk(clk),
        .reset(reset),
        .tick(w_sec_tick),
        .clear(clear),
        .o_time(min),
        .o_tick(w_min_tick)
    );


    time_counter2 #(
        .TICK_COUNT(60),
        .BIT_WIDTH (6)
    ) u_ti42 (
        .clk(clk),
        .reset(reset),
        .tick(w_min_tick),
        .clear(clear),
        .o_time(hour),
        .o_tick()
    );

    clk_div_1002 uclk_1002 (
        .clk  (clk),
        .reset(reset),
        .run  (run),
        .clear(clear),
        .o_clk(w_clk_100hz)
    );

endmodule


module clk_div_1002 (
    input  clk,
    input  reset,
    input  run,
    input  clear,
    output o_clk
);


    parameter FCOUNT = 1_000000;
    reg [$clog2(FCOUNT)-1:0] count_reg, count_next;
    reg clk_reg, clk_next;  //출력을 플립플롭으로 내보냄

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count_reg <= 0;
            clk_reg   <= 0;
        end else begin
            count_reg <= count_next;
            clk_reg   <= clk_next;
        end

    end

    assign o_clk = clk_reg;

    always @(*) begin
        count_next = count_reg;
        clk_next   = 1'b0;
        if (run == 1'b1) begin
            if (count_reg == FCOUNT - 1) begin
                count_next = 0;
                clk_next   = 1'b1;  //출력을 high로
            end else begin
                count_next = count_reg + 1;
                clk_next   = 1'b0;
            end
        end else if (clear == 1'b1) begin
            count_next = 0;
            clk_next   = 0;
        end
    end

endmodule


module time_counter2 #(
    parameter TICK_COUNT = 100,
    BIT_WIDTH = 7
) (
    input clk,
    input reset,
    input tick,
    input clear,
    output [BIT_WIDTH : 0] o_time,
    output o_tick
);
    reg [$clog2(TICK_COUNT)-1 : 0] count_reg, count_next;
    reg tick_reg, tick_next;
    assign o_time = count_reg;
    assign o_tick = tick_reg;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count_reg <= 0;
            tick_reg  <= 0;
        end else begin
            count_reg <= count_next;
            tick_reg  <= tick_next;
        end
    end
    always @(*) begin
        count_next = count_reg;
        tick_next  = 1'b0;
        if (clear == 1'b1) begin
            count_next = 0;
            tick_next = 0;
        end 
            if (tick == 1'b1) begin
                if (count_reg == TICK_COUNT - 1) begin
                    count_next = 0;
                    tick_next  = 1'b1;
                end else begin
                    count_next = count_reg + 1;
                    tick_next  = 1'b0;
                end
            end
        end
  
endmodule


module stopwatch_cu2(
    input  clk,
    input sw,
    input  reset,
    input  i_run_stop,
    input  i_clear,
    output o_run_stop,
    output o_clear
);  

    reg r_o_run_stop, r_o_clear;
    assign o_clear = r_o_clear;
    assign o_run_stop = r_o_run_stop;
    reg [2:0] state, next;
    parameter STOP = 3'b000, RUN = 3'b001 , CLEAR = 3'b010;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= STOP;
        end else begin
            state <= next;
        end
    end
    always @(*) begin
        next = state;
        if (sw == 1'b1) begin
            next =state;
        end
        else begin
        case (state)
            STOP:
            if (i_run_stop == 1'b1) begin
                next = RUN;
            end else if (i_clear == 1'b1) begin
                next = CLEAR;
            end else begin
                next = state;
            end
            RUN:
            if (i_run_stop == 1'b1) begin
                next = STOP;
            end else if (i_clear == 1'b1) begin
                next = CLEAR;
            end else begin
                next = state;
            end
            CLEAR:
            if (i_clear == 1'b0) begin
                next = STOP;

            end else begin
                next = state;
            end
            default: next = state;
        endcase
        end
    end

    always @(*) begin
        r_o_run_stop = 1'b0;
        r_o_clear = 1'b0;
        case (state)
            RUN: begin
                r_o_run_stop = 1'b1;
                r_o_clear = 1'b0;
            end
            STOP: begin
                r_o_run_stop = 1'b0;
                r_o_clear = 1'b0;
            end
            CLEAR: begin
                r_o_run_stop = 1'b0;
                r_o_clear = 1'b1;
            end
            default: begin
                r_o_run_stop = 1'b0;
                r_o_clear = 1'b0;
            end
        endcase

    end
endmodule