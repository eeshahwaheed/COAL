include emu8086.inc
.model small
.stack 100h
.data
    arr db 5 dup(?)
    sum db 0
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 5
    mov si, offset arr
    
    input_loop:
        mov ah, 1
        int 21h
        sub al, 48    
        mov [si], al
        add sum, al   
        inc si 
        
    loop input_loop
    
    mov al, sum
    mov ah, 0
    mov bl, 10
    div bl           
    
    mov bx, ax        
    
    mov dl, bl
    add dl, 48
    mov ah, 2
    int 21h
    
    mov dl, bh
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main
