.model small
.stack 100h
.data
.code
main proc
    
    mov dl,4
    mov al,3
    
    add dl,al
    mov bl,dl
    
    mov ah,4ch
    int 21h
main endp
end main

