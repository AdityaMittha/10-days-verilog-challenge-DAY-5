// Testbench for Odd Parity Checker
module tb_odd_parity_check;
  reg [3:0] in;
  reg p;
  wire error;
  odd_parity_check uut (.in(in), .p(p), .error(error));
  initial begin
    in = 4'b0101; p = 1'b0; #10;
    in = 4'b1101; p = 1'b1; #10;
    in = 4'b0111; p = 1'b0; #10;
    in = 4'b1001; p = 1'b1; #10;
    $finish;
  end
endmodule