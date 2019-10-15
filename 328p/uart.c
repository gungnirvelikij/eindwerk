#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

void serial_begin(unsigned int baud){
	UCSR0A = 0 << U2X0;//normale snelheid
	UCSR0B = 1 << RXEN0 | 1 << TXEN0;//activeer rx en tx
	UCSR0C = 1 << UCSZ01 | 1 << UCSZ00;//8 data bits 1 stop-bit
	UBRR0 = (F_CPU / 16 / baud - 1);
}

unsigned char serial_read( void ){
	 if(UCSR0A & (1<<RXC0)){
		return UDR0;
	 }
	 else{
		 return 0;
	 }
}

void serial_write(char* sendString){
  for(int i=0; i<strlen(sendString);i++){
    while(!(UCSR0A & (1<<UDRE0)));
  	UDR0 = sendString[i];
  }
}

void serial_writeln(char* sendString){
  for(int i=0; i<strlen(sendString);i++){
    while(!(UCSR0A & (1<<UDRE0)));
  	UDR0 = sendString[i];
  }
  UDR0 = '\n';
}
