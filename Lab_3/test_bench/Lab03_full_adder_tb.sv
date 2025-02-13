module full_adder_tb;
  reg a;
  reg b;
  reg c;
  wire sum;
  wire carry;
  full_adder uut (
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    a = 0; b = 0; c = 0;
    #10;
    a = 0; b = 0; c = 1;
    #10;
    a = 0; b = 1; c = 0;
    #10;
    a = 0; b = 1; c = 1;
    #10;
    a = 1; b = 0; c = 0;
    #10;
    a = 1; b = 0; c = 1;
    #10;
    a = 1; b = 1; c = 0;
    #10;
    a = 1; b = 1; c = 1;
    #10;
    $finish;
  end
  initial begin
    $monitor("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);
  end
endmodule