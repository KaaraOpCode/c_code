
_moveToLeft:

;MyProject.c,2 :: 		void moveToLeft(){
;MyProject.c,3 :: 		PORTA=0X00;
	CLRF       PORTA+0
;MyProject.c,4 :: 		PORTA.RA7=1;
	BSF        PORTA+0, 7
;MyProject.c,5 :: 		DELAY_MS(delay_value);   //RA7
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft0:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft0
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft0
	NOP
;MyProject.c,6 :: 		PORTA.RA7=0;
	BCF        PORTA+0, 7
;MyProject.c,7 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft1:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft1
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft1
	NOP
;MyProject.c,9 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=1){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToLeft4
	BTFSC      PORTB+0, 1
	GOTO       L_moveToLeft4
L__moveToLeft99:
;MyProject.c,10 :: 		return;
	GOTO       L_end_moveToLeft
;MyProject.c,11 :: 		}
L_moveToLeft4:
;MyProject.c,13 :: 		PORTA.RA6=1;
	BSF        PORTA+0, 6
;MyProject.c,14 :: 		DELAY_MS(delay_value);  // RA6
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft5:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft5
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft5
	NOP
;MyProject.c,15 :: 		PORTA.RA6=0;
	BCF        PORTA+0, 6
;MyProject.c,16 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft6:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft6
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft6
	NOP
;MyProject.c,18 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=1){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToLeft9
	BTFSC      PORTB+0, 1
	GOTO       L_moveToLeft9
L__moveToLeft98:
;MyProject.c,19 :: 		return;
	GOTO       L_end_moveToLeft
;MyProject.c,20 :: 		}
L_moveToLeft9:
;MyProject.c,22 :: 		PORTA.RA5=1;
	BSF        PORTA+0, 5
;MyProject.c,23 :: 		DELAY_MS(delay_value);   // RA5
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft10:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft10
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft10
	NOP
;MyProject.c,24 :: 		PORTA.RA5=0;
	BCF        PORTA+0, 5
;MyProject.c,25 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft11:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft11
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft11
	NOP
;MyProject.c,27 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=1){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToLeft14
	BTFSC      PORTB+0, 1
	GOTO       L_moveToLeft14
L__moveToLeft97:
;MyProject.c,28 :: 		return;
	GOTO       L_end_moveToLeft
;MyProject.c,29 :: 		}
L_moveToLeft14:
;MyProject.c,31 :: 		PORTA.RA4=1;
	BSF        PORTA+0, 4
;MyProject.c,32 :: 		DELAY_MS(delay_value);    //RA4
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft15:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft15
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft15
	NOP
;MyProject.c,33 :: 		PORTA.RA4=0;
	BCF        PORTA+0, 4
;MyProject.c,34 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft16:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft16
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft16
	NOP
;MyProject.c,36 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=1){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToLeft19
	BTFSC      PORTB+0, 1
	GOTO       L_moveToLeft19
L__moveToLeft96:
;MyProject.c,37 :: 		return;
	GOTO       L_end_moveToLeft
;MyProject.c,38 :: 		}
L_moveToLeft19:
;MyProject.c,40 :: 		PORTA.RA3=1;
	BSF        PORTA+0, 3
;MyProject.c,41 :: 		DELAY_MS(delay_value);     //RA3
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft20:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft20
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft20
	NOP
;MyProject.c,42 :: 		PORTA.RA3=0;
	BCF        PORTA+0, 3
;MyProject.c,43 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft21:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft21
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft21
	NOP
;MyProject.c,45 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=1){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToLeft24
	BTFSC      PORTB+0, 1
	GOTO       L_moveToLeft24
L__moveToLeft95:
;MyProject.c,46 :: 		return;
	GOTO       L_end_moveToLeft
;MyProject.c,47 :: 		}
L_moveToLeft24:
;MyProject.c,49 :: 		PORTA.RA2=1;
	BSF        PORTA+0, 2
;MyProject.c,50 :: 		DELAY_MS(delay_value);       //RA2
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft25:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft25
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft25
	NOP
;MyProject.c,51 :: 		PORTA.RA2=0;
	BCF        PORTA+0, 2
;MyProject.c,52 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft26:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft26
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft26
	NOP
;MyProject.c,54 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=1){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToLeft29
	BTFSC      PORTB+0, 1
	GOTO       L_moveToLeft29
L__moveToLeft94:
;MyProject.c,55 :: 		return;
	GOTO       L_end_moveToLeft
;MyProject.c,56 :: 		}
L_moveToLeft29:
;MyProject.c,58 :: 		PORTA.RA1=1;
	BSF        PORTA+0, 1
;MyProject.c,59 :: 		DELAY_MS(delay_value);       //RA1
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft30:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft30
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft30
	NOP
;MyProject.c,60 :: 		PORTA.RA1=0;
	BCF        PORTA+0, 1
;MyProject.c,61 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft31:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft31
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft31
	NOP
