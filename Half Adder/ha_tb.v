module ha_tb (); 
  reg d; 
  reg e; 
  wire f; 
  wire g; 
  
  ha ha(.a(d), 
        .b(e), 
        .s(f), 
        .c(g));
    
  initial begin 
    d = 1'b1;
    e = 1'b1; 
    #1
    $display("s=%b", f);       
    $display("c=%b", g);
  end 
  endmodule 