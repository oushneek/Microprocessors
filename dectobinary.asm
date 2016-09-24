

; take input --
mov bl,0

mov ah,01h
int 21h

inp:cmp al,13
    
    je end_inp
    
    sub al,48
    mov cl,al
    mov al,10
    mul bl
    mov bl,al
    add bl,cl
    
    mov ah,01h
    int 21h
    jmp inp
end_inp:
          
;tst:
;   cmp bl,65
;   jne end_tst
;   mov ax,0
;   mov al,bl
;   mov bl,7
;   div bl
;   add ah,48
;   mov dl,ah
;   mov ah,02h
;   int 21h
;end_tst:
;ret
 
mov di,0
output:cmp bl,0
    je end_output
    mov ax,0
    mov al,bl
    mov bl,2
    div bl
    mov bl,al
    add ah,48
    mov [200+di],ah
    
    ;mov dl,ah
    
    ;mov ah,02h
    ;int 21h
    inc di
    jmp output
end_output:

;mov [200+di],32
dec di

rev: cmp di,-1
     je end_rev
     mov dl,[200+di]
     
     mov ah,02h
     int 21h
     dec di
     jmp rev
end_rev: 

HLT         