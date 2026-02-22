.model small
.stack 100h
.data
.code
main proc

    mov dl, 'E'      
    mov ah, 2h       
    int 21h          

    mov dl, 'E'      
    mov ah, 2h
    int 21h          

    mov dl, 'S'      
    mov ah, 2h
    int 21h          

    mov dl, 'H'      
    mov ah, 2h
    int 21h          

    mov dl, 'A'      
    mov ah, 2h
    int 21h          

    mov dl, 'H'      
    mov ah, 2h
    int 21h          


    mov dl, ' '      
    mov ah, 2h
    int 21h          


    mov dl, 'W'      
    mov ah, 2h
    int 21h          

    mov dl, 'A'      
    mov ah, 2h
    int 21h  

    mov dl, 'H'      
    mov ah, 2h
    int 21h         

    mov dl, 'E'      
    mov ah, 2h
    int 21h          

    mov dl, 'E'      
    mov ah, 2h
    int 21h          

    mov dl, 'D'     
    mov ah, 2h
    int 21h          


    mov dl, ' '      
    mov ah, 2h
    int 21h          


    mov dl, '6'      
    mov ah, 2h
    int 21h          

    mov dl, '8'      
    mov ah, 2h
    int 21h          

    mov dl, '7'      
    mov ah, 2h
    int 21h          

    mov dl, '3'      
    mov ah, 2h
    int 21h          

    mov dl, '0'      
    mov ah, 2h
    int 21h          


    mov ah, 4ch     
    int 21h

main endp
end main



