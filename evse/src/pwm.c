#include "pwm.h"

void pwm_init(void){
  DDRD |= (1 << DDD6)|(1 << DDD5); //PD6 (D6) as output
  TCCR0A |= (1 << COM0A1) | (1 << COM0B1); // none-inverting mode
//FAST PWM mode with OCR0A as TOP
  TCCR0A |= (1 << WGM00)|(1 << WGM01);
  TCCR0B |= (1 << WGM02);

  //prescaler CLK/8
  TCCR0B |= (1 << CS01)|(1 << CS00);
  sei();
  TIMSK0 |= (1 << OCIE0A) | (1 << OCIE0B); //
  OCR0A = 250; //TOP
  OCR0B = 100; //duty cycle
}

void set_duty(int duty){
    if (duty > 100) {                   //overflow protection
      duty = 100;
    }
    int map = 0;
    map = (OCR0A/100)*duty;          //map input to output
    OCR0B = map; // 0xFFFF = duty cycle 0%
    //OCR1B = 0x000F; // OPTIONEEL TWEEDE PWM COUNTER 75% duty cycle @ 16bit
  }
