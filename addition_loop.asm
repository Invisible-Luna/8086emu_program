; =======SALADI PRAVALLIKA====
; =========119EC0013=========

include 'emu8086.inc'


.data
    MOV ds:1000h, 25h
    MOV ds:1001h, 12h
    MOV ds:1002h, 15h
    MOV ds:1003h, 1Fh
    MOV ds:1004h, 2Bh
     
    SUM DB ?
    V1 DB ?
    V2 DB ?
    
    
    
.code
    
        
        MOV AL, 00
        MOV BX, 1000h     ;TO STORE OFFSET ADDRESS VALUE
        MOV CX, 05 
        
      ADD_LP:ADD AL, [BX]   ;SUM LOOP STARTS
             INC BX         ;INCREASING ADDRESS 
             DEC CX
             MOV SUM, AL    ;ASSIGNING TOTAL VALUE TO VARIABLE SUM
             JNZ ADD_LP     ; LOOP END
         
         ;TO PRINT THE OUTPUT IN INTEGER VALUE. (HEXA TO INT)
         
         MOV DL, 100
         DIV DL
         MOV CL, AH
         MOV DL, AL
         ADD DL, 48
         MOV AH, 02
         INT 21H
         
         MOV AX, 00
         MOV AL,CL
         MOV DL, 10
         DIV DL
         MOV V1, AL
         MOV V2, AH
         
         MOV DL, V1
         ADD DL, 48
         MOV AH, 02
         INT 21H
         
         MOV DL, V2
         ADD DL, 48
         MOV AH, 02
         INT 21H
       
          
HLT