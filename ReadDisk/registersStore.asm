CPU_REG_SP equ 0xffff ; 0xffff to 0xffef area will be used to keep our registers values safe
CPU_DUMP_SP equ 0xffef ; the sp of stack when this function was called will be stored here 
CPU_DUMP_BP equ 0xffed: ; the bp of stack when this function was called will be stored here 

; this unloads the cpu register at CPU_REG_SP
dumpCPUReg:
    mov CPU_DUMP_SP, sp 
    mov CPU_DUMP_BP, bp
    mov sp, CPU_REG_SP
    mov bp, sp
    pusha
    mov sp, CPU_DUMP_SP
    mov bp, CPU_DUMP_BP
    ret

restoreCPUReg:
    mov CPU_DUMP_SP, sp 
    mov CPU_DUMP_BP, bp
    mov sp, CPU_REG_SP
    mov bp, sp
    popa 
    mov sp, CPU_DUMP_SP
    mov bp, CPU_DUMP_BP
    ret



