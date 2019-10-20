#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "uart.h"

#define LOOP_UNTIL_CLEARED(sfr, bit) while(sfr & (1 << bit)) {}
bool timing_error=0;
void pwm_init(void){
  DDRB |= (1 << DDB1) | (1 << DDB2); // PB1 and PB2 als output
  ICR1 = 999; //TOP-waarde
  //TOP = (16 000 000 / (2*8*freq))-1
  OCR1A = 0; //set duty cycle 0% to start
  TCCR1A |= (1 << COM1A1) | (1 << COM1B1); // none-inverting mode
  // FAST PWM mode (16-bit) met ICR1 as TOP
  TCCR1A |= (1 << WGM11);
  TCCR1B |= (1 << WGM12) | (1 << WGM13);
  //
  // prescaler 8
  TCCR1B |= (1 << CS11);
  TIMSK1 |= (1<<OCIE1A)
}
  void set_duty(int duty){
    if (duty > 100) {                   //overflow protection
      duty = 100;
    }
    int map = 0;
    OCR1A = (1000/100)*duty;          //map input to output

  }
ISR (TIMER1_OVF_vect) //timer1 ISR{

    if (TCNT0 & OCR1A){
      timing_error = 0;
    }
    else timing_error = 1;
}
void adc_init(void){
	ADMUX |= (1 << REFS0); // interne referentie van 5 v AVCC
	ADMUX &= 0xF0; // selecteer ADC0
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1); // prescaler op /64
	ADCSRA |= (1 << ADEN); // activeer ADC
}

void freqcnt_init(void){
	TCCR0A |= (1<<COM0A0) | (1<<COM0A1); //set oc0a on compare match
	TCCR0B |= (1<<ICES1) | (1<<CS10) | (1<<CS11) | (1<<CS12);
  OCR0A = 1000  //counter 0 set ext clock on rising edge
//TODO: set interrupt on timer1, force compare, if compare not ok => error

}
unsigned short adc(void){
	ADCSRA |= (1 << ADSC); // start ADC-conversie
		LOOP_UNTIL_CLEARED(ADCSRA, ADIF); // loopen tot conversie gedaan
		return ADC; // lees de 10 bit-waarde in
}
int main(void) {

	serial_begin(9600);
	serial_writeln("SERIAL INIT");
	pwm_init();
	serial_writeln("PWM INIT");

	while(1){


	}
}
