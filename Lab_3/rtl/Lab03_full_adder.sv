module full_adder(
  input a,
  input b,
  input c,
  output sum,
  output carry
);

  wire sum_intermediate; 

  assign sum_intermediate = a ^ b;
  assign sum = sum_intermediate ^ c;
  assign carry = (a & b) | (c & sum_intermediate);

endmodule