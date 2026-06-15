.code
init_Map proc
    pusha
    ; make default colors for where the score will be
    mov si, 23
    mov cx, 7
scoreDefault:
    Graphics_drawSquare si,3, defaultColor
    inc si
    loop scoreDefault

    mov si, 11 ; index
    xor cx,cx ; amount of rows ( for x in rows)
    mov bx, offset paletteTexture
    xor dx,dx
    call initScore
    call initLevel
    call initLines
    call initPreview
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

    Colors_changeColor 176,215,151,lightGreen
    Colors_changeColor 163,210,164,Preview_lighterGreen
    Colors_changeColor 94,128,101,Preview_SinglePixel
    Colors_changeColor 95,140,119,Preview_darkerGreen
    ret
init_Colors endp
; 2 to 17 excluding -> 3 to 16 including -> i have 13 spaces inside

initScore proc
    ; draws the frame and "Score"
    pusha
    ; the thing below the score not sure about the names i hate the fucking project
    lea bx, Score_LeftBelowTheScore
    Textures_DrawTexture 23,4,bx
    lea bx, Score_MiddleBelowTheScore
    mov cx, 6
    mov si, 24
BelowMiddle:
    Textures_DrawTexture si,4,bx
    inc si
    loop BelowMiddle
    ;score
    lea bx, ScoreArray

    mov cx, 5
    mov si,24
ScoreLoop:
    mov ax, [bx]
    Textures_printLetter si,1,ax
    inc si
    add bx,2
    loop ScoreLoop

    lea bx, sLetter
    Textures_printLetter 24,1,bx

    mov bx, offset Score_LeftTopFrame
    Textures_DrawTexture 23,0,bx
    mov bx, offset Score_VerticalRightFrame
    Textures_DrawTexture 23,1,bx
    mov bx, offset Score_LeftBottomFrame
    Textures_DrawTexture 23,2,bx
    mov bx, offset Score_BottomLeftFrame
    Textures_DrawTexture 29,2,bx
    mov bx, offset Score_MiddleRightFrame
    Textures_DrawTexture 29,1,bx
    mov si, 24
    mov bx, offset Score_topMiddleFrame
    mov cx,5
topFrameMiddle:
    mov bx, offset Score_topMiddleFrame
    Textures_DrawTexture si,0,bx
    mov bx, offset Score_MiddleBottomFrame
    Textures_DrawTexture si,2,bx
    inc si
    loop topFrameMiddle
    mov bx, offset Score_RightTopFrame
    Textures_DrawTexture si,0,bx

    popa
    ret
initScore endp

initLevel proc
    pusha
    ; print the level text
    lea bx, LevelArray
    mov cx, 5
    mov si, 24
LevelPrint:
    mov ax, [bx]
    ; 6 row const
    Textures_printLetter si,6,ax
    inc si
    add bx, 2
    loop LevelPrint
    ; same texture as Score , apperently?
    lea bx, Score_LeftTopFrame
    Textures_DrawTexture 23,5,bx
    mov si, 24
    mov cx, 5
    lea bx, Score_topMiddleFrame
    ; what am i doing with my life i could've used bmps
TopOfFrame:
    Textures_DrawTexture si,5,bx
    inc si
    loop TopOfFrame

    lea bx, Score_RightTopFrame
    Textures_DrawTexture si,5,bx

    lea bx,LevelLines_Rightmiddle
    Textures_DrawTexture si,6,bx
    Textures_DrawTexture si,7,bx
    ; frame conenctor
    lea bx, Level_ConnectLinesRight
    Textures_DrawTexture si,8,bx

    lea bx, Level_ConnectLinesMiddle
    mov cx, 5
    mov si, 24
middleConnectLines:
    Textures_DrawTexture si,8,bx
    inc si
    loop middleConnectLines
    ; frame right side
    lea bx,LevelLines_Leftmiddle
    Textures_DrawTexture 23,6,bx
    Textures_DrawTexture 23,7,bx
    lea bx,Level_ConnectLinesLeft
    Textures_DrawTexture 23,8,bx
    ; fill it with shit 9 deafgult colors for the level actual info yk
    mov cx, 5
    mov si, 24
initActualLevel:
    Graphics_drawSquare si,7,defaultColor
    inc si
    loop initActualLevel
    ; for now just level 0
    lea bx, zero
    Textures_printLetter 27,7,bx

    popa
    ret
initLevel endp

initLines proc
    pusha
    ; start y index: 9
    ; print the "lines"
    lea bx, LinesArray
    mov cx, 5
    mov si, 24
LinesPrint:
    mov ax, [bx]
    ; 6 row const
    Textures_printLetter si,9,ax
    inc si
    add bx, 2
    loop LinesPrint
    ; create left and right sides of the frame
    lea bx, LevelLines_Leftmiddle
    Textures_DrawTexture 23,9,bx
    Textures_DrawTexture 23,10,bx
    lea bx, LevelLines_Rightmiddle
    Textures_DrawTexture 29,9,bx
    Textures_DrawTexture 29,10,bx
    ; draw the bottom side
    lea bx, Lines_BottomLeftFrame
    Textures_DrawTexture 23,11,bx
    mov si, 24
    mov cx, 5
    lea bx, Lines_BottomMiddleFrame
bottomFrame:
    Textures_DrawTexture si,11,bx
    inc si
    loop bottomFrame
    lea bx, Lines_BottomRightFrame
    Textures_DrawTexture si,11,bx
    ; fill the liens with bs currently fix later
    mov si, 24
    mov cx, 5
initActualLines:
    Graphics_DrawSquare si,10,defaultColor
    inc si
    loop initActualLines
    lea bx, zero
    Textures_printLetter 27,10,bx

    popa
    ret
initLines endp

initPreview proc
    pusha
    ; init the left side
    mov cx, 6
    mov si,12
leftSideInit:
    Graphics_DrawSquare 23,si,darkTeal
    shl si,3
    Graphics_DrawRect 184,si,1,8,defaultColor
    shr si,3
    inc si
    loop leftSideInit
    ; Frame
    ; corners
    lea bx, Preview_TopLeftFrame
    Textures_DrawTexture 24,12,bx

    lea bx, Preview_TopRightFrame
    Textures_DrawTexture 29,12,bx

    lea bx, Preview_BottomLeftFrame
    Textures_DrawTexture 24,17,bx

    lea bx, Preview_BottomRightFrame
    Textures_DrawTexture 29,17,bx
    mov si, 25
    mov cx, 4
    ; both top and bottom
middleTopFrame:
    lea bx, Preview_TopMiddleFrame
    Textures_DrawTexture si,12,bx
    lea bx, Preview_BottomMiddleFrame
    Textures_DrawTexture si,17,bx
    inc si
    loop middleTopFrame

    mov cx, 4
    mov si, 13
middleRightFrame:
    lea bx, Preview_LeftSideFrame
    Textures_DrawTexture 24,si,bx
    lea bx, Preview_RightSideFrame
    Textures_DrawTexture 29,si,bx
    inc si
    loop middleRightFrame
; fill it with defualt color
    mov cx, 0
    mov di, 13

forEachRowPreview:
    mov si, 25
    xor dx, dx
forEachBlock:
    Graphics_DrawSquare si, di, defaultColor
    inc dx
    cmp dx, 4
    je innerSkip       ; if dx == 4, stop the Inner Loop
    inc si
    jmp forEachBlock
innerSkip:
    inc di
    inc cx
    cmp cx, 4
    je outerSkip       ; if cx = 4, skip the backward jump
    jmp forEachRowPreview      ; unconditional near jump
outerSkip:
    popa
    ret
initPreview endp
