.code 
gameLoop proc 
    

game:
    ; check if key pressed -> key handling -> gravity -> render -> repeat
    call Input_iskeyPressed 
    jz skip ; if zf = 1 , means no key is pressed
    ; a key was pressed , remove it from keyboard buffer 
    xor ax,ax
    int 16h

    call Input_keyHandling



skip:
    
    Graphics_insertShape xPointer,yPointer,oShape
    ; put the map stuff on the frontBuffer , and render it 
    call Graphics_DrawMapTiles 
    call Graphics_swapBuffers    

    cmp bRunning,1
    je game
    


    ret 
gameLoop endp
