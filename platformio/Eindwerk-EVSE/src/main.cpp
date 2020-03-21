#include <Arduino.h>
#include "EVSE.h"

//
// Variables
//

const uint8_t delay_ADC = 0; // in µs

char ADC_result_string[255];
unsigned char dutycycle = 10;

unsigned char charging = 0;
unsigned char ventilation = 0;

int reading;

// Pins

int adcpin = A0;   // analog pin 0
int pwmpin = 6; // digital pin 6
int interruptpin = 2; // digital pin 2
int debugpin = 9;

//
// Interrupts
//

// ISR(TIMER1_COMPA_vect){ // triggered when PWM has reached top -> trigger ADC
//	_delay_us(delay_ADC);
	// ADCSRA |= (1 << ADSC);
//  check_state(analogRead(adcpin));
// }

//
// Functions
//

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

void check_state(){ // check reading by ADC (10 bits: 0 to 1024)
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
		Serial.println("Something's gone wrong\n\r");
		stop_charging();
	}
}

void set_reading(){
  digitalWrite(debugpin, HIGH);
  reading = analogRead(adcpin);
  digitalWrite(debugpin, LOW);
}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pwmpin, OUTPUT);
  pinMode(debugpin, OUTPUT);
  pinMode(interruptpin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(interruptpin), set_reading, RISING);
  analogWrite(pwmpin, map(dutycycle, 0, 100, 0, 255));  // set PWM on basis of dutycycle variable (mapped from % to byte)

}

void loop() {
  // put your main code here, to run repeatedly:
 
  check_state(); 
}