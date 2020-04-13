#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>  // indien deze niet gevonden wordt: uitvoeren in terminal: pio lib install "LiquidCrystal_I2C"

#include "EVSE-ESP32.h"

//
// pinout
//

const int PWMpin = 16;
const int ADCpin = 34;
const int interruptpin = 35;
//pin 22 = I2C SCL
//pin 21 = I2C SDA
// LCD VCC = 5V

//
// settings
//

// LCD
int lcdColumns = 16;
int lcdRows = 2;
LiquidCrystal_I2C lcd(0x3F, lcdColumns, lcdRows);

// PWM
unsigned char PWMdutycycle = 20;
const int PWMfreq = 1000; // 1KHz pilot
const int PWMchannel = 0;
const int PWMresolution = 8; // 8 bits

//
// working variables
//

char ADC_result_string[255];
unsigned int ADC_result;

unsigned char charging = 0;
unsigned char ventilation = 0;



//
// METHODS
//

void set_PWM_dutycycle(double dutycycle){   // double to allow for converting
  int duty_bits = dutycycle / 100.0 * 255.0;   // convert from % to 8bits
  ledcWrite(PWMchannel, duty_bits);
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

void LCD_set(char * text){
  lcd.clear();
    lcd.setCursor(0, 0);
    //lcd.print(text);
    if(charging){
      lcd.setCursor(1, 0);
     // lcd.print("6V");
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
		stop_charging();
    Serial.println("not connected \n\r");
    LCD_set("Not connected");
	} else if(reading > (int)(8.0/12.0*ADC_MAX)) { // 9V
		stop_charging();
    Serial.println("Connected, not charging \n\r");
		LCD_set("Not charging");
	} else if(reading > (int)(5.0/12.0*ADC_MAX)) { // 6V
		start_charging();
    Serial.println("Connected, charging requested\n\r");
    LCD_set("Charging");
	} else if(reading > (int)(2.0/12.0*ADC_MAX)) { // 3V
		Serial.println("Connected, charging with vent requested \n\r");
		if(ventilation){
			start_charging();
      LCD_set("Charging");
		} else {
			stop_charging();
      LCD_set("Not charging");
		}
	} else { //0V
		stop_charging();
    LCD_set("ERROR");
    char text[255];
		itoa(reading, text, 10);
		//Serial.println("Something's gone wrong\n\r");
		Serial.println(text);
		Serial.println("\n\r");

	}
}

void IRAM_ATTR isr() {    // interrupt to do ADC reading
  ADC_result = analogRead(ADCpin);
}

//
// ARDUINO SETUP & LOOP
//

void setup() {
  // put your setup code here, to run once:
  Wire.begin();
  Serial.begin(9600);

    // initialize LCD
  lcd.init();
  lcd.backlight();

  // initialize PWM
  ledcSetup(PWMchannel, PWMfreq, PWMresolution);
  ledcAttachPin(PWMpin, PWMchannel);
  set_PWM_dutycycle(20.0);
  attachInterrupt(interruptpin, isr, RISING);

}

void loop() {
  // put your main code here, to run repeatedly:
 check_state(ADC_result);

}
