#include "LiquidCrystal_I2C.h"
#include "lcd.h"

LiquidCrystal_I2C lcd(0x27,20,4); // 16 characters, 2 lines

void lcd_setup()
{
	lcd.init();
	lcd.backlight();
	lcd.setCursor(3,0);
	lcd.print("Yooo");
	lcd.setCursor(2,1);
	lcd.print("sssup");
}
