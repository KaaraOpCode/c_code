
_keypad:

;assignment_four.c,22 :: 		char keypad(){
;assignment_four.c,25 :: 		do
L_keypad0:
;assignment_four.c,27 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      keypad_kp_L0+0
;assignment_four.c,28 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keypad0
;assignment_four.c,30 :: 		switch (kp) {
	GOTO       L_keypad3
;assignment_four.c,36 :: 		case  1: kp = 49; break; // 1        // Uncomment this block for keypad4x4
L_keypad5:
	MOVLW      49
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,37 :: 		case  2: kp = 50; break; // 2
L_keypad6:
	MOVLW      50
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,38 :: 		case  3: kp = 51; break; // 3
L_keypad7:
	MOVLW      51
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,39 :: 		case  4: kp = 65; break; // A     (/)
L_keypad8:
	MOVLW      65
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,40 :: 		case  5: kp = 52; break; // 4
L_keypad9:
	MOVLW      52
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,41 :: 		case  6: kp = 53; break; // 5
L_keypad10:
	MOVLW      53
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,42 :: 		case  7: kp = 54; break; // 6
L_keypad11:
	MOVLW      54
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,43 :: 		case  8: kp = 66; break; // B      (*)
L_keypad12:
	MOVLW      66
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,44 :: 		case  9: kp = 55; break; // 7
L_keypad13:
	MOVLW      55
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,45 :: 		case 10: kp = 56; break; // 8
L_keypad14:
	MOVLW      56
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,46 :: 		case 11: kp = 57; break; // 9
L_keypad15:
	MOVLW      57
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,47 :: 		case 12: kp = 67; break; // C     (-)
L_keypad16:
	MOVLW      67
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,48 :: 		case 13: kp = 42; break; // *
L_keypad17:
	MOVLW      42
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,49 :: 		case 14: kp = 48; break; // 0
L_keypad18:
	MOVLW      48
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,50 :: 		case 15: kp = 35; break; // #     (=)
L_keypad19:
	MOVLW      35
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,51 :: 		case 16: kp = 68; break; // D     (+)
L_keypad20:
	MOVLW      68
	MOVWF      keypad_kp_L0+0
	GOTO       L_keypad4
;assignment_four.c,53 :: 		}
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
;assignment_four.c,54 :: 		return kp;
	MOVF       keypad_kp_L0+0, 0
	MOVWF      R0+0
;assignment_four.c,56 :: 		}
L_end_keypad:
	RETURN
; end of _keypad

_flusAll:

