module dff_tb (); 
  reg clk_src = 0, rst_, d; 
  wire q, q_bar; 
  
  dff dut (.clk(clk_src), 
             .rst_(rst_),
             .d(d),
             .q(q),
             .q_bar(q_bar)
          );
  
  always 
    clk_src = #5 ~clk_src;
  
  initial begin 
    $dumpvars(1, tb);
    $dumpfile("dff.vcd");
    d = 1; rst_ = 1; #4; 
    rst_ = 0; #3; 
    d = 0; #5; 
    d = 1; #6; 
    rst_ = 1; #10; d = 0; 
    #10; 
    $finish; 
    
  end 
  
endmodule 
    
    