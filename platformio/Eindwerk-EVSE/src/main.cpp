#include <Arduino.h>
#include "EVSE.h"
#include <LiquidCrystal_I2C.h>

//
// Variables
//


const uint8_t delay_ADC = 0; // in µs

char ADC_result_string[255];
unsigned char dutycycle = 1;

unsigned char charging = 0;
unsigned char ventilation = 0;

unsigned char state = 0;  // 0: not connected, 1: connected no charge, 2: connected charge, 3: connected ventilation no charge, 4: connected ventilation charge, 5: error
unsigned char current = 16;
unsigned char state_displayed = 0;
unsigned char current_displayed = 0;

int LCDDelay = 0;
char LCDDelayRunning = 0;

int RelayDelay = 0;
char RelayDelayRunning = 0;

int PeakTimer = 0;
char Peak = 0;

LiquidCrystal_I2C lcd(0x3F,20,4);

int reading;

// Pins

int adcpin = A0;   // analog pin 0
int pwmpin = 6; // digital pin 6
int interruptpin = 2; // digital pin 2
int relaypin = 5;
int accouplerpin = 3;
int relaycouplerpin = 4;
//SCL = A5
//SDA = A4
//VDD led = 5V

//
// Functions
//

void start_charging(){
	if(!charging){
		digitalWrite(relaypin, HIGH);
		charging = 1;
		RelayDelay = 0;
		RelayDelayRunning = 1;
	}
}

void stop_charging(){
	if(charging){
		digitalWrite(relaypin, LOW);
		charging = 0;
		RelayDelay = 0;
		RelayDelayRunning = 1;
	}
}

void check_state(){ // check reading by ADC (10 bits: 0 to 1024)
	// 12V-> no vehicle detected
	// 9V -> Vehicle detected, no charging required
	// 6V -> charging required
	// 3V -> charging only if in ventilated space (outside)
	// 0V -> error

	if (digitalRead(accouplerpin) == LOW){
		if(reading > 915){  // 12V
			//Serial.println("not connected \n\r");
			stop_charging();
			if (digitalRead(relaycouplerpin) == LOW && !RelayDelayRunning){
				set_state(7);  // relay stuck to closed
			}
			else{
				set_state(0);
			}
		} else if(reading > 800) { // 9V
			//Serial.println("Connected, not charging \n\r");
			stop_charging();
			if (digitalRead(relaycouplerpin) == LOW && !RelayDelayRunning){
				set_state(7);
			}
			else{
				set_state(1);
			}
		} else if(reading > 700) { // 6V
			//Serial.println("Connected, charging requested\n\r");

			start_charging();
			set_state(2);
			_delay_us(100000);
			if (digitalRead(relaycouplerpin) == HIGH && !RelayDelayRunning){
				set_state(6);
				stop_charging();
			}

		} else if(reading > 600) { // 3V
			//Serial.println("Connected, charging with vent requested \n\r");

			if(ventilation){
				start_charging();
				set_state(4);

				if (digitalRead(relaycouplerpin) == HIGH && !RelayDelayRunning){
					set_state(6);
					stop_charging();
				}
			} else {
				stop_charging();
				set_state(3);
			}
		} else { //0V
			//Serial.println("Something's gone wrong\n\r");
			stop_charging();
			set_state(10);
		}
	} else {
	stop_charging();
	set_state(5);
	}
}
void set_state(char newstate){
	state = newstate;
}

void set_reading(){
	reading = analogRead(adcpin);

	// gets triggered by 1 KHz square wave => clock
	if(RelayDelayRunning){  // delay to give relay time to open, 200 ms
		if(RelayDelay < 200){
			RelayDelay++;
		}else{
			RelayDelay = 0;
			RelayDelayRunning = 0;
		}
	}
	if(LCDDelayRunning){  // delay to give LCD time to write, 200 ms
		if(LCDDelay < 50){
			LCDDelay++;
		}else{
			LCDDelay = 0;
			LCDDelayRunning = 0;
		}
	}
Serial.println(PeakTimer);
	if(Peak){    // timer for peak

		if(PeakTimer <= 1500){   //peak
			PeakTimer ++;
		} else {  // enter cooldown
			PeakTimer = 0;
			Peak = 0;
			set_current(16);
			Serial.println(current);
		}
	}
 // cooldown 1 min
		if(PeakTimer <= 6000){   //cooldown
			PeakTimer ++;
	} else {     // enter peak
			PeakTimer = 0;
			Peak = 1;
			set_current(29);
			Serial.println(current);
		}
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
	case 5:
		state_string = "ERROR - AC NOT CONNECTED";
			break;
	case 6:
		state_string = "ERROR - RELAY MALFUNCTION";
			break;
	case 7:
		state_string = "ERROR - RELAY STUCK";
		lcd.clear();
		lcd.setCursor(1,0);
		lcd.print(state_string);
		lcd.setCursor(1,1);
		lcd.print(current);
		while(1);   //TODO -> WTF?
			break;
	default:
		state_string = "ERROR";
  }

	if(!LCDDelayRunning){
		if((state != state_displayed) || (current != current_displayed)){
			lcd.clear();
			lcd.setCursor(1,0);
			lcd.print(state_string);
			lcd.setCursor(1,1);
			lcd.print(current);
			Serial.println("lcd write");
			state_displayed = state;
			current_displayed = current;
			LCDDelayRunning = 1;
		}
	}
}

void set_current(char amps){  //max 20A
	if(amps < 30){
		current = amps;
		dutycycle = amps/0.6;
	} else {
		set_current(6);
	}
}

void setup() {
	set_current(16);

  //serial monitor
  Serial.begin(9600);
	pinMode(accouplerpin, INPUT_PULLUP);
	pinMode(relaycouplerpin, INPUT_PULLUP);
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
	delay(1000);
  write_lcd();
}

void loop() {
  // put your main code here, to run repeatedly:
  check_state();
  write_lcd();
}
