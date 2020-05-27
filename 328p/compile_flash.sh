avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o obj/main.o main.c
avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o obj/serial.o serial.c
avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o obj/adc.o adc.c
avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o obj/pwm.o pwm.c

avr-gcc -mmcu=atmega328p obj/main.o obj/serial.o obj/adc.o obj/pwm.o -o evse


echo "Creating hex-file"
avr-objcopy -O ihex -R .eeprom evse evse.hex

echo "Flashing"
avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:evse.hex
>>>>>>> bas

