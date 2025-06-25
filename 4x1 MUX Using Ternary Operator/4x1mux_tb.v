// Code your testbench here
// or browse Examples
module mux4x1_tb(); 
  reg i0, i1, i2, i3; 
  reg [3:0]sel; 
  wire y;
  
  mux4x1 mux(.i0(i0),
             .i1(i1), 
             .i2(i2),
             .i3(i3),
             .sel(sel),
             .y(y)); 
  
  initial begin 
    $dumpvars(1, mux4x1_tb);
    $dumpfile("mux4x1.vcd");
    i0 =0; i1 = 1; i2 = 1; i3 = 0; 
    sel = 2'b00; 
    #10; 
    sel = 2'b01; 
    #10; 
    sel = 2'b11; 
    #10;
    sel = 2'b10; 
    #10;
    sel = 2'bx; //invalid input, resorts to x
    #20;
    $finish; 
  end 
endmodule 
  
  