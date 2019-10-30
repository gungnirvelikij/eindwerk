echo "Creating hex-file"
avr-objcopy -O ihex -R .eeprom evse evse.hex

echo "Flashing"
avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:evse.hex

