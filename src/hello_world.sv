module hello_world
(
  input logic clk,
  input logic rst,
  output[2:0] o_counter
);
reg[2:0] counter;

always_ff @(posedge clk, posedge rst) begin

  if(rst)
    begin
      counter <= 3'd0;
    end
  else
    begin
      counter <= counter + 3'd1;
    end

end

assign o_counter = counter;

endmodule
