`timescale 1ns/1ps
module TB;
  reg clk, rst_n, x;
  wire z;
  
  mealy sd(clk, rst_n, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    x = 0;
    #1 rst_n = 0;
    #2 rst_n = 1;

    #50
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
  
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
