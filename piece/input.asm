.code 

Input_iskeyPressed proc  ; function will return zf = 1 if a key was pressed , otherwise zf = 0

    ; make the zf zero 
    ; check the keyboard buffer , returns zf = 0 if something is inside otherwise zf = 1
    mov ah, 1
    int 16h
    ret
Input_iskeyPressed endp


Input_keyHandling proc
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


downKey:
    Graphics_removeShape xPointer,yPointer
    Piece_moveIncrement yPointer
    jmp exitKeyHandling
rightKey:
    Graphics_removeShape xPointer,yPointer
    Piece_moveIncrement xPointer
    jmp exitKeyHandling
leftKey:
    Graphics_removeShape xPointer,yPointer
    Piece_moveDecrement xPointer
    jmp exitKeyHandling
    
escapeKey:
    mov [bRunning],0

exitKeyHandling:
    ret 
Input_keyHandling endp