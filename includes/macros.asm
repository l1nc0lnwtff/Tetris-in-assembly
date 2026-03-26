.code 
Graphics_DrawSquare MACRO x,y,color
    push x
    push y
    push color
    call drawFuncSquare
ENDM
Textures_DrawTexture MACRO x,y,array
    push x
    push y
    push array
    call drawFuncTexture
ENDM
Colors_changeColor MACRO red,green,blue,index
    push index
    push red
    push blue
    push green 
    call Colors_changeColorFunc
ENDM

Graphics_insertShape MACRO x,y, Shape
    push Shape
    push x
    push y
    call insertShape 
ENDM

