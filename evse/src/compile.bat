avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o main.o main.c
avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o serial.o serial.c
avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o adc.o adc.c
avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o pwm.o pwm.c

avr-gcc -mmcu=atmega328p main.o serial.o adc.o pwm.o -o evse

echo creating hex file
avr-objcopy -O ihex -R .eeprom evse evse.hex
echo uploading
avrdude -F -V -c arduino -p ATMEGA328P -P COM4 -b 57600 -U flash:w:evse.hex
