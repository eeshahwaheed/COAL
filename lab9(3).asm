.model small
.stack 100h
.data
msg1 db "Greater$"
msg2 db "Smaller$"
msg3 db "Equal$"
.code
main proc

    mov ax, @data
    mov ds, ax

    mov ah, 1
    int 21h
    sub al, 48
    mov bl, al

    mov ah, 1
    int 21h
    sub al, 48

    cmp bl, al
    je equal
    jg greater
    
    smaller:
    mov dx, offset msg2
    mov ah, 9
    int 21h
    jmp endprog
    
    greater:
    mov dx, offset msg1
    mov ah, 9
    int 21h
    jmp endprog
    
    equal:
    mov dx, offset msg3
    mov ah, 9
    int 21h
    
    endprog:
    mov ah, 4ch
    int 21h

main endp
end main