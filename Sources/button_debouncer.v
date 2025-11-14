module button_debounce
(
input clk,
  input rst,
  input button_in,
  output button_out
);
  
  /// Internal Register
  
  reg button_OUT = 0;
  reg button_sync_0, button_sync_1;
  
  
  /// Double Flip-Flops to capture signal and avoid metastability
  always @(posedge clk or negedge rst)
    begin
      if(!rst)
        begin
          button_sync_0 <= 0;
          button_sync_1 <= 0;
        end
      else
        begin
          button_sync_0 <= button_in;
          button_sync_1 <= button_sync_0;
        end
    end
  
     // Debounce logic
  reg [7:0] shift_reg;

always @(posedge clk) begin
  shift_reg <= {shift_reg[6:0], button_sync_1};
    if (&shift_reg)       // all ones
        button_OUT <= 1;
    else if (~|shift_reg) // all zeros
        button_OUT <= 0;
end
assign button_out = button_OUT;
endmodule
