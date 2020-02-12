
#include "pwm.h"
#include "adc.h"
#include "serial.h"
#include "util/delay.h"
//#define LOOP_UNTIL_CLEARED(sfr, bit) while(sfr & (1 << bit)) {}
#define ADC_MAX 1023


unsigned short adc_resultaat;
unsigned short newvalue;
unsigned char adc_tochar;
unsigned char adc_toled;
unsigned char string[255];
unsigned char dutycycle = 10;
const uint8_t delay_ADC = 90; //in µs
unsigned char charging = 0;
unsigned char ventilation = 0;
void ADC_to_serial();
void check_state(int);

unsigned short ADC_12V;
unsigned short ADC_9V;
unsigned short ADC_6V;
unsigned short ADC_3V;
unsigned short ADC_0V;

// ISR(PCINT1_vect){
// 	ADCSRA |= (1 << ADSC); // start ADC-conversie
// }

ISR(ADC_vect){
	adc_resultaat = ADC;
	ADC_to_serial();
}

ISR(TIMER1_COMPA_vect){ // triggered when PWM has reached top -> trigger ADC
	_delay_us(delay_ADC);
	ADCSRA |= (1 << ADSC);
}

void ADC_to_serial(){
	itoa(adc_resultaat, string, 10);
	//serial_transmit(string);
	//serial_transmit("\n\r");
	check_state(adc_resultaat);
}

void start_charging(){
	if(!charging){	
		serial_transmit("START \n\r");
	}
}

void stop_charging(){
	if(charging){
		serial_transmit("STOP \n\r");
	}
}

void check_state(int reading){ // check reading by ADC (10 bits: 0 to 1024)
	// 12V (above 11/12 of ADC_MAX)-> no vehicle detected 
	// 9V -> Vehicle detected, no charging required
	// 6V -> charging required
	// 3V -> charging only if in ventilated space (outside) 
	// 0V -> error
	
	if(reading > (ADC_12V)){  // 12V
		serial_transmit("not connected \n\r");
		stop_charging();
	} else if(reading > (ADC_9V)) { // 9V
		serial_transmit("Connected, not charging \n\r");
		stop_charging();
	} else if(reading > (ADC_6V)) { // 6V
		serial_transmit("Connected, charging requested\n\r");
		start_charging();
	} else if(reading > (ADC_3V)) { // 3V
		serial_transmit("Connected, charging with vent requested \n\r");
		
		if(ventilation){
			start_charging();
		} else {
			stop_charging();
		}
	} else { //0V
		serial_transmit("Something's gone wrong\n\r");
		stop_charging();
	}
}

void set_ADC_values(){  // set ADC values at start to prevent recalculation at every check needed
	ADC_12V = ADC_MAX * (11.0/12.0);
       	ADC_9V = ADC_MAX * (8.0/12.0);
	ADC_6V = ADC_MAX * (5.0/12.0);
	ADC_3V = ADC_MAX * (2.0/12.0);
}

int main(void) {
	set_ADC_values();

	init_interrupts();
	adc_init();
	//serial_begin(9600);
	//send_string("SERIAL INIT");
	serial_enable_interrupt();
	serial_init();
	pwm_init();
	//send_string("PWM INIT");
	set_duty(dutycycle);
	//serial_write(dutycycle);
	unsigned short newvalue;
	while(1)	
	{
		
		//if ((adc_resultaat != newvalue) && (adc_resultaat > 400)){
		// ADCSRA |= (1 << ADSC);	
		newvalue = adc_resultaat;
			adc_tochar = (adc_resultaat / 4);
			//itoa(adc_resultaat, string, 10);
			//send_string(string);
			//send_string("\n");
			//serial_transmit("test");
			//serial_transmit("\n\r");
			//serial_transmit("\n");
		//}
	}
}
