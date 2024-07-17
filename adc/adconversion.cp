#line 1 "C:/Users/kaara/Documents/mikros4/adc/adconversion.c"
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

float temperature;
char temp[7];

void main() {
 ANSEL = 0x01;
 ANSELH = 0x00;
 TRISA = 0b00000001;
 Lcd_Init();
 ADC_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 LCD_OUT(1, 3, "Temperature");
 LCD_OUT(2, 3, "Sensor");
 delay_ms(2000);
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

 while (1) {

 temperature = ADC_Read(0);
 temperature = temperature * (5.0 / 1023.0) * 100.0;


 floatToStr(temperature, temp);


 LCD_OUT(2, 1, temp);
 LCD_OUT(2, 7, "C");


 if (temperature > 40.0) {

 PORTA.RA2 = 1;
 LCD_OUT(1, 1, "Fan: ON ");
 } else {

 PORTA.RA2 = 0;
 LCD_OUT(1, 1, "Fan: OFF");
 }


 if (temperature > 40.0) {

 PORTA.RA3 = 0;
 } else {

 PORTA.RA3 = 1;
 }

 delay_ms(500);
 }
}
