#ifndef __LIB_GPIO_H__
#define __LIB_GPIO_H__

#include <stdint.h>
#include "ae350.h"

void gpio_init(GPIO_RegDef *gpio_base);
void gpio_mode(GPIO_RegDef *gpio_base, uint8_t pin, uint32_t mode);
void gpio_write(GPIO_RegDef *gpio_base, uint8_t pin, uint32_t value);
uint8_t gpio_read(GPIO_RegDef *gpio_base, uint32_t pin);

#endif    /* __LIB_GPIO_H__ */