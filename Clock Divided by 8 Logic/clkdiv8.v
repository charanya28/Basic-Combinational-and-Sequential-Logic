// Code your design here
module clkdiv8 (input clk, rst_,
               output reg clk6); 
  
  reg clk2;
  reg clk4;
  
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
  
  always @ (posedge clk4 or negedge rst_) begin 
    if (!rst_) 
      clk6 <= 1'b0; 
    else
      clk6 <= ~clk6; 
  end
    
endmodule 
