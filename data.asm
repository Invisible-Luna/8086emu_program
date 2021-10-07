
.STACK 64
.MODEL SMALL


.DATA DB
    DS:0100=25H
    DS:0101=12H
    DS:0102=15H
    DS:0103=1FH
    DS:0104=2BH
    SUM DB ?
    
.CODE
    MAIN PROC FAR
        MOV AX, @DATA  
        MOV DS, AX
        
        MOV AL,00H
        ADD AL,[0100] 
        ADD AL,[0101]
        ADD AL,[0102]
        ADD AL,[0103]    
        ADD AL,[0104]
       ; MOV SUM, AL         



