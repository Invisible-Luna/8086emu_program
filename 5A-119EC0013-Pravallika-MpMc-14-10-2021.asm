
;                                       Assignment-5
;                               Sorting 20 Numbers (Descending)
;                                     PRAVALLIKA SALADI
;                                         119EC0013

include 'emu8086.inc'

org 100h 


mov si,5000h
mov [si],5
mov [si+1],11
mov [si+2],25
mov [si+3],14
mov [si+4],85
mov [si+5],95
mov [si+6],61
mov [si+7],91
mov [si+8],30
mov [si+9],20
mov [si+10],89
mov [si+11],45
mov [si+12],98
mov [si+13],50
mov [si+14],21
mov [si+15],77
mov [si+16],17
mov [si+17],2
mov [si+18],99
mov [si+19],60 



;Algorithm for Sorting the Numbers in Descending order

mov cl,13h
mov di,6000h        ;destination index register | memory address for sorted numbers
mov bp,5000h        ;base pointer register | pointing to the address of the given numbers 
mov dl,13h

;Sorting the Maximum values in Descending order

loop2:
     mov si,bp
     mov al,[si]
     inc si
      
;Finding the maximum value
     
loop1:
     cmp al,[si]
     jnc ab        ;jump if not carry
     xchg al,[si]  ;exchange of values

     
     ab: inc si
     dec dl
JNZ loop1       ;jump if not zero
mov [di],al
inc di
inc bp
dec cl
mov dl,cl
jnz loop2         ;jump if not zero



ret



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 arr1 db 99, 98, 95,91,89,85,77,61,60,50,45,30,25,21,20,17,14,11,05