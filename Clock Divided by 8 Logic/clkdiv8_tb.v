// Code your testbench here
// or browse Examples
module clkdiv8_tb();
  reg clk = 0, rst_; 
  wire clk6;
  
  clkdiv8 clkdiv_0 (.clk(clk), 
                 
                   .rst_(rst_), 
                   .clk6(clk6)); 
  
  always 
    clk = #5 ~clk; 
  
  initial begin 
    $dumpvars(1, clkdiv8_tb);
    $dumpfile("clkdiv6.vcd"); 
     
    rst_ = 0;  
    #10;
    rst_ = 1;
    #60;
    rst_ = 0; 
    #50;
    
    $finish; 
  end 
endmodule 
  
  
  