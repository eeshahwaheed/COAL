.model small
.stack 100h
.code
main proc

    mov cx, 5          
    
    printA:
    mov dl, 'A'
    mov ah, 2
    int 21h

    loop printA        

    mov ah, 4ch
    int 21h

main endp
end main