`timescale 1ns / 1ps

module stopwatch_cu(
    input  clk,
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