
_main:

;leds.c,1 :: 		void main() {
;leds.c,2 :: 		TRISB=0xFF;
	MOVLW      255
	MOVWF      TRISB+0
;leds.c,3 :: 		TRISA=0x00;
	CLRF       TRISA+0
;leds.c,4 :: 		ANSEL=ANSELH=0x00;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;leds.c,5 :: 		PORTA = 0;
	CLRF       PORTA+0
;leds.c,7 :: 		while(1){
L_main0:
;leds.c,8 :: 		if(PORTB.RB0 == 0 && PORTB.RB1 == 0 ){
	BTFSC      PORTB+0, 0
	GOTO       L_main4
	BTFSC      PORTB+0, 1
	GOTO       L_main4
L__main30:
;leds.c,10 :: 		for(i = 0; i < 8; i++){
	CLRF       R2+0
	CLRF       R2+1
L_main5:
	MOVLW      128
	XORWF      R2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      8
	SUBWF      R2+0, 0
L__main32:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;leds.c,11 :: 		PORTA = (1 << i);
	MOVF       R2+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main33:
	BTFSC      STATUS+0, 2
	GOTO       L__main34
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main33
L__main34:
	MOVF       R0+0, 0
	MOVWF      PORTA+0
;leds.c,12 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;leds.c,10 :: 		for(i = 0; i < 8; i++){
	INCF       R2+0, 1
	BTFSC      STATUS+0, 2
	INCF       R2+1, 1
;leds.c,13 :: 		}
	GOTO       L_main5
L_main6:
;leds.c,14 :: 		}
	GOTO       L_main9
L_main4:
;leds.c,15 :: 		else if(PORTB.RB0 == 0 && PORTB.RB1 == 1){
	BTFSC      PORTB+0, 0
	GOTO       L_main12
	BTFSS      PORTB+0, 1
	GOTO       L_main12
L__main29:
;leds.c,17 :: 		for(i = 7; i >= 0; i--){
	MOVLW      7
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
L_main13:
	MOVLW      128
	XORWF      R4+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      0
	SUBWF      R4+0, 0
L__main35:
	BTFSS      STATUS+0, 0
	GOTO       L_main14
;leds.c,18 :: 		PORTA = (1 << i);
	MOVF       R4+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main36:
	BTFSC      STATUS+0, 2
	GOTO       L__main37
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main36
L__main37:
	MOVF       R0+0, 0
	MOVWF      PORTA+0
;leds.c,19 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;leds.c,17 :: 		for(i = 7; i >= 0; i--){
	MOVLW      1
	SUBWF      R4+0, 1
	BTFSS      STATUS+0, 0
	DECF       R4+1, 1
;leds.c,20 :: 		}
	GOTO       L_main13
L_main14:
;leds.c,21 :: 		}
	GOTO       L_main17
L_main12:
;leds.c,22 :: 		else if(PORTB.RB0 == 1 && PORTB.RB1 == 0){
	BTFSS      PORTB+0, 0
	GOTO       L_main20
	BTFSC      PORTB+0, 1
	GOTO       L_main20
L__main28:
;leds.c,23 :: 		PORTA = 0xFF;
	MOVLW      255
	MOVWF      PORTA+0
;leds.c,24 :: 		}
	GOTO       L_main21
L_main20:
;leds.c,26 :: 		else if(PORTB.RB0 == 1 && PORTB.RB1 == 1){
	BTFSS      PORTB+0, 0
	GOTO       L_main24
	BTFSS      PORTB+0, 1
	GOTO       L_main24
L__main27:
;leds.c,27 :: 		PORTA = 0xFF;
	MOVLW      255
	MOVWF      PORTA+0
;leds.c,28 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	NOP
;leds.c,29 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;leds.c,30 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	NOP
;leds.c,31 :: 		}
L_main24:
L_main21:
L_main17:
L_main9:
;leds.c,32 :: 		}
	GOTO       L_main0
;leds.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
