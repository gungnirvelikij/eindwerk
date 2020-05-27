#ifndef SERIAL_H_INCLUDED
#define SERIAL_H_INCLUDED

char serial_receive();
void serial_transmit(char*);
int serial_init();
int serial_enable_interrupt();

#endif