;MyProject.c,63 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=1){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToLeft34
	BTFSC      PORTB+0, 1
	GOTO       L_moveToLeft34
L__moveToLeft93:
;MyProject.c,64 :: 		return;
	GOTO       L_end_moveToLeft
;MyProject.c,65 :: 		}
L_moveToLeft34:
;MyProject.c,67 :: 		PORTA.RA0=1;
	BSF        PORTA+0, 0
;MyProject.c,68 :: 		DELAY_MS(delay_value);     //RA0
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft35:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft35
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft35
	NOP
;MyProject.c,69 :: 		PORTA.RA0=0;
	BCF        PORTA+0, 0
;MyProject.c,70 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToLeft36:
	DECFSZ     R13+0, 1
	GOTO       L_moveToLeft36
	DECFSZ     R12+0, 1
	GOTO       L_moveToLeft36
	NOP
;MyProject.c,71 :: 		}
L_end_moveToLeft:
	RETURN
; end of _moveToLeft

_moveToRight:

;MyProject.c,72 :: 		void moveToRight(){
;MyProject.c,73 :: 		PORTA=0X00;
	CLRF       PORTA+0
;MyProject.c,74 :: 		PORTA.RA0=1;
	BSF        PORTA+0, 0
;MyProject.c,75 :: 		DELAY_MS(delay_value);     //RA0
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight37:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight37
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight37
	NOP
;MyProject.c,76 :: 		PORTA.RA0=0;
	BCF        PORTA+0, 0
;MyProject.c,77 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight38:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight38
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight38
	NOP
;MyProject.c,80 :: 		if(PORTB.RB0!=0 && PORTB.RB1 !=0){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToRight41
	BTFSS      PORTB+0, 1
	GOTO       L_moveToRight41
L__moveToRight106:
;MyProject.c,81 :: 		return;
	GOTO       L_end_moveToRight
;MyProject.c,82 :: 		}
L_moveToRight41:
;MyProject.c,84 :: 		PORTA.RA1=1;
	BSF        PORTA+0, 1
;MyProject.c,85 :: 		DELAY_MS(delay_value);       //RA1
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight42:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight42
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight42
	NOP
;MyProject.c,86 :: 		PORTA.RA1=0;
	BCF        PORTA+0, 1
;MyProject.c,87 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight43:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight43
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight43
	NOP
;MyProject.c,89 :: 		if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToRight46
	BTFSS      PORTB+0, 1
	GOTO       L_moveToRight46
L__moveToRight105:
;MyProject.c,90 :: 		return;
	GOTO       L_end_moveToRight
;MyProject.c,91 :: 		}
L_moveToRight46:
;MyProject.c,93 :: 		PORTA.RA2=1;
	BSF        PORTA+0, 2
;MyProject.c,94 :: 		DELAY_MS(delay_value);       //RA2
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight47:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight47
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight47
	NOP
;MyProject.c,95 :: 		PORTA.RA2=0;
	BCF        PORTA+0, 2
;MyProject.c,96 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight48:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight48
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight48
	NOP
;MyProject.c,98 :: 		if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToRight51
	BTFSS      PORTB+0, 1
	GOTO       L_moveToRight51
L__moveToRight104:
;MyProject.c,99 :: 		return;
	GOTO       L_end_moveToRight
;MyProject.c,100 :: 		}
L_moveToRight51:
;MyProject.c,102 :: 		PORTA.RA3=1;
	BSF        PORTA+0, 3
;MyProject.c,103 :: 		DELAY_MS(delay_value);     //RA3
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight52:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight52
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight52
	NOP
;MyProject.c,104 :: 		PORTA.RA3=0;
	BCF        PORTA+0, 3
;MyProject.c,105 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight53:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight53
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight53
	NOP
;MyProject.c,107 :: 		if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToRight56
	BTFSS      PORTB+0, 1
	GOTO       L_moveToRight56
L__moveToRight103:
;MyProject.c,108 :: 		return;
	GOTO       L_end_moveToRight
;MyProject.c,109 :: 		}
L_moveToRight56:
;MyProject.c,111 :: 		PORTA.RA4=1;
	BSF        PORTA+0, 4
;MyProject.c,112 :: 		DELAY_MS(delay_value);    //RA4
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight57:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight57
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight57
	NOP
;MyProject.c,113 :: 		PORTA.RA4=0;
	BCF        PORTA+0, 4
;MyProject.c,114 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight58:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight58
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight58
	NOP
;MyProject.c,116 :: 		if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToRight61
	BTFSS      PORTB+0, 1
	GOTO       L_moveToRight61
L__moveToRight102:
;MyProject.c,117 :: 		return;
	GOTO       L_end_moveToRight
;MyProject.c,118 :: 		}
L_moveToRight61:
;MyProject.c,120 :: 		PORTA.RA5=1;
	BSF        PORTA+0, 5
;MyProject.c,121 :: 		DELAY_MS(delay_value);   // RA5
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight62:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight62
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight62
	NOP
;MyProject.c,122 :: 		PORTA.RA5=0;
	BCF        PORTA+0, 5
;MyProject.c,123 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight63:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight63
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight63
	NOP
