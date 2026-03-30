.code 

utils_Delay proc
    push ax
    push cx
    push dx
    mov ah, 86h
    xor cx,cx
    mov dx, 0C350h
    int 15h
    pop dx
    pop cx
    pop dx
    ret 
utils_Delay endp

utils_CopyArray proc
    push ax
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    xor ax,ax
    
    mov si, offset O_Xpos
    mov xPointer, si
    
    mov si, offset O_Ypos
    mov yPointer, si

    ; copy x 
    mov cx, 2
    mov si, xPointer
    lea di, current_xPos
    rep movsw
    ; copy y
    mov cx, 2
    mov si, yPointer
    lea di, current_yPos
    rep movsw
    ; update ptr to point to current x and current y
    mov si, offset current_xPos
    mov xPointer, si
    
    mov si, offset current_yPos
    mov yPointer, si

    pop si
    pop di
    pop es
    pop ax
    ret 
utils_CopyArray endp