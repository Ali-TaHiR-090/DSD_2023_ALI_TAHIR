module Lab03_circuit (input logic a, b, c, output logic x, y); 

  logic not_c, or_ab, and_ab, not_and_ab, or_ab_2, xor_out; 

 

  not u1(not_c, c); 

  or u2(or_ab, a, b); 

  nand u3(not_and_ab, a, b); 

  xor u4(xor_out, not_and_ab, or_ab); 

  and u5(y, or_ab, xor_out); 

  xor u6(x, not_c, or_ab); 

endmodule 