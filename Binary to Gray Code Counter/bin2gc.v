// Code your design here
module bin2gc (input clk, en, rst_,
               output [3:0] gray);
  
  reg [3:0] bin;
  always @ (posedge clk or negedge rst_) begin
    if (!rst_)
      bin <= 4'b0000; 
    else if (en)
      bin <= bin +1; 
  end
  
  assign gray = bin[3:0] ^ (bin[3:0] >> 1);
endmodule 
