// Code your testbench here
// or browse Examples
module clkdiv2_tb();
  reg clk = 0, rst_; 
  wire q;
  
  clkdiv_2 clkdiv_0 (.clk(clk), 
                 
                   .rst_(rst_), 
                   .q(q)); 
  
  always 
    clk = #5 ~clk; 
  
  initial begin 
    $dumpvars(1, tb);
    $dumpfile("clkdiv.vcd"); 
     
    rst_ = 0;  
    #10;
    rst_ = 1;
    #60;
    rst_ = 0; 
    #20;
    
    $finish; 
  end 
endmodule 
  
  
  