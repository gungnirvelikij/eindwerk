CC=avr-gcc
CFLAGS=-Os -DF_CPU=16000000UL -mmcu=atmega328p
DEPS = pwm.h adc.h serial.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

evse: main.o pwm.o adc.o serial.o
	$(CC) -o evse main.o pwm.o adc.o serial.o
