
_keyPad:

;simple_calculator.c,26 :: 		int keyPad(){
;simple_calculator.c,28 :: 		do
L_keyPad0:
;simple_calculator.c,30 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;simple_calculator.c,31 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keyPad0
;simple_calculator.c,33 :: 		switch (kp) {
	GOTO       L_keyPad3
;simple_calculator.c,35 :: 		case  1: return 55; break; // 7        // Uncomment this block for keypad4x4
L_keyPad5:
	MOVLW      55
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,36 :: 		case  2: return 56; break; // 8
L_keyPad6:
	MOVLW      56
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,37 :: 		case  3: return 57; break; // 9
L_keyPad7:
	MOVLW      57
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,38 :: 		case  4: return 65; break; // A
L_keyPad8:
	MOVLW      65
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,39 :: 		case  5: return 52; break; // 4
L_keyPad9:
	MOVLW      52
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,40 :: 		case  6: return 53; break; // 5
L_keyPad10:
	MOVLW      53
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,42 :: 		case  7: return 54; break; // 6
L_keyPad11:
	MOVLW      54
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,43 :: 		case  8: return 66; break; // B
L_keyPad12:
	MOVLW      66
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,44 :: 		case  9: return 49; break; // 1
L_keyPad13:
	MOVLW      49
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,45 :: 		case 10: return 50; break; // 2
L_keyPad14:
	MOVLW      50
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,46 :: 		case 11: return 51; break; // 3
L_keyPad15:
	MOVLW      51
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,47 :: 		case 12: return 67; break; // C
L_keyPad16:
	MOVLW      67
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,48 :: 		case 13: return 42; break; // *
L_keyPad17:
	MOVLW      42
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,49 :: 		case 14: return 48; break; // 0
L_keyPad18:
	MOVLW      48
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,50 :: 		case 15: return 35; break; // #
L_keyPad19:
	MOVLW      35
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,51 :: 		case 16: return 68; break; // D
L_keyPad20:
	MOVLW      68
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_keyPad
;simple_calculator.c,53 :: 		}
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
;simple_calculator.c,54 :: 		}
L_end_keyPad:
	RETURN
; end of _keyPad

_main:

