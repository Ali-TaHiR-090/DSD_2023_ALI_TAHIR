`timescale 1ns / 1ps


module my_circuit (input a, b, c, output x, y);
    wire not_c, or_ab, and_ab, not_and_ab, or_ab_2, xor_out;

    not u1(not_c, c);
    or  u2(or_ab, a, b);
    nand u3(not_and_ab, a, b);
    or  u5(or_ab_2, a, b);
    xor u6(xor_out, not_and_ab, or_ab_2);
    and u7(y, or_ab, xor_out);
    xor u8(x, not_c, or_ab);
endmodule
