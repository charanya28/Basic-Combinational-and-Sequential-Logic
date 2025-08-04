// Code your design here
module magcomp (input [3:0] a, b, 
                output reg y);
  
  always @(*) begin 
    if (a > b) 
      y = 1'b0; 
    else if (a < b) 
      y = 1'b1; 
    else 
      y = 1'bx;
  end 
endmodule 
      
