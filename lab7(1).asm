.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov al, 5
    mov bl, 4
    mul bl       
    
    mov bl, 10
    div bl       
    
    mov bh, ah   
    mov ah, 0
    
    add al, 48    
    mov dl, al
    mov ah, 2
    int 21h
    
    add bh, 48    
    mov dl, bh
    mov ah, 2
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main
