`timescale 1ns / 1ps



module counter9999 (
    input  clk,
    input  reset,
    output [15:0] count
);

    reg [15:0] count_9999;
    assign count = count_9999;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count_9999 <= 0;
        end else if (count_9999 < 10000) begin
            count_9999 <= count + 1;
        end else begin
            count_9999 <= 0;
        end
    end
endmodule

