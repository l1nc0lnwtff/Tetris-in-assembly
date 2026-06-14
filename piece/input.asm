.code

Input_iskeyPressed proc  ; function will return zf = 1 if a key was pressed , otherwise zf = 0

    ; make the zf zero
    ; check the keyboard buffer , returns zf = 0 if something is inside otherwise zf = 1
    mov ah, 1
    int 16h
    ret
Input_iskeyPressed endp

Input_flushKeyboard proc
    push ax
    mov ah,0ch
    xor al,al
    int 21h
    pop ax
    ret
Input_flushKeyboard endp
Input_keyHandling proc
    push ax
    ; get the scan code , stores it in ax
    xor ax,ax
    int 16h
    ; ah contains the scan code, we can for arrow keys and esc, al contains ascii
    cmp ah, 1h
    jne checkDownKey
    jmp escapeKey

checkDownKey:
    cmp ah, 50h
    jne checkRightKey
    jmp downKey

checkRightKey:
    cmp ah, 04dh
    jne checkLeftKey
    jmp rightKey

checkLeftKey:
    cmp ah, 04bh
    jne checkZKey
    jmp leftKey

checkZKey:
    cmp al, 'z'      ; check scan code
    jne checkXKey
    jmp zKey

checkXKey:
    cmp al, 'x'
    jne noKeyMatch
    jmp xKey

noKeyMatch:
    jmp doneKeyHandling

zKey:
    Graphics_removeShape xPointer,yPointer
    Piece_rotatePiece 0 ; counter-clockwise
    jmp doneKeyHandling
xKey:
    Graphics_removeShape xPointer, yPointer
    Piece_rotatePiece 1 ; clockwise
    jmp doneKeyHandling
downKey:
    Graphics_removeShape xPointer,yPointer
    Collision_bCollision 0,1
    cmp [collisionState], 1
    jne downKeyMove
    jmp doneKeyHandling
downKeyMove:
    Piece_moveIncrement yPointer
    Score_addScore 1
    jmp doneKeyHandling
leftKey:
    Graphics_removeShape xPointer,yPointer
    Collision_bCollision -1,0
    cmp [collisionState], 1
    jne leftKeyMove
    jmp doneKeyHandling
leftKeyMove:
    Piece_moveDecrement xPointer
    jmp doneKeyHandling
rightKey:
    Graphics_removeShape xPointer,yPointer
    Collision_bCollision 1,0
    cmp [collisionState], 1
    jne rightKeyMove
    jmp doneKeyHandling
rightKeyMove:
    Piece_moveIncrement xPointer
    jmp doneKeyHandling

escapeKey:
    mov [bRunning],0

doneKeyHandling:
    pop ax
    ret
Input_keyHandling endp
