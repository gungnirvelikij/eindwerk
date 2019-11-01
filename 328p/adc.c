#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

void init_interrupts(void){
	PCICR |= (1<<PCIE1);
	PCMSK1 |= (1<<PCINT8);
}
void adc_init(void){
	ADMUX |= (1 << REFS0); // interne referentie van 5 v AVCC
	ADMUX &= 0xF0; // selecteer ADC0

	ADCSRA |= (1 << ADPS2)| (1 << ADPS1) ; // prescaler op /128
	ADCSRA |= (1 << ADEN); // activeer ADC
	ADCSRA |= (1 << ADIE); // activeer ADC interrupt
	
}

int analogread(void){
	
		ADCSRA |= (1 << ADSC); // start ADC-conversie
		LOOP_UNTIL_CLEARED(ADCSRA, ADIF); // loopen tot conversie gedaan
		return ADC; // lees de 10 bit-waarde in
}