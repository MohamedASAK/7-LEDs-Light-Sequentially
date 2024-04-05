int i;
void main() {
   TRISB = 0;
   while(1){
     for(i = 0; i<=7 ; i++){
         PORTB = 1 << i;
         delay_ms(1000);
     }
   }
}