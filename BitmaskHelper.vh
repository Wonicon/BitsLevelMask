`define bitmask_cat(x, y) x``y

`define BitMaskHelper(mask, mask_bits, data_bits) \
  wire [data_bits - 1 : 0] `bitmask_cat(mask, _bits_ver); \
  WordBitsMask #(.MASK_BITS(mask_bits), .DATA_BITS(data_bits)) `bitmask_cat(u0_, mask) (.mask_in(mask), .mask_out(`bitmask_cat(mask, _bits_ver)))
