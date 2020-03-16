echo "Compiling"
avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o $1.o $1.c

echo "Linking"
avr-gcc -mmcu=atmega328p $1.o -o $1

echo "Creating hex-file"
avr-objcopy -O ihex -R .eeprom $1 $1.hex

echo "Flashing"
avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:$1.hex

