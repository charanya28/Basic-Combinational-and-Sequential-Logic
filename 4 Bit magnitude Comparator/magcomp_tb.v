// Code your testbench here
// or browse Examples
module magcomp_tb (); 
  reg [3:0] a, b;
  wire y; 
  
  magcomp u1 (.a(a), 
              .b(b), 
              .y(y)); 
  
  initial begin 
    $dumpvars(1, magcomp_tb);
    $dumpfile("magcomp.vcd"); 
    a = 4'b1111; b = 4'b0001; #10; 
    a = 4'b1101; b = 4'b1111; #10; 
    a = 4'b1111; b = 4'b1111; #10;
    $finish; 
  end 
endmodule
    
  
