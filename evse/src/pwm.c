#include "pwm.h"

void pwm_init(void){

  //DDRB |= (1 << DDB1) | ( 1 << DDB6); // PB1 and PB2 als output
  DDRD |= (1 << DDD6)|(1 << DDD5); //PD6 (D6) as output
  //ICR1 = 0x3E80; //TOP-waarde op 16-bit  16MHz / 1KHz -> 16000 = 0x3E80
  TCCR0A |= (1 << COM0A1) | (1 << COM0B1); // none-inverting mode
  // FAST PWM mode (16-bit) met ICR1 as TOP 1110
  TCCR0A |= (1 << WGM01)|(1 << WGM00);
  TCCR0B |= (1 << WGM02);

  // Voorlopig geen prescaler nodig (volle snelheid)
  TCCR0B |= (1 << CS01);
  sei();
  TIMSK0 |= (1 << OCIE0A);  // interrupt enabled for OCF1A -> when output compare has been reached -> start of new period: used to trigger ADC
  OCR0A = 128;
  OCR0B = 0;

}

void set_duty(int duty){
    if (duty > 100) {                   //overflow protection
      duty = 100;
    }
    int map = 0;

    map = (256/100)*duty;          //map input to output
    OCR0A = 128; // 0xFFFF = duty cycle 0%

    //OCR1B = 0x000F; // OPTIONEEL TWEEDE PWM COUNTER 75% duty cycle @ 16bit
  }
