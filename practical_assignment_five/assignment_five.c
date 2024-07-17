char keypadPort at PORTB;

// LCD module connections
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


char input[6]; // Stores user input
char password[5] = "1234"; // Predefined password

char keypad() {
    unsigned short kp;
    // Wait for key to be pressed and released
    do {
        kp = Keypad_Key_Click(); // Store key code in kp variable
    } while (!kp);
    // Prepare value for output, transform key to its ASCII value
    switch (kp) {
        case 1: kp = '1'; break; // 1
        case 2: kp = '2'; break; // 2
        case 3: kp = '3'; break; // 3
        case 4: kp = 'A'; break; // A (/)
        case 5: kp = '4'; break; // 4
        case 6: kp = '5'; break; // 5
        case 7: kp = '6'; break; // 6
        case 8: kp = 'B'; break; // B (*)
        case 9: kp = '7'; break; // 7
        case 10: kp = '8'; break; // 8
        case 11: kp = '9'; break; // 9
        case 12: kp = 'C'; break; // C (-)
        case 13: kp = '*'; break; // *
        case 14: kp = '0'; break; // 0
        case 15: kp = '#'; break; // # (=)
        case 16: kp = 'D'; break; // D (+)
    }
    return kp;
}

void sevenSegmentCount() {
   char num1[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F};
   int i=0;
   while(i < sizeof(num1)){
       PORTC = num1[i];
       delay_ms(500);
       i++;
   }
   PORTC =0x00;
}

void main() {
    int i = 0;
    Keypad_Init(); // Initialize Keypad
    ANSEL = 0; // Configure AN pins as digital I/O
    ANSELH = 0;
    TRISC=0X00;                      // 7 SEG 1
    PORTC=0X00;
    TRISE = 0XFF;
    TRISA = 0X00;
    PORTA = 0X00;
    Lcd_Init(); // Initialize LCD
    Lcd_Cmd(_LCD_CLEAR); // Clear display
    Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
    delay_ms(500);

    while (1) {
        LCD_OUT(1, 1, "Enter Password:");
        delay_ms(1000);
        Lcd_Cmd(_LCD_CLEAR);

        // Read user input from keypad
        while (i < 4) {
            input[i] = keypad();
            lcd_chr_cp('*');
            i++;
        }
        input[4] = '\0';

        // Display the entered password on the LCD
        LCD_OUT(1, 1, input);

        // Check if the entered password matches the predefined password
        if (input[0] == password[0] && input[1] == password[1] && input[2] == password[2] && input[3] == password[3]) {
            LCD_OUT(2, 1, "Access Granted");
            PORTA.RA0 = 1;
            sevenSegmentCount();
            delay_ms(5000);
            PORTA.RA0 = 0;
        } else {
            LCD_OUT(2, 1, "Access Denied");
            PORTA.RA0 = 0;
        }

        delay_ms(2000);
        Lcd_Cmd(_LCD_CLEAR);
        i = 0; // Reset the index for the next iteration
    }
}