// Testbench for Odd Parity Generator
module tb_odd_parity_gen;
  reg [3:0] in;
  wire p;
  odd_parity_gen uut (.in(in), .p(p));
  initial begin
    in = 4'b1010; #10;
    in = 4'b1110; #10;
    in = 4'b0101; #10;
    in = 4'b1011; #10;
    $finish;
  end
endmodule