#include <Arduino.h>
#include "EVSE.h"
#include <LiquidCrystal_I2C.h>

//
// Variables
//

const uint8_t delay_ADC = 0; // in µs

char ADC_result_string[255];
unsigned char dutycycle = 0;

unsigned char charging = 0;
unsigned char ventilation = 0;

unsigned char state = 0;  // 0: not connected, 1: connected no charge, 2: connected charge, 3: connected ventilation no charge, 4: connected ventilation charge, 5: error
unsigned char current = 0;

LiquidCrystal_I2C lcd(0x3F,20,4);

int reading;

// Pins

int adcpin = A0;   // analog pin 0
int pwmpin = 6; // digital pin 6
int interruptpin = 2; // digital pin 2
int relaypin = 13;
//SCL = A5
//SDA = A4
//VDD led = 5V

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
		digitalWrite(relaypin, HIGH);
		charging = 1;
	}
}

void stop_charging(){
	if(charging){
		digitalWrite(relaypin, LOW);
		charging = 0;
	}
}

void check_state(){ // check reading by ADC (10 bits: 0 to 1024)
	// 12V-> no vehicle detected
	// 9V -> Vehicle detected, no charging required
	// 6V -> charging required
	// 3V -> charging only if in ventilated space (outside)
	// 0V -> error

	// map reading from 500-900 to 0-4)
	int range = map(reading, 500, 900, 0, 4);

	  // do something different depending on the range value:
	  switch (range) {
	    case 0:    // reading > 500
					stop_charging();
					set_state(5);
	      break;
	    case 1:    // reading > 600
			//Serial.println("Connected, charging with vent requested \n\r");

					if(ventilation){
							start_charging();
							set_state(4);
					}
					else {
						stop_charging();
						set_state(3);
					}
	      break;
	    case 2:    // reading > 700
					//Serial.println("Connected, charging requested\n\r");
					start_charging();
					set_state(2);
	      break;
	    case 3:    // reading > 800
			//Serial.println("Connected, not charging \n\r");
					stop_charging();
					set_state(1);
	      break;
			case 4:		// reading > 900
					//Serial.println("not connected \n\r");
					stop_charging();
					set_state(0);
				break;

			}
}
void set_state(char newstate){
	if(state != newstate){
		state = newstate;
		write_lcd();
	}
}

void set_reading(){
	reading = analogRead(adcpin);
}


void write_lcd(){
String state_string = "";
  switch(state){
	case 0:
		state_string = "Not connected";
	  	break;
	case 1:
		state_string = "Not charging";
	  	break;
	case 2:
		state_string = "Charging";
	  	break;
	case 3:
		state_string = "HOT - not charging";
	  	break;
	case 4:
		state_string = "HOT - charging";
	  	break;
	default:
		state_string = "ERROR";
  }
  lcd.clear();
  lcd.setCursor(1,0);
  lcd.print(state_string);
  lcd.setCursor(1,1);
  lcd.print(current);
}

void set_current(char amps){  //max 20A
	if(amps < 21){
		current = amps;
		dutycycle = amps/0.6;
	} else {
		set_current(6);
	}
}

void setup() {
	set_current(6);

  //serial monitor
  Serial.begin(9600);

  pinMode(relaypin, OUTPUT);

  // interrupt
  pinMode(interruptpin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(interruptpin), set_reading, FALLING);

  //PWM
  pinMode(pwmpin, OUTPUT);
  analogWrite(pwmpin, map(100-dutycycle, 0, 100, 0, 255));  // set PWM on basis of dutycycle variable (mapped from % to byte)

	//LCD
  lcd.init();
  lcd.backlight();
  write_lcd();
}

void loop() {
  // put your main code here, to run repeatedly:
  check_state();
}
