org 0x7c00
BaseOfStack equ 0x7c00
Label_Start:
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, BaseOfStack
;========clear screen
    mov ax, 0x0600
    mov bx, 0x0700
    mov cx, 0x0000
    mov dx, 0x184f
    int 0x10
;========display string
    mov ax, 0x1301
    mov bx, 0x000a
    mov cx, 0x0010
    mov dx, 0x0000
    mov bp, StartBootMessage
    int 0x10
    jmp $

StartBootMessage:
    db "Hello, OS world!"
;=========fill the rest of sector with 0
    times 510-($-$$) db 0
    dw 0xaa55