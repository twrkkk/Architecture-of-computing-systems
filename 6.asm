.model tiny
org 100h

.data
N dw 6
A dw -1, -3, 5, 7, -9, -2
c dw -50
d dw 10
cdivd dw 0
outline db "result: ", 0dh, 0ah,'$'
prod dw 1

.code
lea si, A
mov cx,N

mov ax, [c]
    cwd 
    idiv [d]
    mov cdivd, ax

M1: 
    mov ax, word ptr[si]
    cmp ax, 0
    jg M2
    cmp ax, cdivd
    jl M2
    mul word ptr[si]
    mul prod
    mov prod , ax
M2: 
    lodsw
    loop M1   
;print prod    
    mov ah, 9
    mov dx, offset outline
    int 21h    
    mov ax, prod
    mov cx, 0
    mov bx, 10
mk3: 
    cwd
    div bx
    add dl, '0'
    push dx
    inc cx
    cmp ax, 0
    jne mk3
    mov ah, 2
ol:
    pop dx
    int 21h
    loop ol  

ret