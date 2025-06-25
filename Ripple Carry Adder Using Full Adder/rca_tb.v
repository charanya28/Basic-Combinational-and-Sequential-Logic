// Code your testbench here
// or browse Examples
module rca_tb (); 
  reg [3:0] x; 
  reg [3:0] y; 
  reg c0=0; 
  wire cout; 
  wire [3:0] sumrca; 
  
  RCA u1 (.x(x),
          .y(y),
          .c0(c0),
          .cout(cout),
          .sumrca(sumrca));
  
  integer i;
  
  initial begin 
    $dumpvars(1, rca_tb);
    $dumpfile("rca.vcd");
    
    for (i=0; i<16; i=i+1) begin 
      if(i==15)
        c0=1;
      else
        c0=0;
      x=i; y=i; #10;
      
    end
  end
endmodule
  