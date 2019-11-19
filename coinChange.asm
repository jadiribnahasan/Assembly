.model small
.stack 100h
.data
thou db "1000:$"
fiveh db "500:$"
hund db "100:$"
fif db "50:$"
twen db "20:$"
ten db "10:$"
five db "5:$"
two db "2:$"
one db "1:$"
n dw 72
ans dw ?
.code
main proc 
    
    mov ax,data
    mov ds,ax
    
    
    1000: 
    mov ax,n
    mov bx,1000d
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,thou
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    500:
    mov ax,n
    mov bx,500d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,fiveh
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    100:
    mov ax,n
    mov bx,100d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,hund
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    50:
    mov ax,n
    mov bx,50d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,fif
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    20:
    mov ax,n
    mov bx,20d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,twen
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    10:
    mov ax,n
    mov bx,10d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,ten
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    5:
    mov ax,n
    mov bx,5d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,five
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    2:
    mov ax,n
    mov bx,2d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,two
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    1:
    mov ax,n
    mov bx,1d
    and dx,0
    div bx
    mov ans,ax
    mov n,dx
    
    mov ah,9
    lea dx,one
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dx,ans
    add dx,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main