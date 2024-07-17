// Include necessary libraries
#include <built_in.h>

// Define LCD module connections
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

char keypadPort at PORTB;

// Keypad and LCD configuration
char input;
char runner1 = '1';
char runner2 = '2';
char runner3 = '3';

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

void count() {
    char num1[9] = {1, 2, 3, 4, 5, 6, 7, 8, 9}; // Example sequence
    int i = 0;
    char stop = 0;
    while (i < sizeof(num1) && !stop) {
        PORTC = SEGMENT_CODES[num1[i]]; // Output the corresponding 7-segment code
        Lcd_Chr(2, 1, num1[i] + '0'); // Display the digit on the LCD

        // Check for key press during counting
        if (Keypad_Key_Click()) {
            stop = 1; // Stop the counting
        } else {
            delay_ms(1000); // Delay for 1 second
            i++;
        }
    }
    PORTC = 0x00; // Turn off the 7-segment display on PORTC
    Lcd_Cmd(_LCD_CLEAR); // Clear the LCD display
}

void main() {
    Keypad_Init(); // Initialize Keypad
    ANSEL = 0; // Configure AN pins as digital I/O
    ANSELH = 0;
    TRISC = 0x00; // Set PORTC as output for 7-segment display
    TRISA = 0x00; // Set PORTA as output for 7-segment control
    TRISE = 0xFF; // Set PORTE as input (if needed)
    PORTC = 0x00; // Clear PORTC
    PORTA = 0x00; // Clear PORTA
    Lcd_Init(); // Initialize LCD
    Lcd_Cmd(_LCD_CLEAR); // Clear display
    Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
    delay_ms(500); // Wait for LCD to initialize

    while (1) {
        Lcd_Out(1, 1, "Select Runner:"); // Display prompt on LCD
        // Read user input from keypad
        input = keypad(); // Get single key pressed
        Lcd_Chr_Cp(input); // Display the key pressed on LCD

        if (input == runner1) {
            PORTA = 0x06; // Indicate runner 1 (for example)
            count(); // Start count function
        } else if (input == runner2) {
            PORTA = 0x5B; // Indicate runner 2
            count(); // Start count function
        } else if (input == runner3) {
            PORTA = 0x4F; // Indicate runner 3
            count(); // Start count function
        } else {
            Lcd_Out(1, 1, "Wrong Runner"); // Indicate wrong runner
            Lcd_Out(2, 1, "Try Again!"); // Ask to try again
            delay_ms(1000); // Wait to give user time to see the message
            Lcd_Cmd(_LCD_CLEAR); // Clear LCD display
        }

        PORTA = 0x00; // Turn off the segment on PORTA after counting sequence
        delay_ms(500); // Wait before clearing LCD
        Lcd_Cmd(_LCD_CLEAR); // Clear LCD display
    }
}
