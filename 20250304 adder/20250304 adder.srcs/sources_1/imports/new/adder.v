`timescale 1ns / 1ps

module calculator (
    input [7:0] a,
    b,
    input [1:0] seg_sel,
    output [7:0] seg,
    output [3:0] seg_comm

);

    wire [7:0] w_carry;
    wire w_r;
    bit8adder u0 (
        .a(a),
        .b(b),
        .r(w_r),
        .over(w_carry)
    );

    bcd_tenseg u1 (
        .bcd({w_carry,w_r}),
        .seg_sel(seg_sel),
        .seg(seg),
        .seg_comm(seg_comm)

    );


endmodule

module bit8adder (
    input [7:0] a,
    b,
    output [7:0] r,
    output over
);


    wire c0, c1, c2;
    bit4adder u0 (
        .a(a[3:0]),
        .b(b[3:0]),
        .c_in(1'b0),
        .r(r[3:0]),
        .over(c1)
    );
    bit4adder u1 (
        .a(a[7:4]),
        .b(b[7:4]),
        .c_in(c1),
        .r(r[7:4]),
        .over(over)
    );
endmodule

module bit4adder (
    input [3:0] a,
    input [3:0] b,
    input c_in,
    output [3:0] r,
    output over
);

    wire c_0, c_1, c_2;
    full_adder r0 (
        .a(a[0]),
        .b(b[0]),
        .c_in(c_in),
        .sum(r[0]),
        .carry(c_0)
    );
    full_adder r1 (
        .a(a[1]),
        .b(b[1]),
        .c_in(c_0),
        .sum(r[1]),
        .carry(c_1)
    );
    full_adder r2 (
        .a(a[2]),
        .b(b[2]),
        .c_in(c_1),
        .sum(r[2]),
        .carry(c_2)
    );
    full_adder r3 (
        .a(a[3]),
        .b(b[3]),
        .c_in(c_2),
        .sum(r[3]),
        .carry(over)
    );

endmodule



module full_adder (
    input  a,
    b,
    c_in,
    output sum,
    carry
);
    wire s_a, c_b, c_2;
    half_adder u0 (
        .a(a),
        .b(b),
        .sum(s_a),
        .carry(c_b)

    );
    half_adder u1 (
        .a(s_a),
        .b(c_in),
        .sum(sum),
        .carry(c_2)
    );
    assign carry = c_b | c_2;
endmodule

module half_adder (
    input  a,
    b,
    output sum,
    carry
);

    //gate 프리미티브
    xor (sum, a, b);
    and (carry, a, b);




endmodule
