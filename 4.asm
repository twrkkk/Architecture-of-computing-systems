org 100h
.data
    x dw 1
    s dw ? 
.code 

start:  
mov ah,1
int 21h
mov s, ax 
mov dx, 0Dh
int 21h
printtop:  
    mov cx, 10
    sub cx, [x]
space:
    mov ah, 2
    mov dx, ' '
    int 21h
    loop space
    mov cx, [x]
    add cx, cx
triangle:
    mov ah, 2
    mov dx, s
    int 21h
    loop triangle

mov dx, 0Dh
int 21h

mov dx, 10
int 21h
    
inc [x] 
cmp [x], 10
jl printtop
sub [x],2

ret
end start



