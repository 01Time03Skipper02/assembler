assume CS:code,DS:data

data segment
a db 3
b db 6
c db 4
d db 2
res1 db ?
res2 db ?
data ends

code segment
start:
mov AX, data
mov DS, AX
mov AH,0
mov Al,a
mul b
mov res1, Al ;res1 = a * c
mov Al, c
mov bl, d
div bl 
add AL, res1
add AL, 5
mov AH, 0
mov ax, 4c00h
int 21h

code ends
end start