;simple_calculator.c,62 :: 		void main() {
;simple_calculator.c,64 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;simple_calculator.c,65 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;simple_calculator.c,66 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;simple_calculator.c,67 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;simple_calculator.c,68 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;simple_calculator.c,69 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;simple_calculator.c,70 :: 		TRISC=0X00;
	CLRF       TRISC+0
;simple_calculator.c,71 :: 		PORTC=0x00;
	CLRF       PORTC+0
;simple_calculator.c,73 :: 		while(1){
L_main21:
;simple_calculator.c,76 :: 		while(cnt<sizeof(nums)){
L_main23:
	MOVLW      128
	XORWF      _cnt+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main97
	MOVLW      2
	SUBWF      _cnt+0, 0
L__main97:
	BTFSC      STATUS+0, 0
	GOTO       L_main24
;simple_calculator.c,77 :: 		char kp1= keyPad();
	CALL       _keyPad+0
	MOVF       R0+0, 0
	MOVWF      main_kp1_L2+0
;simple_calculator.c,78 :: 		nums[cnt]=kp1;
	MOVF       _cnt+0, 0
	ADDLW      _nums+0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;simple_calculator.c,79 :: 		LCD_CHR(1,1,kp1);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_kp1_L2+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;simple_calculator.c,80 :: 		cnt++;
	INCF       _cnt+0, 1
	BTFSC      STATUS+0, 2
	INCF       _cnt+1, 1
;simple_calculator.c,81 :: 		}
	GOTO       L_main23
L_main24:
;simple_calculator.c,82 :: 		if((nums[0]==56 && nums[1]==57)
	MOVF       _nums+0, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L__main94
	MOVF       _nums+1, 0
	XORLW      57
	BTFSS      STATUS+0, 2
	GOTO       L__main94
	GOTO       L__main92
;simple_calculator.c,83 :: 		|| (nums[0]==57 && nums[1]==56)
L__main94:
	MOVF       _nums+0, 0
	XORLW      57
	BTFSS      STATUS+0, 2
	GOTO       L__main93
	MOVF       _nums+1, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L__main93
	GOTO       L__main92
L__main93:
	GOTO       L_main31
;simple_calculator.c,84 :: 		){
L__main92:
;simple_calculator.c,85 :: 		LCD_OUT(1,1,"ZEC & ALU:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_simple_calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;simple_calculator.c,86 :: 		if(i>3)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main98
	MOVF       _i+0, 0
	SUBLW      3
L__main98:
	BTFSC      STATUS+0, 0
	GOTO       L_main32
;simple_calculator.c,87 :: 		i=0;
	CLRF       _i+0
	CLRF       _i+1
L_main32:
;simple_calculator.c,89 :: 		if(i>=0 && i<=3){
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main99
	MOVLW      0
	SUBWF      _i+0, 0
L__main99:
	BTFSS      STATUS+0, 0
	GOTO       L_main35
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main100
	MOVF       _i+0, 0
	SUBLW      3
L__main100:
	BTFSS      STATUS+0, 0
	GOTO       L_main35
L__main91:
;simple_calculator.c,90 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
	NOP
;simple_calculator.c,91 :: 		LCD_CHR(1,15,lcdNums[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _lcdNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;simple_calculator.c,92 :: 		portc=segNums[i];
	MOVF       _i+0, 0
	ADDLW      _segNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;simple_calculator.c,93 :: 		}
L_main35:
;simple_calculator.c,96 :: 		}
	GOTO       L_main37
L_main31:
;simple_calculator.c,97 :: 		else if((nums[0]==53 && nums[1]==56)
	MOVF       _nums+0, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L__main90
	MOVF       _nums+1, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L__main90
	GOTO       L__main88
;simple_calculator.c,98 :: 		|| (nums[0]==56 && nums[1]==53)
L__main90:
	MOVF       _nums+0, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L__main89
	MOVF       _nums+1, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L__main89
	GOTO       L__main88
L__main89:
	GOTO       L_main44
;simple_calculator.c,99 :: 		){
L__main88:
;simple_calculator.c,100 :: 		LCD_OUT(1,1,"Dao & ZEC:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_simple_calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;simple_calculator.c,101 :: 		if(i>5 )
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main101
	MOVF       _i+0, 0
	SUBLW      5
L__main101:
	BTFSC      STATUS+0, 0
	GOTO       L_main45
;simple_calculator.c,102 :: 		{i=3;}
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main45:
;simple_calculator.c,104 :: 		if(i>=3 && i<=5){
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main102
	MOVLW      3
	SUBWF      _i+0, 0
L__main102:
	BTFSS      STATUS+0, 0
	GOTO       L_main48
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main103
	MOVF       _i+0, 0
	SUBLW      5
L__main103:
	BTFSS      STATUS+0, 0
	GOTO       L_main48
L__main87:
;simple_calculator.c,105 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main49:
	DECFSZ     R13+0, 1
	GOTO       L_main49
	DECFSZ     R12+0, 1
	GOTO       L_main49
	DECFSZ     R11+0, 1
	GOTO       L_main49
	NOP
	NOP
;simple_calculator.c,106 :: 		LCD_CHR(1,15,lcdNums[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _lcdNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;simple_calculator.c,107 :: 		portc=segNums[i];
	MOVF       _i+0, 0
	ADDLW      _segNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;simple_calculator.c,108 :: 		}
L_main48:
;simple_calculator.c,109 :: 		}
	GOTO       L_main50
L_main44:
;simple_calculator.c,111 :: 		else if((nums[0]==57 && nums[1]==53)
	MOVF       _nums+0, 0
	XORLW      57
	BTFSS      STATUS+0, 2
	GOTO       L__main86
	MOVF       _nums+1, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L__main86
	GOTO       L__main84
;simple_calculator.c,112 :: 		|| (nums[0]==53 && nums[1]==57)
L__main86:
	MOVF       _nums+0, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L__main85
	MOVF       _nums+1, 0
	XORLW      57
	BTFSS      STATUS+0, 2
	GOTO       L__main85
	GOTO       L__main84
L__main85:
	GOTO       L_main57
;simple_calculator.c,113 :: 		){
L__main84:
;simple_calculator.c,114 :: 		LCD_OUT(1,1,"ALUTEYI & DA0");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_simple_calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;simple_calculator.c,115 :: 		if(i<6 || i>8){
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main104
	MOVLW      6
	SUBWF      _i+0, 0
L__main104:
	BTFSS      STATUS+0, 0
	GOTO       L__main83
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main105
	MOVF       _i+0, 0
	SUBLW      8
L__main105:
	BTFSS      STATUS+0, 0
	GOTO       L__main83
	GOTO       L_main60
L__main83:
;simple_calculator.c,116 :: 		i=6;
	MOVLW      6
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;simple_calculator.c,118 :: 		}
	GOTO       L_main61
L_main60:
;simple_calculator.c,121 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main62:
	DECFSZ     R13+0, 1
	GOTO       L_main62
	DECFSZ     R12+0, 1
	GOTO       L_main62
	DECFSZ     R11+0, 1
	GOTO       L_main62
	NOP
	NOP
;simple_calculator.c,122 :: 		LCD_CHR(1,15,lcdNums[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _lcdNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;simple_calculator.c,123 :: 		portc=segNums[i];
	MOVF       _i+0, 0
	ADDLW      _segNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;simple_calculator.c,124 :: 		}
L_main61:
;simple_calculator.c,125 :: 		}
	GOTO       L_main63
L_main57:
;simple_calculator.c,126 :: 		else if((nums[0]==54 && nums[1]==56)
	MOVF       _nums+0, 0
	XORLW      54
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	MOVF       _nums+1, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L__main82
	GOTO       L__main80
;simple_calculator.c,127 :: 		|| (nums[0]==54 && nums[1]==56)
L__main82:
	MOVF       _nums+0, 0
	XORLW      54
	BTFSS      STATUS+0, 2
	GOTO       L__main81
	MOVF       _nums+1, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L__main81
	GOTO       L__main80
L__main81:
	GOTO       L_main70
;simple_calculator.c,128 :: 		){
L__main80:
;simple_calculator.c,129 :: 		LCD_OUT(1,1,"BAULU & ZEC");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_simple_calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;simple_calculator.c,130 :: 		if(i<7 || i>9){
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main106
	MOVLW      7
	SUBWF      _i+0, 0
L__main106:
	BTFSS      STATUS+0, 0
	GOTO       L__main79
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main107
	MOVF       _i+0, 0
	SUBLW      9
L__main107:
	BTFSS      STATUS+0, 0
	GOTO       L__main79
	GOTO       L_main73
L__main79:
;simple_calculator.c,131 :: 		i=6;
	MOVLW      6
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;simple_calculator.c,132 :: 		}
L_main73:
;simple_calculator.c,133 :: 		if(i>=7 && i<=8){
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main108
	MOVLW      7
	SUBWF      _i+0, 0
L__main108:
	BTFSS      STATUS+0, 0
	GOTO       L_main76
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main109
	MOVF       _i+0, 0
	SUBLW      8
L__main109:
	BTFSS      STATUS+0, 0
	GOTO       L_main76
L__main78:
;simple_calculator.c,134 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main77:
	DECFSZ     R13+0, 1
	GOTO       L_main77
	DECFSZ     R12+0, 1
	GOTO       L_main77
	DECFSZ     R11+0, 1
	GOTO       L_main77
	NOP
	NOP
;simple_calculator.c,135 :: 		LCD_CHR(1,15,lcdNums[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _lcdNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;simple_calculator.c,136 :: 		portc=segNums[i];
	MOVF       _i+0, 0
	ADDLW      _segNums+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;simple_calculator.c,137 :: 		}
L_main76:
;simple_calculator.c,138 :: 		}
L_main70:
L_main63:
L_main50:
L_main37:
;simple_calculator.c,140 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;simple_calculator.c,141 :: 		}
	GOTO       L_main21
;simple_calculator.c,142 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
