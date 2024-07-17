#line 1 "C:/Users/kaara/Documents/mikros4/leds.c"
void main() {
 TRISB=0xFF;
 TRISA=0x00;
 ANSEL=ANSELH=0x00;
 PORTA = 0;

 while(1){
 if(PORTB.RB0 == 0 && PORTB.RB1 == 0 ){
 int i;
 for(i = 0; i < 8; i++){
 PORTA = (1 << i);
 delay_ms(10);
 }
 }
 else if(PORTB.RB0 == 0 && PORTB.RB1 == 1){
 int i;
 for(i = 7; i >= 0; i--){
 PORTA = (1 << i);
 delay_ms(10);
 }
 }
 else if(PORTB.RB0 == 1 && PORTB.RB1 == 0){
 PORTA = 0xFF;
 }

 else if(PORTB.RB0 == 1 && PORTB.RB1 == 1){
 PORTA = 0xFF;
 delay_ms(10);
 PORTA = 0x00;
 delay_ms(10);
 }
 }
}
