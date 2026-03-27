.code
drawFuncSquare proc 
    push bp
    mov bp,sp
    ; aliases for the passed arguments , will receive xPos and yPos in 25* 40 format , so mul by 8  to reach  200 * 320
    xPos equ [bp + 8]
    yPos equ [bp + 6]
    shl word ptr yPos, 3
    shl word ptr xPos, 3
    color equ [bp + 4]
    ; declare locals and create aliases
    sub sp,4
    pusha
    max_x equ [bp - 2]
    max_y equ [bp - 4]
    ; init locals, square size is 8 by 8
    mov ax, xPos
    add ax, 8
    mov max_x, ax
    mov ax, yPos
    add ax, 8
    mov max_y, ax

    mov ax, color ; move to ax because color is 16 bit

    mov dx, yPos  ; working with registers instead of values
@yLoop:
    mov cx, xPos

@xLoop:
    ; calculate the index
    push ax
    push cx
    push bx
    push si
    
    mov bx, dx ; row
    mov ax, dx
    mov bx, ax
    shl ax, 8        ; y * 256
    shl bx, 6        ; y * 64
    add ax, bx       ;ax =  256y + 64y = 320y
    add ax, cx       ; 320y + x
    ; ax stores index
    mov si,ax ; ax can't access ds
    mov ax, color
    mov frontBuffer[si], al 
    pop si
    pop bx 
    pop cx
    pop ax
    inc cx 
    ; for x in arr
    cmp cx, max_x
    jnz @xLoop
    inc dx

    ; compare current value to max value
    cmp dx, max_y
    jnz @yLoop
    
    popa
    add sp,4
    pop bp
    ret 6
drawFuncSquare endp

Graphics_swapBuffers proc
    pusha

    mov ax, 0A000h
    mov es, ax

    lea si, frontBuffer
    xor di, di

    mov cx, 32000   ; copy 2 bytes at a time

    rep movsw

    popa
    ret
Graphics_swapBuffers endp


insertShape proc
    push bp
    mov bp,sp
    pusha
    ; define parameters 
    xPtr equ ss:[bp + 6]
    yPtr equ ss:[bp + 4]
    shape equ ss:[bp + 8] ; represents a number , so when printing we will know what color to use (later a texture)
    ; copy the xPos and yPos in the array to the map
    mov cx, 4 ; 4 elements total
    ; lea of xPtr and yPtr
    mov di, xPtr
    mov si, yPtr
    ; put in the map index , the shape for each xPos and matching yPos
putInMap:
    xor bx,bx
    mov bl, byte ptr [si] ; bl contains yPos[i]
    ; we have to multiply by 10
    mov ax, bx
    shl ax, 3 ; 8x
    shl bx, 1 ; 2x
    add bx, ax ; 8y + 2y = 10y
    ; ax stores 10bx
    add bl, byte ptr [di] 
    ; bx = 10y + x which is to calculate the index we should put the square in.
    mov ax, shape ; can't move mem to mem
    mov byte ptr shapeMap[bx], al
    inc si
    inc di
    loop putInMap
    
    popa
    pop bp
    ret 6
insertShape endp

removeShape proc 
    push bp
    mov bp,sp
    pusha
    ; define parameters 
    xPtr equ ss:[bp + 6]
    yPtr equ ss:[bp + 4]
    ; copy the xPos and yPos in the array to the map
    mov cx, 4 ; 4 elements total
    ; lea of xPtr and yPtr
    mov di, xPtr
    mov si, yPtr
    ; remove from the map index , the shape for each xPos and matching yPos
removeFromMap:
    xor bx,bx
    mov bl, byte ptr [si] ; bl contains yPos[i]
    ; we have to multiply by 10
    mov ax, bx
    shl ax, 3 ; 8x
    shl bx, 1 ; 2x
    add bx, ax ; 8y + 2y = 10y
    ; ax stores 10bx
    add bl, byte ptr [di] 
    ; bx = 10y + x which is to calculate the index we should put the square in.
    mov byte ptr shapeMap[bx], 0 ; 0 -> no shape
    inc si
    inc di
    loop removeFromMap
    
    popa
    pop bp
    ret 4
removeShape endp 
Graphics_DrawMapTiles proc
    pusha
    ; init loop base values
    xor cx,cx ; for 18 rows
    xor si,si  ; index counter
    lea ax, oShapeTexture
rowInMap:
    mov bx, 14 ; start value
columnsInMap:
    ; get whatever is inside the map.
    mov dl, shapeMap[si]
    xor dh,dh
    ; draw with the color of map[si], suppose to be some color
    cmp dx, 1
    je Texture
    Graphics_DrawSquare bx,cx,dx
    jmp jmpTexture
    ; add one to index and column
Texture:
    Textures_DrawTexture bx,cx,ax
jmpTexture:
    inc si
    inc bx
    cmp bx, 24 ; 13 - 3 = 10, do the loop for each col
    jnz columnsInMap ; move to next row
    ; if last row (0 - 24), exit
    inc cx
    cmp cx, 18
    jnz rowInMap
    popa
    ret 
Graphics_DrawMapTiles endp