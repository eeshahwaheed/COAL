.model small
.stack 100h
.code
main proc
    mov cx, 10     
    mov dl, 57      
    
    Reverse:
    mov ah, 2
    int 21h
    
    dec dl          
    loop Reverse
    
    mov ah, 4ch
    int 21h

main endp
end main


