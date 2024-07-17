
_main:

;ex2.c,1 :: 		void main() {
;ex2.c,2 :: 		int count = 0;
	CLRF       main_count_L0+0
	CLRF       main_count_L0+1
	MOVLW      1
	MOVWF      main_direction_L0+0
	MOVLW      0
	MOVWF      main_direction_L0+1
;ex2.c,4 :: 		TRISB = 0;
	CLRF       TRISB+0
;ex2.c,7 :: 		while(1){
L_main0:
;ex2.c,8 :: 		PORTB = count;
	MOVF       main_count_L0+0, 0
	MOVWF      PORTB+0
;ex2.c,9 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;ex2.c,11 :: 		count+=direction;
	MOVF       main_direction_L0+0, 0
	ADDWF      main_count_L0+0, 0
	MOVWF      R1+0
	MOVF       main_count_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      main_direction_L0+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      main_count_L0+0
	MOVF       R1+1, 0
	MOVWF      main_count_L0+1
;ex2.c,13 :: 		if(count==0b1111){
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVLW      15
	XORWF      R1+0, 0
L__main7:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;ex2.c,14 :: 		direction = -1;
	MOVLW      255
	MOVWF      main_direction_L0+0
	MOVLW      255
	MOVWF      main_direction_L0+1
;ex2.c,15 :: 		}
	GOTO       L_main4
L_main3:
;ex2.c,16 :: 		else if(count == 0){
	MOVLW      0
	XORWF      main_count_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVLW      0
	XORWF      main_count_L0+0, 0
L__main8:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;ex2.c,17 :: 		direction = 1;
	MOVLW      1
	MOVWF      main_direction_L0+0
	MOVLW      0
	MOVWF      main_direction_L0+1
;ex2.c,18 :: 		}
L_main5:
L_main4:
;ex2.c,19 :: 		}
	GOTO       L_main0
;ex2.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
