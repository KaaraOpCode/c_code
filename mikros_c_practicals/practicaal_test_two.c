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
char runner[5] = "23"; // Predefined password
char daozec[5] = "52";
char aludao[5] = "35";
char baluzec[5] = "24";



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
void zecaluCount() {
    char num1[3] = {2, 3, 4}; // Example sequence
    int i = 0;
    while (i < sizeof(num1)) {
        PORTC = SEGMENT_CODES[num1[i]]; // Output the corresponding 7-segment code
        Lcd_Chr(2, 1, num1[i] + '0'); // Display the digit on the LCD
        delay_ms(1000);
        i++;
    }
    PORTC = 0x00;
}

void daozecCount() {
    char num1[3] = {5, 6, 7}; // Example sequence
    int i = 0;
    while (i < sizeof(num1)) {
        PORTC = SEGMENT_CODES[num1[i]]; // Output the corresponding 7-segment code
        Lcd_Chr(2, 1, num1[i] + '0'); // Display the digit on the LCD
        delay_ms(1000);
        i++;
    }
    PORTC = 0x00;
}

void aludaoCount() {
    char num1[3] = {3, 5, 0}; // Example sequence
    int i = 0;
    while (i < sizeof(num1)) {
        PORTC = SEGMENT_CODES[num1[i]];
        Lcd_Chr(2, 1, num1[i] + '0');  // Output the corresponding 7-segment code
        delay_ms(1000);
        i++;
    }
    PORTC = 0x00;
}

void baluzecCount() {
    char num1[3] = {2, 4, 1}; // Example sequence
    int i = 0;
    while (i < sizeof(num1)) {
        PORTC = SEGMENT_CODES[num1[i]]; // Output the corresponding 7-segment code
        Lcd_Chr(2, 1, num1[i] + '0'); // Display the digit on the LCD
        delay_ms(1000);
        i++;
    }
    PORTC = 0x00;
}


void scrollText(char* text) {
    int len = strlen(text);
    int pos = 0;
    int direction = 1; // 1 for right, -1 for left

    while (1) {
        Lcd_Cmd(_LCD_CLEAR);
        Lcd_Out(1, pos + 1, text);
        delay_ms(300);

        pos += direction;

        // Change direction if we reach the end or the beginning
        if (pos + len >= 16) {
            direction = -1;
        } else if (pos <= 0) {
            direction = 1;
        }

        // Break if a key is pressed
        if (Keypad_Key_Click()) break;
    }
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
        scrollText("Enter Records:");
        // Read user input from keypad
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
        i = 0; // Reset the index for the next iteration
    }
}