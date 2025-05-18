module dff (input clk, rst_, d, 
            output reg q, 
            output q_bar);
  
  always @ (posedge clk or negedge rst_) begin
    if(!rst_)
      q <= 1'b0;
  	else 
      q <= d; 
  end 
  
  assign q_bar = ~q; 
  
endmodule