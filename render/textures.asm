TEXTURES SEGMENT PARA PUBLIC
    ; hardcode offsets for texture
    paletteTexture db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db pallete_lightGreen,pallete_green,pallete_green,darkTeal,pallete_lightGreen,pallete_green,pallete_green,darkTeal
    db pallete_green,pallete_green,pallete_green,darkTeal,pallete_green,pallete_green,pallete_green,darkTeal
    db pallete_green,pallete_green,pallete_green,darkTeal,pallete_green,pallete_green,pallete_green,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db pallete_green,darkTeal,pallete_lightGreen,pallete_green,pallete_green,darkTeal,pallete_lightGreen,pallete_green
    db pallete_green,darkTeal,pallete_green,pallete_green,pallete_green,darkTeal,pallete_green,pallete_green
    db pallete_green,darkTeal,pallete_green,pallete_green,pallete_green,darkTeal,pallete_green,pallete_green

    oShapeTexture db oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside
    db oShapeInside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeInside
    db oShapeInside, oShapeOutside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeOutside, oShapeInside
    db oShapeInside, oShapeOutside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeOutside, oShapeInside
    db oShapeInside, oShapeOutside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeOutside, oShapeInside
    db oShapeInside, oShapeOutside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeOutside, oShapeInside
    db oShapeInside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeOutside, oShapeInside
    db oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside, oShapeInside

    zShapeTexture db zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside
    db zShapeOutside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeOutside
    db zShapeOutside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeOutside
    db zShapeOutside,zShapeInside,zShapeInside,zShapeOutside,zShapeOutside,zShapeInside,zShapeInside,zShapeOutside
    db zShapeOutside,zShapeInside,zShapeInside,zShapeOutside,zShapeOutside,zShapeInside,zShapeInside,zShapeOutside
    db zShapeOutside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeOutside
    db zShapeOutside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeInside,zShapeOutside
    db zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside,zShapeOutside

    LShapeTexture db LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside
    db LShapeOutside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeOutside
    db LShapeOutside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeOutside
    db LShapeOutside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeOutside
    db LShapeOutside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeOutside
    db LShapeOutside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeOutside
    db LShapeOutside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeInside, LShapeOutside
    db LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside, LShapeOutside

    sShapeTexture db sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark
    db sShapeDark,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeDark
    db sShapeDark,sShapeLightIsh,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeLightIsh,sShapeDark
    db sShapeDark,sShapeLightIsh,sShapeDark,sShapeLight,sShapeLight,sShapeDark,sShapeLightIsh,sShapeDark
    db sShapeDark,sShapeLightIsh,sShapeDark,sShapeLight,sShapeLight,sShapeDark,sShapeLightIsh,sShapeDark
    db sShapeDark,sShapeLightIsh,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeLightIsh,sShapeDark
    db sShapeDark,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeLightIsh,sShapeDark
    db sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark,sShapeDark

    tShapeTexture db tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark
    db tShapeDark, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeDark
    db tShapeDark, tShapeLightIsh, tShapeLight, tShapeLight,tShapeLight , tShapeLight, tShapeLightIsh, tShapeDark
    db tShapeDark, tShapeLightIsh, tShapeLight, tShapeLightIsh, tShapeLightIsh, tShapeDark, tShapeLightIsh, tShapeDark
    db tShapeDark, tShapeLightIsh, tShapeLight, tShapeLightIsh, tShapeLightIsh, tShapeDark, tShapeLightIsh, tShapeDark
    db tShapeDark, tShapeLightIsh, tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeLightIsh, tShapeDark
    db tShapeDark, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeLightIsh, tShapeDark
    db tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark, tShapeDark

    Score_LeftTopFrame db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,defaultcolor
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,defaultcolor,frameScoreColor
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,frameScoreColor,frameScoreColor

    Score_topMiddleFrame db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor

    Score_RightTopFrame db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultcolor,defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db frameScoreColor,defaultcolor,defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db frameScoreColor,frameScoreColor,defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Score_VerticalRightFrame db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,frameScoreColor,defaultcolor
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,frameScoreColor,defaultcolor
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,frameScoreColor,defaultcolor
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,frameScoreColor,defaultcolor
    db defaultcolor,darkTeal,darkTeal,darkTeal,darkTeal,defaultcolor,frameScoreColor,defaultcolor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,frameScoreColor,defaultcolor
    db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,defaultcolor,frameScoreColor,defaultcolor
    db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,defaultcolor,frameScoreColor,defaultcolor

    Score_LeftBottomFrame db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,defaultcolor,frameScoreColor,frameScoreColor
    db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,defaultcolor,defaultcolor,frameScoreColor
    db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,defaultcolor,defaultcolor
    db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor
    db defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor

    Score_MiddleBottomFrame db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor

    Score_BottomLeftFrame db frameScoreColor,frameScoreColor,defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db frameScoreColor,defaultcolor,defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor,defaultcolor

    Score_MiddleRightFrame db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db defaultColor,frameScoreColor,defaultColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultColor,frameScoreColor,defaultColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor

    Score_LeftBelowTheScore db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db defaultColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Score_MiddleBelowTheScore db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    LevelLines_Leftmiddle db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,defaultColor

    LevelLines_Rightmiddle db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Level_ConnectLinesRight db frameScoreColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db frameScoreColor,defaultColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db frameScoreColor,defaultColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db frameScoreColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Level_ConnectLinesMiddle db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor

    Level_ConnectLinesLeft db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,frameScoreColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,defaultColor,frameScoreColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,defaultColor,frameScoreColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,frameScoreColor

    Lines_BottomLeftFrame db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,frameScoreColor,frameScoreColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,defaultColor,frameScoreColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,defaultColor,defaultColor
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Lines_BottomRightFrame db frameScoreColor,frameScoreColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db frameScoreColor,defaultColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,defaultColor,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Lines_BottomMiddleFrame db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor,frameScoreColor
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Preview_TopLeftFrame db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,lightGreen,lightGreen,lightGreen
    db darkTeal,darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,defaultColor,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,defaultColor,Preview_lighterGreen,Preview_darkerGreen
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_lighterGreen,Preview_SinglePixel,darkTeal
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor

    Preview_TopRightFrame db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db lightGreen,lightGreen,lightGreen,lightGreen,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,defaultColor,defaultColor,lightGreen,lightGreen,darkTeal,darkTeal,darkTeal
    db Preview_darkerGreen,Preview_lighterGreen,defaultColor,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db darkTeal,Preview_SinglePixel,Preview_lighterGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal

    Preview_BottomLeftFrame db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_lighterGreen,Preview_SinglePixel,darkTeal
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,defaultColor,Preview_lighterGreen,Preview_darkerGreen
    db darkTeal,darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,defaultColor,defaultColor
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,lightGreen,lightGreen,lightGreen
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Preview_BottomRightFrame db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db darkTeal,Preview_SinglePixel,Preview_lighterGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db Preview_darkerGreen,Preview_lighterGreen,defaultColor,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,defaultColor,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal,darkTeal
    db lightGreen,lightGreen,lightGreen,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Preview_TopMiddleFrame db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db lightGreen,lightGreen,lightGreen,lightGreen,lightGreen,lightGreen,lightGreen,lightGreen
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor

    Preview_BottomMiddleFrame db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen,Preview_darkerGreen
    db defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor,defaultColor
    db lightGreen,lightGreen,lightGreen,lightGreen,lightGreen,lightGreen,lightGreen,lightGreen
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal
    db darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal,darkTeal

    Preview_LeftSideFrame db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor
    db darkTeal,darkTeal,darkTeal,lightGreen,defaultColor,Preview_darkerGreen,darkTeal,defaultColor

    Preview_RightSideFrame db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal
    db defaultColor,darkTeal,Preview_darkerGreen,defaultColor,lightGreen,darkTeal,darkTeal,darkTeal

    textureArray dw 0, offset oShapeTexture, offset zShapeTexture, offset LShapeTexture, offset sShapeTexture, offset tShapeTexture
