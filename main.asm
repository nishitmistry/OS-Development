[org 0x7c00] ; the memory location at which the boot loader is loaded 

mov bx, HelloWorld
call print

jmp $
%include "func.asm"
What:
    dw "What",0
; padding and magic number
times 510-($-$$) db 0
dw 0xaa55