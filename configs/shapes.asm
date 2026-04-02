.data
    O_Xpos db 4,5,4,5  
    O_Ypos db 0,0,1,1
    
    Z_Xpos db 3,4,4,5
    Z_Ypos db 0,0,1,1
    
    L_Xpos db 3,4,5,3
    L_Ypos db 0,0,0,1

    S_Xpos db 3,4,4,5
    S_Ypos db 1,1,0,0

    T_Xpos db 3,4,4,5
    T_Ypos db 0,0,1,0
    
    current_xPos db 4 dup (0)
    current_yPos db 4 dup (0)

    xArray dw offset O_Xpos, offset Z_Xpos, offset L_XPos, offset S_Xpos, offset T_Xpos
    yArray dw offset O_Ypos, offset Z_Ypos, offset L_YPos, offset S_Ypos, offset T_Ypos