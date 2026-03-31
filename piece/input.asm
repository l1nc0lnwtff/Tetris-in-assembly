.code 

Input_iskeyPressed proc  ; function will return zf = 1 if a key was pressed , otherwise zf = 0

    ; make the zf zero 
    ; check the keyboard buffer , returns zf = 0 if something is inside otherwise zf = 1
    mov ah, 1
    int 16h
    ret
Input_iskeyPressed endp


Input_keyHandling proc
    push ax
    ; get the scan code , stores it in ax
    xor ax,ax
    int 16h
    ; ah contains the scan code, we can for arrow keys and esc
    cmp ah, 1h
    je escapeKey


    cmp ah, 50h
    je downKey


    cmp ah, 04dh
    je rightKey

    cmp ah, 04bh
    je leftKey

    
    jmp exitKeyHandling

    ; remove shape -> check collision -> move Down if no collision

downKey:
    Graphics_removeShape xPointer,yPointer
    Collision_bCollision 0,1 
    cmp [collisionState], 1
    je exitKeyHandling ; collision detected
    Piece_moveIncrement yPointer
    jmp exitKeyHandling
leftKey:
    Graphics_removeShape xPointer,yPointer
    Collision_bCollision -1,0 
    cmp [collisionState], 1
    je exitKeyHandling ; collision detected
    Piece_moveDecrement xPointer
    jmp exitKeyHandling
rightKey:
    Graphics_removeShape xPointer,yPointer
    Collision_bCollision 1,0
    cmp [collisionState], 1
    je exitKeyHandling ; collision detected
    Piece_moveIncrement xPointer
    jmp exitKeyHandling
escapeKey:
    mov [bRunning],0

exitKeyHandling:
    pop ax
    ret 
Input_keyHandling endp 