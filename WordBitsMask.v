module WordBitsMask #(
  parameter MASK_BITS = 4,
  parameter DATA_BITS = 32
) (
  input [MASK_BITS - 1 : 0] mask_in,
  output [DATA_BITS - 1 : 0] mask_out
);

localparam WORD_BITS = DATA_BITS / MASK_BITS;

genvar i;
generate
for (i = 0; i < MASK_BITS; i = i + 1) begin
  assign mask_out[(i * WORD_BITS) +: WORD_BITS] = {WORD_BITS{mask_in[i]}};
end
endgenerate
endmodule
