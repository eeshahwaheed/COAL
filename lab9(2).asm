.model small
.stack 100h
.data
msg1 db "Positive$"
msg2 db "Negative$"
.code
main proc

    mov ax, @data
    mov ds, ax

    mov ah, 1
    int 21h       

    sub al, 48    
    cmp al, 0
    jge positive
    
    negative:
    mov dx, offset msg2
    mov ah, 9
    int 21h
    jmp endprog
    
    positive:
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    endprog:
    mov ah, 4ch
    int 21h
main endp
end main