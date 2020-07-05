`include "BitmaskHelper.vh"

module Sim();

parameter MASK_BITS = 16;
parameter DATA_BITS = 7 * 16;
parameter EPOCHES = 100;

reg [MASK_BITS - 1 : 0] mask;

`BitMaskHelper(mask, MASK_BITS, DATA_BITS);

integer i;
initial begin
  for (i = 0; i < EPOCHES; i = i + 1) begin
    mask = $random() % {MASK_BITS{1'b1}};
    #10 $display("mask_in %b mask_out %b", mask, mask_bits_ver);
  end
end

endmodule
