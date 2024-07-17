
_keyPad:

;simple_calculator.c,24 :: 		int keyPad(){
;simple_calculator.c,26 :: 		do
L_keyPad0:
;simple_calculator.c,28 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;simple_calculator.c,29 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad0
;simple_calculator.c,31 :: 		switch (kp) {
	GOTO       L_keyPad3
;simple_calculator.c,33 :: 		case  1: return 55; break; // 7        // Uncomment this block for keypad4x4
L_keyPad5:
	MOVLW      55
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,34 :: 		case  2: return 56; break; // 8
L_keyPad6:
	MOVLW      56
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,35 :: 		case  3: return 57; break; // 9
L_keyPad7:
	MOVLW      57
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,36 :: 		case  4: return 65; break; // A
L_keyPad8:
	MOVLW      65
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,37 :: 		case  5: return 52; break; // 4
L_keyPad9:
	MOVLW      52
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,38 :: 		case  6: return 53; break; // 5
L_keyPad10:
	MOVLW      53
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,39 :: 		case  7: return 54; break; // 6
L_keyPad11:
	MOVLW      54
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,40 :: 		case  8: return 66; break; // B
L_keyPad12:
	MOVLW      66
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,41 :: 		case  9: return 49; break; // 1
L_keyPad13:
	MOVLW      49
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,42 :: 		case 10: return 50; break; // 2
L_keyPad14:
	MOVLW      50
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,43 :: 		case 11: return 51; break; // 3
L_keyPad15:
	MOVLW      51
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,44 :: 		case 12: return 67; break; // C
L_keyPad16:
	MOVLW      67
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,45 :: 		case 13: return 42; break; // *
L_keyPad17:
	MOVLW      42
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,46 :: 		case 14: return 48; break; // 0
L_keyPad18:
	MOVLW      48
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,47 :: 		case 15: return 35; break; // #
L_keyPad19:
	MOVLW      35
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,48 :: 		case 16: return 68; break; // D
L_keyPad20:
	MOVLW      68
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,50 :: 		}
L_keyPad3:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad5
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad6
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad7
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad8
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad9
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad10
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad11
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad12
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad13
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad14
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad15
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad16
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad17
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad18
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad19
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad20
;simple_calculator.c,51 :: 		}
L_end_keyPad:
	RETURN
; end of _keyPad

_countDigits:

;simple_calculator.c,53 :: 		int countDigits(int number) {
;simple_calculator.c,54 :: 		int count = 0;
	CLRF       countDigits_count_L0+0
	CLRF       countDigits_count_L0+1
;simple_calculator.c,57 :: 		if (number == 0)
	MOVLW      0
	XORWF      FARG_countDigits_number+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__countDigits35
	MOVLW      0
	XORWF      FARG_countDigits_number+0, 0
L__countDigits35:
	BTFSS      STATUS+0, 2
	GOTO       L_countDigits21
;simple_calculator.c,58 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_countDigits
L_countDigits21:
;simple_calculator.c,61 :: 		if (number < 0) {
	MOVLW      128
	XORWF      FARG_countDigits_number+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__countDigits36
	MOVLW      0
	SUBWF      FARG_countDigits_number+0, 0
L__countDigits36:
	BTFSC      STATUS+0, 0
	GOTO       L_countDigits22
;simple_calculator.c,62 :: 		count++; // count the negative sign
	INCF       countDigits_count_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       countDigits_count_L0+1, 1
;simple_calculator.c,63 :: 		number = -number; // make the number positive
	MOVF       FARG_countDigits_number+0, 0
	SUBLW      0
	MOVWF      FARG_countDigits_number+0
	MOVF       FARG_countDigits_number+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       FARG_countDigits_number+1
	SUBWF      FARG_countDigits_number+1, 1
;simple_calculator.c,64 :: 		}
L_countDigits22:
;simple_calculator.c,67 :: 		while (number != 0) {
L_countDigits23:
	MOVLW      0
	XORWF      FARG_countDigits_number+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__countDigits37
	MOVLW      0
	XORWF      FARG_countDigits_number+0, 0
L__countDigits37:
	BTFSC      STATUS+0, 2
	GOTO       L_countDigits24
;simple_calculator.c,68 :: 		number = number / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_countDigits_number+0, 0
	MOVWF      R0+0
	MOVF       FARG_countDigits_number+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_countDigits_number+0
	MOVF       R0+1, 0
	MOVWF      FARG_countDigits_number+1
;simple_calculator.c,69 :: 		count++;
	INCF       countDigits_count_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       countDigits_count_L0+1, 1
;simple_calculator.c,70 :: 		}
	GOTO       L_countDigits23
L_countDigits24:
;simple_calculator.c,72 :: 		return count;
	MOVF       countDigits_count_L0+0, 0
	MOVWF      R0+0
	MOVF       countDigits_count_L0+1, 0
	MOVWF      R0+1
;simple_calculator.c,73 :: 		}
L_end_countDigits:
	RETURN
