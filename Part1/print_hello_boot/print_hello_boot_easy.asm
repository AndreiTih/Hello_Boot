; Naked version of the code, easier to explain
[org 0x7c00]
mov bx , HELLO_WORLD_STRING
mov ah , 0x0e ; int 10/ ah = 0eh -> scrolling teletype BIOS routine

print_string_loop:
mov cl, [bx] ; Moving the value of one byte into the cl register
cmp cl, 0 ; Checking if we reached the end of C style string
je print_string_end
;Print the first character at the bx address
mov al, [bx] ; then copy bl ( i.e. 8- bit char ) to al
int 0x10 ; print (al)
inc bx ;Increment address
jmp print_string_loop
print_string_end:

jmp $

HELLO_WORLD_STRING db "Hello Boot!" , 0

times 510 -($ - $$) db 0
dw 0xaa55