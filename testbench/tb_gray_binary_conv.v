module tb_gray_binary_conv;
  reg [3:0] gray;
  wire [3:0] bin;
  gray_binary_conv uut (.gray(gray), .bin(bin));
  initial begin
    gray = 4'b1010; #10;
    gray = 4'b1000; #10;
    gray = 4'b0101; #10;
    gray = 4'b1110; #10;
    gray = 4'b0010; #10;
    $finish;
  end
endmodule