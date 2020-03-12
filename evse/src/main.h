#include "pwm.h"
#include "adc.h"
#include "serial.h"
#include <util/delay.h>

#define ADC_MAX 1023

void ADC_to_serial();
void start_charging();
void stop_charging();
void check_state(int);
void set_ADC_values();
