.code 
; to-do list:
    ; find the current line that needs to be cleared
    ; draw a square in the needed place, 14 place offset because start of map
    ; swap buffers and sleep for the time (each time decreasing by a bit)   
    
Animation_clearLine proc
    pusha
    mov bp,sp
    sub sp, 12
    timesToLoop equ ss:[bp - 12]
    arrayOfLines equ ss:[bp - 10]
    numberOfLines equ ss:[bp - 2]
    mov word ptr timesToLoop, 1
    mov word ptr numberOfLines, 0 
    xor si,si
forEachLine:
    xor di,di ; column index
    ; get lines * 10
    mov bx, si
    mov cx, bx
    shl bx,1
    shl cx, 3
    add bx, cx
forEachColumn:
    ; bx contains start of line , just increment every time
    cmp shapeMap[bx], 0
    je emptyLine
    
    inc bx 
    inc di
    cmp di, 10
    jl forEachColumn
    ; line must be full, do whatever
    inc word ptr numberOfLines
    ; save in the arrayOfLines array with an offset of (numOfLines -1 ) * 2
    push di
    mov di, numberOfLines
    dec di ; make 1-5 , 0-4
    shl di, 1 ; make word 
    mov ss:[bp - 10 + di], si    
    pop di

emptyLine:
    inc si 
    cmp si, 18
    jne forEachLine

    cmp word ptr numberOfLines,0 
loopAnimation:
    je exitAnimation
    ; some line is needed for the anim
    xor si,si ; line counter

    ; for each of the full lines:
forEachRowAnimation:

    ; for each column starting at 14(first one) change color 
    mov di,si
    shl di, 1 ; get offset
    mov ax, ss:[bp - 10 + di]
    mov bx, 14
    mov cx, 10
forColumnAnimation:
    Graphics_DrawSquare bx, ax , animationColor
    inc bx
    loop forColumnAnimation
    
    inc si
    cmp si, numberOfLines
    jl forEachRowAnimation
    
    ; draw the color and sleep, then return to the original form
    call Graphics_swapBuffers
    Animation_Delay timesToLoop
    
    call Graphics_DrawMapTiles 
    call Graphics_swapBuffers
    Animation_Delay timesToLoop
    inc word ptr timesToLoop
    cmp word ptr timesToLoop,4
    jl loopAnimation
exitAnimation:
    add sp, 12
    popa
    ret 
Animation_clearLine endp