; end of _countDigits

_intToString1:

;simple_calculator.c,74 :: 		void intToString1(int num,char *collection){
;simple_calculator.c,76 :: 		int count= countDigits(num);
	MOVF       FARG_intToString1_num+0, 0
	MOVWF      FARG_countDigits_number+0
	MOVF       FARG_intToString1_num+1, 0
	MOVWF      FARG_countDigits_number+1
	CALL       _countDigits+0
;simple_calculator.c,77 :: 		int position = count-1;
	MOVLW      1
	SUBWF      R0+0, 0
	MOVWF      intToString1_position_L0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      R0+1, 0
	MOVWF      intToString1_position_L0+1
;simple_calculator.c,78 :: 		if(num==0){
	MOVLW      0
	XORWF      FARG_intToString1_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__intToString139
	MOVLW      0
	XORWF      FARG_intToString1_num+0, 0
L__intToString139:
	BTFSS      STATUS+0, 2
	GOTO       L_intToString125
;simple_calculator.c,79 :: 		collection[0]=48;
	MOVF       FARG_intToString1_collection+0, 0
	MOVWF      FSR
	MOVLW      48
	MOVWF      INDF+0
;simple_calculator.c,80 :: 		return;
	GOTO       L_end_intToString1
;simple_calculator.c,81 :: 		}
L_intToString125:
;simple_calculator.c,82 :: 		while(num>0&& position>=0){
L_intToString126:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_intToString1_num+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__intToString140
	MOVF       FARG_intToString1_num+0, 0
	SUBLW      0
L__intToString140:
	BTFSC      STATUS+0, 0
	GOTO       L_intToString127
	MOVLW      128
	XORWF      intToString1_position_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__intToString141
	MOVLW      0
	SUBWF      intToString1_position_L0+0, 0
L__intToString141:
	BTFSS      STATUS+0, 0
	GOTO       L_intToString127
L__intToString132:
;simple_calculator.c,83 :: 		collection[position] = (num % 10)+48;
	MOVF       intToString1_position_L0+0, 0
	ADDWF      FARG_intToString1_collection+0, 0
	MOVWF      FLOC__intToString1+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_intToString1_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_intToString1_num+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__intToString1+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;simple_calculator.c,84 :: 		num/=10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_intToString1_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_intToString1_num+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_intToString1_num+0
	MOVF       R0+1, 0
	MOVWF      FARG_intToString1_num+1
;simple_calculator.c,85 :: 		position--;
	MOVLW      1
	SUBWF      intToString1_position_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       intToString1_position_L0+1, 1
;simple_calculator.c,86 :: 		}
	GOTO       L_intToString126
L_intToString127:
;simple_calculator.c,87 :: 		}
L_end_intToString1:
	RETURN
; end of _intToString1

_main:

;simple_calculator.c,96 :: 		void main() {
;simple_calculator.c,97 :: 		opt = 0;                                 // Reset counter
	CLRF       _opt+0
;simple_calculator.c,98 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;simple_calculator.c,99 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;simple_calculator.c,100 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;simple_calculator.c,101 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;simple_calculator.c,102 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;simple_calculator.c,103 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;simple_calculator.c,105 :: 		while(1){
L_main30:
;simple_calculator.c,109 :: 		}
	GOTO       L_main30
;simple_calculator.c,110 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
