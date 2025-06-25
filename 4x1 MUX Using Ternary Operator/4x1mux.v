// Code your design here
module mux4x1 (input i0, i1, i2, i3, 
               input [1:0]sel, 
               output y); 
  
  assign y = (sel == 2'b00) ? i0: 
    	     (sel == 2'b01) ? i1: 
     	     (sel == 2'b11) ? i2: 
             (sel == 2'b10) ? i3:
   			    1'bx;
  
    
endmodule 
