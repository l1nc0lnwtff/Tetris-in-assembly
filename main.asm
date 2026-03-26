.286
.model small
.stack 100h
include includes\\header.asm

.data
    O_Xpos db 7,8,7,8
    O_Ypos db 1,1,2,2
    xPointer dw offset O_Xpos
    yPointer dw offset O_Ypos
    ;index = 10y + x
    shapeMap         db 16 * 25 dup (0) ; excluding borders 
    ; index = 320y + x 
    frontBuffer db 320 * 200 dup (0) ; program will be double buffered, meaning when you render -> copy to map -> do each pixel in frontbuffer -> 2 bytes each copy to map. ( faster , and no flickering)
   
.code



main:
    mov ax, @data
    mov ds, ax
    ; switch to 320x200 mode ( to draw pixels )
    xor ax,ax
    mov al, 13h
    int 10h

    
    ; init the first displayed map, with one shape
    call init_Colors
    call init_Map

    Graphics_insertShape xPointer,yPointer,1
    call Graphics_DrawMapTiles
    call Graphics_swapBuffers
    
    xor ax,ax
    int 16h
exit:
    mov ax, 4c00h
    int 21h

end main    