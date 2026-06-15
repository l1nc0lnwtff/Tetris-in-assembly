.data
    ; game starting locations
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
    ; preview locations
    oPos db 0,0,0,0
    db 0,1,1,0
    db 0,1,1,0
    db 0,0,0,0
    zPos db 0,0,0,0
    db 1,1,0,0
    db 0,1,1,0
    db 0,0,0,0
    lPos db 0,0,0,0
    db 1,1,1,0
    db 1,0,0,0
    db 0,0,0,0
    sPos db 0,0,0,0
    db 0,1,1,0
    db 1,1,0,0
    db 0,0,0,0
    tPos db 0,0,0,0
    db 1,1,1,0
    db 0,1,0,0
    db 0,0,0,0
    previewArray dw offset oPos, offset zPos, offset lPos, offset sPos, offset tPos

    oPivot equ 0
    zPivot equ 1
    lPivot equ 1
    sPivot equ 0
    tPivot equ 1


    current_xPos db 4 dup (0)
    current_yPos db 4 dup (0)

    xArray dw offset O_Xpos, offset Z_Xpos, offset L_XPos, offset S_Xpos, offset T_Xpos
    yArray dw offset O_Ypos, offset Z_Ypos, offset L_YPos, offset S_Ypos, offset T_Ypos


    pivotPoint db 0,oPivot,zPivot,lPivot,sPivot,tPivot  ; start at offset 1 ,o has no pivot in nrs, so placeholder
