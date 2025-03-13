`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/13 09:43:34
// Design Name: 
// Module Name: tb_alu
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


module tb_alu();

reg [3:0] a,b;
reg [1:0] op;
wire [3:0] result;


alu dut(
    .a(a),
    .b(b),
    .op(op),
    .result(result)
);

task test_alu;
    input [3:0] test_a;
    input [3:0] test_b;
    input [3:0] test_op;
    input [3:0] expected;




    begin
       a= test_a;
       b= test_b;
       op= test_op;


       #10;


       if(result === expected) begin
        $display("PASS: a=%h, b=%h, op=%b -> result =%h", test_a, test_b,test_op, result);
       end else begin
        $display("fail: a=%h, b=%h, op=%b -> result =%h", test_a, test_b,test_op, result,expected);
       end       
    end
endtask 

initial begin
    $display("starting alu test...");
    $monitor("time =%0t | a=%h | op=%b | result =%h", $time,a,b,op,result);
    test_alu(4'h3, 4'h5, 2'b00, 4'h8);
    test_alu(4'h7, 4'h2, 2'b01, 4'h5);
    test_alu(4'hf, 4'ha, 2'b10, 4'ha);
    test_alu(4'hc, 4'h3, 2'b11, 4'hf);
    $display("alu completed");
    $finish;
    
end
endmodule
