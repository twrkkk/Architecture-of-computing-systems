.model tiny
org 100h

.data
N dw 6
A dw -1, -3, 5, 7, -9, -2
c dw -50
d dw 10
cdivd dw 0
prod dw 1

.code
mov si,0
mov cx,N

mov ax, [c]
    cwd 
    idiv [d]
    mov cdivd, ax

M1: 
    mov ax,A[si]
    cmp ax, 0
    jg M2
    cmp ax, cdivd
    jl M2
    mul A[si]
    mul prod
    mov prod , ax
M2: 
    add si,2
    loop M1

ret