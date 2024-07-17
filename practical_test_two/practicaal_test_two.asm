
_keypad:

;practicaal_test_two.c,27 :: 		char keypad() {
;practicaal_test_two.c,30 :: 		do {
L_keypad0:
;practicaal_test_two.c,31 :: 		kp = Keypad_Key_Click(); // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      keypad_kp_L0+0
;practicaal_test_two.c,32 :: 		} while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keypad0
;practicaal_test_two.c,34 :: 		switch (kp) {
	GOTO       L_keypad3
;practicaal_test_two.c,35 :: 		case 1: kp = '1'; break; // 1
L_keypad5:
	MOVLW      49
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,36 :: 		case 2: kp = '2'; break; // 2
L_keypad6:
	MOVLW      50
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,37 :: 		case 3: kp = '3'; break; // 3
L_keypad7:
	MOVLW      51
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,38 :: 		case 4: kp = 'A'; break; // A (/)
L_keypad8:
	MOVLW      65
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,39 :: 		case 5: kp = '4'; break; // 4
L_keypad9:
	MOVLW      52
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,40 :: 		case 6: kp = '5'; break; // 5
L_keypad10:
	MOVLW      53
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,41 :: 		case 7: kp = '6'; break; // 6
L_keypad11:
	MOVLW      54
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,42 :: 		case 8: kp = 'B'; break; // B (*)
L_keypad12:
	MOVLW      66
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,43 :: 		case 9: kp = '7'; break; // 7
L_keypad13:
	MOVLW      55
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,44 :: 		case 10: kp = '8'; break; // 8
L_keypad14:
	MOVLW      56
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,45 :: 		case 11: kp = '9'; break; // 9
L_keypad15:
	MOVLW      57
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,46 :: 		case 12: kp = 'C'; break; // C (-)
L_keypad16:
	MOVLW      67
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,47 :: 		case 13: kp = '*'; break; // *
L_keypad17:
	MOVLW      42
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,48 :: 		case 14: kp = '0'; break; // 0
L_keypad18:
	MOVLW      48
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,49 :: 		case 15: kp = '#'; break; // # (=)
L_keypad19:
	MOVLW      35
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,50 :: 		case 16: kp = 'D'; break; // D (+)
L_keypad20:
	MOVLW      68
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;practicaal_test_two.c,51 :: 		}
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
;practicaal_test_two.c,52 :: 		return kp;
	MOVF       keypad_kp_L0+0, 0
	MOVWF      R0+0
;practicaal_test_two.c,53 :: 		}
L_end_keypad:
	RETURN
; end of _keypad

_zecaluCount:

