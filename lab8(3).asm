.model small
.stack 100h
.data
newline db 0dh,0ah,'$'
.code
main proc

    mov ax, @data
    mov ds, ax

    mov cx, 26
    mov dl, 65      
    
    CapLet:
    mov ah, 2
    int 21h         

    push dx         

    mov dx, offset newline
    mov ah, 9
    int 21h         

    pop dx          

    inc dl        
    loop CapLet

    mov ah, 4ch
    int 21h

main endp
end main