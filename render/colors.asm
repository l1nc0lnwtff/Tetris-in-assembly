.data
    darkTeal equ 19
    pallete_lightGreen equ 150
    pallete_green equ 121
    greenForSides equ 190
    defaultColor equ 0
    
    oShapeOutside equ 255
    oShapeInside equ 244

    zShapeInside equ 254
    zShapeOutside equ 253
    
    LShapeInside equ 252
    LShapeOutside equ 251

    sShapeLight equ 250
    sShapeLightIsh equ 249
    sShapeDark equ 248
    
    tShapeDark equ 247
    tShapeLight equ 246
    tShapeLightIsh equ 245
    
    ;    (79,139,115): 1,     # #183442 (dark)
    ;    (26,54,73): 0   # #e6fbe1 (light)

.code 
Colors_changeColorFunc proc ; function creates color accourding to given index,r,g,b
    push bp
    mov bp,sp
    index equ [bp + 10]
    red equ [bp + 8]
    blue equ [bp + 6]
    green equ [bp + 4]
    pusha
    mov ax, 1010h
    mov bx, index 
    mov dh, red 
    mov ch, green 
    mov cl, blue 
    int 10h
    popa
    pop bp
    ret 8

Colors_changeColorFunc endp
