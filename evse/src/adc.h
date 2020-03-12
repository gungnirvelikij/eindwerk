
//#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define LOOP_UNTIL_CLEARED(sfr, bit) while(sfr & (1 << bit)) {}

void init_interrupts(void);
void adc_init(void);
int analogread(void);