;practicaal_test_two.c,67 :: 		void zecaluCount() {
;practicaal_test_two.c,68 :: 		char num1[3] = {2, 3, 4}; // Example sequence
	MOVLW      2
	MOVWF      zecaluCount_num1_L0+0
	MOVLW      3
	MOVWF      zecaluCount_num1_L0+1
	MOVLW      4
	MOVWF      zecaluCount_num1_L0+2
	CLRF       zecaluCount_i_L0+0
	CLRF       zecaluCount_i_L0+1
;practicaal_test_two.c,70 :: 		while (i < sizeof(num1)) {
L_zecaluCount21:
	MOVLW      128
	XORWF      zecaluCount_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__zecaluCount68
	MOVLW      3
	SUBWF      zecaluCount_i_L0+0, 0
L__zecaluCount68:
	BTFSC      STATUS+0, 0
	GOTO       L_zecaluCount22
;practicaal_test_two.c,71 :: 		PORTC = SEGMENT_CODES[num1[i]]; // Output the corresponding 7-segment code
	MOVF       zecaluCount_i_L0+0, 0
	ADDLW      zecaluCount_num1_L0+0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	ADDLW      _SEGMENT_CODES+0
	MOVWF      R0+0
	MOVLW      hi_addr(_SEGMENT_CODES+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;practicaal_test_two.c,72 :: 		Lcd_Chr(2, 1, num1[i] + '0'); // Display the digit on the LCD
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVLW      48
	ADDWF      INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;practicaal_test_two.c,73 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_zecaluCount23:
	DECFSZ     R13+0, 1
	GOTO       L_zecaluCount23
	DECFSZ     R12+0, 1
	GOTO       L_zecaluCount23
	DECFSZ     R11+0, 1
	GOTO       L_zecaluCount23
	NOP
	NOP
;practicaal_test_two.c,74 :: 		i++;
	INCF       zecaluCount_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       zecaluCount_i_L0+1, 1
;practicaal_test_two.c,75 :: 		}
	GOTO       L_zecaluCount21
L_zecaluCount22:
;practicaal_test_two.c,76 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;practicaal_test_two.c,77 :: 		}
L_end_zecaluCount:
	RETURN
; end of _zecaluCount

_daozecCount:

;practicaal_test_two.c,79 :: 		void daozecCount() {
;practicaal_test_two.c,80 :: 		char num1[3] = {5, 6, 7}; // Example sequence
	MOVLW      5
	MOVWF      daozecCount_num1_L0+0
	MOVLW      6
	MOVWF      daozecCount_num1_L0+1
	MOVLW      7
	MOVWF      daozecCount_num1_L0+2
	CLRF       daozecCount_i_L0+0
	CLRF       daozecCount_i_L0+1
;practicaal_test_two.c,82 :: 		while (i < sizeof(num1)) {
L_daozecCount24:
	MOVLW      128
	XORWF      daozecCount_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__daozecCount70
	MOVLW      3
	SUBWF      daozecCount_i_L0+0, 0
L__daozecCount70:
	BTFSC      STATUS+0, 0
	GOTO       L_daozecCount25
;practicaal_test_two.c,83 :: 		PORTC = SEGMENT_CODES[num1[i]]; // Output the corresponding 7-segment code
	MOVF       daozecCount_i_L0+0, 0
	ADDLW      daozecCount_num1_L0+0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	ADDLW      _SEGMENT_CODES+0
	MOVWF      R0+0
	MOVLW      hi_addr(_SEGMENT_CODES+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;practicaal_test_two.c,84 :: 		Lcd_Chr(2, 1, num1[i] + '0'); // Display the digit on the LCD
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVLW      48
	ADDWF      INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;practicaal_test_two.c,85 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_daozecCount26:
	DECFSZ     R13+0, 1
	GOTO       L_daozecCount26
	DECFSZ     R12+0, 1
	GOTO       L_daozecCount26
	DECFSZ     R11+0, 1
	GOTO       L_daozecCount26
	NOP
	NOP
;practicaal_test_two.c,86 :: 		i++;
	INCF       daozecCount_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       daozecCount_i_L0+1, 1
;practicaal_test_two.c,87 :: 		}
	GOTO       L_daozecCount24
L_daozecCount25:
;practicaal_test_two.c,88 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;practicaal_test_two.c,89 :: 		}
L_end_daozecCount:
	RETURN
; end of _daozecCount

_aludaoCount:

;practicaal_test_two.c,91 :: 		void aludaoCount() {
;practicaal_test_two.c,92 :: 		char num1[3] = {3, 5, 0}; // Example sequence
	MOVLW      3
	MOVWF      aludaoCount_num1_L0+0
	MOVLW      5
	MOVWF      aludaoCount_num1_L0+1
	CLRF       aludaoCount_num1_L0+2
	CLRF       aludaoCount_i_L0+0
	CLRF       aludaoCount_i_L0+1
;practicaal_test_two.c,94 :: 		while (i < sizeof(num1)) {
L_aludaoCount27:
	MOVLW      128
	XORWF      aludaoCount_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__aludaoCount72
	MOVLW      3
	SUBWF      aludaoCount_i_L0+0, 0
L__aludaoCount72:
	BTFSC      STATUS+0, 0
	GOTO       L_aludaoCount28
;practicaal_test_two.c,95 :: 		PORTC = SEGMENT_CODES[num1[i]];
	MOVF       aludaoCount_i_L0+0, 0
	ADDLW      aludaoCount_num1_L0+0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	ADDLW      _SEGMENT_CODES+0
	MOVWF      R0+0
	MOVLW      hi_addr(_SEGMENT_CODES+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;practicaal_test_two.c,96 :: 		Lcd_Chr(2, 1, num1[i] + '0');  // Output the corresponding 7-segment code
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVLW      48
	ADDWF      INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;practicaal_test_two.c,97 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_aludaoCount29:
	DECFSZ     R13+0, 1
	GOTO       L_aludaoCount29
	DECFSZ     R12+0, 1
	GOTO       L_aludaoCount29
	DECFSZ     R11+0, 1
	GOTO       L_aludaoCount29
	NOP
	NOP
;practicaal_test_two.c,98 :: 		i++;
	INCF       aludaoCount_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       aludaoCount_i_L0+1, 1
;practicaal_test_two.c,99 :: 		}
	GOTO       L_aludaoCount27
L_aludaoCount28:
;practicaal_test_two.c,100 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;practicaal_test_two.c,101 :: 		}
L_end_aludaoCount:
	RETURN
; end of _aludaoCount

_baluzecCount:

;practicaal_test_two.c,103 :: 		void baluzecCount() {
;practicaal_test_two.c,104 :: 		char num1[3] = {2, 4, 1}; // Example sequence
	MOVLW      2
	MOVWF      baluzecCount_num1_L0+0
	MOVLW      4
	MOVWF      baluzecCount_num1_L0+1
	MOVLW      1
	MOVWF      baluzecCount_num1_L0+2
	CLRF       baluzecCount_i_L0+0
	CLRF       baluzecCount_i_L0+1
;practicaal_test_two.c,106 :: 		while (i < sizeof(num1)) {
L_baluzecCount30:
	MOVLW      128
	XORWF      baluzecCount_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__baluzecCount74
	MOVLW      3
	SUBWF      baluzecCount_i_L0+0, 0
L__baluzecCount74:
	BTFSC      STATUS+0, 0
	GOTO       L_baluzecCount31
;practicaal_test_two.c,107 :: 		PORTC = SEGMENT_CODES[num1[i]]; // Output the corresponding 7-segment code
	MOVF       baluzecCount_i_L0+0, 0
	ADDLW      baluzecCount_num1_L0+0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	ADDLW      _SEGMENT_CODES+0
	MOVWF      R0+0
	MOVLW      hi_addr(_SEGMENT_CODES+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;practicaal_test_two.c,108 :: 		Lcd_Chr(2, 1, num1[i] + '0'); // Display the digit on the LCD
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R2+0, 0
	MOVWF      FSR
	MOVLW      48
	ADDWF      INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;practicaal_test_two.c,109 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_baluzecCount32:
	DECFSZ     R13+0, 1
	GOTO       L_baluzecCount32
	DECFSZ     R12+0, 1
	GOTO       L_baluzecCount32
	DECFSZ     R11+0, 1
	GOTO       L_baluzecCount32
	NOP
	NOP
;practicaal_test_two.c,110 :: 		i++;
	INCF       baluzecCount_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       baluzecCount_i_L0+1, 1
;practicaal_test_two.c,111 :: 		}
	GOTO       L_baluzecCount30
L_baluzecCount31:
;practicaal_test_two.c,112 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;practicaal_test_two.c,113 :: 		}
L_end_baluzecCount:
	RETURN
; end of _baluzecCount

_scrollText:

;practicaal_test_two.c,116 :: 		void scrollText(char* text) {
;practicaal_test_two.c,117 :: 		int len = strlen(text);
	MOVF       FARG_scrollText_text+0, 0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	MOVWF      scrollText_len_L0+0
	MOVF       R0+1, 0
	MOVWF      scrollText_len_L0+1
;practicaal_test_two.c,118 :: 		int pos = 0;
	CLRF       scrollText_pos_L0+0
	CLRF       scrollText_pos_L0+1
	MOVLW      1
	MOVWF      scrollText_direction_L0+0
	MOVLW      0
	MOVWF      scrollText_direction_L0+1
;practicaal_test_two.c,121 :: 		while (1) {
L_scrollText33:
;practicaal_test_two.c,122 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;practicaal_test_two.c,123 :: 		Lcd_Out(1, pos + 1, text);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	INCF       scrollText_pos_L0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       FARG_scrollText_text+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;practicaal_test_two.c,124 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_scrollText35:
	DECFSZ     R13+0, 1
	GOTO       L_scrollText35
	DECFSZ     R12+0, 1
	GOTO       L_scrollText35
	DECFSZ     R11+0, 1
	GOTO       L_scrollText35
	NOP
	NOP
;practicaal_test_two.c,126 :: 		pos += direction;
	MOVF       scrollText_direction_L0+0, 0
	ADDWF      scrollText_pos_L0+0, 0
	MOVWF      R0+0
	MOVF       scrollText_pos_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      scrollText_direction_L0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      scrollText_pos_L0+0
	MOVF       R0+1, 0
	MOVWF      scrollText_pos_L0+1
;practicaal_test_two.c,129 :: 		if (pos + len >= 16) {
	MOVF       scrollText_len_L0+0, 0
	ADDWF      R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      scrollText_len_L0+1, 0
	MOVWF      R2+1
	MOVLW      128
	XORWF      R2+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollText76
	MOVLW      16
	SUBWF      R2+0, 0
L__scrollText76:
	BTFSS      STATUS+0, 0
	GOTO       L_scrollText36
;practicaal_test_two.c,130 :: 		direction = -1;
	MOVLW      255
	MOVWF      scrollText_direction_L0+0
	MOVLW      255
	MOVWF      scrollText_direction_L0+1
;practicaal_test_two.c,131 :: 		} else if (pos <= 0) {
	GOTO       L_scrollText37
L_scrollText36:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      scrollText_pos_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scrollText77
	MOVF       scrollText_pos_L0+0, 0
	SUBLW      0
L__scrollText77:
	BTFSS      STATUS+0, 0
	GOTO       L_scrollText38
;practicaal_test_two.c,132 :: 		direction = 1;
	MOVLW      1
	MOVWF      scrollText_direction_L0+0
	MOVLW      0
	MOVWF      scrollText_direction_L0+1
;practicaal_test_two.c,133 :: 		}
L_scrollText38:
L_scrollText37:
;practicaal_test_two.c,136 :: 		if (Keypad_Key_Click()) break;
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_scrollText39
	GOTO       L_scrollText34
L_scrollText39:
;practicaal_test_two.c,137 :: 		}
	GOTO       L_scrollText33
L_scrollText34:
;practicaal_test_two.c,138 :: 		}
L_end_scrollText:
	RETURN
; end of _scrollText

_main:

;practicaal_test_two.c,141 :: 		void main() {
;practicaal_test_two.c,142 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;practicaal_test_two.c,143 :: 		Keypad_Init(); // Initialize Keypad
	CALL       _Keypad_Init+0
;practicaal_test_two.c,144 :: 		ANSEL = 0; // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;practicaal_test_two.c,145 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;practicaal_test_two.c,146 :: 		TRISC=0X00;                      // 7 SEG 1
	CLRF       TRISC+0
;practicaal_test_two.c,147 :: 		PORTC=0X00;
	CLRF       PORTC+0
;practicaal_test_two.c,148 :: 		TRISE = 0XFF;
	MOVLW      255
	MOVWF      TRISE+0
;practicaal_test_two.c,149 :: 		TRISA = 0X00;
	CLRF       TRISA+0
;practicaal_test_two.c,150 :: 		PORTA = 0X00;
	CLRF       PORTA+0
;practicaal_test_two.c,151 :: 		Lcd_Init(); // Initialize LCD
	CALL       _Lcd_Init+0
;practicaal_test_two.c,152 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;practicaal_test_two.c,153 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;practicaal_test_two.c,154 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	DECFSZ     R11+0, 1
	GOTO       L_main40
	NOP
	NOP
;practicaal_test_two.c,156 :: 		while (1) {
L_main41:
;practicaal_test_two.c,157 :: 		scrollText("Enter Records:");
	MOVLW      ?lstr1_practicaal_test_two+0
	MOVWF      FARG_scrollText_text+0
	CALL       _scrollText+0
;practicaal_test_two.c,159 :: 		while (i < 2) {
L_main43:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main79
	MOVLW      2
	SUBWF      main_i_L0+0, 0
L__main79:
	BTFSC      STATUS+0, 0
	GOTO       L_main44
;practicaal_test_two.c,160 :: 		input[i] = keypad();
	MOVF       main_i_L0+0, 0
	ADDLW      _input+0
	MOVWF      FLOC__main+0
	CALL       _keypad+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;practicaal_test_two.c,161 :: 		lcd_chr_cp(input[i]);
	MOVF       main_i_L0+0, 0
	ADDLW      _input+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;practicaal_test_two.c,162 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;practicaal_test_two.c,163 :: 		}
	GOTO       L_main43
L_main44:
;practicaal_test_two.c,164 :: 		if (input[0] == zecalu[0] && input[1] == zecalu[1]) {
	MOVF       _input+0, 0
	XORWF      _zecalu+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main47
	MOVF       _input+1, 0
	XORWF      _zecalu+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main47
L__main65:
;practicaal_test_two.c,165 :: 		LCD_OUT(1, 3, ":Zec and  Aluteyi");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_practicaal_test_two+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;practicaal_test_two.c,166 :: 		zecaluCount();
	CALL       _zecaluCount+0
;practicaal_test_two.c,168 :: 		} else if (input[0] == daozec[0] && input[1] == daozec[1]) {
	GOTO       L_main48
L_main47:
	MOVF       _input+0, 0
	XORWF      _daozec+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main51
	MOVF       _input+1, 0
	XORWF      _daozec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main51
L__main64:
;practicaal_test_two.c,169 :: 		LCD_OUT(1, 3, ":Dao and Zec");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_practicaal_test_two+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;practicaal_test_two.c,170 :: 		daozecCount();
	CALL       _daozecCount+0
;practicaal_test_two.c,173 :: 		}else if (input[0] == aludao[0] && input[1] == aludao[1]) {
	GOTO       L_main52
L_main51:
	MOVF       _input+0, 0
	XORWF      _aludao+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main55
	MOVF       _input+1, 0
	XORWF      _aludao+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main55
L__main63:
;practicaal_test_two.c,174 :: 		LCD_OUT(1, 3, ":Aluteyi and Dao");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_practicaal_test_two+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;practicaal_test_two.c,175 :: 		aludaoCount();
	CALL       _aludaoCount+0
;practicaal_test_two.c,177 :: 		}
	GOTO       L_main56
L_main55:
;practicaal_test_two.c,178 :: 		else if (input[0] == baluzec[0] && input[1] == baluzec[1]) {
	MOVF       _input+0, 0
	XORWF      _baluzec+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main59
	MOVF       _input+1, 0
	XORWF      _baluzec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main59
L__main62:
;practicaal_test_two.c,179 :: 		LCD_OUT(1, 3, ":Baulu and Zec");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_practicaal_test_two+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;practicaal_test_two.c,180 :: 		baluzecCount();
	CALL       _baluzecCount+0
;practicaal_test_two.c,182 :: 		} else {
	GOTO       L_main60
L_main59:
;practicaal_test_two.c,183 :: 		LCD_OUT(1, 1, "Wrong Records");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_practicaal_test_two+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;practicaal_test_two.c,184 :: 		LCD_OUT(2, 1, "Try Again!");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_practicaal_test_two+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;practicaal_test_two.c,185 :: 		}
L_main60:
L_main56:
L_main52:
L_main48:
;practicaal_test_two.c,187 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main61:
	DECFSZ     R13+0, 1
	GOTO       L_main61
	DECFSZ     R12+0, 1
	GOTO       L_main61
	DECFSZ     R11+0, 1
	GOTO       L_main61
	NOP
	NOP
;practicaal_test_two.c,188 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;practicaal_test_two.c,189 :: 		i = 0; // Reset the index for the next iteration
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;practicaal_test_two.c,190 :: 		}
	GOTO       L_main41
;practicaal_test_two.c,191 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
