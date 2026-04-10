.code
Logic_checkLines proc
    pusha

    xor si, si              ; row index

forEachRow:
    ; bx = 10 * si (row start)
    mov bx, si
    mov ax, bx
    shl bx, 3               ; 8*y
    shl ax, 1               ; 2*y
    add bx, ax              ; bx = 10*y

    mov di, 0               ; column index
    mov cx, 10              ; 10 columns

    ; check for every column, if not full then continue
checkColumns:
    cmp byte ptr shapeMap[bx + di], 0
    je notFullRow

    inc di
    loop checkColumns



    ; full row is found
    push si                 ; save current row index

shiftRows:
    cmp si, 0
    je clearTopRow

    ; current row start: bx
    mov bx, si
    mov ax, bx
    shl bx, 3
    shl ax, 1
    add bx, ax              

    ; previous row start: dx
    mov dx, si
    dec dx
    mov ax, dx
    shl dx, 3
    shl ax, 1
    add dx, ax              

    ; copy 10 cells from previous row current row
    mov cx, 10
    xor di,di
copyRow:
    push bx
    mov bx,dx
    mov al, byte ptr shapeMap[bx + di]
    pop bx
    mov byte ptr shapeMap[bx + di], al
    inc di
    loop copyRow

    dec si
    jmp shiftRows

clearTopRow:
    ; clear row 0
    mov bx, 0
    mov cx, 10
    mov di, 0

clearLoop:
    mov byte ptr shapeMap[bx + di], 0
    inc di
    loop clearLoop

    pop si                  

    ; recheck same row, could be fucked because of the up (if the row before it was full)
    jmp forEachRow

notFullRow:
    inc si
    cmp si, 18
    jne forEachRow

    popa
    ret

Logic_checkLines endp