`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/04 15:39:21
// Design Name: 
// Module Name: counter9999
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


module counter9999 (
    input  clk,
    input  reset,
    output count
);

    reg count_9999;
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