;MyProject.c,125 :: 		if(PORTB.RB0 !=0 && PORTB.RB1!=0){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToRight66
	BTFSS      PORTB+0, 1
	GOTO       L_moveToRight66
L__moveToRight101:
;MyProject.c,126 :: 		return;
	GOTO       L_end_moveToRight
;MyProject.c,127 :: 		}
L_moveToRight66:
;MyProject.c,129 :: 		PORTA.RA6=1;
	BSF        PORTA+0, 6
;MyProject.c,130 :: 		DELAY_MS(delay_value);  // RA6
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight67:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight67
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight67
	NOP
;MyProject.c,131 :: 		PORTA.RA6=0;
	BCF        PORTA+0, 6
;MyProject.c,132 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight68:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight68
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight68
	NOP
;MyProject.c,134 :: 		if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
	BTFSS      PORTB+0, 0
	GOTO       L_moveToRight71
	BTFSS      PORTB+0, 1
	GOTO       L_moveToRight71
L__moveToRight100:
;MyProject.c,135 :: 		return;
	GOTO       L_end_moveToRight
;MyProject.c,136 :: 		}
L_moveToRight71:
;MyProject.c,138 :: 		PORTA.RA7=1;
	BSF        PORTA+0, 7
;MyProject.c,139 :: 		DELAY_MS(delay_value);   //RA7
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight72:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight72
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight72
	NOP
;MyProject.c,140 :: 		PORTA.RA7=0;
	BCF        PORTA+0, 7
;MyProject.c,141 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_moveToRight73:
	DECFSZ     R13+0, 1
	GOTO       L_moveToRight73
	DECFSZ     R12+0, 1
	GOTO       L_moveToRight73
	NOP
;MyProject.c,142 :: 		}
L_end_moveToRight:
	RETURN
; end of _moveToRight

_justTurnOn:

;MyProject.c,144 :: 		void justTurnOn(){
;MyProject.c,145 :: 		PORTA=0XFF;
	MOVLW      255
	MOVWF      PORTA+0
;MyProject.c,146 :: 		}
L_end_justTurnOn:
	RETURN
; end of _justTurnOn

_JustFlush:

;MyProject.c,148 :: 		void JustFlush(){
;MyProject.c,149 :: 		PORTA=0XFF;
	MOVLW      255
	MOVWF      PORTA+0
;MyProject.c,150 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_JustFlush74:
	DECFSZ     R13+0, 1
	GOTO       L_JustFlush74
	DECFSZ     R12+0, 1
	GOTO       L_JustFlush74
	NOP
;MyProject.c,151 :: 		PORTA=0X00;
	CLRF       PORTA+0
;MyProject.c,152 :: 		DELAY_MS(delay_value);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_JustFlush75:
	DECFSZ     R13+0, 1
	GOTO       L_JustFlush75
	DECFSZ     R12+0, 1
	GOTO       L_JustFlush75
	NOP
;MyProject.c,153 :: 		}
L_end_JustFlush:
	RETURN
; end of _JustFlush

_main:

;MyProject.c,154 :: 		void main() {
;MyProject.c,155 :: 		TRISB=0XFF;
	MOVLW      255
	MOVWF      TRISB+0
;MyProject.c,156 :: 		TRISA=0X00;
	CLRF       TRISA+0
;MyProject.c,157 :: 		ANSEL=ANSELH=0X00;
	CLRF       ANSELH+0
	CLRF       ANSEL+0
;MyProject.c,159 :: 		while(1){
L_main76:
;MyProject.c,160 :: 		if(PORTB.RB0==0 && PORTB.RB1==0){
	BTFSC      PORTB+0, 0
	GOTO       L_main80
	BTFSC      PORTB+0, 1
	GOTO       L_main80
L__main110:
;MyProject.c,161 :: 		;     moveToRight();
	CALL       _moveToRight+0
;MyProject.c,162 :: 		}
	GOTO       L_main81
L_main80:
;MyProject.c,163 :: 		else if(PORTB.RB0==0 && PORTB.RB1 ==1){
	BTFSC      PORTB+0, 0
	GOTO       L_main84
	BTFSS      PORTB+0, 1
	GOTO       L_main84
L__main109:
;MyProject.c,164 :: 		moveToLeft();
	CALL       _moveToLeft+0
;MyProject.c,165 :: 		}
	GOTO       L_main85
L_main84:
;MyProject.c,166 :: 		else if(PORTB.RB0==1 && PORTB.RB1 ==0){
	BTFSS      PORTB+0, 0
	GOTO       L_main88
	BTFSC      PORTB+0, 1
	GOTO       L_main88
L__main108:
;MyProject.c,167 :: 		justTurnOn();
	CALL       _justTurnOn+0
;MyProject.c,168 :: 		}
	GOTO       L_main89
L_main88:
;MyProject.c,169 :: 		else if(PORTB.RB0==1 && PORTB.RB1 ==1){
	BTFSS      PORTB+0, 0
	GOTO       L_main92
	BTFSS      PORTB+0, 1
	GOTO       L_main92
L__main107:
;MyProject.c,170 :: 		JustFlush();
	CALL       _JustFlush+0
;MyProject.c,171 :: 		}
L_main92:
L_main89:
L_main85:
L_main81:
;MyProject.c,172 :: 		}
	GOTO       L_main76
;MyProject.c,173 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
