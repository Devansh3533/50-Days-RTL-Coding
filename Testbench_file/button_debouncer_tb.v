`timescale 1ns/1ns

module debouncer_tb;
  reg clk = 0;
  reg rst;
  reg button_in;
  wire button_out;
  
  button_debounce dut (
    .clk(clk),
    .rst(rst),
    .button_in(button_in),
    .button_out(button_out)
  );
  
  always #5 clk = ~clk;
  
  initial begin
  rst = 0;
  button_in = 0;
    #100 rst = 1;
    
    toggle_switch();
    #1000;	/// Simulating Hold pressed
    toggle_switch();
    #1000;
    
    toggle_switch();
    #1000;
  	
    $finish;
    
  end
  
  task toggle_switch();
    reg [3:0] delay;
    
    // Simulate bouncy buttons
    for(int i=0;i<=10;i=i+1) begin
    button_in = $random;
      delay = $random;
      #(delay);
      $display("Wait for %0d time, button_in = %0d", delay, button_in);
    end
    
    button_in = ~button_in;
  endtask
  
  initial begin
    $dumpfile("debounce.vcd");
    $dumpvars(1);
  end
  
endmodule