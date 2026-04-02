.code
rotatePiece proc
    push bp
    mov bp,sp
    sub sp, 10
    pusha
    ; define locals 
    pivotIndex equ [bp - 2]
    newXPos equ [bp - 4]
    newYPos equ [bp - 6]
    offsetX equ [bp - 8]
    offsetY equ [bp - 10]
    ;currentShape
    ;pivotPoint
    
    ; check if oShape if true -> return from func
    cmp currentShape, 1    ; 1 = oShape
    je tileExit
    ; get the pivot point for the shape , and store it inside the pivotPoint
    mov bl, currentShape
    xor bh, bh
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
tileRotate: 
    ; grab the current tile, store in newXPos and newYPos
    mov bl , byte ptr current_xPos[si]
    xor bh,bh 
    sub bx, offsetX
    mov newXPos, bx

    mov bl , byte ptr current_yPos[si]
    xor bh,bh 
    sub bx, offsetY
    
    ; swap between the 2 elements xPos and yPos and switch signs at xPos
    ; bx stores Ypos
    mov newYPos, bx        
    mov cx, newXPos        
    mov newYPos, cx        
    mov newXPos, bx        
    neg byte ptr newYPos   
    
    mov bx, offsetX
    mov cx, offsetY
    
    add bx, newXPos
    add cx, newYPos
    xor ch,ch
    xor bh,bh
    mov current_xPos[si], bl
    mov current_yPos[si], cl
    

    inc si
    cmp si, 4
    jne tileRotate

tileExit:

    popa
    add sp, 10
    pop bp
exitRotation:
    ret 
rotatePiece endp