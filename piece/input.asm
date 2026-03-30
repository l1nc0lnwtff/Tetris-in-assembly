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
    je downKeyLabel

    cmp ah, 04dh
    je rightKeyLabel

    cmp ah, 04bh
    je leftKeyLabel
    
    jmp exitKeyHandling

    ; hardcode for collision, borders for each one so we won't have to loop it 4 times instead of once for all cases and then just compare [bp + 2]


downKeyLabel:

    Collision_checkBorder downKey ; 2 = downKey , its compared in the collision checkborder to check which border
    cmp [collision], 1
    je exitKeyHandling ; collision detected
    Graphics_removeShape xPointer,yPointer
    Piece_moveIncrement yPointer
    jmp exitKeyHandling
rightKeyLabel:
    
    Collision_checkBorder rightKey
    cmp [collision], 1
    je exitKeyHandling ; collision detected
    Graphics_removeShape xPointer,yPointer
    Piece_moveIncrement xPointer
    jmp exitKeyHandling
leftKeyLabel:
    Collision_checkBorder leftKey
    cmp [collision], 1
    je exitKeyHandling ; collision detected
    Graphics_removeShape xPointer,yPointer
    Piece_moveDecrement xPointer
    jmp exitKeyHandling
    
escapeKey:
    mov [bRunning],0

exitKeyHandling:
    mov [collision], 0
    pop ax
    ret 
Input_keyHandling endp