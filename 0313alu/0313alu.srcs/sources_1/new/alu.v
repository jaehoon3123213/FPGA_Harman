`timescale 1ns/1ns
module mux4to1_if(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [1:0] sel,
    output reg [3:0] mux_out
);
    always @(*) begin
        if (sel == 2'b00) mux_out = a;
        else if (sel == 2'b00) mux_out = b;
        else if (sel == 2'b00) mux_out = c;
        else if (sel == 2'b00) mux_out = d;
        else mux_out =4'bx;
    end
endmodule
