#include "gpio.h"

#include <stdint.h>
#include "ae350.h"

void gpio_init(GPIO_RegDef *gpio_base)
{
	// Disable all interrupts
	gpio_base->INTREN = 0;

    // Write 1 to clear interrupt status
	gpio_base->INTRSTATUS = 0xFFFFFFFF;
}

void gpio_mode(GPIO_RegDef *gpio_base, uint8_t pin, uint32_t mode)
{
    if (mode)
    {
        gpio_base->CHANNELDIR |= (1 << pin);
    }
    else
    {
        gpio_base->CHANNELDIR &= ~(1 << pin);
    }
}

void gpio_write(GPIO_RegDef *gpio_base, uint8_t pin, uint32_t value)
{
    if (value)
    {
        gpio_base->DOUTSET = (1 << pin);
    }
    else
    {
        gpio_base->DOUTCLEAR = (1 << pin);
    }
}

uint8_t gpio_read(GPIO_RegDef *gpio_base, uint32_t pin)
{
    return (gpio_base->DATAIN >> pin) & 0x1;
}
