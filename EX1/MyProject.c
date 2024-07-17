const int delay_value=10;
void moveToLeft(){
    PORTA=0X00;
    PORTA.RA7=1;
    DELAY_MS(delay_value);   //RA7
    PORTA.RA7=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0!=0 && PORTB.RB1 !=1){
      return;
    }

    PORTA.RA6=1;
    DELAY_MS(delay_value);  // RA6
    PORTA.RA6=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0!=0 && PORTB.RB1 !=1){
      return;
    }

    PORTA.RA5=1;
    DELAY_MS(delay_value);   // RA5
    PORTA.RA5=0;
    DELAY_MS(delay_value);
    
    if(PORTB.RB0!=0 && PORTB.RB1 !=1){
      return;
    }
    
    PORTA.RA4=1;
    DELAY_MS(delay_value);    //RA4
    PORTA.RA4=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0!=0 && PORTB.RB1 !=1){
      return;
    }

    PORTA.RA3=1;
    DELAY_MS(delay_value);     //RA3
    PORTA.RA3=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0!=0 && PORTB.RB1 !=1){
      return;
    }

    PORTA.RA2=1;
    DELAY_MS(delay_value);       //RA2
    PORTA.RA2=0;
    DELAY_MS(delay_value);
    
    if(PORTB.RB0!=0 && PORTB.RB1 !=1){
      return;
    }
    
    PORTA.RA1=1;
    DELAY_MS(delay_value);       //RA1
    PORTA.RA1=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0!=0 && PORTB.RB1 !=1){
      return;
    }
    
    PORTA.RA0=1;
    DELAY_MS(delay_value);     //RA0
    PORTA.RA0=0;
    DELAY_MS(delay_value);
}
void moveToRight(){
    PORTA=0X00;
    PORTA.RA0=1;
    DELAY_MS(delay_value);     //RA0
    PORTA.RA0=0;
    DELAY_MS(delay_value);


    if(PORTB.RB0!=0 && PORTB.RB1 !=0){
      return;
    }

    PORTA.RA1=1;
    DELAY_MS(delay_value);       //RA1
    PORTA.RA1=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
      return;
    }

    PORTA.RA2=1;
    DELAY_MS(delay_value);       //RA2
    PORTA.RA2=0;
    DELAY_MS(delay_value);
    
    if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
      return;
    }
    
    PORTA.RA3=1;
    DELAY_MS(delay_value);     //RA3
    PORTA.RA3=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
      return;
    }
    
    PORTA.RA4=1;
    DELAY_MS(delay_value);    //RA4
    PORTA.RA4=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
      return;
    }
    
    PORTA.RA5=1;
    DELAY_MS(delay_value);   // RA5
    PORTA.RA5=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0 !=0 && PORTB.RB1!=0){
      return;
    }
    
    PORTA.RA6=1;
    DELAY_MS(delay_value);  // RA6
    PORTA.RA6=0;
    DELAY_MS(delay_value);

    if(PORTB.RB0 !=0 && PORTB.RB1 !=0){
      return;
    }
    
    PORTA.RA7=1;
    DELAY_MS(delay_value);   //RA7
    PORTA.RA7=0;
    DELAY_MS(delay_value);
}

void justTurnOn(){
 PORTA=0XFF;
}

void JustFlush(){
     PORTA=0XFF;
     DELAY_MS(delay_value);
     PORTA=0X00;
     DELAY_MS(delay_value);
}
void main() {
 TRISB=0XFF;
 TRISA=0X00;
 ANSEL=ANSELH=0X00;

 while(1){
   if(PORTB.RB0==0 && PORTB.RB1==0){
;     moveToRight();
   }
   else if(PORTB.RB0==0 && PORTB.RB1 ==1){
   moveToLeft();
   }
   else if(PORTB.RB0==1 && PORTB.RB1 ==0){
   justTurnOn();
   }
   else if(PORTB.RB0==1 && PORTB.RB1 ==1){
       JustFlush();
   }
 }
}