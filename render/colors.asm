.data
    darkTeal equ 201
    pallete_lightGreen equ 202
    pallete_green equ 203
    greenForSides equ 204
    defaultColor equ 205
    
    oShapeOutside equ 206
    oShapeInside equ 207

    zShapeInside equ 208
    zShapeOutside equ 209
    
    LShapeInside equ 210
    LShapeOutside equ 211

    sShapeLight equ 212
    sShapeLightIsh equ 213
    sShapeDark equ 214
    
    tShapeDark equ 215
    tShapeLight equ 216
    tShapeLightIsh equ 217
    animationColor equ 218
    frameScoreColor equ 219
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
    
    mov dx, 3c8h ; vga pallete write port
    mov al, index 

    out dx, al ; send index

    inc dx ; go to data prot
    mov al, red
    shr al, 2
    out dx, al

    mov al, green
    shr al, 2

    out dx, al

    mov al, blue
    shr al, 2

    out dx, al

    
    popa
    pop bp
    ret 8

Colors_changeColorFunc endp
