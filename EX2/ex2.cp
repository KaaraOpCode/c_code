#line 1 "C:/Users/kaara/Documents/mikros4/EX2/ex2.c"
void main() {
 int count = 0;
 int direction = 1;
 TRISB = 0;
 PORTB;

 while(1){
 PORTB = count;
 delay_ms(10);

 count+=direction;

 if(count==0b1111){
 direction = -1;
 }
 else if(count == 0){
 direction = 1;
 }
 }
}
