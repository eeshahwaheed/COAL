include emu8086.inc
.model small
.data
    arr db 1, 2, 3, 4, 6
    count db 0
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 5
    mov si, offset arr
    
    even_check:
        mov al, [si]
        test al, 1    
        jnz odd       
        inc count     
    odd:
        inc si
    loop even_check
    
    print "Total even numbers: "
    mov dl, count
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main

