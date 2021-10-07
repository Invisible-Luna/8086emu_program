include 'emu8086.inc'


.stack 100h
.model small

.data 

.code 
    main proc ;proc means procedure
        
        print 'Enter First number: '
        mov ah,01h  ;moves 01h to ah register
        int 21h     ;Reading the character and the character is stored in al
        sub al,48   ;In general registers take ascii values. SO difference is 48 as ascii value for 0 is 48. So we are subtracting
        mov bl,al   ;Moved it to bl
        
        mov dl,10   ;This is for a Newline
        mov ah,02h
        int 21h
        
        mov dl,13   ;returning values
        mov ah,02h
        int 21h
        
        print 'Enter Second number: '
        
        mov ah,01h
        int 21h 
        
        sub al,48
        
        add bl,al   ;bl=bl+al 
        add bl,48   ;to get the desired output
                 
        mov dl,10
        mov ah,02h
        int 21h
        
        mov dl,13
        mov ah,02h
        int 21h
        
        print 'sum is: '
        
        mov dl,bl
        
        mov ah,02h
        int 21h
        
    main endp
    
end main