
_keypad:

;assignment_five.c,22 :: 		char keypad() {
;assignment_five.c,25 :: 		do {
L_keypad0:
;assignment_five.c,26 :: 		kp = Keypad_Key_Click(); // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      keypad_kp_L0+0
;assignment_five.c,27 :: 		} while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keypad0
;assignment_five.c,29 :: 		switch (kp) {
	GOTO       L_keypad3
;assignment_five.c,30 :: 		case 1: kp = '1'; break; // 1
L_keypad5:
	MOVLW      49
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,31 :: 		case 2: kp = '2'; break; // 2
L_keypad6:
	MOVLW      50
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,32 :: 		case 3: kp = '3'; break; // 3
L_keypad7:
	MOVLW      51
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,33 :: 		case 4: kp = 'A'; break; // A (/)
L_keypad8:
	MOVLW      65
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,34 :: 		case 5: kp = '4'; break; // 4
L_keypad9:
	MOVLW      52
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,35 :: 		case 6: kp = '5'; break; // 5
L_keypad10:
	MOVLW      53
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,36 :: 		case 7: kp = '6'; break; // 6
L_keypad11:
	MOVLW      54
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,37 :: 		case 8: kp = 'B'; break; // B (*)
L_keypad12:
	MOVLW      66
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,38 :: 		case 9: kp = '7'; break; // 7
L_keypad13:
	MOVLW      55
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,39 :: 		case 10: kp = '8'; break; // 8
L_keypad14:
	MOVLW      56
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,40 :: 		case 11: kp = '9'; break; // 9
L_keypad15:
	MOVLW      57
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,41 :: 		case 12: kp = 'C'; break; // C (-)
L_keypad16:
	MOVLW      67
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,42 :: 		case 13: kp = '*'; break; // *
L_keypad17:
	MOVLW      42
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,43 :: 		case 14: kp = '0'; break; // 0
L_keypad18:
	MOVLW      48
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,44 :: 		case 15: kp = '#'; break; // # (=)
L_keypad19:
	MOVLW      35
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,45 :: 		case 16: kp = 'D'; break; // D (+)
L_keypad20:
	MOVLW      68
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_five.c,46 :: 		}
L_keypad3:
	MOVF       keypad_kp_L0+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_keypad5
	MOVF       keypad_kp_L0+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_keypad6
	MOVF       keypad_kp_L0+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_keypad7
	MOVF       keypad_kp_L0+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_keypad8
	MOVF       keypad_kp_L0+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_keypad9
	MOVF       keypad_kp_L0+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_keypad10
	MOVF       keypad_kp_L0+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_keypad11
	MOVF       keypad_kp_L0+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_keypad12
	MOVF       keypad_kp_L0+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_keypad13
	MOVF       keypad_kp_L0+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_keypad14
	MOVF       keypad_kp_L0+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_keypad15
	MOVF       keypad_kp_L0+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_keypad16
	MOVF       keypad_kp_L0+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_keypad17
	MOVF       keypad_kp_L0+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_keypad18
	MOVF       keypad_kp_L0+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_keypad19
	MOVF       keypad_kp_L0+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_keypad20
L_keypad4:
;assignment_five.c,47 :: 		return kp;
	MOVF       keypad_kp_L0+0, 0
	MOVWF      R0+0
;assignment_five.c,48 :: 		}
L_end_keypad:
	RETURN
; end of _keypad

_sevenSegmentCount:

;assignment_five.c,50 :: 		void sevenSegmentCount() {
;assignment_five.c,51 :: 		char num1[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F};
	MOVLW      63
	MOVWF      sevenSegmentCount_num1_L0+0
	MOVLW      6
	MOVWF      sevenSegmentCount_num1_L0+1
	MOVLW      91
	MOVWF      sevenSegmentCount_num1_L0+2
	MOVLW      79
	MOVWF      sevenSegmentCount_num1_L0+3
	MOVLW      102
	MOVWF      sevenSegmentCount_num1_L0+4
	MOVLW      109
	MOVWF      sevenSegmentCount_num1_L0+5
	MOVLW      125
	MOVWF      sevenSegmentCount_num1_L0+6
	MOVLW      7
	MOVWF      sevenSegmentCount_num1_L0+7
	MOVLW      127
	MOVWF      sevenSegmentCount_num1_L0+8
	CLRF       sevenSegmentCount_num1_L0+9
	CLRF       sevenSegmentCount_i_L0+0
	CLRF       sevenSegmentCount_i_L0+1
;assignment_five.c,53 :: 		while(i < sizeof(num1)){
L_sevenSegmentCount21:
	MOVLW      128
	XORWF      sevenSegmentCount_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sevenSegmentCount39
	MOVLW      10
	SUBWF      sevenSegmentCount_i_L0+0, 0
L__sevenSegmentCount39:
	BTFSC      STATUS+0, 0
	GOTO       L_sevenSegmentCount22
;assignment_five.c,54 :: 		PORTC = num1[i];
	MOVF       sevenSegmentCount_i_L0+0, 0
	ADDLW      sevenSegmentCount_num1_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;assignment_five.c,55 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sevenSegmentCount23:
	DECFSZ     R13+0, 1
	GOTO       L_sevenSegmentCount23
	DECFSZ     R12+0, 1
	GOTO       L_sevenSegmentCount23
	DECFSZ     R11+0, 1
	GOTO       L_sevenSegmentCount23
	NOP
	NOP
;assignment_five.c,56 :: 		i++;
	INCF       sevenSegmentCount_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       sevenSegmentCount_i_L0+1, 1
;assignment_five.c,57 :: 		}
	GOTO       L_sevenSegmentCount21
L_sevenSegmentCount22:
;assignment_five.c,58 :: 		PORTC =0x00;
	CLRF       PORTC+0
;assignment_five.c,59 :: 		}
L_end_sevenSegmentCount:
	RETURN
