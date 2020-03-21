#include <Arduino.h>
#include "eindwerkmain.h"

const uint8_t delay_ADC = 0; // in µs

char ADC_result_string[255];
unsigned char dutycycle = 20;

unsigned char charging = 0;
unsigned char ventilation = 0;

unsigned short ADC_result;

 // I2C adres is 3F, SCL 100KHz 

// ISR(PCINT1_vect){
// 	ADCSRA |= (1 << ADSC); // start ADC-conversie
// }

ISR(ADC_vect){
	ADC_result = ADC;
	ADC_to_serial();
}

ISR(TIMER1_COMPA_vect){ // triggered when PWM has reached top -> trigger ADC
	_delay_us(delay_ADC);
	ADCSRA |= (1 << ADSC);
}

void ADC_to_serial(){
	//itoa(ADC_result, ADC_result_string, 10);
	//Serial.println(ADC_result_string);
	check_state(ADC_result);
		
}

void start_charging(){
	if(!charging){	
		Serial.println("START \n\r");
	}
}

void stop_charging(){
	if(charging){
		Serial.println("STOP \n\r");
	}
}

void check_state(int reading){ // check reading by ADC (10 bits: 0 to 1024)
	// 12V-> no vehicle detected 
	// 9V -> Vehicle detected, no charging required
	// 6V -> charging required
	// 3V -> charging only if in ventilated space (outside) 
	// 0V -> error
  // value -1 to allow for small discrepancy
	
	if(reading > ((int)(11.0/12.0*ADC_MAX))){  // 12V
		Serial.println("not connected \n\r");
		stop_charging();
	} else if(reading > (int)(8.0/12.0*ADC_MAX)) { // 9V
		Serial.println("Connected, not charging \n\r");
		stop_charging();
	} else if(reading > (int)(5.0/12.0*ADC_MAX)) { // 6V
		Serial.println("Connected, charging requested\n\r");
		start_charging();
	} else if(reading > (int)(2.0/12.0*ADC_MAX)) { // 3V
		Serial.println("Connected, charging with vent requested \n\r");
		
		if(ventilation){
			start_charging();
		} else {
			stop_charging();
		}
	} else { //0V
		char text[255];
		itoa(reading, text, 10);
		//Serial.println("Something's gone wrong\n\r");
		Serial.println(text);
		Serial.println("\n\r");
		stop_charging();
	}
}

void setup() {
  // put your setup code here, to run once:

  init_interrupts();
	adc_init();
	Serial.begin(9600);
	pwm_init();
	set_duty(dutycycle);
  
}

void loop() {
  // put your main code here, to run repeatedly:

  Serial.println("12V");
  Serial.println((int)(11.0/12.0*ADC_MAX));
  Serial.println("3V");
  Serial.println((int)(2.0/12.0*ADC_MAX));
}