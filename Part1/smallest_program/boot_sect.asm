; Simplest possible boot sector program
loop:
jmp loop
; Bootsector padding. Adding the AA55h magic number to the end of the 512 byte sector
times 510 -($ - $$) db 0
dw 0xaa55