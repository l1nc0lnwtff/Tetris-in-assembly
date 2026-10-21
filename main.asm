.286
.model small
.stack 100h
include includes\header.asm

.data
    ;index = 10y + x
    shapeMap         db 10 * 18 dup (0) ; excluding borders
    ; index = 320y + x
    frontBuffer db 320 * 200 dup (0) ; program will be double buffered, meaning when you render -> copy to map -> do each pixel in frontbuffer -> 2 bytes each copy to map. ( faster , and no flickering)
    ; Variable to hold the score
    Score dw 0
    Level dw 0
    lines dw 0

.code

main:
    mov ax, @data
    mov ds, ax
    ; switch to 320x200 mode ( to draw pixels )
    xor ax,ax
    mov al, 13h
    int 10h


    ; init the first displayed map Main Loophow to
    call LoadBmp

    call utils_waitForEnter

    call init_Map
    call init_Colors
    call gameLoop

exit:
    mov ax, 4c00h
    int 21h

end main
