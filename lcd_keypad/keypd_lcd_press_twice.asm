
_keypadClick:

;keypd_lcd_press_twice.c,23 :: 		int keypadClick(){
;keypd_lcd_press_twice.c,25 :: 		do
L_keypadClick0:
;keypd_lcd_press_twice.c,27 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;keypd_lcd_press_twice.c,28 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick0
;keypd_lcd_press_twice.c,30 :: 		switch (kp) {
	GOTO       L_keypadClick3
;keypd_lcd_press_twice.c,31 :: 		case  1: return 55; break; // 7        // Uncomment this block for keypad4x4
L_keypadClick5:
	MOVLW      55
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,32 :: 		case  2: return 56; break; // 8
L_keypadClick6:
	MOVLW      56
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,33 :: 		case  3: return 57; break; // 9
L_keypadClick7:
	MOVLW      57
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,34 :: 		case  4: return 47; break; // /
L_keypadClick8:
	MOVLW      47
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,35 :: 		case  5: return 52; break; // 4
L_keypadClick9:
	MOVLW      52
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,36 :: 		case  6: return 53; break; // 5
L_keypadClick10:
	MOVLW      53
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,37 :: 		case  7: return 54; break; // 6
L_keypadClick11:
	MOVLW      54
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,38 :: 		case  8: return 42; break; // *
L_keypadClick12:
	MOVLW      42
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,39 :: 		case  9: return 49; break; // 1
L_keypadClick13:
	MOVLW      49
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,40 :: 		case 10: return 50; break; // 2
L_keypadClick14:
	MOVLW      50
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,41 :: 		case 11: return 51; break; // 3
L_keypadClick15:
	MOVLW      51
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,42 :: 		case 12: return 45; break; // -
L_keypadClick16:
	MOVLW      45
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,43 :: 		case 13: return 127; break; // del
L_keypadClick17:
	MOVLW      127
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,44 :: 		case 14: return 48; break; // 0
L_keypadClick18:
	MOVLW      48
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,45 :: 		case 15: return 61; break; // =
L_keypadClick19:
	MOVLW      61
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,46 :: 		case 16: return 43; break; // D
L_keypadClick20:
	MOVLW      43
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keypadClick
;keypd_lcd_press_twice.c,48 :: 		}
L_keypadClick3:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick5
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick6
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick7
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick8
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick9
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick10
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick11
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick12
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick13
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick14
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick15
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick16
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick17
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick18
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick19
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_keypadClick20
;keypd_lcd_press_twice.c,49 :: 		}
L_end_keypadClick:
	RETURN
; end of _keypadClick

_main:

;keypd_lcd_press_twice.c,50 :: 		void main() {
;keypd_lcd_press_twice.c,51 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;keypd_lcd_press_twice.c,52 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;keypd_lcd_press_twice.c,53 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;keypd_lcd_press_twice.c,54 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;keypd_lcd_press_twice.c,55 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypd_lcd_press_twice.c,56 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypd_lcd_press_twice.c,60 :: 		while(1){
L_main21:
;keypd_lcd_press_twice.c,61 :: 		int click = keypadClick();
	CALL       _keypadClick+0
	MOVF       R0+0, 0
	MOVWF      main_click_L1+0
	MOVF       R0+1, 0
	MOVWF      main_click_L1+1
;keypd_lcd_press_twice.c,62 :: 		if(click!=127){
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      127
	XORWF      R0+0, 0
L__main27:
	BTFSC      STATUS+0, 2
	GOTO       L_main23
;keypd_lcd_press_twice.c,63 :: 		lcd_chr_cp(click);
	MOVF       main_click_L1+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;keypd_lcd_press_twice.c,64 :: 		}
	GOTO       L_main24
L_main23:
;keypd_lcd_press_twice.c,66 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypd_lcd_press_twice.c,67 :: 		}
L_main24:
;keypd_lcd_press_twice.c,68 :: 		}
	GOTO       L_main21
;keypd_lcd_press_twice.c,69 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
