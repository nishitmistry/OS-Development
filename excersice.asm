[org 0x7c00]
; input 10 characters and then print it 
mov bx, buffer
loop:
    mov ah, 0 
    int 0x16
    mov [bx], al
    inc bx
    cmp bx, end
    jne loop

mov bx, buffer

mov ah, 0x0e
print:
    mov al, [bx]
    int 0x10
    inc bx
    cmp bx, end
    jne print
buffer:
    times 10 db 0 
end:

times 510-($-$$) db 0 
dw 0xaa55