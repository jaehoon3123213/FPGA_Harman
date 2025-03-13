`timescale 1ns / 1ps
module tb_adder ();

    reg sw, clk, reset;
    wire dout;

    fsm_5 sdasd (
        .sw(sw),
        .clk(clk),
        .reset(reset),
        .dout(dout)
    );


    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        sw=0;
        reset = 1; #5; reset = 0;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
           #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
           #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 1;
        #5;
        sw = 0;
        #5;
        sw = 1;
        #5;
    end



endmodule
