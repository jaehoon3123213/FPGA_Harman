`timescale 1ns / 1ps



module counter9999 (
    input clk,
    input reset,
    input  clear,
    output [15:0] count
);

    reg [15:0] count_9999;
    assign count = count_9999;
    always @(posedge clk, posedge reset,posedge clear) begin
        if (reset | clear == 1'b1) begin
            count_9999 <= 0;
        end else if (count_9999 == 9999) begin
            count_9999 <= 0;
        end else begin
            count_9999 <= count_9999 + 1;
        end
    end
endmodule

