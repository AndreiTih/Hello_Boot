mov ah , 0x0e
mov al, 'A'
int 0x10 ; Invoke software intrerrupt to print al 
         ; which contains the character 'A'
jmp $

times 510 -($ - $$) db 0
dw 0xaa55