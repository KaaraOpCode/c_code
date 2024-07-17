
_main:

;adconversion.c,18 :: 		void main() {
;adconversion.c,19 :: 		ANSEL = 0x01; // Configure AN0 pin as analog
	MOVLW      1
	MOVWF      ANSEL+0
;adconversion.c,20 :: 		ANSELH = 0x00; // Configure other AN pins as digital
	CLRF       ANSELH+0
;adconversion.c,21 :: 		TRISA = 0b00000001; // Configure PORTA as output (RA0 as input for LM35)
	MOVLW      1
	MOVWF      TRISA+0
;adconversion.c,22 :: 		Lcd_Init(); // Initialize LCD
	CALL       _Lcd_Init+0
;adconversion.c,23 :: 		ADC_Init(); // Initialize ADC module
	CALL       _ADC_Init+0
;adconversion.c,24 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;adconversion.c,25 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;adconversion.c,26 :: 		LCD_OUT(1, 3, "Temperature");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_adconversion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;adconversion.c,27 :: 		LCD_OUT(2, 3, "Sensor");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_adconversion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;adconversion.c,28 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;adconversion.c,29 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;adconversion.c,30 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;adconversion.c,32 :: 		while (1) {
L_main1:
;adconversion.c,34 :: 		temperature = ADC_Read(0); // Read ADC value from AN0 pin
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _temperature+0
	MOVF       R0+1, 0
	MOVWF      _temperature+1
	MOVF       R0+2, 0
	MOVWF      _temperature+2
	MOVF       R0+3, 0
	MOVWF      _temperature+3
;adconversion.c,35 :: 		temperature = temperature * (5.0 / 1023.0) * 100.0;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      119
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _temperature+0
	MOVF       R0+1, 0
	MOVWF      _temperature+1
	MOVF       R0+2, 0
	MOVWF      _temperature+2
	MOVF       R0+3, 0
	MOVWF      _temperature+3
;adconversion.c,38 :: 		floatToStr(temperature, temp);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _temp+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;adconversion.c,41 :: 		LCD_OUT(2, 1, temp);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _temp+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;adconversion.c,42 :: 		LCD_OUT(2, 7, "C");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_adconversion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;adconversion.c,45 :: 		if (temperature > 40.0) {
	MOVF       _temperature+0, 0
	MOVWF      R4+0
	MOVF       _temperature+1, 0
	MOVWF      R4+1
	MOVF       _temperature+2, 0
	MOVWF      R4+2
	MOVF       _temperature+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      32
	MOVWF      R0+2
	MOVLW      132
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;adconversion.c,47 :: 		PORTA.RA2 = 1;
	BSF        PORTA+0, 2
;adconversion.c,48 :: 		LCD_OUT(1, 1, "Fan: ON ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_adconversion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;adconversion.c,49 :: 		} else {
	GOTO       L_main4
L_main3:
;adconversion.c,51 :: 		PORTA.RA2 = 0;
	BCF        PORTA+0, 2
;adconversion.c,52 :: 		LCD_OUT(1, 1, "Fan: OFF");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_adconversion+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;adconversion.c,53 :: 		}
L_main4:
;adconversion.c,56 :: 		if (temperature > 40.0) {
	MOVF       _temperature+0, 0
	MOVWF      R4+0
	MOVF       _temperature+1, 0
	MOVWF      R4+1
	MOVF       _temperature+2, 0
	MOVWF      R4+2
	MOVF       _temperature+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      32
	MOVWF      R0+2
	MOVLW      132
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;adconversion.c,58 :: 		PORTA.RA3 = 0;
	BCF        PORTA+0, 3
;adconversion.c,59 :: 		} else {
	GOTO       L_main6
L_main5:
;adconversion.c,61 :: 		PORTA.RA3 = 1;
	BSF        PORTA+0, 3
;adconversion.c,62 :: 		}
L_main6:
;adconversion.c,64 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;adconversion.c,65 :: 		}
	GOTO       L_main1
;adconversion.c,66 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
