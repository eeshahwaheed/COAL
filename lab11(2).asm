include emu8086.inc
.model small
.stack 100h
.data
    s db 'MADAM$'
    len dw 5
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset s
    mov cx, len

    
psh:
    mov al, [si]
    mov ah, 0
    push ax
    inc si
    loop psh

    
    mov si, offset s
    mov cx, len
compare:
    pop dx                
    cmp dl, [si]          
    jne not_palindrome   
    inc si
    loop compare

    print 'Palindrome' [cite: 154]
    jmp exit

not_palindrome:
    print 'Not Palindrome' [cite: 155]

exit:
    mov ah, 4ch
    int 21h
main endp
end main




