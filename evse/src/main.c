#include "main.h"
#include <arduino.h>


const uint8_t delay_ADC = 0; // in µs

char ADC_result_string[255];
unsigned char dutycycle = 10;

unsigned char charging = 0;
unsigned char ventilation = 0;

unsigned short ADC_12V;
unsigned short ADC_9V;
unsigned short ADC_6V;
unsigned short ADC_3V;
unsigned short ADC_0V;
unsigned short ADC_result;

 // I2C adres is 3F, SCL 100KHz

// ISR(PCINT1_vect){
// 	ADCSRA |= (1 << ADSC); // start ADC-conversie
// }

ISR(ADC_vect){
	ADC_result = ADC;
}

ISR(TIMER0_COMPA_vect){ // triggered when PWM has reached top -> trigger ADC
	_delay_us(delay_ADC);
	ADCSRA |= (1 << ADSC);
}

void ADC_to_Serial(){
	//itoa(ADC_result, ADC_result_string, 10);
	//Serial.print(ADC_result_string);
	check_state(ADC_result);
  //ADC_to_Serial();
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
	// 12V-> no vehicle detected
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
		serial_transmit("Something went wrong\n\r");
		stop_charging();
	}
}

void set_ADC_values(){  // set ADC values at start to prevent recalculation at every check needed
	ADC_12V = ADC_MAX * (11.0/12.0); // set threshold 1V lower to allow discrepancies
  ADC_9V = ADC_MAX * (8.0/12.0);
	ADC_6V = ADC_MAX * (5.0/12.0);
	ADC_3V = ADC_MAX * (2.0/12.0);
}

int main(void) {
	set_ADC_values();
	init_interrupts();
	adc_init();
	serial_init();
	pwm_init();
	set_duty(dutycycle);

	while(1)
	{
		ADC_to_Serial();
		_delay_ms(100);
	}
}
