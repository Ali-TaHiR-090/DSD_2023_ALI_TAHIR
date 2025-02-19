`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/18/2025 09:38:59 PM
// Design Name:
// Module Name: source_file
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
