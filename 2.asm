;var 25 (-25/a + c - b*a)/(1+c*b/2)
;include 'emu8086.inc'
.model tiny
org 100h

.data
a dw 1
b dw 4
c dw -2
Denominator dd 0
Numerator dd 0
result dd ?

.code                
;Denominator
mov ax, [c] ; AX = c
imul [b] ; DX:AX = c*b 
mov bx, 2
cwd
idiv bx ; AX = c*b/2
inc ax ; AX = c*b/2 + 1 
mov [Denominator], ax  

;Numerator
mov ax, -25 ; AX = -25
cwd ; DX:AX = -25
idiv [a] ; DX:AX = -25/a 
add ax, [c] 
mov bx, ax

mov ax, [a] ; BX = a
imul [b] ; DX:AX = b*a 
sub bx, ax 
mov [Numerator], bx 
    
;Division
mov ax, [Numerator]
cwd ; DX:AX = Numerator
idiv word ptr [Denominator] ; AX = Numerator/Denominator

mov [result], ax

ret
    