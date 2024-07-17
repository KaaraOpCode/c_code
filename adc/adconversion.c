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
    ANSEL = 0x01; // Configure AN0 pin as analog
    ANSELH = 0x00; // Configure other AN pins as digital
    TRISA = 0b00000001; // Configure PORTA as output (RA0 as input for LM35)
    Lcd_Init(); // Initialize LCD
    ADC_Init(); // Initialize ADC module
    Lcd_Cmd(_LCD_CLEAR); // Clear display
    Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
    LCD_OUT(1, 3, "Temperature");
    LCD_OUT(2, 3, "Sensor");
    delay_ms(2000);
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Cmd(_LCD_CURSOR_OFF);

    while (1) {
        // Read temperature from the sensor
        temperature = ADC_Read(0); // Read ADC value from AN0 pin
        temperature = temperature * (5.0 / 1023.0) * 100.0;

        // Convert temperature to string for LCD display
        floatToStr(temperature, temp);

        // Display temperature on LCD
        LCD_OUT(2, 1, temp);
        LCD_OUT(2, 7, "C");

        // Check if temperature exceeds 40 degrees Celsius
        if (temperature > 40.0) {
            // Turn on the fan
            PORTA.RA2 = 1;
            LCD_OUT(1, 1, "Fan: ON ");
        } else {
            // Turn off the fan
            PORTA.RA2 = 0;
            LCD_OUT(1, 1, "Fan: OFF");
        }

        // Check if temperature exceeds 40 degrees Celsius to turn on the heater
        if (temperature > 40.0) {
            // Turn off the heater
            PORTA.RA3 = 0;
        } else {
            // Turn on the heater
            PORTA.RA3 = 1;
        }

        delay_ms(500);
    }
}
