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
// Description: s
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stopwatch_dp (
    input clk,
    input reset,
    input up,
    input down,
    input set,
    input sw,
    input [1:0] i_set,
    output [6:0] msec,
    output [6:0] sec,
    output [6:0] min,
    output [6:0] hour
);

    
    wire w_clk_100hz;
    wire w_msec_tick, w_sec_tick, w_min_tick;
    time_counter #(
        .TICK_COUNT(100),
        .BIT_WIDTH (7)
    ) u_ti (
        .clk(clk),
        .reset(reset),
        .tick(w_clk_100hz),
        .o_time(msec),
        .o_tick(w_msec_tick)
    );
    time_counter_sec #(
        .TICK_COUNT(60),
        .BIT_WIDTH (7)
    ) u_ti2 (
        .clk(clk),
        .reset(reset),
        .tick(w_msec_tick),
        .sw(sw),
        .up(up),
        .down(down),
        .set(i_set),
        .o_time(sec),
        .o_tick(w_sec_tick)
    );

    time_counter_min #(
        .TICK_COUNT(60),
        .BIT_WIDTH (7)
    ) u_ti3 (
        .clk(clk),
        .reset(reset),
        .tick(w_sec_tick),
        .up(up),
        .sw(sw),
        .set(i_set),
        .down(down),
        .o_time(min),
        .o_tick(w_min_tick)
    );


    time_counter_hour #(
        .TICK_COUNT(24),
        .BIT_WIDTH (6)
    ) u_ti4 (
        .clk(clk),
        .reset(reset),
        .tick(w_min_tick),
        .up(up),
        .sw(sw),
        .down(down),
        .set(i_set),
        .o_time(hour),
        .o_tick()
    );

    clk_div_100 uclk_100 (
        .clk  (clk),
        .reset(reset),
        .o_clk(w_clk_100hz)
    );

endmodule


module clk_div_100 (
    input  clk,
    input  reset,
    output o_clk
);


    parameter FCOUNT = 1000000; // 1000000
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
        if (count_reg == FCOUNT - 1) begin
            count_next = 0;
            clk_next   = 1'b1;  //출력을 high로
        end else begin
            count_next = count_reg + 1;
            clk_next   = 1'b0;
        end
    end


endmodule


module time_counter #(
    parameter TICK_COUNT = 100,
    BIT_WIDTH = 7
) (
    input clk,
    input reset,
    input tick,
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
module time_counter_sec #(
    parameter TICK_COUNT = 60,
    BIT_WIDTH = 7
) (
    input clk,
    input reset,
    input tick,
    input up,
    input down,
    input sw,
    input [1:0] set,
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
        if (set == 2'b01 && sw == 1'b1) begin
    
            if (up == 1'b1) begin
                if (count_next == 59) begin
                    count_next = 0;
                end
                else
                count_next = count_reg + 1;
            end else if (down == 1'b1) begin
                if (count_next == 0) begin
                    count_next = 59;
                end
                else
                count_next = count_reg - 1;
            end else count_next = count_reg;
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

module time_counter_min #(
    parameter TICK_COUNT = 60,
    BIT_WIDTH = 7
) (
    input clk,
    input reset,
    input tick,
    input up,
    input down,
    input sw,
    input [1:0] set,
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
        if (set == 2'b10 && sw == 1'b1) begin
            if (up == 1'b1) begin
            if (count_next == 59) begin
                    count_next = 0;
                end
                else
                count_next = count_reg + 1;
            end else if (down == 1'b1) begin
                if (count_next == 0) begin
                    count_next = 59;
                end
                else
                count_next = count_reg - 1;
            end else count_next = count_reg;
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

module time_counter_hour #(
    parameter TICK_COUNT = 24,
    BIT_WIDTH = 6
) (
    input clk,
    input reset,
    input tick,
    input up,
    input down,
    input sw,
    input [1:0] set,
    output [BIT_WIDTH : 0] o_time,
    output o_tick
);
    reg [$clog2(TICK_COUNT)-1 : 0] count_reg, count_next;
    reg tick_reg, tick_next;
    assign o_time = count_reg;
    assign o_tick = tick_reg;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count_reg <= 12;
            tick_reg  <= 0;
        end else begin
            count_reg <= count_next;
            tick_reg  <= tick_next;
        end
    end
    always @(*) begin
        count_next = count_reg;
        tick_next  = 1'b0;
        if (set == 2'b11 && sw == 1'b1) begin
            if (up == 1'b1) begin
                if (count_next == 23) begin
                    count_next = 0;
                end
                else
                count_next = count_reg + 1;
            end else if (down == 1'b1) begin
                if (count_next == 0) begin
                    count_next = 23;
                end
                else
                count_next = count_reg - 1;
            end else count_next = count_reg;
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

module clock_set (
    input clk,
    input reset,
    input i_set,
    input sw,
    output [1:0] o_set
);

    reg [1:0] r_set;
    assign o_set = r_set;
    reg [1:0] state, next;
    parameter STOP = 2'b00, SEC = 2'b01, MIN = 2'b10, HOUR = 2'b11;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= STOP;
        end else begin
            state <= next;
        end
    end
    always @(*) begin
        next = state;
        if (sw == 0) begin
            next = state;
        end
        else begin
            
        case (state)
            STOP:
            if (i_set == 1'b1) begin
                next = SEC;
            end else begin
                next = state;
            end
            SEC:
            if (i_set == 1'b1) begin
                next = MIN;
            end else begin
                next = state;
            end
            MIN:
            if (i_set == 1'b1) begin
                next = HOUR;
            end else begin
                next = state;
            end
            HOUR:
            if (i_set == 1'b1) begin
                next = STOP;
            end else begin
                next = state;
            end
            default: next = state;
        endcase
    end
    end

    always @(*) begin
        r_set = 2'b0;
        case (state)
            MIN: begin
                r_set = 2'b10;
            end
            SEC: begin
                r_set = 2'b01;
            end
            STOP: begin
                r_set = 2'b00;
            end
            HOUR: begin
                r_set = 2'b11;
            end
            default: begin
                r_set = 2'b0;
            end
        endcase

    end
endmodule
