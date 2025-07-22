print:
    pusha ; get everything from the register to stack for safety

start: 
    mov al, [bx] ; je pan bx memory location par hoe 
    cmp al, 0
    je end


    mov ah, 0x0e
    int 0x10
    
    add bx,1
    jmp start


end:
    popa 
    ret

HelloWorld:
    db "HelloWorld",0