TEXTURES ENDS

.data
    zero  db 00000000b,00111100b,01100110b,01101110b,01110110b,01100110b,00111100b,00000000b
    one   db 00000000b,00011000b,00111000b,00011000b,00011000b,00011000b,00111100b,00000000b
    two   db 00000000b,00111100b,01100110b,00000110b,00011100b,00110000b,01111110b,00000000b
    three db 00000000b,00111100b,01100110b,00001100b,00000110b,01100110b,00111100b,00000000b
    four  db 00000000b,00001100b,00011100b,00101100b,01111110b,00001100b,00001100b,00000000b
    five  db 00000000b,01111110b,01100000b,01111100b,00000110b,01100110b,00111100b,00000000b
    six   db 00000000b,00111100b,01100000b,01111100b,01100110b,01100110b,00111100b,00000000b
    seven db 00000000b,01111110b,00000110b,00001100b,00011000b,00110000b,00110000b,00000000b
    eight db 00000000b,00111100b,01100110b,00111100b,01100110b,01100110b,00111100b,00000000b
    nine  db 00000000b,00111100b,01100110b,01100110b,00111110b,00000110b,00111100b,00000000b

    sLetter db 00000000b,00111100b,01100000b,00111100b,00001110b,01001110b,00111100b,00000000b
    cLetter db 00000000b,00111100b,01100110b,01100000b,01100000b,01100110b,00111100b,00000000b
    oLetter db 00000000b,00111100b,01100110b,01100110b,01100110b,01100110b,00111100b,00000000b
    rLetter db 00000000b,01111100b,01100110b,01100110b,01111100b,01101000b,01100110b,00000000b
    eLetter db 00000000b,01111110b,01100000b,01111100b,01100000b,01100000b,01111110b,00000000b
    lLetter db 00000000b,01100000b,01100000b,01100000b,01100000b,01100000b,01111110b,00000000b
    vLetter db 00000000b,01100110b,01100110b,01100110b,01100110b,00111100b,00011000b,00000000b
    iLetter db 00000000b,00111100b,00011000b,00011000b,00011000b,00011000b,00111100b,00000000b
    nLetter db 00000000b,11000110b,11100110b,11110110b,11011110b,11001110b,11000110b,00000000b

    ScoreArray dw offset sLetter,offset cLetter,offset oLetter,offset rLetter,offset eLetter
    LevelArray dw offset lLetter,offset eLetter,offset vLetter,offset eLetter,offset lLetter
    LinesArray dw offset lLetter,offset iLetter,offset nLetter,offset eLetter,offset sLetter
    numbersArray dw offset zero, offset one , offset two, offset three, offset four, offset five, offset six, offset seven, offset eight, offset nine

