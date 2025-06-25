// Code your design here
module RCA (input [3:0] x, 
            input [3:0] y, 
        	input c0=0, 
        	output cout,
            output [3:0] sumrca);

  wire c1, c2, c3; 
  
  FA u1 (.a(x[0]),
         .b(y[0]),
         .cin(c0),
         .sum(sumrca[0]),
         .carry(c1));
  
  FA u2 (.a(x[1]),
         .b(y[1]),
         .cin(c1),
         .sum(sumrca[1]),
         .carry(c2));
  
  FA u3 (.a(x[2]),
         .b(y[2]),
         .cin(c2),
         .sum(sumrca[2]),
         .carry(c3));
  
  FA u4 (.a(x[3]),
         .b(y[3]),
         .cin(c3),
         .sum(sumrca[3]),
         .carry(cout));

endmodule 

module FA (input a, b, cin, 
           output sum, carry); 
  
  assign sum = a ^ b ^ cin; 
  assign carry = ((a & b) | (cin & b) | (a & cin));
  
endmodule 
