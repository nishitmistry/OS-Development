mov ah, 0x0e  ; BIOS teletype mode
mov al, 65   ; 'A' 
jmp loop

loop:
    cmp al, 90    ; Stop at 'Z' + 1
    jle even
    jmp odd

even: 
    int 0x10
    add al, 33
    cmp al, 122
    jge end
    jmp loop
odd:
    int 0x10
    sub al, 31
    cmp al, 122
    jge end
    jmp loop

end:
    int 0x10
    jmp $         ; Infinite loop
times 510 - ($-$$) db 0  ; Fill with zeros to make 512 bytes
dw 0xaa55               ; Boot sector signature
