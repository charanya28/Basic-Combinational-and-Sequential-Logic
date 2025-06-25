// Code your testbench here
// or browse Examples
module clkdiv4_tb();
  reg clk = 0, rst_; 
  reg clk2;
  wire clk4;
  
  clkdiv4 clkdiv_0 (.clk(clk), 
                   .rst_(rst_), 
                   .clk4(clk4)); 
  
  always 
    clk = #5 ~clk; 
  
  initial begin 
    $dumpvars(1, clkdiv4_tb);
    $dumpfile("clkdiv4.vcd"); 
     
    rst_ = 0;  
    #10;
    rst_ = 1;
    #60;
    rst_ = 0; 
    #20;
    
    $finish; 
  end 
endmodule 
  
  
  