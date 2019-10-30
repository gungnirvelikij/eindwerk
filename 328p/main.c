#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define LOOP_UNTIL_CLEARED(sfr, bit) while(sfr & (1 << bit)) {}
int value;
char serial_value = 0;
unsigned int Dutycycle = 0;
char setflag = 0;
void pwm_init(void){
  DDRB |= (1 << DDB1); // PB1 and PB2 als output
  ICR1 = 0xFFFF; //TOP-waarde op 16-bit
  TCCR1A |= (1 << COM1A1) | (1 << COM1B1); // none-inverting mode
  // FAST PWM mode (16-bit) met ICR1 as TOP 1110
  TCCR1A |= (1 << WGM11);
  TCCR1B |= (1 << WGM12) | (1 << WGM13);

  // Voorlopig geen prescaler nodig (volle snelheid)
  TCCR1B |= (1 << CS10);
  TIMSK1 |= (1<<OCIE0A);
  sei();
}

ISR(TIMER1_COMPA_vect){
		ADCSRA |= (1 << ADSC); // start ADC-conversie
}

ISR(ADC_vect){
	value = ADC;
	setflag = 1;
}

void set_duty(int duty){
    if (duty > 100) {                   //overflow protection
      duty = 100;
    }
    int map = 0;
    map = (0xFFFF/100)*duty;          //map input to output
    OCR1A = (map); // 0xFFFF = duty cycle 0%
    //OCR1B = 0x000F; // OPTIONEEL TWEEDE PWM COUNTER 75% duty cycle @ 16bit
  }

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

void adc_init(void){
	ADMUX |= (1 << REFS0); // interne referentie van 5 v AVCC
	ADMUX &= 0xF0; // selecteer ADC0
	ADCSRA |=  (1 << ADPS1); // prescaler op /64 (1 << ADPS2) |
	ADCSRA |= (1 << ADEN); // activeer ADC
	ADCSRA |= (1 << ADIE); // activeer ADC interrupt
}
int analogread(void){
		ADCSRA |= (1 << ADSC); // start ADC-conversie
		LOOP_UNTIL_CLEARED(ADCSRA, ADIF); // loopen tot conversie gedaan
		return ADC; // lees de 10 bit-waarde in
}
int main(void) {
	adc_init();
	serial_begin(9600);
	serial_writeln("SERIAL INIT");
	pwm_init();
	serial_writeln("PWM INIT");
	set_duty(25);
	char string[4];
	
	while(1){
		if (setflag == 1){
			itoa(value, string, 10);
			serial_write(string);
			setflag = 0;
			}
	}
}
