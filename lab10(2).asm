
include emu8086.inc
.model small
.data
    arr db 5 dup(?)
    max db 0
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 5
    mov si, offset arr
    
    input:
        mov ah, 1
        int 21h
        sub al, 48
        mov [si], al
        inc si
    loop input
    
    mov si, offset arr
    mov al, [si]      
    mov max, al
    mov cx, 4         
    
    find_max:
        inc si
        mov al, [si]
        cmp al, max
        jbe skip      
        mov max, al   
    skip:
    loop find_max

    mov dl, max
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main



