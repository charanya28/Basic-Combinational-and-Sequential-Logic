// Code your design here
module mux4x1 (input i0, i1, i2, i3, 
        	   input [3:0]sel, 
               output reg y); 
  
  always @ (*) begin 
    case(sel)
      4'b0001: y = i0; 
      4'b0010: y = i1; 
      4'b0100: y = i2; 
      4'b1000: y = i3; 
      default: y = 1'bx;
    endcase
  end
endmodule 
