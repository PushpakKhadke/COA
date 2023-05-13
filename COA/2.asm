; 8086 Assembly Language Program to display personal information using Macro.

DISPLAY MACRO MSG
    LEA DX,MSG
    MOV AH,09H
    INT 21H
ENDM

DATA SEGMENT
    MSG1 DB 10,13,"************** $"
    MSG2 DB 10,13,"NAME   :- PUSHPAK KHADKE $"
    MSG3 DB 10,13,"ROLL NO :- 68                  $"
    MSG4 DB 10,13,"CLASS   :- SE                     $"
    MSG5 DB 10,13,"COLLEGE   :- SSBT COET        $"
    MSG6 DB 10,13,"*************** $"
    DATA ENDS

CODE SEGMENT
   ASSUME CS:CODE  ,DS:DATA
    MOV AX,DATA
    MOV DS,AX


    DISPLAY MSG1
      DISPLAY MSG2
      DISPLAY MSG3
      DISPLAY MSG3
      DISPLAY MSG4
      DISPLAY MSG5
      DISPLAY MSG6

      MOV AH,4CH
      INT 21H
CODE ENDS
END