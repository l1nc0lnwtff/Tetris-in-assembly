.code
init_Map proc
    pusha
    mov si, 13 ; index
    xor cx,cx ; amount of rows ( for x in rows)
    lea bx, paletteTexture
columns:    
    ; draw the right side
    push ax
    xor ax,ax

rightSide:
    Graphics_DrawSquare ax,cx,greenForSides
    inc ax
    cmp ax, 13
    jnz rightSide
    pop ax
    ; draw the pallete on the left side ( border )
    Textures_DrawTexture si,cx,bx
    ; add an offset from first pallete and draw right side ( border )
    mov di,si 
    add di, 11 ; move to last index
    Textures_DrawTexture di,cx,bx
    push ax
    mov ax, 15
    inc di
leftSide:
    Graphics_DrawSquare di,cx,greenForSides
    inc di
    dec ax
    cmp ax, 0
    jnz leftSide
    pop ax
    inc cx ; move to next row
    cmp cx, 18
    jnz columns
    popa
    ret
init_Map endp

init_Colors proc
    ;set colors for borders 
    Colors_changeColor 5,10,13,darkTeal
    Colors_changeColor 58,60,58,pallete_lightGreen
    Colors_changeColor 45,50,43,pallete_green
    ; change default color on screen to be yellow-ish
    Colors_changeColor 58,62,54,defaultcolor
    Colors_changeColor 6,12,16,greenForSides
    ; change colors for Shapes
    Colors_changeColor 6,13,15,oShapeInside
    Colors_changeColor 56,61,55,oShapeOutside
    ret 
init_Colors endp
; 2 to 17 excluding -> 3 to 16 including -> i have 13 spaces inside 