.code
getTextureOffset proc
    push bp
    mov bp, sp
    push ds
    push bx
    mov ax, TEXTURES
    mov ds, ax
    assume ds:TEXTURES
    mov bl, byte ptr [bp + 4]
    xor bh, bh
    shl bx, 1
    mov ax, textureArray[bx]
    assume ds:@data
    pop bx
    pop ds
    pop bp
    ret 2
getTextureOffset endp

drawFuncTexture proc
    push bp
    mov bp, sp
    xPos   equ [bp + 8]
    yPos   equ [bp + 6]
    add word ptr yPos, 2
    texPtr equ [bp + 4]
    ; only yPos because we need to do an entire row of pixels between texture and row
    shl word ptr yPos, 3
    shl word ptr xPos, 3
    sub sp, 4
    pusha
    push es

    mov ax, TEXTURES
    mov es, ax

    max_x equ [bp - sShapeLightIsh]
    max_y equ [bp - 4]

    mov ax, xPos
    add ax, 8
    mov max_x, ax
    mov ax, yPos
    add ax, 8
    mov max_y, ax

    mov si, texPtr          ; si = offset into TEXTURES segment
    mov dx, yPos
yLoop:
    mov cx, xPos
xLoop:
    ; calculate front buffer index
    push ax
    push cx
    push bx
    push dx
    push si

    mov bx, dx
    mov ax, dx
    shl ax, 8
    shl bx, 6
    add ax, bx
    add ax, cx
    mov di, ax              ; di = offset into frontBuffer

    mov al, es:[si]         ; read one byte from texture segment
    mov frontBuffer[di], al ; store it

    pop si
    pop dx
    pop bx
    pop cx
    pop ax

    inc si                  ; advance texture pointer
    inc cx
    cmp cx, max_x
    jnz xLoop

    inc dx
    cmp dx, max_y
    jnz yLoop

    pop es
    popa
    add sp, 4
    pop bp
    ret 6                   ; clean stack of 3 arguments
