#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#define BAUD_RATE 9600
#define BAUD_RATE_DIVISOR (F_CPU / 16 / BAUD_RATE - 1)

#define LOOP_UNTILL_BIT_SET(sfr, bit) do { } while (bit_is_clear(sfr, bit))
#define SERIAL_INTERRUPT_CALL(function)ISR(USART_RX_vect){function}  // Macro for defining interrupt function

//char serial_receive();
//void serial_transmit(char*);
//int serial_enable_interrupt(void);
void serial_enable_interrupt(void){
	UCSR0B |= (1 << RXCIE0);
	sei();
}

void serial_init(void)
{
    UCSR0A =  0 << U2X0;//normal speed
    UCSR0B = 1 << RXEN0 | 1 << TXEN0;//activate rx and tx
    UCSR0C =  1 << UCSZ01 | 1 << UCSZ00;//8 data bits 1 stop-bit

    UBRR0 = BAUD_RATE_DIVISOR;
    _delay_ms(11);
}

void serial_transmit(char* data)   // send data from µC to PC
{
	//int length = strlen(data);
	while (*data){
		LOOP_UNTILL_BIT_SET(UCSR0A, UDRE0);
		UDR0 = *data++;
}
}
char serial_receive(void)  // receive data from PC
{
	LOOP_UNTILL_BIT_SET(UCSR0A, RXC0);
	return UDR0;
}
