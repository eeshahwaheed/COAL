.model small
.stack 100h
.data
.code
main proc
    mov cx, 4          
    mov bx, 1          

L1:
    push cx            
    mov cx, bx         
    mov dl, '1'       

L2:
    mov ah, 2
    int 21h            
    inc dl             
    loop L2            

    inc bx             
    pop cx             
    loop L1            

    mov ah, 4ch
    int 21h
main endp
end main


