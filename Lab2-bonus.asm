.model small
.stack 100h
.data

msg1 db 0dh, 0ah, "Uppercase$"
msg2 db 0dh, 0ah, "Lowercase$"
msg3 db 0dh, 0ah, "Digit$" 
msg4 db 0dh, 0ah, "Special character$"

.code
main proc
    
    mov ax , data
    mov ds , ax
    
    
    mov ah , 1
    
    int 21h
    mov bl, al
    
    
              
    mov ah, 9          
              
    cmp bl, 65 
    jge up1
    cmp bl, 48
    jge digit1
    jmp else
    
    digit1:
    cmp bl, 57
    jle digit2
    jmp else
    
    digit2:
    lea dx, msg3
    int 21h
    jmp end  
    
    up1:
    cmp bl, 90
    jle up2
    cmp bl, 97
    jge low1
    jmp else
    
    low1:
    cmp bl, 122
    jle low2
    jmp else
    
    low2:
    lea dx, msg2
    int 21h
    jmp end
    
    up2:
    lea dx, msg1
    int 21h
    jmp end
    
    else:
    lea dx, msg4
    int 21h
    
    end:
    mov ah , 4ch
    int 21h
    main endp
end main