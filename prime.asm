.model small
.stack 100h
.data
msgp db "Prime$"
msgnp db "Not Prime$"
prime dw 31
.code
main proc 
    
    MOV AX,DATA
    MOV DS,AX
    
    CMP prime,1
    JLE NOT_PRIME
    
    MOV BX,2
    
    ITER:
    CMP BX,prime
    JE IS_PRIME
    MOV AX,prime
    AND DX,0
    DIV BX
    CMP DX,0
    JE NOT_PRIME
    ADD BX,1
    JMP ITER
    
    IS_PRIME:
    MOV AH,9
    LEA DX,msgp
    INT 21H   
    JMP END
    
    
    NOT_PRIME:
    MOV AH,9
    LEA DX,msgnp
    INT 21H
    
    END:
    
    
    
    mov ah, 4ch
    int 21h
    main endp
end main