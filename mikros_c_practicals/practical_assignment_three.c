unsigned short kp;
char oldstate=0;
int cnt=0;
char txt[13]={'\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0'};

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
int i=0;
int j=0;
char kp1;

char values[4]={'\0',  '\0', '\0', '\0'};
char aToZ[]={65,66,67, 68,69,70, 71,72,73, 74,75,76, 77,78,79, 80,81,82,83,
             84,85,86, 87,88,89,90};

void resetOutPut(){
int k=0;
 for(;k<sizeof(txt);k++)
    txt[k]='\0';
}
void writeTo7Seg(char btn){
  if(btn==48)
      PORTC=  0x3F;
  else if(btn== 49)
      PORTC = 0x06;
  else if(btn== 49)
       PORTC = 0x06;
  else if(btn== 50)
      PORTC = 0x5B;
  else if(btn== 51)
      PORTC = 0x4F;
  else if(btn== 52)
      PORTC = 0x66;
  else if(btn==53)
      PORTC = 0x6D;
  else if(btn== 54)
      PORTC = 0x7D;
  else if(btn== 55)
      PORTC = 0x07;
  else if(btn== 56)
      PORTC = 0x7F;
  else if(btn== 57)
      PORTC = 0x6F;
}
void writeFname(char name[]){

     Lcd_Cmd(_LCD_CLEAR);
     LCD_OUT(1,1,name);
     delay_ms(500);
     Lcd_Cmd(_LCD_CLEAR);
     i=0;
     while(1){
       cnt=0;
       Lcd_Cmd(_LCD_CLEAR);
       while(1){

      kp1 = keyPad();
       if(kp1==35)
         break;
       writeTo7Seg(kp1);
     if(!(kp1 >=49 && kp1 <=57))
         continue;

      LCD_CHR_CP(kp1);
     if(kp1!=oldstate){
        oldstate=kp1;
        cnt=1;
        }
        else{

        cnt++;

        if(kp1!=55 && kp1 !=57){
          if(cnt>3)
            cnt=1;
          }
         else{
           if(cnt>4)
              cnt=1;
         }
       }
     }
     kp1=oldstate;
     if(kp1 ==50){          // two
           if(cnt!=0)
          {  Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[cnt-1]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[cnt-1];

           if( keyPad()==35)
               break;

           }
     }
     else if( kp1 ==51){

          if(cnt!=0)
          {
           int k = (cnt-1)+3;
           Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[k]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[k];

           if( keyPad()==35)
               break;

           }
     }
     else if( kp1 ==52){
           if(cnt!=0)
          {
           int k = (cnt-1)+6;
           Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[k]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[k];

           if( keyPad()==35)
               break;

           }
     }
     else if( kp1 ==53){
         if(cnt!=0)
          {
           int k = (cnt-1)+9;
           Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[k]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[k];

           if( keyPad()==35)
               break;

           }
     }
     else if( kp1 ==54){
           if(cnt!=0)
          {
           int k = (cnt-1)+12;
           Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[k]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[k];

           if( keyPad()==35)
               break;

           }
     }
     else if( kp1 ==55){
         if(cnt!=0)
          {
           int k = (cnt-1)+15;
           Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[k]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[k];

           if( keyPad()==35)
               break;

           }
     }
     else if( kp1 ==56){
         if(cnt!=0)
          {
           int k = (cnt-1)+19;
           Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[k]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[k];

           if( keyPad()==35)
               break;

           }
     }

     else if( kp1 ==57){     // Nine
         if(cnt!=0)
          {
           int k = (cnt-1)+22;
           Lcd_Cmd(_LCD_CLEAR);
           LCD_CHR(1,1,aToz[k]);

           if(i>=sizeof(txt))
              i=0;
           txt[i++]=aToz[k];

           if( keyPad()==35)
               break;

           }
     }


     }
}
void enterStudentNum(){
     i=0;
     Lcd_Cmd(_LCD_CLEAR);
     LCD_OUT(1,1,"Student Number");
     delay_ms(500);
     while(1){

      LCD_CHR(2,1,58);
      kp1 = keyPad();
      if(kp1==35)
         break ;
//      LCD_CHR_CP(129);
      LCD_CHR_CP(kp1);
      txt[i++]=kp1;
       writeTo7Seg(kp1);
     }

}
void main() {
  Keypad_Init();                           // Initialize Keypad
  ANSEL  = 0;                              // Configure AN pins as digital I/O
  ANSELH = 0;
  TRISE = 0XFF;
  TRISA = 0XFF;

  TRISC = 0X00;
//  TRISC = 0X00;
  PORTC=0X00;
  PORTC=0XFF;
  Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
  LCD_OUT(1,1,"STUDENT SYSTEM");
  delay_ms(500);
  while(1){
//    if(i==0)

      writeFname("Enter Name");
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,txt);
      delay_ms(1000);
      resetOutPut()  ;
      
      writeFname("Enter Surname");
      Lcd_Cmd(_LCD_CLEAR);
      LCD_OUT(1,1,txt);
      delay_ms(1000);
      resetOutPut();

      enterStudentNum();
      LCD_OUT(2,1,txt);
      delay_ms(2000);
      resetOutPut();

  }
}