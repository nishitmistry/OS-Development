mov ah, 0x0e
mov bp, 0x8000 ; this is the address way away from 0x7c00 where out bootsector is loaded by bios
mov sp, bp

push 'A'
push 'B'
push 'C'

mov al, [0x7ffa]
int 0x10

mov al, [0x801e]
int 0x10

pop cx 
mov al, cl
int 0x10

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

jmp $

; zero padding and magic bios number
times 510-($-$$) db 0
dw 0xaa55