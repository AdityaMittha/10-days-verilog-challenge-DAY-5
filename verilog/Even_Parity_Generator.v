module even_parity_gen(input [3:0] in, output p);
  assign p = in[3] ^ in[2] ^ in[1] ^ in[0];
endmodule
