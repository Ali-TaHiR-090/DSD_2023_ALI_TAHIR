`timescale 1ns / 1ps

module rgb_module_code(
    input a0,
    input a1,
    input b0,
    input b1,
    output rgb_led_r,
    output rgb_led_g,
    output rgb_led_b
    );
    assign rgb_led_r = (~b0 & ~b1) | (a1 & ~b0) | (a0 & ~b0) | (a1 & a0) | (a0 & b0 & ~b1);
    assign rgb_led_g = (~a0 & ~a1) | (~a0 & b1) | (b0 & ~a0) | (b0 & b1) | (b0 & a0 & ~a1);
    assign rgb_led_b = (~b0 & a0) | (b0 & ~a0) | (~b1 & ~a0 & a1) | (a0 & a1 & ~b1) | (b1 & ~b0 & ~a1) | (b0 & b1 & ~a1);

endmodule
