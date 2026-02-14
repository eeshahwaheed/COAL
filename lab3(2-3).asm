.model small
.stack 100h
.data
.code
main proc

    mov al, 3
    mov [2000h], al  
    
    mov bl, [2000h]  
    add bl, 6
    
    add bl, 30h
    mov dl, bl
    mov ah, 2
    int 21h
    
    mov ah, 4Ch
    int 21h
    
main endp
end main





