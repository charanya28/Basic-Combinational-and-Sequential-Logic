// Code your testbench here
// or browse Examples
module tb_bin2gc (); 
  reg clk = 0; 
  reg en; 
  reg rst_; 
  wire [3:0] gray; 
  
  bin2gc u1 (.clk(clk),
             .en(en),
             .rst_(rst_),
             .gray(gray));
  
  always clk = #5 ~clk;
  
  initial begin
    $dumpvars(1,tb_bin2gc);
    $dumpfile("dump.vcd");
    en = 0; rst_= 0; #10;
    en = 1; rst_ = 1; 
    #100;
    $finish;
  end
endmodule