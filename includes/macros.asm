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

Graphics_removeShape MACRO x,y
    push x
    push y
    call removeShape
ENDM

Piece_moveIncrement MACRO pointer
    push pointer
    call moveDown
ENDM
Piece_moveDecrement MACRO pointer
    push pointer
    call moveUp
ENDM
Collision_bCollision MACRO dX, dY
    push dX
    push dY
    call checkCollision
ENDM
Collision_tileCollision MACRO xPoint, yPoint,dX, dY
    push xPoint
    push yPoint
    push dX
    push dY
    call checkTileCollision
ENDM
Graphics_DrawRect MACRO x,y,width,height,color
    push x
    push y
    push width
    push height
    push color
    call drawRect
ENDM

Piece_rotatePiece MACRO direction
    push direction
    call rotatePiece
ENDM

Animation_Delay MACRO division
    push division
    call utils_DelayByMillisecond
ENDM

Image_RenderBmpImage MACRO nameOfFile
    push  nameOfFile
    call showBmpImage
ENDM

Textures_printLetter macro xPos,yPos,letter
    push xPos ; bp + 8
    push yPos ; bp + 6
    push letter ; bp + 4
    call printLetter
endm

Utils_SaveToFrontBuffer macro xPos,yPos,value
    push xPos ; bp + 8
    push yPos ; bp + 6
    push value ; bp + 4
    call saveToFrontBuffer
endm
Score_addScore macro amount
    push amount
    call addScore
endm
Score_rowAdder macro rows
    push rows
    call rowAdder
endm
Textures_printDigits macro amount,startX,startY
    push startY
    push startX
    push amount
    call Textures_printScore
endm
