.model small
.stack 100h
.data
msgw db "Right, Player-2 wins!$"
msgn1 db "Wrong,$"
msgn2 db "Chance(S) Left!$"
msgn3 db "Player-1 Wins!$"
X dB ?
n dw 12 
m dw 32
nn dw ?
mm dw ?
.code
main proc 
    
    
     mov ax , data
    mov ds , ax
    
    mov bx,n
    mov nn,bx
    
    mov bx,m
    mov mm,bx
    
    
    iter:
    mov bx,0
    cmp bx,n
    je printm
    cmp bx,m
    je printn
    mov cx,n
    cmp cx,m
    jg one
    
    mov ax,m
    mov bx,n
    and dx,0
    div bx
    mov n,dx
    mov m,bx
    jmp iter
    
    one:
    mov ax,cx
    mov bx,m
    and dx,0
    div bx
    mov m,dx
    mov n,bx
    jmp iter
     
    printm:
    mov bx,m
    mov cx,nn
    mov ax,mm
    mul cx
    div bx
    mov cx,ax
    
     
    jmp end
    
    
    printn:
    mov bx,n
    jmp end
    
    end:
    
    
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main