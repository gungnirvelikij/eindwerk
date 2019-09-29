/* LEDC (LED Controller) fade example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_err.h"
#include "esp_system.h"
#include "esp_log.h"
#include "esp_spi_flash.h"

#include "driver/ledc.h"
#include "driver/gpio.h"
#include "driver/i2c.h"
#include "sdkconfig.h"
#include "rom/uart.h"

#include "i2c-lcd1602.h"

//I2C LCD DEFINITIONS

#define USE_STDIN 1
#define TAG "lcd"
#define I2C_MASTER_NUM		I2C_NUMBER(CONFIG_I2C_MASTER_PORT_NUM)
#define I2C_MASTER_TX_BUF_LEN	0		//disabled
#define I2C_MASTER_RX_BUF_LEN	0		//disabled
#define I2C_MASTER_FREQ_HZ	CONFIG_I2C_MASTER_FREQUENCY
#define I2C_MASTER_SDA_IO	CONFIG_I2C_MASTER_SDA
#define I2C_MASTER_SCL_IO	CONFIG_I2C_MASTER_SDL
#define I2C_LCD_ADDR 		0x27

//LEDC DEFINITIONS

#define LEDC_HS_TIMER          LEDC_TIMER_0
#define LEDC_HS_MODE           LEDC_HIGH_SPEED_MODE
#define LEDC_HS_CH0_GPIO       13

#define LEDC_TEST_CH_NUM       1
#define LEDC_TEST_DUTY         0
#define LEDC_TEST_FADE_TIME    0


//i2c init function

static void i2c_master_init(void)
{
    int i2c_master_port = I2C_MASTER_NUM;
    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;
    conf.sda_io_num = I2C_MASTER_SDA_IO;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;  
    conf.scl_io_num = I2C_MASTER_SCL_IO;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;  
    conf.master.clk_speed = I2C_MASTER_FREQ_HZ;
    i2c_param_config(i2c_master_port, &conf);
    return i2c_driver_install(i2c_master_port, conf.mode,
                       I2C_MASTER_RX_BUF_LEN,
                       I2C_MASTER_TX_BUF_LEN, 0);
};

// cycle adjust function
void SetPPCycle(int cycle){

ledc_set_duty(ledc_channel0.speed_mode, ledc_channel0.channel, cycle);
        
ledc_update_duty(ledc_channel0.speed_mode, ledc_channel0.channel);
	printf("cycle updated to %i", cycle);
};

void app_main(void)
{
    /*
     * Prepare and set configuration of timers
     * that will be used by LED Controller
     */
    ledc_timer_config_t ledc_timer = {
        .duty_resolution = LEDC_TIMER_13_BIT, // resolution of PWM duty 13 bit = 0-8192
        .freq_hz = 1000,                      // frequency of PWM signal
        .speed_mode = LEDC_HS_MODE,           // timer mode
        .timer_num = LEDC_HS_TIMER,            // timer index
        .clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
    };
    // Set configuration of timer0 for high speed channels
    ledc_timer_config(&ledc_timer);

    /*
     * Prepare individual configuration
     * for each channel of LED Controller
     * by selecting:
     * - controller's channel number
     * - output duty cycle, set initially to 0
     * - GPIO number where LED is connected to
     * - speed mode, either high or low
     * - timer servicing selected channel
     *   Note: if different channels use one timer,
     *         then frequency and bit_num of these channels
     *         will be the same
     */
    ledc_channel_config_t ledc_channel0 = {
        

            .gpio_num   = LEDC_HS_CH0_GPIO,
            .speed_mode = LEDC_HS_MODE,
	    .channel    = LEDC_CHANNEL_0,
	    .intr_type  = LEDC_INTR_DISABLE,
            .timer_sel  = LEDC_HS_TIMER,
     	    .hpoint     = 0,
            .duty       = 4000,
    };

    // Set LED Controller with previously prepared configuration

        ledc_channel_config(&ledc_channel0);

	//set i2c
	i2c_master_init();
	i2c_port_t i2c_num = I2C_MASTER_NUM;
	uint8_t address = 0x27;

	//set smbus
	smbus_info_t * smbus_info = smbus_malloc();
	smbus_init(smbus_info, i2c_num, address);
	smbus_set_timeout(smbus_info, 1000 / portTICK_RATE_MS);

	//setup lcd1602 with backlight OFF
	i2c_lcd1602_info_t * lcd_info = i2c_lcd1602_malloc();
	i2c_lcd1602_init(lcd_info, smbus_info, true);

	//turn backlight on
	ESP_LOGI(TAG, "backlight on");
	i2c_lcd1602_set_backlight(lcd_info, true);
printf("backlight on");

	ESP_LOGI(TAG, "cursor on");
	i2c_lcd1602_set_cursor(lcd_info, true);
printf("cursor on");

    ESP_LOGI(TAG, "display DE and move cursor back onto D");
  
    i2c_lcd1602_write_char(lcd_info, 'D');
    i2c_lcd1602_set_right_to_left(lcd_info);
    i2c_lcd1602_write_char(lcd_info, 'E');
    i2c_lcd1602_set_left_to_right(lcd_info);


    while (1) {
	
        
        vTaskDelay(1000 / portTICK_PERIOD_MS);

	SetPPCycle(800);
	
    };
}
