`timescale 1ns / 1ps

module seven_segment(
    input logic [3:0] num, 
    input logic [2:0] sel,
    input logic DP_IN,
    output logic SegA, SegB, SegC, SegD, SegE, SegF, SegG, DP,
    output logic [7:0] AN
);
    
    assign DP = DP_IN;
    
    always_comb begin
        case (sel)
            3'b000: AN = 8'b1111_1110;
            3'b001: AN = 8'b1111_1101;
            3'b010: AN = 8'b1111_1011;
            3'b011: AN = 8'b1111_0111;
            3'b100: AN = 8'b1110_1111;
            3'b101: AN = 8'b1101_1111;
            3'b110: AN = 8'b1011_1111;
            3'b111: AN = 8'b0111_1111;
            default: AN = 8'b1111_1111;
        endcase
    end
    
    always_comb begin
        case (num)
            4'b0000: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0000001; // 0
            4'b0001: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b1001111; // 1
            4'b0010: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0010010; // 2
            4'b0011: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0000110; // 3
            4'b0100: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b1001100; // 4
            4'b0101: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0100100; // 5
            4'b0110: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0100000; // 6
            4'b0111: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0001111; // 7
            4'b1000: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0000000; // 8
            4'b1001: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0000100; // 9
            4'b1010: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0001000; // A
            4'b1011: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b1100000; // B
            4'b1100: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0110001; // C
            4'b1101: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b1000010; // D
            4'b1110: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0110000; // E
            4'b1111: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b0111000; // F
            default: {SegA, SegB, SegC, SegD, SegE, SegF, SegG} = 7'b1111111; // Blank
        endcase
    end
    
endmodule
