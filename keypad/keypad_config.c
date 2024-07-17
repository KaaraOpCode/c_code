void main() {
    TRISB = 0XF0;
    TRISD = 0X00;
    ANSEL = ANSELH = 0X00;
    
    while(1){
    PORTB.RB0=1;
      if(PORTB.RB4=1)
      PORTD=0X06;
      if(PORTB.RB5=1)
      PORTD=0X66;
      if(PORTB.RB6=1)
      PORTD=0X07;
    PORTB.RB0=0;
    
    PORTB.RB1=1;
      if(PORTB.RB4=1)
      PORTD=0X5B;
      if(PORTB.RB5=1)
      PORTD=0X6D;
      if(PORTB.RB6=1)
      PORTD=0X7F;
      if(PORTB.RB7=1)
      PORTD=0X3f;
    PORTB.RB1=0;
    
    PORTB.RB2=1;
      if(PORTB.RB4)
      PORTD=0X4F;
      if(PORTB.RB5)
      PORTD=0X7D;
      if(PORTB.RB6)
      PORTD=0X07;
    PORTB.RB2=0;
    }
}