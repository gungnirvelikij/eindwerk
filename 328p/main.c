#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "pwm.h"
#include "adc.h"
#include "serial.h"
#include "lcd.h"

#define LOOP_UNTIL_CLEARED(sfr, bit) while(sfr & (1 << bit)) {}

unsigned short adc_resultaat;
unsigned short newvalue;
unsigned char adc_tochar;
unsigned char adc_toled;
unsigned char string[255];
unsigned char dutycycle = 10;


ISR(PCINT1_vect){
	ADCSRA |= (1 << ADSC); // start ADC-conversie
}

ISR(ADC_vect){

	adc_resultaat = ADC;

}

int main(void) {
	lcd_setup();
	init_interrupts();
	adc_init();
	serial_begin(9600);
	send_string("SERIAL INIT");
	pwm_init();
	send_string("PWM INIT");
	set_duty(dutycycle);
	serial_write(dutycycle);
	unsigned short newvalue;
	while(1){
		if ((adc_resultaat != newvalue) && (adc_resultaat > 400)){
			newvalue = adc_resultaat;
			adc_tochar = (adc_resultaat / 4);
			itoa(adc_resultaat, string, 10);
			send_string(string);
			send_string("\n");
		}
	}
}
