[org 0x7c00] ;this is where the boot loader is started


; mov sp, 0x8000
; mov bp,sp
; push print_this
; call print
; push print_line
call print_mem
push print_line
call print

jmp $

print_this:
    db "abcsdf",0
print_line:
    db CR, LF, "MEMORY DUMPED", 0

%include "./ReadDisk/imports.asm"
times 510-($-$$) db 0
dw 0xaa55

