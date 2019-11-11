IDIR =../include
CC=avr-gcc
CFLAGS=-Os -DF_CPU=16000000UL -mmcu=atmega328p -I$(IDIR)

DEPS = pwm.h adc.h lcd.h LiquidCrystal_I2C.h 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) $(LIBB)

evse: main.o pwm.o adc.o lcd.o LiquidCrystal_I2C.o
	$(CC) -o evse main.o pwm.o adc.o lcd.o LiquidCrystal_I2C.o
