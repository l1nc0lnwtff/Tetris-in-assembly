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
    
    pop ax
    ; draw the pallete on the left side ( border )
    ; cx * 8 
    mov dx, cx
    shl dx, 3
    Graphics_DrawRect 96, dx, 7,8 , greenForSides
    Graphics_DrawRect 103, dx, 1,8, defaultColor
    Textures_DrawTexture si,cx,bx
    ; add an offset from first pallete and draw right side ( border )
    mov di,si 
    add di, 11 ; move to last index
    Textures_DrawTexture di,cx,bx

    
    add dx, 8
    inc cx ; move to next row
    cmp cx, 18  
    jnz columns
    popa
    ret
init_Map endp

init_Colors proc
    ;set colors for borders 
    Colors_changeColor 31,48,59,darkTeal
    Colors_changeColor 221,249,226,pallete_lightGreen
    Colors_changeColor 167,200,155,pallete_green
    ; change default color on screen to be yellow-ish
    Colors_changeColor 238,255,223,defaultcolor
    Colors_changeColor 29,51,65,greenForSides
    ; change colors for Shapes
    Colors_changeColor 230,245,226,oShapeOutside
    Colors_changeColor 29,50,69, oShapeInside
    
    Colors_changeColor 25,47,68,zShapeOutside
    Colors_changeColor 175,215,144,zShapeInside

    Colors_changeColor 84,145,114,LShapeInside
    Colors_changeColor 20,55,57,LShapeOutside

    Colors_changeColor 25,54,70,sShapeDark
    Colors_changeColor 183, 214, 180,sShapeLightIsh
    Colors_changeColor 243,255,243,sShapeLight

    Colors_changeColor 183,215,168,tShapeLightIsh
    Colors_changeColor 224,250,237, tShapeLight
    Colors_changeColor 29,50,67,tShapeDark
    
    Colors_changeColor 175,215,144,animationColor
    ret 
init_Colors endp
; 2 to 17 excluding -> 3 to 16 including -> i have 13 spaces inside 