drawFuncTexture endp



printLetter proc
    push bp
    mov bp,sp
    sub sp, 4
    outerLoop equ [bp - 2]
    innerLoop equ [bp - 4]
    letter equ [bp + 4]
    yPos equ [bp + 6]
    xPos equ [bp + 8]
    add word ptr yPos,2 ; default
    shl word ptr xPos, 3
    shl word ptr yPos, 3

    pusha
    ; params
        ; offset to the letter to print
    ; return
        ; prints on the screen each byte ( goes through each byte in the letter )
            ; if 0 then don't print
            ; if 1 then print!
    ; outer loop, for each byte
    mov word ptr outerLoop, 0 ; 8x8 textures
forEachByte:
    mov word ptr innerLoop, 7 ; start from right to left
    ; inner loop , for each bit
forEachBit:
    mov si, letter ;get the offset of the letter
    add si, outerLoop;go x bytes from the offset depend on the loop
    mov di, ds:[si] ; get the byte in that offset

    ; bit manipulation for that byte
    mov cx, word ptr innerLoop
    xor ch,ch
    shr di, cl
    and di, 1 ; x & 0000 0001 = just that single bit
    cmp di, 1
    je onPrint
    ; don't print any pixel for now (black)
    mov al, defaultColor
    ; xPos calcualtion
    mov cx, 7
    sub cx, word ptr innerLoop
    add cx, xPos
    ; yPos calcualtion
    mov dx, word ptr outerLoop
    add dx, yPos
    Utils_SaveToFrontBuffer cx,dx,defaultColor

    jmp compareBytes
onPrint:

    mov ax, darkTeal
    ; xPos calcualtion
    mov cx, 7
    sub cx, word ptr innerLoop
    add cx, xPos
    ; yPos calcualtion
    mov dx, word ptr outerLoop
    add dx, yPos

    Utils_SaveToFrontBuffer cx,dx,darkTeal
compareBytes:
    ; inner loop
    dec word ptr innerLoop
    cmp word ptr innerLoop, 0
    jge forEachBit


    ; outer loop
    inc word ptr outerLoop
    cmp word ptr outerLoop, 7
    jle forEachByte

    popa
    add sp,4
    pop bp
    ret 6
printLetter endp

Textures_printScore proc
    push bp
    mov bp, sp
    pusha
    startX equ [bp + 6]
    startY equ [bp + 8]
    ; function will get each number right to left
    ; while ( x / 10 != 0)
        ; get the moduleo, that will be the number and then print it acourding to the loops counter
    mov di, word ptr startX ;start index is 28
    ; load first score
    mov bx, [bp + 4]
forEachNum:
    mov ax, bx
    mov cx, 10 ; divisor
    xor dx,dx
    div cx
    ; ax = result
    ; dx = modulo
    mov bx, ax
    ; cmp the result to zero, if so stop the loop
    cmp bx, 0
    jle exitLoopNum
    ; otherwise , print the remainder
    mov cx, dx
    mov si, cx
    shl si, 1
    mov cx, numbersArray[si]
    Textures_printLetter di, startY, cx
    dec di
    jmp forEachNum
exitLoopNum:
    ; print one last time
    mov cx, dx
    mov si, cx
    shl si, 1
    mov cx, numbersArray[si]
    Textures_printLetter di, startY, cx
    popa
    pop bp
    ret 6

Textures_printScore endp
