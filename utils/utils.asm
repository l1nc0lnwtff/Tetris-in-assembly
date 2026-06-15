.code

utils_Delay proc
    push ax
    push cx
    push dx
    mov ah, 86h
    xor cx,cx
    mov dx, 2710h ; 10ms
    int 15h
    pop dx
    pop cx
    pop ax
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
    mov bx,currentShape
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
    mov byte ptr [nextShape], dl
    popa
    ret
utils_randomNumber endp

utils_DelayByMillisecond proc
    push bp
    mov bp, sp

    push ax
    push bx
    push cx
    push dx

    mov ax, [bp+4]        ; argument (1,2,3)

    mov bx, 30000         ; multiplier
    mul bx                ; DX:AX = AX * BX

    ; we only care about AX (result fits: max 90000)
    mov bx, ax            ; BX = 30000 * arg

    mov dx, 8270h         ; base value (33392)
    sub dx, bx            ; dx = base - (30000 * arg)

    mov ah, 86h
    mov cx, 3h
    int 15h

    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    ret 2                 ; clean argument
utils_DelayByMillisecond endp

saveToFrontBuffer proc
    push bp
    mov bp, sp
    pusha

    mov ax, [bp + 4]      ; value
    mov cx, [bp + 6]      ; yPos
    mov dx, [bp + 8]      ; xPos

    mov bx, cx
    shl cx, 6
    shl bx, 8
    add cx, bx

    add dx, cx
    mov di, dx

    mov [frontBuffer + di], al

    popa
    pop bp
    ret 6
saveToFrontBuffer endp
