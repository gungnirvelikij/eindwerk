#include "pwm.h"

void pwm_init(void){
  DDRB |= (1 << DDB1) | ( 1 << DDB5); // PB1 and PB2 als output
  ICR1 = 0x3E80; //TOP-waarde op 16-bit  16MHz / 1KHz -> 16000 = 0x3E80 
  TCCR1A |= (1 << COM1A1) | (1 << COM1B1); // none-inverting mode
  // FAST PWM mode (16-bit) met ICR1 as TOP 1110
  TCCR1A |= (1 << WGM11);
  TCCR1B |= (1 << WGM12) | (1 << WGM13);

  // Voorlopig geen prescaler nodig (volle snelheid)
  TCCR1B |= (1 << CS10);
  sei();
  TIMSK1 |= (1 << OCIE1A);  // interrupt enabled for OCF1A -> when output compare has been reached -> start of new period: used to trigger ADC
}

void set_duty(int duty){
    if (duty > 100) {                   //overflow protection
      duty = 100;
    }
    int map = 0;
    map = (ICR1/100)*duty;          //map input to output
    OCR1A = (map); // 0xFFFF = duty cycle 0%
    //OCR1B = 0x000F; // OPTIONEEL TWEEDE PWM COUNTER 75% duty cycle @ 16bit
  }
