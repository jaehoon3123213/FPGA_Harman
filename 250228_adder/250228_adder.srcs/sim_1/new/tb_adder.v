`timescale 1ns / 1ps
module tb_adder ();

    reg [7:0] a, b;
    wire [8:0] r;
    wire over;
    wire seg_comm;
    bit8adder uut (
        .a(a),
        .b(b),
        .r(r),
        .over(over)
    );
    integer i;
    integer j;
    initial begin
        a = 8'h0;
        b = 8'h0;
        for (i = 0; i < 256; i = i + 1) begin
            a = i;
            for (j = 0; j < 256; j = j + 1) begin
                b = j;
                #1;
            end
        end



    end


endmodule
