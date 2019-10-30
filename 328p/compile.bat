echo creating hex file
avr-objcopy -O ihex -R .eeprom evse evse.hex
echo uploading
avrdude -F -V -c arduino -p ATMEGA328P -P COM4 -b 57600 -U flash:w:evse.hex
