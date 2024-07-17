unsigned short kp, cnt, oldstate = 0;
char txt[6];

// Keypad module connections
char  keypadPort at PORTD;
// End Keypad module connections

// LCD module connections
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
int keypadClick(){
    // Wait for key to be pressed and released
    do
      // kp = Keypad_Key_Press();          // Store key code in kp variable
      kp = Keypad_Key_Click();             // Store key code in kp variable
    while (!kp);
   // Prepare value for output, transform key to it's ASCII value
    switch (kp) {
      case  1: return 55; break; // 7        // Uncomment this block for keypad4x4
      case  2: return 56; break; // 8
      case  3: return 57; break; // 9
      case  4: return 47; break; // /
      case  5: return 52; break; // 4
      case  6: return 53; break; // 5
      case  7: return 54; break; // 6
      case  8: return 42; break; // *
      case  9: return 49; break; // 1
      case 10: return 50; break; // 2
      case 11: return 51; break; // 3
      case 12: return 45; break; // -
      case 13: return 127; break; // del
      case 14: return 48; break; // 0
      case 15: return 61; break; // =
      case 16: return 43; break; // D

    }
}
void main() {
  Keypad_Init();                           // Initialize Keypad
  ANSEL  = 0;                              // Configure AN pins as digital I/O
  ANSELH = 0;
  Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
  //Lcd_Out(1, 1, "1");

  
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