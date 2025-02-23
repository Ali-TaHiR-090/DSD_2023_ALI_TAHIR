`timescale 1ns / 1ps



module seven_segment(
    input [3:0] num, 
    input [2:0] sel,
    input DP_IN,
    output SegA, SegB, SegC, SegD, SegE, SegF, SegG, DP,
    output [7:0] AN
    );
    
    assign DP = DP_IN;
    
    assign AN[0] = ~(~sel[0] & ~sel[1] & ~sel[2]);
    assign AN[1] = ~(~sel[0] & ~sel[1] & sel[2]);
    assign AN[2] = ~(~sel[0] & sel[1] & ~sel[2]);
    assign AN[3] = ~(~sel[0] & sel[1] & sel[2]);
    assign AN[4] = ~(sel[0] & ~sel[1] & ~sel[2]);
    assign AN[5] = ~(sel[0] & ~sel[1] & sel[2]);
    assign AN[6] = ~(sel[0] & sel[1] & ~sel[2]);
    assign AN[7] = ~(sel[0] & sel[1] & sel[2]);
    
    
    assign SegA = (~num[0] & num[1] & ~num[2] & ~num[3]) | 
                  (~num[0] & ~num[1] & ~num[2] & num[3]) |
                  (num[0] & num[1] & ~num[2] & num[3]) |
                  (num[0] & ~num[1] & num[2] & num[3]);
    
    assign SegB = (~num[0] & num[1] & ~num[2] & num[3]) | 
                  (num[1] & num[2] & ~num[3]) |
                  (num[0] & num[2] & num[3]) |
                  (num[0] & num[1] & ~num[3]);
    
    assign SegC = (num[0] & num[1] & num[2]) |
                  (num[0] & num[1] & ~num[3]) |
                  (~num[0] & ~num[1] & num[2] & ~num[3]);
    
    assign SegD = (num[1] & num[2] & num[3]) | 
                  (num[0] & ~num[1] & num[2] & ~num[3]) |
                  (~num[0] & num[1] & ~num[2] & ~num[3]) |
                  (~num[0] & ~num[1] & ~num[2] & num[3]);
    
    assign SegE = (~num[0] & num[3]) | 
                  (~num[0] & num[1] & ~num[2]) |
                  (~num[1] & ~num[2] & num[3]);
    
    assign SegF = (~num[0] & ~num[1] & num[3]) | 
                  (~num[0] & ~num[1] & num[2]) |
                  (~num[0] & num[2] & num[3]) |
                  (num[0] & num[1] & ~num[2] & num[3]);
    
    assign SegG = (~num[0] & ~num[1] & ~num[2]) |
                  (~num[0] & num[1] & num[2] & num[3]) |
                  (num[0] & num[1] & ~num[2] & ~num[3]);
    
    
 
endmodule
