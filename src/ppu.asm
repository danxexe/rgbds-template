INCLUDE "gbhw.inc"

SECTION "ppu functions", ROM0

waitForVBlank::
  ld a, [rLY]
  cp 145               ; Is display on scan line 145 yet?
  jr c, waitForVBlank  ; no, keep waiting
  ret
