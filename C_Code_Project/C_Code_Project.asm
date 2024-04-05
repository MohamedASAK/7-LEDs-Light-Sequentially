
_main:

;C_Code_Project.c,2 :: 		void main() {
;C_Code_Project.c,3 :: 		TRISB = 0;
	CLRF       TRISB+0
;C_Code_Project.c,4 :: 		while(1){
L_main0:
;C_Code_Project.c,5 :: 		for(i = 0; i<=7 ; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVF       _i+0, 0
	SUBLW      7
L__main7:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;C_Code_Project.c,6 :: 		PORTB = 1 << i;
	MOVF       _i+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main8:
	BTFSC      STATUS+0, 2
	GOTO       L__main9
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main8
L__main9:
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;C_Code_Project.c,7 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;C_Code_Project.c,5 :: 		for(i = 0; i<=7 ; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;C_Code_Project.c,8 :: 		}
	GOTO       L_main2
L_main3:
;C_Code_Project.c,9 :: 		}
	GOTO       L_main0
;C_Code_Project.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
