#line 1 "C:/Users/kaara/Documents/mikros4/practical_test_two/practicaal_test_two.c"
char keypadPort at PORTB;


sbit LCD_RS at RD4_bit;
sbit LCD_EN at RD5_bit;
sbit LCD_D4 at RD0_bit;
sbit LCD_D5 at RD1_bit;
sbit LCD_D6 at RD2_bit;
sbit LCD_D7 at RD3_bit;

sbit LCD_RS_Direction at TRISD4_bit;
sbit LCD_EN_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD0_bit;
sbit LCD_D5_Direction at TRISD1_bit;
sbit LCD_D6_Direction at TRISD2_bit;
sbit LCD_D7_Direction at TRISD3_bit;


char input[6];
char zecalu[5] = "23";
char daozec[5] = "52";
char aludao[5] = "35";
char baluzec[5] = "24";



char keypad() {
 unsigned short kp;

 do {
 kp = Keypad_Key_Click();
 } while (!kp);

 switch (kp) {
 case 1: kp = '1'; break;
 case 2: kp = '2'; break;
 case 3: kp = '3'; break;
 case 4: kp = 'A'; break;
 case 5: kp = '4'; break;
 case 6: kp = '5'; break;
 case 7: kp = '6'; break;
 case 8: kp = 'B'; break;
 case 9: kp = '7'; break;
 case 10: kp = '8'; break;
 case 11: kp = '9'; break;
 case 12: kp = 'C'; break;
 case 13: kp = '*'; break;
 case 14: kp = '0'; break;
 case 15: kp = '#'; break;
 case 16: kp = 'D'; break;
 }
 return kp;
}

const char SEGMENT_CODES[10] = {
 0x3F,
 0x06,
 0x5B,
 0x4F,
 0x66,
 0x6D,
 0x7D,
 0x07,
 0x7F,
 0x6F
};
void zecaluCount() {
 char num1[3] = {2, 3, 4};
 int i = 0;
 while (i < sizeof(num1)) {
 PORTC = SEGMENT_CODES[num1[i]];
 Lcd_Chr(2, 1, num1[i] + '0');
 delay_ms(1000);
 i++;
 }
 PORTC = 0x00;
}

void daozecCount() {
 char num1[3] = {5, 6, 7};
 int i = 0;
 while (i < sizeof(num1)) {
 PORTC = SEGMENT_CODES[num1[i]];
 Lcd_Chr(2, 1, num1[i] + '0');
 delay_ms(1000);
 i++;
 }
 PORTC = 0x00;
}

void aludaoCount() {
 char num1[3] = {3, 5, 0};
 int i = 0;
 while (i < sizeof(num1)) {
 PORTC = SEGMENT_CODES[num1[i]];
 Lcd_Chr(2, 1, num1[i] + '0');
 delay_ms(1000);
 i++;
 }
 PORTC = 0x00;
}

void baluzecCount() {
 char num1[3] = {2, 4, 1};
 int i = 0;
 while (i < sizeof(num1)) {
 PORTC = SEGMENT_CODES[num1[i]];
 Lcd_Chr(2, 1, num1[i] + '0');
 delay_ms(1000);
 i++;
 }
 PORTC = 0x00;
}


void scrollText(char* text) {
 int len = strlen(text);
 int pos = 0;
 int direction = 1;

 while (1) {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, pos + 1, text);
 delay_ms(300);

 pos += direction;


 if (pos + len >= 16) {
 direction = -1;
 } else if (pos <= 0) {
 direction = 1;
 }


 if (Keypad_Key_Click()) break;
 }
}


void main() {
 int i = 0;
 Keypad_Init();
 ANSEL = 0;
 ANSELH = 0;
 TRISC=0X00;
 PORTC=0X00;
 TRISE = 0XFF;
 TRISA = 0X00;
 PORTA = 0X00;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 delay_ms(500);

 while (1) {
 scrollText("Enter Records:");

 while (i < 2) {
 input[i] = keypad();
 lcd_chr_cp(input[i]);
 i++;
 }
 if (input[0] == zecalu[0] && input[1] == zecalu[1]) {
 LCD_OUT(1, 3, ":Zec and  Aluteyi");
 zecaluCount();

 } else if (input[0] == daozec[0] && input[1] == daozec[1]) {
 LCD_OUT(1, 3, ":Dao and Zec");
 daozecCount();


 }else if (input[0] == aludao[0] && input[1] == aludao[1]) {
 LCD_OUT(1, 3, ":Aluteyi and Dao");
 aludaoCount();

 }
 else if (input[0] == baluzec[0] && input[1] == baluzec[1]) {
 LCD_OUT(1, 3, ":Baulu and Zec");
 baluzecCount();

 } else {
 LCD_OUT(1, 1, "Wrong Records");
 LCD_OUT(2, 1, "Try Again!");
 }

 delay_ms(500);
 Lcd_Cmd(_LCD_CLEAR);
 i = 0;
 }
}
