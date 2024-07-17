unsigned short kp, opt, oldstate = 0;
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

int keyPad(){
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
      case  4: return 65; break; // A
      case  5: return 52; break; // 4
      case  6: return 53; break; // 5
      case  7: return 54; break; // 6
      case  8: return 66; break; // B
      case  9: return 49; break; // 1
      case 10: return 50; break; // 2
      case 11: return 51; break; // 3
      case 12: return 67; break; // C
      case 13: return 42; break; // *
      case 14: return 48; break; // 0
      case 15: return 35; break; // #
      case 16: return 68; break; // D

    }
}

int countDigits(int number) {
    int count = 0;

    // If the number is 0, return 1 (since 0 has 1 digit)
    if (number == 0)
        return 1;

    // For negative numbers, count the '-' sign and make number positive
    if (number < 0) {
        count++; // count the negative sign
        number = -number; // make the number positive
    }

    // Count digits using division by 10
    while (number != 0) {
        number = number / 10;
        count++;
    }

    return count;
}
void intToString1(int num,char *collection){

 int count= countDigits(num);
 int position = count-1;
 if(num==0){
  collection[0]=48;
  return;
 }
 while(num>0&& position>=0){
  collection[position] = (num % 10)+48;
  num/=10;
  position--;
 }
}

char str[10]={'\0','\0','\0','\0','\0','\0','\0','\0','\0','\0'};
int i=0;
int j=0;
int num1[2];
int num2[2];
int temp[2];
int k=0;
void main() {
  opt = 0;                                 // Reset counter
  Keypad_Init();                           // Initialize Keypad
  ANSEL  = 0;                              // Configure AN pins as digital I/O
  ANSELH = 0;
  Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off

 while(1){

 char kp1= keyPad();


 if(kp1>=48 && kp1<=57){
  if(k<2)
  {
   temp[k++]=kp1-48;
   LCD_CHR_CP(kp1);
   }
 }
 else{
 if(kp1 == 68){
   LCD_CHR_CP(43);
   opt = kp1;
 }
 if(kp1 == 35)
   LCD_CHR_CP(61);
 if(kp1 == 67){
   LCD_CHR_CP(45);
   opt = kp1;
   }
 }

 if(kp1 == 68 || kp1 == 67){
  num1[0]= temp[0];
  num1[1] = temp[1];
  temp[0]= 0;
  temp[1]=0;
  k=0;
 }
 if(kp1==35){
    int sum = 0;
    int value1 = num1[0]*10 + num1[1];
    int value2 = temp[0]*10 + temp[1];
    if(opt==68)
    sum = value1 +value2;
    else if(opt==67)
    sum = value1 - value2;
    intToString1(sum,str);
    LCD_OUT_CP(str);
 }

}}