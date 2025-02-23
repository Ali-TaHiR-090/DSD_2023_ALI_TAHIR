`timescale 1ns / 1ps

module seven_segment_tb;
    logic [3:0] num;
    logic SegA, SegB, SegC, SegD, SegE, SegF, SegG, DP;
    logic [7:0] AN;

    seven_segment uut (
        .num(num),
        .sel(3'b000),
        .SegA(SegA), .SegB(SegB), .SegC(SegC), .SegD(SegD),
        .SegE(SegE), .SegF(SegF), .SegG(SegG), .DP(DP), .AN(AN)
    );

    initial begin
        $display("Testing seven_segment module");

        for (num = 0; num < 16; num = num + 1) begin
            #10;
            $display("num = %b | SegA = %b, SegB = %b, SegC = %b, SegD = %b, SegE = %b, SegF = %b, SegG = %b",
                      num, SegA, SegB, SegC, SegD, SegE, SegF, SegG);
        end

        $finish;
    end
endmodule
