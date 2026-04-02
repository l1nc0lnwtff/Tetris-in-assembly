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
    
    ; contains 1-2
    mov bl, currentShape
    xor bh,bh
    dec bl ; 0-1
    shl bl,1 ; 2 * currentShape , take the index
    
    mov si, xArray[bx]
    mov xPointer, si
    
    mov si, yArray[bx]
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

utils_randomNumber proc
    pusha
    ; get sys time
    xor ax,ax
    int 1ah
    ; cx:dx holds clock ticks since midnight
    mov ax,dx
    xor dx,dx
    mov cx, 5
    div cx  ; dx contains the remainder of the result: "random number"
    
    ; mov the random number to currentShape
    inc dl
    mov byte ptr [currentShape], dl
    popa
    ret 
utils_randomNumber endp