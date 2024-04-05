#line 1 "C:/Users/moham/Desktop/embedded systems c programming/New folder/C_Code_Project/C_Code_Project.c"
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
