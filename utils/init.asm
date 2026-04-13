.code
init_Map proc
    pusha
    mov si, 13 ; index
    xor cx,cx ; amount of rows ( for x in rows)
    lea bx, paletteTexture
    xor dx,dx
    
columns:    
    ; draw the right side
    push ax
    xor ax,ax
rightSide:
    Graphics_DrawSquare ax,cx,greenForSides
    inc ax
    cmp ax, 12
    jnz rightSide

    pop ax
    ; draw the pallete on the left side ( border )
    Textures_DrawTexture si,cx,bx
    ; add an offset from first pallete and draw right side ( border )
    mov di,si 
    add di, 11 ; move to last index
    Textures_DrawTexture di,cx,bx
    push ax
    inc di
    mov ax, 14
    inc di
leftSide:
    Graphics_DrawSquare di,cx,greenForSides
    inc di
    dec ax
    cmp ax, 0
    jnz leftSide
    pop ax


    ; multiply current line by 8
    Graphics_DrawRect 96,dx,7,8,greenForSides ; hardcode it one before the texture , and then leave 2 pixels before it
    Graphics_DrawRect 201,dx,7,8,greenForSides
    
    add dx, 8
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
    
    Colors_changeColor 5,12,15,zShapeOutside
    Colors_changeColor 42,50,35,zShapeInside

    Colors_changeColor 19,34,28,LShapeInside
    Colors_changeColor 6,13,17,LShapeOutside

    Colors_changeColor 5,14,15,sShapeDark
    Colors_changeColor 21, 34, 33,sShapeLightIsh
    Colors_changeColor 57,63,58,sShapeLight

    Colors_changeColor 44,50,39,tShapeLightIsh
    Colors_changeColor 56,61,53, tShapeLight
    Colors_changeColor 7,13,15,tShapeDark
    
    Colors_changeColor 47,51,44,animationColor
    ret 
init_Colors endp
; 2 to 17 excluding -> 3 to 16 including -> i have 13 spaces inside 