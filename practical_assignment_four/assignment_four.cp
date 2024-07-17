#line 1 "C:/Users/kaara/Documents/mikros4/practical_assignment_four/assignment_four.c"

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

char input[6];
char output[20];
char keypad(){
 unsigned short kp;

 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {





 case 1: kp = 49; break;
 case 2: kp = 50; break;
 case 3: kp = 51; break;
 case 4: kp = 65; break;
 case 5: kp = 52; break;
 case 6: kp = 53; break;
 case 7: kp = 54; break;
 case 8: kp = 66; break;
 case 9: kp = 55; break;
 case 10: kp = 56; break;
 case 11: kp = 57; break;
 case 12: kp = 67; break;
 case 13: kp = 42; break;
 case 14: kp = 48; break;
 case 15: kp = 35; break;
 case 16: kp = 68; break;

 }
 return kp;

}

void flusAll(){
int i=0;
 for(;i<sizeof(input);i++){
 input[i] = '\0';
 }
 i=0;
 for(;i<sizeof(output);i++){
 output[i]='\0';
 }
}
void segment7Display(int value){
 int display1[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};

 PORTC = display1[value];
}
void displayType(char kp){
 if((kp>=48 && kp<=57 )||(kp==65 || kp == 66 || kp == 67 || kp == 68 || kp == 35)){
 if(kp==65){
 LCD_CHR_CP('/'); }
 else if(kp == 66){
 LCD_CHR_CP('*');
 }
 else if(kp == 67){
 LCD_CHR_CP('-');
 }
 else if(kp==68){
 LCD_CHR_CP('+');
 }
 else if(kp ==35){
 LCD_CHR_CP('=');
 }
 else{
 if(kp>=48 && kp <= 57){
 LCD_CHR_CP(kp);
 segment7Display(kp-48);
 }
 }
 }
}
long counDigits(long value){

 long cnt = 0;
 long num =(long)value/10;
 cnt=1;
 while(num!=0){
 num /= 10;
 cnt++;
 }
 return cnt;
}
void intCharArrConvert(long num,char txt[],int start,int end){
 int i=0;
 int j=0;
 i=end-1;

 while(i >= start){
 txt[i]=(num%10)+48;
 num/=10;
 i--;
 }


}
void floatToCharArrConvert(double num){
 long intExtract;
 int cnt ;
 int cnt1=0;
 char txt[20];
 int i=0;
 long floatPart;

 intExtract = (long)num;
 cnt = counDigits(intExtract);

 floatPart = (num - intExtract)*100;

 cnt1 = counDigits(floatPart);

 for(;i<sizeof(txt);i++)
 txt[i] = '\0';
 intCharArrConvert(intExtract,txt,0,cnt);
 txt[cnt]=46;

 intCharArrConvert(floatPart,txt,cnt+1,cnt+cnt1+1);

 i=0;
 while(i<sizeof(output)){
 output[i] = txt[i];
 i++;
 }
}
void displayLessZero(double result){
 long num = result*100;

 output[0]=48;
 output[1] = 46;
 output[3] = (num%10)+48;
 num/=10;
 output[2] = (num%10)+48;
}
void display(double result){
 if(result<1)
 displayLessZero(result);
 else
 floatToCharArrConvert(result);
 LCD_OUT(2,1,output);
}

void main() {
 int i=0;
 char kp=0,kp1=0;
 double res;
 char opt=0;
 Keypad_Init();
 ANSEL = 0;
 ANSELH = 0;
 TRISC = 0X00;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1, 1, "CALCULATOR");
 LCD_OUT(2,1,"");
 PORTC = 0xff;
 flusAll();
 delay_ms(500);
 Lcd_Cmd(_LCD_CLEAR);

 while(1){

 kp =keypad();

 if(i>=sizeof(input)+1)
 continue;

 if(kp >= 48 && kp<=57)
 input[i++]=kp;
 if(kp >= 65 && kp <= 68)
 opt =kp;
 displayType(kp);
 while(kp==42){
 if(i<=0){
 i=0;
 break;
 }
 if(kp>=48 && kp <=57)
 input[i--]='\0';
 else{
 opt='\0';

 }
 LCD_CMD(_LCD_MOVE_CURSOR_LEFT);
 LCD_CHR_CP('1');
 kp =keypad();

 LCD_CMD(_LCD_MOVE_CURSOR_LEFT);
 }
 if(kp==35){
 double num1=((double)((input[0]-48)*100 + (input[1]-48)*10 + (input[2]-48)));
 double num2 =( (double)(input[3]-48)*100 + (input[4]-48)*10 + (input[5]-48));
 if(input[4]=='\0' ){
 num2 = (double)(input[3]-48)+0;
 }
 else if(input[5]=='\0'){
 num2 = (double)(input[3]-48)*100 + (input[4]-48)*10;
 }


 if((input[3]-48)*100 ==0 ){
 num2=0;
 }
 if(opt==65)
 {

 if(num2 ==0){
 flusAll();
 Lcd_Cmd(_LCD_CLEAR);
 kp=opt=i=0;
 LCD_OUT(1,1,"INIFITY");
 delay_ms(1000);
 Lcd_Cmd(_LCD_CLEAR);
 continue;
 }
 res =num1/num2;
 }
 else if(opt ==66){
 res =num1 * num2;
 }
 else if(opt ==67){
 res =num1- num2;
 }
 else if(opt == 68){
 res =num1 + num2;;
 }

 display(res);

 delay_ms(2000);
 flusAll();
 Lcd_Cmd(_LCD_CLEAR);
 kp=opt=i=0;
 }
 }

}
