unsigned short kp;
char txt[6];

// Keypad module connections
char  keypadPort at PORTD;
// End Keypad module connections

// LCD mod
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
// End LCD module connections
int keyPad(){
// Wait for key to be pressed and released
    do
      // kp = Keypad_Key_Press();          // Store key code in kp variable
      kp = Keypad_Key_Click();             // Store key code in kp variable
    while (!kp);
   // Prepare value for output, transform key to it's ASCII value
    switch (kp) {

      case  1: return 49; break; // 1        // Uncomment this block for keypad4x4
      case  2: return 50; break; // 2
      case  3: return 51; break; // 3
      case  4: return 65; break; // A
      case  5: return 52; break; // 4
      case  6: return 53; break; // 5
      case  7: return 54; break; // 6
      case  8: return 66; break; // B
      case  9: return 55; break; // 7
      case 10: return 56; break; // 8
      case 11: return 57; break; // 9
      case 12: return 67; break; // C
      case 13: return 42; break; // *
      case 14: return 48; break; // 0
      case 15: return 35; break; // #
      case 16: return 68; break; // D

    }
}
void main() {
  Keypad_Init();                           // Initialize Keypad
  ANSEL  = 0;                              // Configure AN pins as digital I/O
  ANSELH = 0;
  TRISE = 0XFF;

  TRISC = 0X00;
//  TRISC = 0X00;
  PORTC=0X00;
  PORTC=0XFF;
  Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
  LCD_OUT(1,1,"TOILET STATE");
  while(1){
  char kp1 = keyPad();

   if(kp1 == 49){
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,"Toilet No : ");
      Lcd_Chr_cP(kp1);
      if(PORTE.RE0 == 1){
         PORTC = 0X06;
         LCD_OUT(2,1,"available");

      }
      else{
       PORTC = 0X3F;
       LCD_OUT(2,1,"not available");
    }
   }
   else if(kp1 == 50){
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,"Toilet No : ");
      Lcd_Chr_cP(kp1);
      if(PORTE.RE1 == 1){
         PORTC =0X5B;
         LCD_OUT(2,1,"available");
      }
      else{
       PORTC = 0X3F;
       LCD_OUT(2,1,"not available");
    }
   }
    else if(kp1 == 51){
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,"Toilet No : ");
      Lcd_Chr_cP(kp1);
      if(PORTE.RE2 == 1){
         PORTC = 0X4F;
         LCD_OUT(2,1,"available");
      }
      else{
       PORTC = 0X3F;
       LCD_OUT(2,1,"not available");
    }
   }

  }
}