; IMPORTANT
; Before calling this subroutine 
print:
    mov bp, sp
    mov si, [bp+2] ; we will be setting the msg on stack top

print_loop:
    mov al, [si]
    cmp al, 0 ; if the x is null then exit 
    je end_func

    mov ah, 0x0E ; BIOS teletype mode
    int 0x10 ; 

    inc si
    jmp print_loop
