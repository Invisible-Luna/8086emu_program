;               PRAVALLIKA SALADI
;                   119EC0013                                                                            
                                                                             
; ========== Finding Maximum and Minimum Numbers ========
include 'emu8086.inc'

org 100h

mov si,5000h
mov [si],69h
mov [si+1],96h
mov [si+2],12h
mov [si+3],77h
mov [si+4],42h
mov [si+5],68h
mov [si+6],32h
mov [si+7],11h
mov [si+8],84h
mov [si+9],93h
mov [si+10],66h
mov [si+11],52h
mov [si+12],56h
mov [si+13],10h
mov [si+14],84h
mov [si+15],98h
mov [si+16],21h
mov [si+17],2h  ;mini
mov [si+18],99h ;max
mov [si+19],18h
miniNu DB ?
maxNu DB ? 


;al -> mini bl -> max

;Finding Minimum Number 

mov dx,13h   ;check RAM
mov al,[si]  ;69h -> al
inc si       ;address increment

loop1:
mov bl,[si]  ; 96h -> bl
cmp al,bl    ;compare (zero flag, carry flag...)
jc compare1   ;Jump If Carry to loop ab, It checks whether the carry flag is set or not. 
;If yes, then jump takes place, that is: If CF = 1, then jump
mov al,bl    

compare1: inc si
dec dx
JNZ loop1    ;Jump if Not Zero

mov si,5020h
mov [si],al      ;storing mini value in 5020 address


mov si,5000h     ;starting the adressing again
mov di,5040h     ;destination index register 
mov dx,14h

loop2: 

;Finding Maximum Number  

mov al,[si]
mov [di],al     ;copying the initial values to addresses starting from 5040
inc si
inc di
dec dx
JNZ loop2

mov di,5040h     ;starting
mov dx,13h
mov al,[di]
inc di  

loop3:
mov bl,[di]
cmp al,bl
jnc compare2         ;Jump if Not Carry, t checks whether the carry flag is reset or not. 
;If yes, then jump takes place, that is: If CF = 0, then jump
mov al,bl

compare2: inc di
dec dx
JNZ loop3

mov si,5060h    ;storing max value here
mov [si],al 


;Storing and Printing Minimum and Maximum values  
;STORING  & Printing
;minimum
mov cl, dl
mov si,5020h
mov al,[si]
mov miniNu, al  

mov dl, al
add dl, 48
mov ah, 02
int 21h 

mov dx, 13
mov ah, 2
int 21h
mov dx, 10              ;new line
mov ah,2
int 21h

;maximum
mov si,5060h
mov bl,[si]
mov maxNu, bl
mov bl, 10
div bl
mov dl, bl
add dl, 48
mov ah, 02
int 21h
mov dl, bl
add dl, 48
mov ah, 02
int 21h         



MOV AH, 4Ch       ;exit
INT 21h
           
           
ret