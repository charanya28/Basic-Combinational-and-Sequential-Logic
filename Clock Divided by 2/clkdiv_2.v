// Code your design here
module clkdiv_2 (input clk, rst_,
               output reg q); 
  
  
  always @ (posedge clk or negedge rst_) begin
    if (!rst_)
      q <= 1'b0;
    else
      q <= ~q; 
  end
    
endmodule 
