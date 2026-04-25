BMP_DATA SEGMENT PARA PUBLIC
    ; define new stack segment , otherwise overflow
    bmp_filename db 'assets/game.bmp', 0
    FileHandle dw ?
    bmp_header db 54 dup (0)
    bmp_palette db 200*4 dup (0)
    bmp_scratch db 320 dup (0)
    bmp_err_msg db 'Error: BMP file not found!', 13, 10, '$'
BMP_DATA ENDS

getFileHandle proc
    push ds
    mov ax, BMP_DATA
    mov ds, ax
    assume ds:BMP_DATA

    mov ah, 3Dh
    xor al, al        ; open with perm read
    mov dx, offset bmp_filename
    int 21h

    jc handleError    ; CF set on error
    mov ds:[FileHandle], ax

    pop ds
    assume ds:nothing
    ret

handleError:
    mov dx, offset bmp_err_msg
    mov ah, 9h
    int 21h

    pop ds
    assume ds:nothing
    ret
getFileHandle endp


; https://engineering.purdue.edu/ece264/16au/lecture/20161116/exercise/handout_20161116_bmp_images.pdf

ReadBmpHeader proc
    push ds
    mov ax, BMP_DATA
    mov ds, ax
    assume ds:BMP_DATA

    mov ah, 3Fh
    mov bx, [FileHandle]
    mov cx, 54
    mov dx, offset bmp_header
    int 21h

    pop ds
    assume ds:nothing
    ret
ReadBmpHeader endp


ReadBmpPalette proc
    push ds
    mov ax, BMP_DATA
    mov ds, ax
    assume ds:BMP_DATA

    mov ah, 3Fh
    mov cx, 800
    mov dx, offset bmp_palette
    int 21h

    pop ds
    assume ds:nothing
    ret
ReadBmpPalette endp


CopyBmpPalette proc
    push ds
    mov ax, BMP_DATA
    mov ds, ax
    assume ds:BMP_DATA

    mov si, offset bmp_palette
    mov cx, 200
    mov dx, 3C8h
    mov al, 0
    out dx, al
    inc dx

@@loop:
    mov al, [si+2]
    shr al, 2
    out dx, al

    mov al, [si+1]
    shr al, 2
    out dx, al

    mov al, [si]
    shr al, 2
    out dx, al

    add si, 4
    loop @@loop

    pop ds
    assume ds:nothing
    ret
CopyBmpPalette endp



DrawBmpImage proc
    push ds
    push es
    mov ax, BMP_DATA
    mov ds, ax
    assume ds:BMP_DATA

    mov ax, @data
    mov es, ax

    mov cx, 200

@@line:
    push cx

    dec cx
    mov di, cx
    shl cx, 6
    shl di, 8
    add di, cx
    add di, offset frontBuffer

    mov ah, 3Fh
    mov bx, [FileHandle]
    mov cx, 320
    mov dx, offset bmp_scratch
    int 21h

    cld
    mov si, offset bmp_scratch
    mov cx, 320
    rep movsb

    pop cx
    loop @@line

    pop es
    pop ds
    assume ds:nothing
    ret
DrawBmpImage endp


CloseBmpFile proc
    push ds
    mov ax, BMP_DATA
    mov ds, ax
    assume ds:BMP_DATA

    mov ah, 3Eh
    mov bx, [FileHandle]
    int 21h

    pop ds
    assume ds:nothing
    ret
CloseBmpFile endp


LoadBmp proc
    call getFileHandle
    call ReadBmpHeader
    call ReadBmpPalette
    call CopyBmpPalette
    call DrawBmpImage
    call CloseBmpFile
    call Graphics_swapBuffers
    ret
LoadBmp endp