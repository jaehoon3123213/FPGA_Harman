`timescale 1ns / 1ps

module fsm_5 (
    input [2:0] sw,
    input clk,
    input reset,
    output [2:0] led
);
    reg [2:0] r_led;
    assign led = r_led;
    parameter [2:0] IDLE = 3'b000;
    parameter [2:0] ST1 = 3'b001;
    parameter [2:0] ST2 = 3'b010;
    parameter [2:0] ST3 = 3'b100;
    parameter [2:0] ST4 = 3'b111;


    reg [2:0] state, next;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 3'b000;
        end else begin
            state <= next;
        end
    end
    always @(*) begin
        next = state; //초기값
        case (state)
            IDLE:
            if (sw == 3'b001) begin
                next = ST1;
            end else if (sw == 3'b010) begin
                next = ST2;
            end else begin
                next = state;
            end
            ST1:
            if (sw == 3'b010) begin
                next = ST2;
            end else begin
                next = state;
            end
            ST2:
            if (sw == 3'b100) begin
                next = ST3;
            end else begin
                next = state;
            end
            ST3:
            if (sw == 3'b001) begin
                next = ST1;
            end else if (sw == 3'b111) begin
                next = ST4;
            end else if (sw == 3'b000) begin
                next = IDLE;
            end else begin
                next = state;
            end
            ST4:
            if (sw == 3'b100) begin
                next = ST3;
            end else begin
                next = state;
            end
        endcase
    end
    always @(*) begin


        case (state)
            IDLE:
            if (sw == 3'b001) begin
                r_led = 3'b001;
            end else if (sw == 3'b010) begin
                r_led = 3'b010;
            end else begin
                r_led = 3'b000;
            end
            ST1:
            if (sw == 3'b010) begin
                r_led = 3'b010;
            end else begin
                r_led = 3'b001;
            end
            ST2:
            if (sw == 3'b100) begin
                r_led = 3'b100;
            end else begin
                r_led = 3'b010;
            end
            ST3:
            if (sw == 3'b001) begin
                r_led = 3'b001;
            end else if (sw == 3'b111) begin
                r_led = 3'b111;
            end else if (sw == 3'b000) begin
                r_led = 3'b000;
            end else begin
                r_led = 3'b100;
            end
            ST4:
            if (sw == 3'b100) begin
                r_led = 3'b100;
            end else begin
                r_led = 3'b111;
            end
            default: r_led = 3'b000;
        endcase
    end
endmodule


