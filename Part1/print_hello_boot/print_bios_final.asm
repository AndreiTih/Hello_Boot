; Sort of the final version of the code.
[org 0x7c00]

mov bx , HELLO_WORLD_STRING
call print_string
jmp $

print_string: ; Function that prints the string starting at the address inside the bx register
pusha ; Dunno what this means but I'll find out
mov ah , 0x0e ; int 10/ ah = 0eh -> scrolling teletype BIOS routine

print_string_loop:
mov cl, [bx]
cmp cl, 0
je print_string_end
;Print the first character at the bx address
mov al, [bx] ; then copy bl ( i.e. 8- bit char ) to al
int 0x10 ; print (al)
inc bx ;Increment address
jmp print_string_loop
print_string_end:
popa
ret

HELLO_WORLD_STRING db "Hello World!" , 0