#define LOOP_UNTIL_CLEARED(sfr, bit) while(sfr & (1 << bit)) {}

void init_interrupts(void);
void adc_init(void);
int analogread(void);
