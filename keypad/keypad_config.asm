
_main:

;keypad_config.c,1 :: 		void main() {
;keypad_config.c,2 :: 		TRISB = 0XF0;
	MOVLW      240
	MOVWF      TRISB+0
;keypad_config.c,3 :: 		TRISD = 0X00;
	CLRF       TRISD+0
;keypad_config.c,4 :: 		ANSEL = ANSELH = 0X00;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;keypad_config.c,6 :: 		while(1){
L_main0:
;keypad_config.c,7 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;keypad_config.c,8 :: 		if(PORTB.RB4=1)
	BSF        PORTB+0, 4
	BTFSS      PORTB+0, 4
	GOTO       L_main2
;keypad_config.c,9 :: 		PORTD=0X06;
	MOVLW      6
	MOVWF      PORTD+0
L_main2:
;keypad_config.c,10 :: 		if(PORTB.RB5=1)
	BSF        PORTB+0, 5
	BTFSS      PORTB+0, 5
	GOTO       L_main3
;keypad_config.c,11 :: 		PORTD=0X66;
	MOVLW      102
	MOVWF      PORTD+0
L_main3:
;keypad_config.c,12 :: 		if(PORTB.RB6=1)
	BSF        PORTB+0, 6
	BTFSS      PORTB+0, 6
	GOTO       L_main4
;keypad_config.c,13 :: 		PORTD=0X07;
	MOVLW      7
	MOVWF      PORTD+0
L_main4:
;keypad_config.c,14 :: 		PORTB.RB0=0;
	BCF        PORTB+0, 0
;keypad_config.c,16 :: 		PORTB.RB1=1;
	BSF        PORTB+0, 1
;keypad_config.c,17 :: 		if(PORTB.RB4=1)
	BSF        PORTB+0, 4
	BTFSS      PORTB+0, 4
	GOTO       L_main5
;keypad_config.c,18 :: 		PORTD=0X5B;
	MOVLW      91
	MOVWF      PORTD+0
L_main5:
;keypad_config.c,19 :: 		if(PORTB.RB5=1)
	BSF        PORTB+0, 5
	BTFSS      PORTB+0, 5
	GOTO       L_main6
;keypad_config.c,20 :: 		PORTD=0X6D;
	MOVLW      109
	MOVWF      PORTD+0
L_main6:
;keypad_config.c,21 :: 		if(PORTB.RB6=1)
	BSF        PORTB+0, 6
	BTFSS      PORTB+0, 6
	GOTO       L_main7
;keypad_config.c,22 :: 		PORTD=0X7F;
	MOVLW      127
	MOVWF      PORTD+0
L_main7:
;keypad_config.c,23 :: 		if(PORTB.RB7=1)
	BSF        PORTB+0, 7
	BTFSS      PORTB+0, 7
	GOTO       L_main8
;keypad_config.c,24 :: 		PORTD=0X3f;
	MOVLW      63
	MOVWF      PORTD+0
L_main8:
;keypad_config.c,25 :: 		PORTB.RB1=0;
	BCF        PORTB+0, 1
;keypad_config.c,27 :: 		PORTB.RB2=1;
	BSF        PORTB+0, 2
;keypad_config.c,28 :: 		if(PORTB.RB4)
	BTFSS      PORTB+0, 4
	GOTO       L_main9
;keypad_config.c,29 :: 		PORTD=0X4F;
	MOVLW      79
	MOVWF      PORTD+0
L_main9:
;keypad_config.c,30 :: 		if(PORTB.RB5)
	BTFSS      PORTB+0, 5
	GOTO       L_main10
;keypad_config.c,31 :: 		PORTD=0X7D;
	MOVLW      125
	MOVWF      PORTD+0
L_main10:
;keypad_config.c,32 :: 		if(PORTB.RB6)
	BTFSS      PORTB+0, 6
	GOTO       L_main11
;keypad_config.c,33 :: 		PORTD=0X07;
	MOVLW      7
	MOVWF      PORTD+0
L_main11:
;keypad_config.c,34 :: 		PORTB.RB2=0;
	BCF        PORTB+0, 2
;keypad_config.c,35 :: 		}
	GOTO       L_main0
;keypad_config.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
