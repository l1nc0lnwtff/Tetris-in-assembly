.code
gameLoop proc
    push bp
    mov bp,sp
    sub sp, 2

    currentShapePush equ [bp - 2]
    ; first init
    push ax
    xor ah,ah
    mov al, currentShape
    mov currentShapePush, ax
    pop ax

game:
    ; check if key pressed -> key handling -> gravity -> render -> repeat
    call Input_iskeyPressed
    jz skip ; if zf = 1 , means no key is pressed
    ; a key was pressed , remove it from keyboard buffer
    call Input_keyHandling
    call Input_flushKeyboard
    Graphics_insertShape xPointer,yPointer,currentShapePush
skip:
    cmp [newShape],1
    jnz continueGameLoop

    ; spawn new piece logic and check clear lines
    call utils_randomNumber
    call utils_CopyArray

    push ax
    xor ah,ah
    mov al, currentShape
    mov currentShapePush, ax
    pop ax

    call Animation_clearLine
    call Logic_checkLines
    call Input_flushKeyboard
    mov [newShape],0
continueGameLoop:
    call Move_gravityHandling ; for now for each 60 frames , in the future with later implemantation
    Graphics_insertShape xPointer,yPointer,currentShapePush

    ; put the map stuff on the frontBuffer , and render it
    call Textures_printScore
    call Graphics_DrawMapTiles
    call Graphics_swapBuffers

    inc [tickCounter] ; each frame inc the counter
    call utils_Delay ; will delay by 50ms , so that in 1 sec it would go down once ( gravity )
    cmp bRunning,1
    je game


    add sp,2
    pop bp
    ret
gameLoop endp
