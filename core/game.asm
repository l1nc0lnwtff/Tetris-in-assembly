.code
gameLoop proc
    push bp
    mov bp,sp

    ; first init
    ; currentShape = nextShape -> nextShape = new number
    call utils_randomNumber
    mov dx, word ptr nextShape
    mov word ptr currentShape, dx
    call utils_CopyArray
    call utils_randomNumber

game:
    ; check if key pressed -> key handling -> gravity -> render -> repeat
    call Input_iskeyPressed
    jz skip ; if zf = 1 , means no key is pressed
    ; a key was pressed , remove it from keyboard buffer
    call Input_keyHandling
    call Input_flushKeyboard
    Graphics_insertShape xPointer,yPointer,currentShape
skip:
    cmp [newShape],1
    jnz continueGameLoop

    ; spawn new piece logic and check clear lines
    mov dx, word ptr nextShape
    mov word ptr currentShape, dx
    call Utils_CopyArray
    call utils_randomNumber



    call Animation_clearLine
    call Logic_checkLines
    call Input_flushKeyboard
    mov [newShape],0
continueGameLoop:
    call Move_gravityHandling ; for now for each 60 frames , in the future with later implemantation
    Graphics_insertShape xPointer,yPointer,currentShape

    Graphics_drawPreview nextShape
    ; put the map stuff on the frontBuffer , and render it
    Textures_printDigits score,28,3
    Textures_printDigits level,27,7
    Textures_printDigits lines,27,10
    call Graphics_DrawMapTiles
    call Graphics_swapBuffers

    inc [tickCounter] ; each frame inc the counter
    call utils_Delay ; will delay by 50ms , so that in 1 sec it would go down once ( gravity )
    cmp bRunning,1
    jne exitLoop
    jmp game
exitLoop:
    pop bp
    ret
gameLoop endp
