title lab4

org 100h

.code

start:
mov ah,09h
mov dx,offset str1
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h
 
mov ah,09h
mov dx,offset str2
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str3
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str4
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str5
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str6
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str7
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str8
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str9
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str10
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str11
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str12
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str13
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str14
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str15
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str16
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str17
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str18
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

mov ah,09h
mov dx,offset str19
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h  

mov ah,09h
mov dx,offset str20
int 21h
mov ah,2
mov dx,0Dh
int 21h
mov dx,0Ah
int 21h

ret

str1 db '_________________d8¬8888b_____________d8¬88b$'
str2 db '_______________d888¬88888b__________d888¬888b$'
str3 db '_______________d888¬8888b"""""""""""""""¬"8888$'
str4 db '________88"""""""88¬8P"_________________¬88888P$'
str5 db '______888____,888__¬____________________¬_8P,$'
str6 db '____888____8888____¬____________________¬_"8,$'
str7 db '___88_____8888_____¬__88888_____________¬__"8,$'
str8 db '__888____d88888____¬_8888888______88888_¬___"8,$'
str9 db '_8888____8888888___¬__888888_____8888888¬___"8$'
str10 db '_88888___8888888___¬___888_______888888_¬__"8,$'
str11 db '_888888___88888I88_¬______________888___¬_"8,$'
str12 db '__888888___888I8888¬88_____88888________¬88,$'
str13 db '___8888888__8888888¬888888__"""___888¬8888,$'
str14 db '___888888888_888888¬88888888_""_88888888¬888$'
str15 db '___8888888888888888¬888888888888888Id888¬888$'
str16 db '____888888888888888¬88888888888888888888¬8b$'
str17 db '_____888888888_8888¬888888b____888888888¬88$'
str18 db '______88888888__888¬8888888_____88888888¬88$'
str19 db '_______8888888__888¬8888888_____ad888888¬8$'
str20 db '________SHEIN___EVGENY_2___COURSE_61_GROUP$'       
       
end start