;assignment_four.c,58 :: 		void flusAll(){
;assignment_four.c,59 :: 		int i=0;
	CLRF       flusAll_i_L0+0
	CLRF       flusAll_i_L0+1
;assignment_four.c,60 :: 		for(;i<sizeof(input);i++){
L_flusAll21:
	MOVLW      128
	XORWF      flusAll_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__flusAll99
	MOVLW      6
	SUBWF      flusAll_i_L0+0, 0
L__flusAll99:
	BTFSC      STATUS+0, 0
	GOTO       L_flusAll22
;assignment_four.c,61 :: 		input[i] = '\0';
	MOVF       flusAll_i_L0+0, 0
	ADDLW      _input+0
	MOVWF      FSR
	CLRF       INDF+0
;assignment_four.c,60 :: 		for(;i<sizeof(input);i++){
	INCF       flusAll_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       flusAll_i_L0+1, 1
;assignment_four.c,62 :: 		}
	GOTO       L_flusAll21
L_flusAll22:
;assignment_four.c,63 :: 		i=0;
	CLRF       flusAll_i_L0+0
	CLRF       flusAll_i_L0+1
;assignment_four.c,64 :: 		for(;i<sizeof(output);i++){
L_flusAll24:
	MOVLW      128
	XORWF      flusAll_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__flusAll100
	MOVLW      20
	SUBWF      flusAll_i_L0+0, 0
L__flusAll100:
	BTFSC      STATUS+0, 0
	GOTO       L_flusAll25
;assignment_four.c,65 :: 		output[i]='\0';
	MOVF       flusAll_i_L0+0, 0
	ADDLW      _output+0
	MOVWF      FSR
	CLRF       INDF+0
;assignment_four.c,64 :: 		for(;i<sizeof(output);i++){
	INCF       flusAll_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       flusAll_i_L0+1, 1
;assignment_four.c,66 :: 		}
	GOTO       L_flusAll24
L_flusAll25:
;assignment_four.c,67 :: 		}
L_end_flusAll:
	RETURN
; end of _flusAll

_segment7Display:

;assignment_four.c,68 :: 		void segment7Display(int value){
;assignment_four.c,69 :: 		int display1[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
	MOVLW      63
	MOVWF      segment7Display_display1_L0+0
	MOVLW      0
	MOVWF      segment7Display_display1_L0+1
	MOVLW      6
	MOVWF      segment7Display_display1_L0+2
	MOVLW      0
	MOVWF      segment7Display_display1_L0+3
	MOVLW      91
	MOVWF      segment7Display_display1_L0+4
	MOVLW      0
	MOVWF      segment7Display_display1_L0+5
	MOVLW      79
	MOVWF      segment7Display_display1_L0+6
	MOVLW      0
	MOVWF      segment7Display_display1_L0+7
	MOVLW      102
	MOVWF      segment7Display_display1_L0+8
	MOVLW      0
	MOVWF      segment7Display_display1_L0+9
	MOVLW      109
	MOVWF      segment7Display_display1_L0+10
	MOVLW      0
	MOVWF      segment7Display_display1_L0+11
	MOVLW      125
	MOVWF      segment7Display_display1_L0+12
	MOVLW      0
	MOVWF      segment7Display_display1_L0+13
	MOVLW      7
	MOVWF      segment7Display_display1_L0+14
	MOVLW      0
	MOVWF      segment7Display_display1_L0+15
	MOVLW      127
	MOVWF      segment7Display_display1_L0+16
	MOVLW      0
	MOVWF      segment7Display_display1_L0+17
	MOVLW      111
	MOVWF      segment7Display_display1_L0+18
	MOVLW      0
	MOVWF      segment7Display_display1_L0+19
;assignment_four.c,71 :: 		PORTC = display1[value];
	MOVF       FARG_segment7Display_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_segment7Display_value+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      segment7Display_display1_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;assignment_four.c,72 :: 		}
L_end_segment7Display:
	RETURN
; end of _segment7Display

_displayType:

;assignment_four.c,73 :: 		void displayType(char kp){
;assignment_four.c,74 :: 		if((kp>=48 && kp<=57 )||(kp==65 || kp == 66 || kp == 67 || kp == 68 || kp == 35)){
	MOVLW      48
	SUBWF      FARG_displayType_kp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__displayType93
	MOVF       FARG_displayType_kp+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L__displayType93
	GOTO       L__displayType91
L__displayType93:
	MOVF       FARG_displayType_kp+0, 0
	XORLW      65
	BTFSC      STATUS+0, 2
	GOTO       L__displayType91
	MOVF       FARG_displayType_kp+0, 0
	XORLW      66
	BTFSC      STATUS+0, 2
	GOTO       L__displayType91
	MOVF       FARG_displayType_kp+0, 0
	XORLW      67
	BTFSC      STATUS+0, 2
	GOTO       L__displayType91
	MOVF       FARG_displayType_kp+0, 0
	XORLW      68
	BTFSC      STATUS+0, 2
	GOTO       L__displayType91
	MOVF       FARG_displayType_kp+0, 0
	XORLW      35
	BTFSC      STATUS+0, 2
	GOTO       L__displayType91
L__displayType92:
	GOTO       L_displayType33
L__displayType91:
;assignment_four.c,75 :: 		if(kp==65){
	MOVF       FARG_displayType_kp+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_displayType34
;assignment_four.c,76 :: 		LCD_CHR_CP('/');   }
	MOVLW      47
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	GOTO       L_displayType35
L_displayType34:
;assignment_four.c,77 :: 		else if(kp == 66){
	MOVF       FARG_displayType_kp+0, 0
	XORLW      66
	BTFSS      STATUS+0, 2
	GOTO       L_displayType36
;assignment_four.c,78 :: 		LCD_CHR_CP('*');
	MOVLW      42
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;assignment_four.c,79 :: 		}
	GOTO       L_displayType37
L_displayType36:
;assignment_four.c,80 :: 		else if(kp == 67){
	MOVF       FARG_displayType_kp+0, 0
	XORLW      67
	BTFSS      STATUS+0, 2
	GOTO       L_displayType38
;assignment_four.c,81 :: 		LCD_CHR_CP('-');
	MOVLW      45
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;assignment_four.c,82 :: 		}
	GOTO       L_displayType39
L_displayType38:
;assignment_four.c,83 :: 		else if(kp==68){
	MOVF       FARG_displayType_kp+0, 0
	XORLW      68
	BTFSS      STATUS+0, 2
	GOTO       L_displayType40
;assignment_four.c,84 :: 		LCD_CHR_CP('+');
	MOVLW      43
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;assignment_four.c,85 :: 		}
	GOTO       L_displayType41
L_displayType40:
;assignment_four.c,86 :: 		else if(kp ==35){
	MOVF       FARG_displayType_kp+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_displayType42
;assignment_four.c,87 :: 		LCD_CHR_CP('=');
	MOVLW      61
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;assignment_four.c,88 :: 		}
	GOTO       L_displayType43
L_displayType42:
;assignment_four.c,90 :: 		if(kp>=48 && kp <= 57){
	MOVLW      48
	SUBWF      FARG_displayType_kp+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_displayType46
	MOVF       FARG_displayType_kp+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_displayType46
L__displayType90:
;assignment_four.c,91 :: 		LCD_CHR_CP(kp);
	MOVF       FARG_displayType_kp+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;assignment_four.c,92 :: 		segment7Display(kp-48);
	MOVLW      48
	SUBWF      FARG_displayType_kp+0, 0
	MOVWF      FARG_segment7Display_value+0
	CLRF       FARG_segment7Display_value+1
	BTFSS      STATUS+0, 0
	DECF       FARG_segment7Display_value+1, 1
	CALL       _segment7Display+0
;assignment_four.c,93 :: 		}
L_displayType46:
;assignment_four.c,94 :: 		}
L_displayType43:
L_displayType41:
L_displayType39:
L_displayType37:
L_displayType35:
;assignment_four.c,95 :: 		}
L_displayType33:
;assignment_four.c,96 :: 		}
L_end_displayType:
	RETURN
; end of _displayType

_counDigits:

;assignment_four.c,97 :: 		long counDigits(long value){
;assignment_four.c,99 :: 		long cnt = 0;
	CLRF       counDigits_cnt_L0+0
	CLRF       counDigits_cnt_L0+1
	CLRF       counDigits_cnt_L0+2
	CLRF       counDigits_cnt_L0+3
;assignment_four.c,100 :: 		long num =(long)value/10;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       FARG_counDigits_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_counDigits_value+1, 0
	MOVWF      R0+1
	MOVF       FARG_counDigits_value+2, 0
	MOVWF      R0+2
	MOVF       FARG_counDigits_value+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      counDigits_num_L0+0
	MOVF       R0+1, 0
	MOVWF      counDigits_num_L0+1
	MOVF       R0+2, 0
	MOVWF      counDigits_num_L0+2
	MOVF       R0+3, 0
	MOVWF      counDigits_num_L0+3
;assignment_four.c,101 :: 		cnt=1;
	MOVLW      1
	MOVWF      counDigits_cnt_L0+0
	CLRF       counDigits_cnt_L0+1
	CLRF       counDigits_cnt_L0+2
	CLRF       counDigits_cnt_L0+3
;assignment_four.c,102 :: 		while(num!=0){
L_counDigits47:
	MOVLW      0
	MOVWF      R0+0
	XORWF      counDigits_num_L0+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counDigits104
	MOVF       R0+0, 0
	XORWF      counDigits_num_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counDigits104
	MOVF       R0+0, 0
	XORWF      counDigits_num_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counDigits104
	MOVF       counDigits_num_L0+0, 0
	XORLW      0
L__counDigits104:
	BTFSC      STATUS+0, 2
	GOTO       L_counDigits48
;assignment_four.c,103 :: 		num /= 10;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       counDigits_num_L0+0, 0
	MOVWF      R0+0
	MOVF       counDigits_num_L0+1, 0
	MOVWF      R0+1
	MOVF       counDigits_num_L0+2, 0
	MOVWF      R0+2
	MOVF       counDigits_num_L0+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      counDigits_num_L0+0
	MOVF       R0+1, 0
	MOVWF      counDigits_num_L0+1
	MOVF       R0+2, 0
	MOVWF      counDigits_num_L0+2
	MOVF       R0+3, 0
	MOVWF      counDigits_num_L0+3
;assignment_four.c,104 :: 		cnt++;
	MOVF       counDigits_cnt_L0+0, 0
	MOVWF      R0+0
	MOVF       counDigits_cnt_L0+1, 0
	MOVWF      R0+1
	MOVF       counDigits_cnt_L0+2, 0
	MOVWF      R0+2
	MOVF       counDigits_cnt_L0+3, 0
	MOVWF      R0+3
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
	BTFSC      STATUS+0, 2
	INCF       R0+2, 1
	BTFSC      STATUS+0, 2
	INCF       R0+3, 1
	MOVF       R0+0, 0
	MOVWF      counDigits_cnt_L0+0
	MOVF       R0+1, 0
	MOVWF      counDigits_cnt_L0+1
	MOVF       R0+2, 0
	MOVWF      counDigits_cnt_L0+2
	MOVF       R0+3, 0
	MOVWF      counDigits_cnt_L0+3
;assignment_four.c,105 :: 		}
	GOTO       L_counDigits47
L_counDigits48:
;assignment_four.c,106 :: 		return cnt;
	MOVF       counDigits_cnt_L0+0, 0
	MOVWF      R0+0
	MOVF       counDigits_cnt_L0+1, 0
	MOVWF      R0+1
	MOVF       counDigits_cnt_L0+2, 0
	MOVWF      R0+2
	MOVF       counDigits_cnt_L0+3, 0
	MOVWF      R0+3
;assignment_four.c,107 :: 		}
L_end_counDigits:
	RETURN
; end of _counDigits

_intCharArrConvert:

;assignment_four.c,108 :: 		void intCharArrConvert(long num,char txt[],int start,int end){
;assignment_four.c,109 :: 		int i=0;
	CLRF       intCharArrConvert_i_L0+0
	CLRF       intCharArrConvert_i_L0+1
;assignment_four.c,111 :: 		i=end-1;
	MOVLW      1
	SUBWF      FARG_intCharArrConvert_end+0, 0
	MOVWF      intCharArrConvert_i_L0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_intCharArrConvert_end+1, 0
	MOVWF      intCharArrConvert_i_L0+1
;assignment_four.c,113 :: 		while(i >= start){
L_intCharArrConvert49:
	MOVLW      128
	XORWF      intCharArrConvert_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_intCharArrConvert_start+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__intCharArrConvert106
	MOVF       FARG_intCharArrConvert_start+0, 0
	SUBWF      intCharArrConvert_i_L0+0, 0
L__intCharArrConvert106:
	BTFSS      STATUS+0, 0
	GOTO       L_intCharArrConvert50
;assignment_four.c,114 :: 		txt[i]=(num%10)+48;
	MOVF       intCharArrConvert_i_L0+0, 0
	ADDWF      FARG_intCharArrConvert_txt+0, 0
	MOVWF      FLOC__intCharArrConvert+0
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       FARG_intCharArrConvert_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_intCharArrConvert_num+1, 0
	MOVWF      R0+1
	MOVF       FARG_intCharArrConvert_num+2, 0
	MOVWF      R0+2
	MOVF       FARG_intCharArrConvert_num+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__intCharArrConvert+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;assignment_four.c,115 :: 		num/=10;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       FARG_intCharArrConvert_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_intCharArrConvert_num+1, 0
	MOVWF      R0+1
	MOVF       FARG_intCharArrConvert_num+2, 0
	MOVWF      R0+2
	MOVF       FARG_intCharArrConvert_num+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_intCharArrConvert_num+0
	MOVF       R0+1, 0
	MOVWF      FARG_intCharArrConvert_num+1
	MOVF       R0+2, 0
	MOVWF      FARG_intCharArrConvert_num+2
	MOVF       R0+3, 0
	MOVWF      FARG_intCharArrConvert_num+3
;assignment_four.c,116 :: 		i--;
	MOVLW      1
	SUBWF      intCharArrConvert_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       intCharArrConvert_i_L0+1, 1
;assignment_four.c,117 :: 		}
	GOTO       L_intCharArrConvert49
L_intCharArrConvert50:
;assignment_four.c,120 :: 		}
L_end_intCharArrConvert:
	RETURN
; end of _intCharArrConvert

_floatToCharArrConvert:

;assignment_four.c,121 :: 		void floatToCharArrConvert(double num){
;assignment_four.c,124 :: 		int cnt1=0;
	CLRF       floatToCharArrConvert_cnt1_L0+0
	CLRF       floatToCharArrConvert_cnt1_L0+1
	CLRF       floatToCharArrConvert_i_L0+0
	CLRF       floatToCharArrConvert_i_L0+1
;assignment_four.c,129 :: 		intExtract = (long)num;
	MOVF       FARG_floatToCharArrConvert_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_floatToCharArrConvert_num+1, 0
	MOVWF      R0+1
	MOVF       FARG_floatToCharArrConvert_num+2, 0
	MOVWF      R0+2
	MOVF       FARG_floatToCharArrConvert_num+3, 0
	MOVWF      R0+3
	CALL       _double2longint+0
	MOVF       R0+0, 0
	MOVWF      floatToCharArrConvert_intExtract_L0+0
	MOVF       R0+1, 0
	MOVWF      floatToCharArrConvert_intExtract_L0+1
	MOVF       R0+2, 0
	MOVWF      floatToCharArrConvert_intExtract_L0+2
	MOVF       R0+3, 0
	MOVWF      floatToCharArrConvert_intExtract_L0+3
;assignment_four.c,130 :: 		cnt = counDigits(intExtract);
	MOVF       R0+0, 0
	MOVWF      FARG_counDigits_value+0
	MOVF       R0+1, 0
	MOVWF      FARG_counDigits_value+1
	MOVF       R0+2, 0
	MOVWF      FARG_counDigits_value+2
	MOVF       R0+3, 0
	MOVWF      FARG_counDigits_value+3
	CALL       _counDigits+0
	MOVF       R0+0, 0
	MOVWF      floatToCharArrConvert_cnt_L0+0
	MOVF       R0+1, 0
	MOVWF      floatToCharArrConvert_cnt_L0+1
;assignment_four.c,132 :: 		floatPart = (num - intExtract)*100;
	MOVF       floatToCharArrConvert_intExtract_L0+0, 0
	MOVWF      R0+0
	MOVF       floatToCharArrConvert_intExtract_L0+1, 0
	MOVWF      R0+1
	MOVF       floatToCharArrConvert_intExtract_L0+2, 0
	MOVWF      R0+2
	MOVF       floatToCharArrConvert_intExtract_L0+3, 0
	MOVWF      R0+3
	CALL       _longint2double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FARG_floatToCharArrConvert_num+0, 0
	MOVWF      R0+0
	MOVF       FARG_floatToCharArrConvert_num+1, 0
	MOVWF      R0+1
	MOVF       FARG_floatToCharArrConvert_num+2, 0
	MOVWF      R0+2
	MOVF       FARG_floatToCharArrConvert_num+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2longint+0
	MOVF       R0+0, 0
	MOVWF      floatToCharArrConvert_floatPart_L0+0
	MOVF       R0+1, 0
	MOVWF      floatToCharArrConvert_floatPart_L0+1
	MOVF       R0+2, 0
	MOVWF      floatToCharArrConvert_floatPart_L0+2
	MOVF       R0+3, 0
	MOVWF      floatToCharArrConvert_floatPart_L0+3
;assignment_four.c,134 :: 		cnt1 = counDigits(floatPart);
	MOVF       R0+0, 0
	MOVWF      FARG_counDigits_value+0
	MOVF       R0+1, 0
	MOVWF      FARG_counDigits_value+1
	MOVF       R0+2, 0
	MOVWF      FARG_counDigits_value+2
	MOVF       R0+3, 0
	MOVWF      FARG_counDigits_value+3
	CALL       _counDigits+0
	MOVF       R0+0, 0
	MOVWF      floatToCharArrConvert_cnt1_L0+0
	MOVF       R0+1, 0
	MOVWF      floatToCharArrConvert_cnt1_L0+1
;assignment_four.c,136 :: 		for(;i<sizeof(txt);i++)
L_floatToCharArrConvert51:
	MOVLW      128
	XORWF      floatToCharArrConvert_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__floatToCharArrConvert108
	MOVLW      20
	SUBWF      floatToCharArrConvert_i_L0+0, 0
L__floatToCharArrConvert108:
	BTFSC      STATUS+0, 0
	GOTO       L_floatToCharArrConvert52
;assignment_four.c,137 :: 		txt[i] = '\0';
	MOVF       floatToCharArrConvert_i_L0+0, 0
	ADDLW      floatToCharArrConvert_txt_L0+0
	MOVWF      FSR
	CLRF       INDF+0
;assignment_four.c,136 :: 		for(;i<sizeof(txt);i++)
	INCF       floatToCharArrConvert_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       floatToCharArrConvert_i_L0+1, 1
;assignment_four.c,137 :: 		txt[i] = '\0';
	GOTO       L_floatToCharArrConvert51
L_floatToCharArrConvert52:
;assignment_four.c,138 :: 		intCharArrConvert(intExtract,txt,0,cnt);
	MOVF       floatToCharArrConvert_intExtract_L0+0, 0
	MOVWF      FARG_intCharArrConvert_num+0
	MOVF       floatToCharArrConvert_intExtract_L0+1, 0
	MOVWF      FARG_intCharArrConvert_num+1
	MOVF       floatToCharArrConvert_intExtract_L0+2, 0
	MOVWF      FARG_intCharArrConvert_num+2
	MOVF       floatToCharArrConvert_intExtract_L0+3, 0
	MOVWF      FARG_intCharArrConvert_num+3
	MOVLW      floatToCharArrConvert_txt_L0+0
	MOVWF      FARG_intCharArrConvert_txt+0
	CLRF       FARG_intCharArrConvert_start+0
	CLRF       FARG_intCharArrConvert_start+1
	MOVF       floatToCharArrConvert_cnt_L0+0, 0
	MOVWF      FARG_intCharArrConvert_end+0
	MOVF       floatToCharArrConvert_cnt_L0+1, 0
	MOVWF      FARG_intCharArrConvert_end+1
	CALL       _intCharArrConvert+0
;assignment_four.c,139 :: 		txt[cnt]=46;
	MOVF       floatToCharArrConvert_cnt_L0+0, 0
	ADDLW      floatToCharArrConvert_txt_L0+0
	MOVWF      FSR
	MOVLW      46
	MOVWF      INDF+0
;assignment_four.c,141 :: 		intCharArrConvert(floatPart,txt,cnt+1,cnt+cnt1+1);
	MOVF       floatToCharArrConvert_floatPart_L0+0, 0
	MOVWF      FARG_intCharArrConvert_num+0
	MOVF       floatToCharArrConvert_floatPart_L0+1, 0
	MOVWF      FARG_intCharArrConvert_num+1
	MOVF       floatToCharArrConvert_floatPart_L0+2, 0
	MOVWF      FARG_intCharArrConvert_num+2
	MOVF       floatToCharArrConvert_floatPart_L0+3, 0
	MOVWF      FARG_intCharArrConvert_num+3
	MOVLW      floatToCharArrConvert_txt_L0+0
	MOVWF      FARG_intCharArrConvert_txt+0
	MOVF       floatToCharArrConvert_cnt_L0+0, 0
	ADDLW      1
	MOVWF      FARG_intCharArrConvert_start+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      floatToCharArrConvert_cnt_L0+1, 0
	MOVWF      FARG_intCharArrConvert_start+1
	MOVF       floatToCharArrConvert_cnt1_L0+0, 0
	ADDWF      floatToCharArrConvert_cnt_L0+0, 0
	MOVWF      FARG_intCharArrConvert_end+0
	MOVF       floatToCharArrConvert_cnt_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      floatToCharArrConvert_cnt1_L0+1, 0
	MOVWF      FARG_intCharArrConvert_end+1
	INCF       FARG_intCharArrConvert_end+0, 1
	BTFSC      STATUS+0, 2
	INCF       FARG_intCharArrConvert_end+1, 1
	CALL       _intCharArrConvert+0
;assignment_four.c,143 :: 		i=0;
	CLRF       floatToCharArrConvert_i_L0+0
	CLRF       floatToCharArrConvert_i_L0+1
;assignment_four.c,144 :: 		while(i<sizeof(output)){
L_floatToCharArrConvert54:
	MOVLW      128
	XORWF      floatToCharArrConvert_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__floatToCharArrConvert109
	MOVLW      20
	SUBWF      floatToCharArrConvert_i_L0+0, 0
L__floatToCharArrConvert109:
	BTFSC      STATUS+0, 0
	GOTO       L_floatToCharArrConvert55
;assignment_four.c,145 :: 		output[i] = txt[i];
	MOVF       floatToCharArrConvert_i_L0+0, 0
	ADDLW      _output+0
	MOVWF      R1+0
	MOVF       floatToCharArrConvert_i_L0+0, 0
	ADDLW      floatToCharArrConvert_txt_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;assignment_four.c,146 :: 		i++;
	INCF       floatToCharArrConvert_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       floatToCharArrConvert_i_L0+1, 1
;assignment_four.c,147 :: 		}
	GOTO       L_floatToCharArrConvert54
L_floatToCharArrConvert55:
;assignment_four.c,148 :: 		}
L_end_floatToCharArrConvert:
	RETURN
; end of _floatToCharArrConvert

_displayLessZero:

;assignment_four.c,149 :: 		void displayLessZero(double result){
;assignment_four.c,150 :: 		long num = result*100;
	MOVF       FARG_displayLessZero_result+0, 0
	MOVWF      R0+0
	MOVF       FARG_displayLessZero_result+1, 0
	MOVWF      R0+1
	MOVF       FARG_displayLessZero_result+2, 0
	MOVWF      R0+2
	MOVF       FARG_displayLessZero_result+3, 0
	MOVWF      R0+3
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2longint+0
	MOVF       R0+0, 0
	MOVWF      FLOC__displayLessZero+0
	MOVF       R0+1, 0
	MOVWF      FLOC__displayLessZero+1
	MOVF       R0+2, 0
	MOVWF      FLOC__displayLessZero+2
	MOVF       R0+3, 0
	MOVWF      FLOC__displayLessZero+3
	MOVLW      48
	MOVWF      _output+0
;assignment_four.c,153 :: 		output[1] = 46;
	MOVLW      46
	MOVWF      _output+1
;assignment_four.c,154 :: 		output[3] = (num%10)+48;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       FLOC__displayLessZero+0, 0
	MOVWF      R0+0
	MOVF       FLOC__displayLessZero+1, 0
	MOVWF      R0+1
	MOVF       FLOC__displayLessZero+2, 0
	MOVWF      R0+2
	MOVF       FLOC__displayLessZero+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _output+3
;assignment_four.c,155 :: 		num/=10;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       FLOC__displayLessZero+0, 0
	MOVWF      R0+0
	MOVF       FLOC__displayLessZero+1, 0
	MOVWF      R0+1
	MOVF       FLOC__displayLessZero+2, 0
	MOVWF      R0+2
	MOVF       FLOC__displayLessZero+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
;assignment_four.c,156 :: 		output[2] = (num%10)+48;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _output+2
;assignment_four.c,157 :: 		}
L_end_displayLessZero:
	RETURN
; end of _displayLessZero

_display:

;assignment_four.c,158 :: 		void display(double result){
;assignment_four.c,159 :: 		if(result<1)
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      127
	MOVWF      R4+3
	MOVF       FARG_display_result+0, 0
	MOVWF      R0+0
	MOVF       FARG_display_result+1, 0
	MOVWF      R0+1
	MOVF       FARG_display_result+2, 0
	MOVWF      R0+2
	MOVF       FARG_display_result+3, 0
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_display56
;assignment_four.c,160 :: 		displayLessZero(result);
	MOVF       FARG_display_result+0, 0
	MOVWF      FARG_displayLessZero_result+0
	MOVF       FARG_display_result+1, 0
	MOVWF      FARG_displayLessZero_result+1
	MOVF       FARG_display_result+2, 0
	MOVWF      FARG_displayLessZero_result+2
	MOVF       FARG_display_result+3, 0
	MOVWF      FARG_displayLessZero_result+3
	CALL       _displayLessZero+0
	GOTO       L_display57
L_display56:
;assignment_four.c,162 :: 		floatToCharArrConvert(result);
	MOVF       FARG_display_result+0, 0
	MOVWF      FARG_floatToCharArrConvert_num+0
	MOVF       FARG_display_result+1, 0
	MOVWF      FARG_floatToCharArrConvert_num+1
	MOVF       FARG_display_result+2, 0
	MOVWF      FARG_floatToCharArrConvert_num+2
	MOVF       FARG_display_result+3, 0
	MOVWF      FARG_floatToCharArrConvert_num+3
	CALL       _floatToCharArrConvert+0
L_display57:
;assignment_four.c,163 :: 		LCD_OUT(2,1,output);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _output+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_four.c,164 :: 		}
L_end_display:
	RETURN
; end of _display

_main:

;assignment_four.c,166 :: 		void main() {
;assignment_four.c,167 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_kp_L0+0
	CLRF       main_opt_L0+0
;assignment_four.c,171 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;assignment_four.c,172 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;assignment_four.c,173 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;assignment_four.c,174 :: 		TRISC = 0X00;
	CLRF       TRISC+0
;assignment_four.c,175 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;assignment_four.c,176 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,177 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,178 :: 		Lcd_Out(1, 1, "CALCULATOR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_assignment_four+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_four.c,179 :: 		LCD_OUT(2,1,"");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_assignment_four+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_four.c,180 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;assignment_four.c,181 :: 		flusAll();
	CALL       _flusAll+0
;assignment_four.c,182 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main58:
	DECFSZ     R13+0, 1
	GOTO       L_main58
	DECFSZ     R12+0, 1
	GOTO       L_main58
	DECFSZ     R11+0, 1
	GOTO       L_main58
	NOP
	NOP
;assignment_four.c,183 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,185 :: 		while(1){
L_main59:
;assignment_four.c,187 :: 		kp =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      main_kp_L0+0
;assignment_four.c,189 :: 		if(i>=sizeof(input)+1)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main113
	MOVLW      7
	SUBWF      main_i_L0+0, 0
L__main113:
	BTFSS      STATUS+0, 0
	GOTO       L_main61
;assignment_four.c,190 :: 		continue;
	GOTO       L_main59
L_main61:
;assignment_four.c,192 :: 		if(kp >= 48 && kp<=57)
	MOVLW      48
	SUBWF      main_kp_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main64
	MOVF       main_kp_L0+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_main64
L__main96:
;assignment_four.c,193 :: 		input[i++]=kp;
	MOVF       main_i_L0+0, 0
	ADDLW      _input+0
	MOVWF      FSR
	MOVF       main_kp_L0+0, 0
	MOVWF      INDF+0
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
L_main64:
;assignment_four.c,194 :: 		if(kp >= 65 && kp <= 68)
	MOVLW      65
	SUBWF      main_kp_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main67
	MOVF       main_kp_L0+0, 0
	SUBLW      68
	BTFSS      STATUS+0, 0
	GOTO       L_main67
L__main95:
;assignment_four.c,195 :: 		opt =kp;
	MOVF       main_kp_L0+0, 0
	MOVWF      main_opt_L0+0
L_main67:
;assignment_four.c,196 :: 		displayType(kp);
	MOVF       main_kp_L0+0, 0
	MOVWF      FARG_displayType_kp+0
	CALL       _displayType+0
;assignment_four.c,197 :: 		while(kp==42){
L_main68:
	MOVF       main_kp_L0+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main69
;assignment_four.c,198 :: 		if(i<=0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main114
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main114:
	BTFSS      STATUS+0, 0
	GOTO       L_main70
;assignment_four.c,199 :: 		i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;assignment_four.c,200 :: 		break;
	GOTO       L_main69
;assignment_four.c,201 :: 		}
L_main70:
;assignment_four.c,202 :: 		if(kp>=48 && kp <=57)
	MOVLW      48
	SUBWF      main_kp_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main73
	MOVF       main_kp_L0+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_main73
L__main94:
;assignment_four.c,203 :: 		input[i--]='\0';
	MOVF       main_i_L0+0, 0
	ADDLW      _input+0
	MOVWF      FSR
	CLRF       INDF+0
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
	GOTO       L_main74
L_main73:
;assignment_four.c,205 :: 		opt='\0';
	CLRF       main_opt_L0+0
;assignment_four.c,207 :: 		}
L_main74:
;assignment_four.c,208 :: 		LCD_CMD(_LCD_MOVE_CURSOR_LEFT);
	MOVLW      16
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,209 :: 		LCD_CHR_CP('1');
	MOVLW      49
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;assignment_four.c,210 :: 		kp =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      main_kp_L0+0
;assignment_four.c,212 :: 		LCD_CMD(_LCD_MOVE_CURSOR_LEFT);
	MOVLW      16
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,213 :: 		}
	GOTO       L_main68
L_main69:
;assignment_four.c,214 :: 		if(kp==35){
	MOVF       main_kp_L0+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main75
;assignment_four.c,215 :: 		double num1=((double)((input[0]-48)*100 + (input[1]-48)*10 + (input[2]-48)));
	MOVLW      48
	SUBWF      _input+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVLW      48
	SUBWF      _input+1, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	ADDWF      FLOC__main+0, 0
	MOVWF      R2+0
	MOVF       FLOC__main+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      R2+1
	MOVLW      48
	SUBWF      _input+2, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R2+0, 0
	ADDWF      R0+0, 1
	MOVF       R2+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      main_num1_L2+0
	MOVF       R0+1, 0
	MOVWF      main_num1_L2+1
	MOVF       R0+2, 0
	MOVWF      main_num1_L2+2
	MOVF       R0+3, 0
	MOVWF      main_num1_L2+3
;assignment_four.c,216 :: 		double num2 =( (double)(input[3]-48)*100 + (input[4]-48)*10 + (input[5]-48));
	MOVLW      48
	SUBWF      _input+3, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	CALL       _int2double+0
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
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVLW      48
	SUBWF      _input+4, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	CALL       _int2double+0
	MOVF       FLOC__main+0, 0
	MOVWF      R4+0
	MOVF       FLOC__main+1, 0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R4+2
	MOVF       FLOC__main+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVLW      48
	SUBWF      _input+5, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	CALL       _int2double+0
	MOVF       FLOC__main+0, 0
	MOVWF      R4+0
	MOVF       FLOC__main+1, 0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R4+2
	MOVF       FLOC__main+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      main_num2_L2+0
	MOVF       R0+1, 0
	MOVWF      main_num2_L2+1
	MOVF       R0+2, 0
	MOVWF      main_num2_L2+2
	MOVF       R0+3, 0
	MOVWF      main_num2_L2+3
;assignment_four.c,217 :: 		if(input[4]=='\0' ){
	MOVF       _input+4, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main76
;assignment_four.c,218 :: 		num2 = (double)(input[3]-48)+0;
	MOVLW      48
	SUBWF      _input+3, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      main_num2_L2+0
	MOVF       R0+1, 0
	MOVWF      main_num2_L2+1
	MOVF       R0+2, 0
	MOVWF      main_num2_L2+2
	MOVF       R0+3, 0
	MOVWF      main_num2_L2+3
;assignment_four.c,219 :: 		}
	GOTO       L_main77
L_main76:
;assignment_four.c,220 :: 		else if(input[5]=='\0'){
	MOVF       _input+5, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main78
;assignment_four.c,221 :: 		num2 = (double)(input[3]-48)*100 + (input[4]-48)*10;
	MOVLW      48
	SUBWF      _input+3, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	CALL       _int2double+0
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
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVLW      48
	SUBWF      _input+4, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	CALL       _int2double+0
	MOVF       FLOC__main+0, 0
	MOVWF      R4+0
	MOVF       FLOC__main+1, 0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R4+2
	MOVF       FLOC__main+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      main_num2_L2+0
	MOVF       R0+1, 0
	MOVWF      main_num2_L2+1
	MOVF       R0+2, 0
	MOVWF      main_num2_L2+2
	MOVF       R0+3, 0
	MOVWF      main_num2_L2+3
;assignment_four.c,222 :: 		}
L_main78:
L_main77:
;assignment_four.c,225 :: 		if((input[3]-48)*100 ==0 ){
	MOVLW      48
	SUBWF      _input+3, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main115
	MOVLW      0
	XORWF      R0+0, 0
L__main115:
	BTFSS      STATUS+0, 2
	GOTO       L_main79
;assignment_four.c,226 :: 		num2=0;
	CLRF       main_num2_L2+0
	CLRF       main_num2_L2+1
	CLRF       main_num2_L2+2
	CLRF       main_num2_L2+3
;assignment_four.c,227 :: 		}
L_main79:
;assignment_four.c,228 :: 		if(opt==65)
	MOVF       main_opt_L0+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_main80
;assignment_four.c,231 :: 		if(num2 ==0){
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       main_num2_L2+0, 0
	MOVWF      R0+0
	MOVF       main_num2_L2+1, 0
	MOVWF      R0+1
	MOVF       main_num2_L2+2, 0
	MOVWF      R0+2
	MOVF       main_num2_L2+3, 0
	MOVWF      R0+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main81
;assignment_four.c,232 :: 		flusAll();
	CALL       _flusAll+0
;assignment_four.c,233 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,234 :: 		kp=opt=i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_opt_L0+0
	CLRF       main_kp_L0+0
;assignment_four.c,235 :: 		LCD_OUT(1,1,"INIFITY");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_assignment_four+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;assignment_four.c,236 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main82:
	DECFSZ     R13+0, 1
	GOTO       L_main82
	DECFSZ     R12+0, 1
	GOTO       L_main82
	DECFSZ     R11+0, 1
	GOTO       L_main82
	NOP
	NOP
;assignment_four.c,237 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,238 :: 		continue;
	GOTO       L_main59
;assignment_four.c,239 :: 		}
L_main81:
;assignment_four.c,240 :: 		res =num1/num2;
	MOVF       main_num2_L2+0, 0
	MOVWF      R4+0
	MOVF       main_num2_L2+1, 0
	MOVWF      R4+1
	MOVF       main_num2_L2+2, 0
	MOVWF      R4+2
	MOVF       main_num2_L2+3, 0
	MOVWF      R4+3
	MOVF       main_num1_L2+0, 0
	MOVWF      R0+0
	MOVF       main_num1_L2+1, 0
	MOVWF      R0+1
	MOVF       main_num1_L2+2, 0
	MOVWF      R0+2
	MOVF       main_num1_L2+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      main_res_L0+0
	MOVF       R0+1, 0
	MOVWF      main_res_L0+1
	MOVF       R0+2, 0
	MOVWF      main_res_L0+2
	MOVF       R0+3, 0
	MOVWF      main_res_L0+3
;assignment_four.c,241 :: 		}
	GOTO       L_main83
L_main80:
;assignment_four.c,242 :: 		else if(opt ==66){
	MOVF       main_opt_L0+0, 0
	XORLW      66
	BTFSS      STATUS+0, 2
	GOTO       L_main84
;assignment_four.c,243 :: 		res =num1 * num2;
	MOVF       main_num1_L2+0, 0
	MOVWF      R0+0
	MOVF       main_num1_L2+1, 0
	MOVWF      R0+1
	MOVF       main_num1_L2+2, 0
	MOVWF      R0+2
	MOVF       main_num1_L2+3, 0
	MOVWF      R0+3
	MOVF       main_num2_L2+0, 0
	MOVWF      R4+0
	MOVF       main_num2_L2+1, 0
	MOVWF      R4+1
	MOVF       main_num2_L2+2, 0
	MOVWF      R4+2
	MOVF       main_num2_L2+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      main_res_L0+0
	MOVF       R0+1, 0
	MOVWF      main_res_L0+1
	MOVF       R0+2, 0
	MOVWF      main_res_L0+2
	MOVF       R0+3, 0
	MOVWF      main_res_L0+3
;assignment_four.c,244 :: 		}
	GOTO       L_main85
L_main84:
;assignment_four.c,245 :: 		else if(opt ==67){
	MOVF       main_opt_L0+0, 0
	XORLW      67
	BTFSS      STATUS+0, 2
	GOTO       L_main86
;assignment_four.c,246 :: 		res  =num1- num2;
	MOVF       main_num2_L2+0, 0
	MOVWF      R4+0
	MOVF       main_num2_L2+1, 0
	MOVWF      R4+1
	MOVF       main_num2_L2+2, 0
	MOVWF      R4+2
	MOVF       main_num2_L2+3, 0
	MOVWF      R4+3
	MOVF       main_num1_L2+0, 0
	MOVWF      R0+0
	MOVF       main_num1_L2+1, 0
	MOVWF      R0+1
	MOVF       main_num1_L2+2, 0
	MOVWF      R0+2
	MOVF       main_num1_L2+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      main_res_L0+0
	MOVF       R0+1, 0
	MOVWF      main_res_L0+1
	MOVF       R0+2, 0
	MOVWF      main_res_L0+2
	MOVF       R0+3, 0
	MOVWF      main_res_L0+3
;assignment_four.c,247 :: 		}
	GOTO       L_main87
L_main86:
;assignment_four.c,248 :: 		else if(opt == 68){
	MOVF       main_opt_L0+0, 0
	XORLW      68
	BTFSS      STATUS+0, 2
	GOTO       L_main88
;assignment_four.c,249 :: 		res  =num1 + num2;;
	MOVF       main_num1_L2+0, 0
	MOVWF      R0+0
	MOVF       main_num1_L2+1, 0
	MOVWF      R0+1
	MOVF       main_num1_L2+2, 0
	MOVWF      R0+2
	MOVF       main_num1_L2+3, 0
	MOVWF      R0+3
	MOVF       main_num2_L2+0, 0
	MOVWF      R4+0
	MOVF       main_num2_L2+1, 0
	MOVWF      R4+1
	MOVF       main_num2_L2+2, 0
	MOVWF      R4+2
	MOVF       main_num2_L2+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      main_res_L0+0
	MOVF       R0+1, 0
	MOVWF      main_res_L0+1
	MOVF       R0+2, 0
	MOVWF      main_res_L0+2
	MOVF       R0+3, 0
	MOVWF      main_res_L0+3
;assignment_four.c,250 :: 		}
L_main88:
L_main87:
L_main85:
L_main83:
;assignment_four.c,252 :: 		display(res);
	MOVF       main_res_L0+0, 0
	MOVWF      FARG_display_result+0
	MOVF       main_res_L0+1, 0
	MOVWF      FARG_display_result+1
	MOVF       main_res_L0+2, 0
	MOVWF      FARG_display_result+2
	MOVF       main_res_L0+3, 0
	MOVWF      FARG_display_result+3
	CALL       _display+0
;assignment_four.c,254 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main89:
	DECFSZ     R13+0, 1
	GOTO       L_main89
	DECFSZ     R12+0, 1
	GOTO       L_main89
	DECFSZ     R11+0, 1
	GOTO       L_main89
	NOP
;assignment_four.c,255 :: 		flusAll();
	CALL       _flusAll+0
;assignment_four.c,256 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;assignment_four.c,257 :: 		kp=opt=i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_opt_L0+0
	CLRF       main_kp_L0+0
;assignment_four.c,258 :: 		}
L_main75:
;assignment_four.c,259 :: 		}
	GOTO       L_main59
;assignment_four.c,261 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
