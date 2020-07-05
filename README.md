# Convert Word Mask to Bits Mask

Some ram libraries may have modules accepting bit-level mask
while systems usually use word-level mask (it's compact).

## Usage

```verilog
module SomeRamWrapper ( word_level_mask, wdata );
  `BitMaskHelper(word_level_mask, $size(word_level_mask), $size(wdata));

  SomeRam u_ram (
    .bits_level_mask ( word_level_mask_bits_ver ),
  );
endmodule
```
