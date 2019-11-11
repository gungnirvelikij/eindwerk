#include "serial.h"

void serial_write(char val){
	while(!(UCSR0A & (1<<UDRE0)));
  	UDR0 = val;
}

void serial_begin(unsigned int baud){
	UCSR0A = 0 << U2X0;//normale snelheid
	UCSR0B = 1 << RXEN0 | 1 << TXEN0;//activeer rx en tx
	UCSR0C = 1 << UCSZ01 | 1 << UCSZ00;//8 data bits 1 stop-bit
	UBRR0 = (F_CPU / 16 / baud - 1);
}

void send_string(unsigned char s[]){
	int i = 0;
	while (s[i] !=0x00){
		serial_write(s[i]);
		i++;
	}
}