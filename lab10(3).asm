.model small
.data
    arr db '1','2','3','4','5'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 5
    mov si, offset arr
    add si, 4         
    
    reverse_loop:
        mov dl, [si]
        mov ah, 2
        int 21h
        dec si        
    loop reverse_loop
    
    mov ah, 4ch
    int 21h
main endp
end main


