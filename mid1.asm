.model small
.stack 100h
.data
msgw db "Right, Player-2 wins!$"
msgn1 db "Wrong,$"
msgn2 db "Chance(S) Left!$"
msgn3 db "Player-1 Wins!$"
X dB ?
n db ?
.code
main proc 
    
    
    mov ax , data
    mov ds , ax
    
    MOV AH,1
    
    INT 21h
    MOV X,AL
    sub x,48
    
    
    
    mov cl,3
    mov ch,0
    mov bh,3
    add bh,48
    
    iter:
    cmp ch,cl
    je exit
    mov ah,1
    int 21h
    mov ah,2
    mov dl,10
    int 21h
    mov n,al
    sub n,48
    mov bl,n
    cmp bl,X
    je match
    mov ah,9
    lea dx,msgn1
    int 21h 
    sub bh,1
    mov ah,2
    mov dl,bh
    int 21h 
    mov ah,9
    lea dx,msgn2
    int 21h
    mov ah,2
    mov dl,10
    int 21h
    add ch,1
    jmp iter
    
    exit:
    
    mov ah,9
    lea dx,msgn3
    int 21h
    jmp end  
    
    
    
    match:
    mov ah,9
    lea dx,msgw
    int 21h
    jmp end
    
    
    end:
    
    
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main