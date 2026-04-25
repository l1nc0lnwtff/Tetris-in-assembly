.code

moveDown proc 
    push bp
    mov bp,sp
    pusha
    ; names for passed argument

    mov cx, 4 ; we can assume each shape is 4 tiles
    ; for each tile, increment y pos
    mov si, [bp + 4] ; index
moveDownLoop:
    inc byte ptr[si]
    inc si ; move to next index

    loop moveDownLoop
    popa
    pop bp


    ret 2
moveDown endp

moveUp proc 
    push bp
    mov bp,sp
    pusha
    ; names for passed argument

    mov cx, 4 ; we can assume each shape is 4 tiles
    ; for each tile, increment y pos
    mov si, [bp + 4] ; index
moveUpLoop:
    dec byte ptr[si]
    inc si ; move to next index

    loop moveUpLoop
    popa
    pop bp


    ret 2
moveUp endp

Move_gravityHandling proc 
    
    cmp [tickCounter],30
    jnz skipGravity
    mov [tickCounter],0 ; reset tick counter
    ; move the shape down
    Graphics_removeShape xPointer,yPointer
    Collision_bCollision 0,1 
    cmp [collisionState], 1
    je skipGravity ; collision detected
    Piece_moveIncrement yPointer
    
skipGravity:
    ret 
Move_gravityHandling endp


