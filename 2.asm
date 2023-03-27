;var 25 (-25/a + c - b*a)/(1+c*b/2)
;include 'emu8086.inc'
.model tiny
org 100h

.data
a dw 5
b dw 1
c dw 20
Denominator dd 0
Numerator dd 0
result dd ?

.code                
;Denominator
mov ax, [c] ; AX = c
mul [b] ; DX:AX = c*b
shr ax, 1 ; AX = c*b/2
inc ax ; AX = c*b/2 + 1 
mov [Denominator], ax  

;Numerator
mov ax, -25 ; AX = -25
cwd ; DX:AX = -25
idiv [a] ; DX:AX = -25/a

mov bx, [a] ; BX = a
mul [b] ; DX:AX = b*a
neg ax ; AX = -b*a
add ax, [c] ; AX = -b*a + c
add ax, dx ; AX = -25/a + c - b*a  
mov [Numerator], ax 

;Division
mov ax, [Numerator]
cwd ; DX:AX = Numerator
div word ptr [Denominator] ; AX = Numerator/Denominator

mov [result], ax

ret
    