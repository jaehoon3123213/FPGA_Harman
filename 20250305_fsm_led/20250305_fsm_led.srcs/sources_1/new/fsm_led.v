`timescale 1ns / 1ps

module fsm_led (
    input clk,
    input reset,
    input [2:0] sw,
    output [1:0] led
);
    reg [1:0] r_led;
    assign led = r_led;
    parameter [1:0] IDLE = 2'b00, LED01 = 2'b01, LED02 = 2'b10;
    reg [1:0] state, next;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 0;
            // next  <= 0;
        end else begin
            state <= next;  // 상태관리 next를 현재 상태로 바꿈
        end
    end

    // next combinational logic
    always @(*) begin
        next =state;
        case (state)
            IDLE:
            if (sw == 3'b001) begin
                next = LED01;
            end
            LED01: begin
                if (sw == 3'b011) begin
                    next = LED02;
                end
            end
            LED02: begin
                if (sw == 3'b110) begin
                    next = LED01;
                end else if (sw == 3'b111) begin
                    next = IDLE;
                end
                else begin
                    next = state;
                end
            end
               default: next = state;
        endcase
    end

    always @(*) begin
        case (next)
            IDLE : r_led = 2'b00;
            LED01 : r_led = 2'b10;
            LED02 : r_led = 2'b01;
            default: r_led = 2'b00;
        endcase
    end
endmodule

