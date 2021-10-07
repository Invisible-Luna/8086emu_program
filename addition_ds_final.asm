;PRAVALLIKA SALADI
;119EC0013
;ADDITION OF 5 NUMBERS USING DATA SEGMENT USING CONSTANT OFFSET.
.data
    MOV ds:1000h, 25h
    MOV ds:1001h, 12h
    MOV ds:1002h, 15h
    MOV ds:1003h, 1Fh
    MOV ds:1004h, 2Bh
    
.code
    MOV AL, 00h
    MOV BX,1000h
    ADD AL, ds:[BX]
    INC BX   
    ADD AL, ds:[BX]
    INC BX
    ADD AL, ds:[BX]
    INC BX
    ADD AL, ds:[BX]
    INC BX
    ADD AL, ds:[BX]
    
ret