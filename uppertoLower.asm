include 'emu8086.inc'
.model small
.code

print '--|| Upper to Lower Case ||--'
printn

print 'Input Letters: '

; loop to take string

mov ah,01h
int 21h

mov di,0
input: cmp al,13
    je end_input
    
    mov bl,al
    mov [200+di],bl
    inc di 
    
    mov ah,01h
    int 21h
    jmp input
end_input:  


printn
print 'Result is: '
output: cmp di,-1
      je end_output
      mov bl,[200+di]
      add bl,32
      mov dl,bl
      mov ah,02h
      int 21h
      dec di
      jmp output
end_output:


 
end