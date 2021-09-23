org 100h  
; 

;==========================================
;       PROGRAM SEGMENT

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
        mov ah,4ch
        int 21h 
        
       ; print 'sum is: '
       ; mov dl,sum
        
       ; mov ah,02h
       ; int 21h
        
    main endp
    
end main   

;========================================
;         DATA SEGMENT

;mov si,1000
;mov [si],25h
;mov [si+1],12h
;mov [si+2],15h
;mov [si+3],1Fh
;mov [si+4],2Bh
;
;
;
;mov al,[si]
;mov bl,[si+1]
;add al,bl 
;            
;mov bl,[si+2]
;add al,bl
;
;mov bl,[si+3]
;add al,bl
;
;mov bl,[si+4]
;add al,bl  

;==============================================

;mov si,1000
;mov [1000],25h
;mov [1001],12h
;mov [1002],15h
;mov [1003],1Fh
;mov [1004],2Bh
;
;
;
;mov al,[1000]
;mov bl,[1001]
;add al,bl 
;            
;mov bl,[1002]
;add al,bl
;
;mov bl,[1003]
;add al,bl
;
;mov bl,[1004]
;add al,bl       


;=============================================

.data DB 
    ds:1000=25h
    ds:1001= 12h
    ds:1002=15h
    ds:1003=1Fh
    ds:1004=2Bh     
    
.code
    mov ax, @data
    mov dx, ax
    mov ax,00h
    add ax,[1000]     
    add ax,[1001]
    add ax,[1002]
    add ax,[1003]
    add ax,[1004]


ret