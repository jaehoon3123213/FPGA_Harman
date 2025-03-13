`timescale 1ns / 1ps



module bit4adder (
    input  a0,
    a1,
    a2,
    a3,
    input  b0,
    b1,
    b2,
    b3,
    input  c_in,
    output c1,
    c2,
    c3,
    c4
);

    wire a0_c, a1_c, a2_c, a3_c;
    full_adder u1 (
        .a(a0),
        .b(b0),
        .c_in(c_in),
        .c(a0_c),
        .s(c1)
    );
    full_adder u2 (
        .a(a1),
        .b(b1),
        .c_in(a0_c),
        .c(a1_c),
        .s(c2)
    );
    full_adder u3 (
        .a(a2),
        .b(b2),
        .c_in(a1_c),
        .c(a2_c),
        .s(c3)
    );
    full_adder u4 (
        .a(a3),
        .b(b3),
        .c_in(a2_c),
        .c(a3_c),
        .s(c4)
    );


endmodule
