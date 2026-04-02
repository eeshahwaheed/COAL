.model small
.stack 100h
.code
main proc
    mov cx, 5       
    mov dl, '*'    
    
    StarLoop:
    mov ah, 2
    int 21h
    
    loop StarLoop
    
    mov ah, 4ch
    int 21h
main endp
end main






