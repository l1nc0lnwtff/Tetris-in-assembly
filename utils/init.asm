.code
init_Map proc
    pusha
    mov si, 11 ; index
    xor cx,cx ; amount of rows ( for x in rows)
    lea bx, paletteTexture
    xor dx,dx
    call initScore
columns:    
    ; draw the right side
    push ax
    xor ax,ax
    
    pop ax
    ; draw the pallete on the left side ( border )
    ; cx * 8 
    mov dx, cx
    shl dx, 3
    Graphics_DrawRect 80, dx, 7,8 , greenForSides
    Graphics_DrawRect 87, dx, 1,8, defaultColor
    Textures_DrawTexture si,cx,bx
    
    ; add an offset from first pallete and draw right side ( border )
    mov di,si 
    add di, 11 ; move to last index
    Textures_DrawTexture di,cx,bx
    inc di
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
    Colors_changeColor 97,147,118,frameScoreColor

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

initScore proc
    ; draws the frame and "Score"
    pusha 
    lea bx, Score_LeftTopFrame
    Textures_DrawTexture 23,0,bx
    lea bx, Score_VerticalRightFrame
    Textures_DrawTexture 23,1,bx
    lea bx, Score_LeftBottomFrame
    Textures_DrawTexture 23,2,bx
    lea bx, Score_BottomLeftFrame
    Textures_DrawTexture 29,2,bx
    lea bx, sLetter
    Graphics_drawLetter 100,100,bx
    lea bx, Score_MiddleRightFrame
    Textures_DrawTexture 29,1,bx
    mov si, 24
    lea bx, Score_topMiddleFrame
    mov cx,5
topFrameMiddle:
    lea bx, Score_topMiddleFrame
    Textures_DrawTexture si,0,bx
    lea bx, Score_MiddleBottomFrame
    Textures_DrawTexture si,2,bx
    inc si
    loop topFrameMiddle
    lea bx, Score_RightTopFrame
    Textures_DrawTexture si,0,bx
    
    popa
    ret 
initScore endp