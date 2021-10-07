include 'emu8086.inc'

.stack 64
.model small

.data
    data1 DB 25h
    data2 DB 12h 
    data3 DB 15H
    data4 DB 1FH
    data5 DB 2BH
    sum DB ?

.code 
    main proc far
        mov ax,@data
        mov ds,ax
        
        mov al,00h
        mov al,data1
        add al,data2
        add al,data3
        add al,data4
        add al,data5
               
        mov sum,al
                             
    main endp
    
end main