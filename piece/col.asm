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