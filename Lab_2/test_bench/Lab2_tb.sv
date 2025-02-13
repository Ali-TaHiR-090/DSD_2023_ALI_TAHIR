`timescale 1ns / 1ps
module my_circuit_tb;
    reg a, b, c;
    wire x, y;    
    my_circuit uut (
        .a(a),
        .b(b),
        .c(c),
        .x(x),
        .y(y)
    );
    initial begin
        $display("Time\t a b c | x y");
        $monitor("%0t\t %b %b %b | %b %b", $time, a, b, c, x, y);        
        a = 0; b = 0; c = 0; #10;  
        a = 0; b = 0; c = 1; #10;  
        a = 0; b = 1; c = 0; #10;  
        a = 0; b = 1; c = 1; #10;  
        a = 1; b = 0; c = 0; #10;  
        a = 1; b = 0; c = 1; #10;  
        a = 1; b = 1; c = 0; #10;  
        a = 1; b = 1; c = 1; #10;  
        $finish;
    end
endmodule
