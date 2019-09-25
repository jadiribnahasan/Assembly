.model small
.stack 100h
.data

a db 15
b db 15

.code
main proc
    
    mov ax , data
    mov ds , ax
    mov ah , 2 
    
    
    mov bl , 7
    mov cl , 2
    
    mov bh , bl
    mov ch , bl
    mov dh , bl
    
    add bl , cl
    mov dl , bl
    add dl , 48
    int 21h
    
    mov dl , 32
    int 21h
    
    sub bh , cl
    mov dl , bh
    add dl , 48
    int 21h
    
    mov dl , 32
    int 21h
    
    and ch , cl
    mov dl , ch
    add dl , 48
    int 21h
    
    mov dl , 32
    int 21h
    
    or dh , cl
    mov dl , dh
    add dl , 48
    int 21h
    
    
    
    
    
    
    mov ah , 4ch
    int 21h
    main endp
end main