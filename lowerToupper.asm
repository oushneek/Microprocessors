include 'emu8086.inc'
.model small
.code

print '--|| Lower to Upper Case ||--'
printn

print 'Input Letter: '

mov ah,01h
int 21h

mov bl,al  



sub bl,32
mov dl,bl

printn
print 'Result is: '


mov ah,02h
int 21h


 
end