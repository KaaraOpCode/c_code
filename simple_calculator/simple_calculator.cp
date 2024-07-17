#line 1 "C:/Users/kaara/Documents/mikros4/simple_calculator/simple_calculator.c"
unsigned short kp, opt, oldstate = 0;
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


int keyPad(){

 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {

 case 1: return 55; break;
 case 2: return 56; break;
 case 3: return 57; break;
 case 4: return 65; break;
 case 5: return 52; break;
 case 6: return 53; break;
 case 7: return 54; break;
 case 8: return 66; break;
 case 9: return 49; break;
 case 10: return 50; break;
 case 11: return 51; break;
 case 12: return 67; break;
 case 13: return 42; break;
 case 14: return 48; break;
 case 15: return 35; break;
 case 16: return 68; break;

 }
}

int countDigits(int number) {
 int count = 0;


 if (number == 0)
 return 1;


 if (number < 0) {
 count++;
 number = -number;
 }


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
int k=0;void main() {
 Keypad_Init
 opt = 0;();
 ANSEL = 0;
 ANSELH = 0;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

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
 }
 }
