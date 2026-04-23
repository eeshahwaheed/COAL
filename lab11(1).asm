
.model small
.stack 100h
.data
    str db 'RIFFAI$'
    count dw 0
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset str
    mov cx, 0             

push_loop:
    mov al, [si]
    cmp al, '$'          
    je done_pushing
    
    mov ah, 0
    push ax               
    inc cx                
    inc si
    jmp push_loop

done_pushing:
    mov count, cx         
    
    mov dl, cl
    add dl, 48            
    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main



