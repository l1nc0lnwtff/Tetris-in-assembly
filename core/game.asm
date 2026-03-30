.code 
gameLoop proc 
    

game:
    ; check if key pressed -> key handling -> gravity -> render -> repeat
    call Input_iskeyPressed 
    jz skip ; if zf = 1 , means no key is pressed
    ; a key was pressed , remove it from keyboard buffer 
    call Input_keyHandling

skip:
    cmp [newShape],1
    jnz continueGameLoop
    
    call utils_CopyArray
    mov [newShape],0
continueGameLoop:
    call Move_gravityHandling ; for now for each 60 frames , in the future with later implemantation 
    Graphics_insertShape xPointer,yPointer,oShape
    ; put the map stuff on the frontBuffer , and render it 
    call Graphics_DrawMapTiles 
    call Graphics_swapBuffers    
    inc [tickCounter] ; each frame inc the counter
    call utils_Delay ; will delay by 50ms , so that in 1 sec it would go down once ( gravity )
    cmp bRunning,1
    je game
    


    ret 
gameLoop endp
