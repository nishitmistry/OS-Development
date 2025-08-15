MEM_PRINT_START       equ 0x0000
MEM_PRINT_END         equ 0xffff
MEM_PRINT_NEWLINE_AFTER equ 8

print_mem:
    mov ah, 0x0E                    ; BIOS teletype mode
    mov bx, MEM_PRINT_START         ; Use BX to hold address
    mov al, [bx]                    ; Load first byte
    mov cl, MEM_PRINT_NEWLINE_AFTER ; after how many bytes do we break line
    mov dx, 0  
    jmp print_mem_loop

print_mem_loop:
    int 0x10                        ; print AL
    call handle_print_newline       ; check if newline and line count needed
    inc bx                          ; next address
    cmp bx, MEM_PRINT_END
    je end_func
    mov al, [bx]
    jmp print_mem_loop

handle_print_newline:
    dec cl
    cmp cl, 0
    jne .skip
    call print_newline_line_count   ; Print newline and line count
    mov cl, MEM_PRINT_NEWLINE_AFTER ; reset counter
.skip:
    ret

print_newline_line_count:
    mov ah, 0x0E
    mov al, LF  ; newline
    int 0x10
    mov al, CR  ; carriage return
    int 0x10
    mov al, dl
    int 0x10
    mov al, 0x2E
    int 0x10
    int 0x10
    inc dl
    ret
