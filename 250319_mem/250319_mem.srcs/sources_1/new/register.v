`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 10:27:37
// Design Name: 
// Module Name: register
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


module register(
input clk,
input [31:0] d,
output [31:0] q
    );

reg [31:0] r_q;
assign q = r_q;
always @(posedge clk) begin
    r_q <= d;
end
endmodule

module register_ram(
input clk,
input [31:0] d,
input [3:0] addr,
output [31:0] q
    );

reg [31:0] r_q[15:0];
assign q = r_q[addr];
always @(posedge clk) begin
    r_q[addr] <= d;
end
endmodule

