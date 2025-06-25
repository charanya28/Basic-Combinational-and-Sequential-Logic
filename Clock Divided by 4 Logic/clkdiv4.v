// Code your design here
module clkdiv4 (input clk, rst_,
               output reg clk4); 
  
  reg clk2;
  
  always @ (posedge clk or negedge rst_) begin
    if (!rst_)
      clk2 <= 1'b0;
    else
      clk2 <= ~clk2;
  end
  
  always @ (posedge clk2 or negedge rst_) begin 
    if (!rst_)
      clk4 <= 1'b0; 
    else 
      clk4 <= ~clk4; 
  end
    
endmodule 
