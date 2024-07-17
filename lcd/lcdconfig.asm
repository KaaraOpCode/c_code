
_main:

;lcdconfig.c,17 :: 		void main() {
;lcdconfig.c,19 :: 		LCD_INIT();
	CALL       _Lcd_Init+0
;lcdconfig.c,20 :: 		LCD_CMD(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcdconfig.c,21 :: 		LCD_CMD(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcdconfig.c,22 :: 		LCD_OUT(1,1, "Kaara");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lcdconfig+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcdconfig.c,23 :: 		LCD_OUT(2,1, "Gami");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_lcdconfig+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcdconfig.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
