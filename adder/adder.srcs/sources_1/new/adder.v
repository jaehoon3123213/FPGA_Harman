`timescale 1ns / 1ps
//0:11000000 c0
//1:11111001 f9
//2:10100100 94
//3:10110000 b0
//4:10011001 99
//5:01100000 60
//6:00111100 3C
//7:00011001 19
//8:11001010 CA
//9:10101111 AF

module full_adder(
input a, 
input b,

input c_in,
output s,
output c);

wire w_s;
wire w_c1,w_c2;
adder U_HA1(
.a(a),
.b(b),
.c(w_c1),
.s(w_s));

adder U_HA2(
.a(w_s),
.b(c_in),
.s(s),
.c(w_c2));

assign c = w_c1 | w_c2;
endmodule
module adder( 
input a, 
input b,
output s,
output c
    );
    //half adder
  
 assign s= a^b;
 assign c= a&b;
endmodule
