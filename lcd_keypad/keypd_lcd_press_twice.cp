#line 1 "C:/Users/kaara/Documents/mikros4/lcd_keypad/keypd_lcd_press_twice.c"
unsigned short kp, cnt, oldstate = 0;
char txt[6];


char keypadPort at PORTD;



sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

int keypadClick(){

 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {
 case 1: return 55; break;
 case 2: return 56; break;
 case 3: return 57; break;
 case 4: return 47; break;
 case 5: return 52; break;
 case 6: return 53; break;
 case 7: return 54; break;
 case 8: return 42; break;
 case 9: return 49; break;
 case 10: return 50; break;
 case 11: return 51; break;
 case 12: return 45; break;
 case 13: return 127; break;
 case 14: return 48; break;
 case 15: return 61; break;
 case 16: return 43; break;

 }
}
void main() {
 Keypad_Init();
 ANSEL = 0;
 ANSELH = 0;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);



 while(1){
 int click = keypadClick();
 if(click!=127){
 lcd_chr_cp(click);
 }
 else{
 Lcd_Cmd(_LCD_CLEAR);
 }
 }
 }
