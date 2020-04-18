#include <Arduino.h>
#include "EVSE.h"

#define SAMPLE_PERIOD 500

int adcpin = A0;   // analog pin 0
int interruptpin = 2; // digital pin 2
int reading;

unsigned char state = 0;  // 0: not connected, 1: connected no charge, 2: connected charge, 3: connected ventilation no charge, 4: connected ventilation charge, 5: error
unsigned char ventilation = 0;

void set_reading(){
  reading = analogRead(adcpin);
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
					set_state(5);
	      break;
	    case 1:    // reading > 600
			//Serial.println("Connected, charging with vent requested \n\r");

					if(ventilation){
							set_state(4);
					}
					else {
						set_state(3);
					}
	      break;
	    case 2:    // reading > 700
					//Serial.println("Connected, charging requested\n\r");
					set_state(2);
	      break;
	    case 3:    // reading > 800
			//Serial.println("Connected, not charging \n\r");
					set_state(1);
	      break;
			case 4:		// reading > 900
					//Serial.println("not connected \n\r");
					set_state(0);
				break;

			}
}

void set_state(char newstate){
	if(state != newstate){
		state = newstate;
    write_serial();

	}
}
void write_serial(){
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
Serial.println(state_string);
}

// special return result for the 'digital communications' pilot.
#define DIGITAL_COMM_REQD 999999
// duty is tenths-of-a-percent (that is, fraction out of 1000).
inline unsigned long dutyToMA(unsigned long duty) {
  // Cribbed from the spec - grant a +/-2% slop
  if (duty < 30) {
    // < 3% is an error
    return 0;
  }
  else if (duty <= 70) {
    // 3-7% - digital
    return DIGITAL_COMM_REQD;
  }
  else if (duty < 80) {
    // 7-8% is an error
    return 0;
  }
  else if (duty <= 100) {
    // 8-10% is 6A
    return 6000;
  }
  else if (duty <= 850) { // 10-85% uses the "low" function
    return duty * 60;
  }
  else if (duty <= 960) { // 85-96% uses the "high" function
    return (duty - 640) * 250;
  }
  else if (duty <= 970) {
    // 96-97% is 80A
    return 80000;
  }
  else { // > 97% is an error
    return 0;
  }
}

void setup() {
  Serial.begin(9600);

  // interrupt
  pinMode(interruptpin, INPUT_PULLUP);
  pinMode(adcpin, INPUT);
  attachInterrupt(digitalPinToInterrupt(interruptpin), set_reading, FALLING);

}

void loop() {

  check_state();

  unsigned int last_state = 99; // neither HIGH nor LOW
  unsigned long high_count = 0, low_count = 0, state_changes = -1; // ignore the first change from "invalid"

  for(unsigned long start_poll = millis(); millis() - start_poll < SAMPLE_PERIOD; ) {
    unsigned int state = digitalRead(interruptpin);

    if (state == LOW)
      low_count++;
    else
      high_count++;

    if (state != last_state) {
      state_changes++;
      last_state = state;
    }
  }

  char buf[32];
  unsigned long amps = 0;
  if (state_changes == 0) {
    sprintf(buf, "   0 Hz     %s   ", (low_count>high_count)?"-":"+");
  }
  else {
    unsigned int duty = (high_count * 1000) / (high_count + low_count);
    duty %= 1000; // turn 100% into 0% just for display purposes. A 100% duty cycle doesn't really make sense.

    unsigned long frequency = (state_changes / 2) * (1000 / SAMPLE_PERIOD);

    amps = dutyToMA(duty);

    sprintf(buf, "%4ld Hz   %2d.%01d %%", frequency, duty / 10, duty % 10);
  }
    Serial.print(buf);
    Serial.print(" ");

  if (amps == DIGITAL_COMM_REQD) {
    sprintf(buf, "Digital");
  }
  else {
    sprintf(buf, "%2ld.%02ld A", amps / 1000, (amps % 1000) / 10);
  }
    Serial.print(buf);
    Serial.print("\r\n");

  }
