.code
rotatePiece proc
    push bp
    mov bp,sp
    sub sp, 18
    pusha
    ; define locals
    direction equ [bp + 4]
    pivotIndex equ [bp - 2]
    newXPos equ [bp - 4]
    newYPos equ [bp - 6]
    offsetX equ [bp - 8]
    offsetY equ [bp - 10]
    tempX equ [bp - 14]
    tempY equ [bp - 18]
    ;currentShape
    ;pivotPoint

    ; check if oShape if true -> return from func
    cmp currentShape, 1    ; 1 = oShape
    je tileExitMid

    ; get the pivot point for the shape , and store it inside the pivotPoint
    mov bx, currentShape
    mov bl, byte ptr pivotPoint[bx]
    mov pivotIndex, bx

    ; store the xoffset and yoffset from that position ( center tile )
    mov dl, byte ptr current_xPos[bx]
    xor dh,dh
    mov offsetX, dx
    mov dl,  byte ptr current_yPos[bx]
    xor dh,dh
    mov offsetY, dx
    ; for each tile , remove the offsetX and offsetY to make it relative to the pivot point make (x,y) -> (y, -x) add the offsets and check for collsion

    xor si,si
    jmp tileRotate
tileExitMid:
    jmp tileExit
tileRotate:
    ; grab the current tile, store in newXPos and newYPos
    mov bl , byte ptr current_xPos[si]
    xor bh,bh
    sub bx, offsetX
    mov newXPos, bx
; ==
    mov bl , byte ptr current_yPos[si]
    xor bh,bh
    sub bx, offsetY
    ; (x,y) -> (y,x)
    mov newYPos, bx
    mov cx, newXPos
    mov newYPos, cx
    mov newXPos, bx

    ; compare between clockwise and counter-clockwise.
    cmp byte ptr direction, 1
    je clockWise
counterClockWise:
    ; (x,y) -> (-y,x)
    neg word ptr newXPos
    jmp checkCollisionAndRotate
clockWise:
    ; Clockwise rotation (x,y)->(y,-x)
    neg word ptr newYPos

checkCollisionAndRotate:
    mov bx, offsetX
    mov cx, offsetY
    mov ax, newXPos
    mov dx, newYPos
    ; add the offsets in the collision
    Collision_tileCollision ax, dx, bx, cx
    cmp [collisionState], 1
    je tileExit
    add bx, newXPos
    add cx, newYPos
    xor ch,ch
    xor bh,bh

    ; copy to temp array
    mov byte ptr ss:tempX[si], bl
    mov byte ptr ss:tempY[si], cl


    inc si
    cmp si, 4
    jne tileRotate
    ; no collision , copy tempArray -> current
    xor si,si
copyArray:
    mov bl, byte ptr ss:tempX[si]
    mov cl, byte ptr ss:tempY[si]

    mov byte ptr ds:current_xPos[si], bl
    mov byte ptr ds:current_yPos[si], cl

    inc si
    cmp si,4
    jne copyArray
tileExit:
    mov [collisionState], 0 ; change to 0 , doesn't matter if there was no collision because its not going to affect
    popa
    add sp, 18
    pop bp
exitRotation:
    ret 2
rotatePiece endp
