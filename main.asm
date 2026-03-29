.286
.model small
.stack 100h
include includes\\header.asm

.data
    bRunning db 1

    oShape equ 1
    O_Xpos db 0,1,0,1   
    O_Ypos db 0,0,1,1

    xPointer dw offset O_Xpos
    yPointer dw offset O_Ypos

    ;index = 10y + x
    shapeMap         db 10 * 18 dup (0) ; excluding borders 
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

    
    ; init the first displayed map Main Loophow to make the movement machanic in tetris?`
    call init_Colors
    call init_Map    
    
    call gameLoop

exit:
    mov ax, 4c00h
    int 21h

end main    