.model small
.stack 100h
.data
qt db "Quotient: $"
rm db 13,10,"Remainder: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ax,25
    mov bl,10
    div bl
    
    mov cl,al
    mov ch,ah
    
    mov dx,offset qt
    mov ah,9
    int 21h
    
    add cl,48
    mov dl,cl
    mov ah,2
    int 21h
    
    mov dx,offset rm
    mov ah,9
    int 21h
    
    add ch,48
    mov dl,ch
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main




