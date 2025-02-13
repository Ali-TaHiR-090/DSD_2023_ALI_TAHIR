module Lab03_circuit_tb(); 
  logic a, b, c; 
  logic x, y; 
  Lab03_circuit UUT ( 
    .a(a), 
    .b(b), 
    .c(c), 
    .x(x), 
    .y(y) 
  ); 
  initial begin 
    a = 0; b = 0; c = 0; 
    #10;  
    a = 1; b = 0; c = 0; 
    #10; 
    a = 0; b = 1; c = 0; 
    #10; 
    a = 1; b = 1; c = 0;
    #10; 
    a = 0; b = 0; c = 1; 
    #10; 
    a = 1; b = 0; c = 1; 
    #10; 
    a = 0; b = 1; c = 1; 
    #10; 
    a = 1; b = 1; c = 1; 
    #10; 
    $finish;  
  end 
  initial begin 
    $monitor("Time=%0t, a=%0b, b=%0b, c=%0b, x=%0b, y=%0b", $time, a, b, c, x, y); 
  end 
endmodule 
