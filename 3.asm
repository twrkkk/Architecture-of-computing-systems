.model tiny

org 100h

.data
a dd 10
b dd 2
x db 0

.code
mov ax, [a]
mov bx, [b]
cmp ax, bx
jl @@1 
jg @@2    
;a=b
mov al, -5 
mov [x], al
jmp @@3 
;a<b
@@1: 
mov ax, [b] 
add ax, 5 
mov bx, [a] 
cwd
idiv bx 
mov [x], al
jmp @@3
;a>b 
@@2:
mov ax, [b] 
sub ax, [a] 
mov bx, [b]
cwd 
idiv bx 
mov [x], al 
jmp @@3
@@3:
ret 