; end of _sevenSegmentCount

_main:

;assignment_five.c,61 :: 		void main() {
;assignment_five.c,62 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;assignment_five.c,63 :: 		Keypad_Init(); // Initialize Keypad
	CALL       _Keypad_Init+0
;assignment_five.c,64 :: 		ANSEL = 0; // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;assignment_five.c,65 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;assignment_five.c,66 :: 		TRISC=0X00;                      // 7 SEG 1
	CLRF       TRISC+0
;assignment_five.c,67 :: 		PORTC=0X00;
	CLRF       PORTC+0
;assignment_five.c,68 :: 		TRISE = 0XFF;
	MOVLW      255
	MOVWF      TRISE+0
;assignment_five.c,69 :: 		TRISA = 0X00;
	CLRF       TRISA+0
;assignment_five.c,70 :: 		PORTA = 0X00;
	CLRF       PORTA+0
;assignment_five.c,71 :: 		Lcd_Init(); // Initialize LCD
	CALL       _Lcd_Init+0
;assignment_five.c,72 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_five.c,73 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_five.c,74 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;assignment_five.c,76 :: 		while (1) {
L_main25:
;assignment_five.c,77 :: 		LCD_OUT(1, 1, "Enter Password:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_assignment_five+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_five.c,78 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;assignment_five.c,79 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_five.c,82 :: 		while (i < 4) {
L_main28:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      4
	SUBWF      main_i_L0+0, 0
L__main41:
	BTFSC      STATUS+0, 0
	GOTO       L_main29
;assignment_five.c,83 :: 		input[i] = keypad();
	MOVF       main_i_L0+0, 0
	ADDLW      _input+0
	MOVWF      FLOC__main+0
	CALL       _keypad+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;assignment_five.c,84 :: 		lcd_chr_cp('*');
	MOVLW      42
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;assignment_five.c,85 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;assignment_five.c,86 :: 		}
	GOTO       L_main28
L_main29:
;assignment_five.c,87 :: 		input[4] = '\0';
	CLRF       _input+4
;assignment_five.c,90 :: 		LCD_OUT(1, 1, input);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _input+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_five.c,93 :: 		if (input[0] == password[0] && input[1] == password[1] && input[2] == password[2] && input[3] == password[3]) {
	MOVF       _input+0, 0
	XORWF      _password+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main32
	MOVF       _input+1, 0
	XORWF      _password+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main32
	MOVF       _input+2, 0
	XORWF      _password+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main32
	MOVF       _input+3, 0
	XORWF      _password+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main32
L__main36:
;assignment_five.c,94 :: 		LCD_OUT(2, 1, "Access Granted");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_assignment_five+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_five.c,95 :: 		PORTA.RA0 = 1;
	BSF        PORTA+0, 0
;assignment_five.c,96 :: 		sevenSegmentCount();
	CALL       _sevenSegmentCount+0
;assignment_five.c,97 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	DECFSZ     R11+0, 1
	GOTO       L_main33
	NOP
	NOP
;assignment_five.c,98 :: 		PORTA.RA0 = 0;
	BCF        PORTA+0, 0
;assignment_five.c,99 :: 		} else {
	GOTO       L_main34
L_main32:
;assignment_five.c,100 :: 		LCD_OUT(2, 1, "Access Denied");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_assignment_five+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_five.c,101 :: 		PORTA.RA0 = 0;
	BCF        PORTA+0, 0
;assignment_five.c,102 :: 		}
L_main34:
;assignment_five.c,104 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	DECFSZ     R11+0, 1
	GOTO       L_main35
	NOP
;assignment_five.c,105 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_five.c,106 :: 		i = 0; // Reset the index for the next iteration
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;assignment_five.c,107 :: 		}
	GOTO       L_main25
;assignment_five.c,108 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
