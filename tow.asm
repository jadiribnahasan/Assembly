.model small
.stack 100h
.data  
a db ?
.code
main proc
    
    mov ah , 1  ; for input ah == 1
    
    int 21h
    mov bl , al
    sub bl , 48
    
    int 21h
    mov cl , al
    sub cl , 48 
    
    int 21h
    mov dh , al
    sub dh , 48
    
    mov bh , bl
    mov ch , bl
    
    add bl , cl
    sub bl , dh ; x1
    
    add bh , dh
    sub bh , cl ; x2
    
    and ch , dh ; x3     
    
    mov dh , bl
    or dh , bh  ; x1||x2
    
    sub bl , bh ; x1-x2+x3
    sub bl , ch  
    
    add bl , dh  
    
    
    
    mov ah , 2  ; for output ah == 2
    
    mov dl , bl
    add dl , 48 
    
    int 21h   
    
    
    mov ah , 4ch
    int 21h
    main endp

end main
