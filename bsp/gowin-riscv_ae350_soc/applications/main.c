
/* Gowin RiscV_AE350_SOC and RT-Thread Standard version */

// Includes ---------------------------------------------------------------------------------
#include <rtthread.h>
#include "../ae350_soc/driver/include/Driver_GPIO.h"


// Definitions ------------------------------------------------------------------------------

extern AE350_DRIVER_GPIO Driver_GPIO;	// GPIO

// On the DK-START-GW5AT138 V2.0
#define GPIO_USED_MASK	0x7				// GPIO pins used
#define NUM_LED			3				// LED number


// Callback
void gpio_callback(uint32_t event)
{
	switch (event)
	{
		// Don't have GPIO pins as input interrupt event
		default:
			break;
	}
}

// Main application entry
int main(void)
{
	AE350_DRIVER_GPIO *GPIO_Dri = &Driver_GPIO;
	uint8_t num = 0;
	uint32_t led_pin = 0;	// This led

	//Initializes GPIO
	GPIO_Dri->Initialize(gpio_callback);

	// Set GPIO direction (GPIO pins as led: output)
	GPIO_Dri->SetDir(GPIO_USED_MASK, AE350_GPIO_DIR_OUTPUT);

	// Run waterfall led
	// 0: low level, off
	// 1: high level, on
	while(1)
	{
		// This led
		led_pin = 0x1 << (num++);

		// Other leds are off
		GPIO_Dri->Write(~led_pin, 0);	// Low level: off

		// This led is on
		GPIO_Dri->Write(led_pin, 1);	// High level: on

		rt_thread_mdelay(100);			// Delay

		if(num == NUM_LED)
		{
			num = 0;
		}
	}
}
