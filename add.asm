include 'emu8086.inc'
.model small
.code

print '--|| Add Two Number ||--'
printn

print 'Input Number One: '

mov ah,01h
int 21h

mov bl,al  


printn
print 'Input Number Two: '

mov ah,01h
int 21h

mov cl,al


add bl,cl
sub bl,48
mov dl,bl

printn
print 'Result is: '


mov ah,02h
int 21h


 
end