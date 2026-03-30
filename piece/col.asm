.code
checkBorder proc     ; Collision checkBorder checks if its hitting a border  , if so the ax register is set to 1
    push bp
    mov bp,sp
    pusha   
    borderLimit equ [bp + 4]

    ; check if to compare x or y
    cmp byte ptr borderLimit, downKey 
    je compareY
    ; we must compareX if its not downKey
    mov si, xPointer
    jmp TileCompare
compareY:
    mov si, yPointer

TileCompare:
    mov cx, 4 ; for each tile
    mov bx, borderLimit
forEachTile:
    cmp byte ptr [si], bl    
    je colWithBorder
    inc si ; move to next tile
    loop forEachTile
    jmp exitCol
colWithBorder:
    cmp byte ptr borderLimit, DownKey
    jnz notDown
    mov byte ptr [newShape],1
notDown:
    mov byte ptr [collision], 1
exitCol:
    popa    
    pop bp
    ret 2 
checkBorder endp