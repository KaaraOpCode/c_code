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
char num2[10]={0,1,2,3,4,5,6,7,8,9};
int i=0;

const char SEGMENT_CODES[10] = {
    0x3F, // 0
    0x06, // 1
    0x5B, // 2
    0x4F, // 3
    0x66, // 4
    0x6D, // 5
    0x7D, // 6
    0x07, // 7
    0x7F, // 8
    0x6F  // 9
};
void main() {
  ANSEL  = 0;                        // Configure AN pins as digital I/O
  ANSELH = 0;
  TRISC=0X00;                      // 7 SEG 1
  PORTC=0X00;

  TRISE = 0X00;     // leds
  PORTE = 0X00;

  TRISD = 0X00;     // 7 SEG 2
  PORTD = 0X00;

  TRISA = 0XFF;             // SENSORS OR SWITCHES

  Lcd_Init();                        // Initialize LCD

  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off


   while(1){

   if(PORTA.RA0==0 && PORTA.RA1==0){
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,"LP Institute");
      PORTE = 0X00;
      i=5;
      PORTC = SEGMENT_CODES[num2[0]];
      Lcd_Chr(2, 1, num2[0] + '0');
      while(i<sizeof(num2)){
        PORTD = SEGMENT_CODES[num2[i]];
        Lcd_Chr(2, 2, num2[i] + '0');
        delay_ms(1000);
        i++;
        if(PORTA.RA0==0 && PORTA.RA1==0)
            continue;
         else break;
      }
      if(i==10){
        //Lcd_Cmd(_LCD_CLEAR);
        LCD_OUT(1,1,"LP Institute");
        PORTC = SEGMENT_CODES[num2[1]];
        Lcd_Chr(2, 1, num2[1] + '0');
        PORTD = SEGMENT_CODES[num2[0]];
        Lcd_Chr(2, 2, num2[0] + '0');
      }
        delay_ms(1000);
   }
   else if(PORTA.RA0==0 && PORTA.RA1==1){
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,"202301320CE");
      PORTE = 0X02;
      i=1;
      PORTC = SEGMENT_CODES[num2[1]];
      Lcd_Chr(2, 1, num2[1] + '0');
      while(i<6){
        PORTD = SEGMENT_CODES[num2[i]];
        Lcd_Chr(2, 2, num2[i] + '0');
        delay_ms(1000);
        i++;
        if(PORTA.RA0==0 && PORTA.RA1==1)
            continue;
         else break;
      }

   }
   else if(PORTA.RA0==1 && PORTA.RA1==0){
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,"tpotloane@");
      PORTE = 0X01;
      i=6;
      PORTC =SEGMENT_CODES[num2[1]];
      Lcd_Chr(2, 1, num2[1] + '0');

      while(i<sizeof(num2)){
        PORTD = SEGMENT_CODES[num2[i]];
        Lcd_Chr(2, 2, num2[i] + '0');
        delay_ms(1000);
        i++;
        if(PORTA.RA0==1 && PORTA.RA1==0)
            continue;
         else break;
      }
      if(i==10){
        LCD_OUT(1,1,"tpotloane@");
        PORTC = SEGMENT_CODES[num2[2]];
        Lcd_Chr(2, 1, num2[2] + '0');
        PORTD = SEGMENT_CODES[num2[2]];
        Lcd_Chr(2, 2, num2[0] + '0');
      }
      delay_ms(1000);
   }
   else if(PORTA.RA0==1 && PORTA.RA1==1){
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,"Marabeng");
//      PORTE = 0X03;
      i=1;
      PORTC = SEGMENT_CODES[num2[2]];
      Lcd_Chr(2,1,num2[2]+ '0');
      while(i<6){
        PORTD = SEGMENT_CODES[num2[i]];
        Lcd_Chr(2,2,num2[i]+ '0');
        PORTE = 0X03;
        delay_ms(500);
        i++;
        PORTE = 0X00;
        delay_ms(500);
        if(PORTA.RA0==1 && PORTA.RA1==1)
            continue;
         else break;
      }

   }
  }
}