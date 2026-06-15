addScore proc
    push bp
    mov bp, sp
    push ax
    mov ax, [bp + 4]
    add Score, ax
    pop ax
    pop bp
    ret 2
addScore endp

levelChecker proc
    pusha
    ; every time theres a new line , check if the row % 10 == 0, if so , we need to update the level
    ; we will call this func at rowAdder, we dont need to check every time just when a new row is about to be added
    mov ax, lines
    mov cx, 10
    xor dx,dx
    div cx
    cmp dx, 0
    jne exitChecker
    inc level
exitChecker:
    popa
    ret
levelChecker endp

rowAdder proc
    push bp
    mov bp,sp
    row equ [bp + 4]
    cmp word ptr row, 1
    je oneRow
    cmp word ptr row,2
    je twoRow
    cmp word ptr row,3
    je threeRow
    ; must be tetris
    Score_addScore 1200
    jmp exitRowAdder
oneRow:
    Score_addScore 40
    jmp exitRowAdder
twoRow:
    Score_addScore 100
    jmp exitRowAdder
threeRow:
    Score_addScore 300
    jmp exitRowAdder

exitRowAdder:
    pop bp
    ret 2
rowAdder endp
