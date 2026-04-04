.code
checkCollision proc 
    push bp
    mov bp,sp
    pusha
    ; declare parameters 
    dXX equ [bp + 6]
    dY equ [bp + 4]
    ; load baseAddr of both Arrays 
    mov si, xPointer
    mov di, yPointer
    ; for each element
    mov cx, 4
loopCollsion:
    ; reset values before next loop ( for msb in registers )
    xor bx,bx
    xor ax,ax
    ; take the current x and y pos
    mov al, byte ptr [si]
    mov bl, byte ptr [di]
    ; add the offsets to x and y
    add ax, dXX
    add bx, dY
    ; check the walls (dX)
    cmp ax, 0
    Jl collisionDetected
    cmp ax, 10
    jge collisionDetected
    ; check the floor
    cmp bx, 18
    jge collisionDetectedWithNewShape
    ; check if something is below , in the existing blocks.
    ; get the index of the piece in the mapArray ( 10y + x)
    mov dx,bx
    shl dx, 3 ; 8y
    shl bx, 1 ; 2y
    add bx, dx ; 10y
    add bx, ax ; +x 
    
    cmp shapeMap[bx], 0 ; see if there's an element inside , if so collsion detected
    jne collisionDetectedWithNewShape


    inc si
    inc di
    loop loopCollsion
    
    mov byte ptr [collisionState], 0 ; reset 
    jmp exitCollision ; skip collisionState 
collisionDetected:
    mov byte ptr [collisionState], 1 
    jmp exitCollision
collisionDetectedWithNewShape:
    mov byte ptr [collisionState], 1    
    cmp byte ptr dY, 0
    je exitCollision ; the collision would've been with a block on the sides , not the bottom. meaning we can just continue and ignore it
    mov byte ptr [newShape], 1 ; new shape is needed after collision with bottom row, or with a piece
exitCollision:
    popa
    pop bp
    ret 4
checkCollision endp

checkTileCollision proc
    push bp
    mov bp,sp
    ; define aliases
    xPoint equ [bp + 10]
    yPoint equ [bp + 8]
    distanceX equ [bp + 6]
    distanceY equ [bp + 4]
    
    pusha
    ; load values
    mov ax, xPoint
    mov bx, yPoint
    ; add offsets 
    add ax, distanceX
    add bx, distanceY
    ; check hardcoded values - floor ceiling asnd borders
    cmp bx, -1 ; ceiling
    jle collisionTile
    cmp bx, 18 ; floor
    jge collisionTile
    cmp ax, -1 ; left border
    jle collisionTile
    cmp ax, 10 ; right border
    jge collisionTile

    ; check for points on the graph ( 10y + x index)
    mov cx, bx ; copy y point
    shl cx, 1 ; 2y
    shl bx, 3 ; 8y
    add bx,cx ; 10y 
    add bx, ax ; +x 
    cmp byte ptr shapeMap[bx], 0 ; check if something is in that position if so , collision 
    jne collisionTile   
    ; no collision
    jmp exitCollisionTile

collisionTile:
    mov byte ptr [collisionState] , 1
exitCollisionTile:
    popa
    pop bp
    ret 8
checkTileCollision endp