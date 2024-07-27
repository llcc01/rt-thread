/*
 * File      : drv_gpio.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2006 - 2012, RT-Thread Development Team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018-11-30     zhuangwei    first version
 */

#include <rtdevice.h>
#include <rthw.h>
#include <rtthread.h>

#include "ae350.h"
#include "ae350_soc/driver/include/Driver_GPIO.h"
#include "ae350_soc/lib/gpio.h"

#ifdef RT_USING_PIN

void _pin_mode(struct rt_device *device, rt_base_t pin, rt_uint8_t mode) {
  if (mode == PIN_MODE_INPUT) {
    gpio_mode(AE350_GPIO, (rt_uint8_t)pin, AE350_GPIO_DIR_INPUT);
  } else if (mode == PIN_MODE_OUTPUT) {
    gpio_mode(AE350_GPIO, (rt_uint8_t)pin, AE350_GPIO_DIR_OUTPUT);
  }
  return;
}

void _pin_write(struct rt_device *device, rt_base_t pin,
                       rt_uint8_t value) {
  gpio_write(AE350_GPIO, (rt_uint8_t)pin, value);

  return;
}

rt_ssize_t _pin_read(struct rt_device *device, rt_base_t pin) {
  return gpio_read(AE350_GPIO, (rt_uint8_t)pin);
}

rt_err_t _pin_attach_irq(struct rt_device *device, rt_base_t pin,
                                rt_uint8_t mode, void (*hdr)(void *args),
                                void *args) {
  /*
unsigned int gpio = pin;
char irq_name[10];

gpio_set_irq_type(gpio, mode);
rt_sprintf(irq_name, "PIN_%d", gpio);
rt_hw_interrupt_install(LS1C_GPIO_TO_IRQ(gpio), (rt_isr_handler_t)hdr, args,
irq_name);
  */

  return RT_EOK;
}

rt_err_t _pin_detach_irq(struct rt_device *device, rt_base_t pin) {
  return RT_EOK;
}

rt_err_t _pin_irq_enable(struct rt_device *device, rt_base_t pin,
                                rt_uint8_t enabled) {
  /*
unsigned int gpio = pin;

if (enabled)
  rt_hw_interrupt_umask(LS1C_GPIO_TO_IRQ(gpio));
else
  rt_hw_interrupt_mask(LS1C_GPIO_TO_IRQ(gpio));
  */
  return RT_EOK;
}

char *pin_names[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
                      "10", "11", "12", "13", "14", "15", "16", "17", "18",
                      "19", "20", "21", "22", "23", "24", "25", "26", "27",
                      "28", "29", "30", "31"};

rt_base_t _pin_get(const char *name) {
  rt_base_t pin = 0;

  for (pin = 0; pin < 32; pin++) {
    if (rt_strcmp(name, pin_names[pin]) == 0) {
      return pin;
    }
  }

  return -1;
}

const static struct rt_pin_ops _pin_ops = {
    _pin_mode,       _pin_write,      _pin_read,

    _pin_attach_irq, _pin_detach_irq, _pin_irq_enable, .pin_get=_pin_get};

int rt_hw_pin_init(void) {
  int ret = RT_EOK;

  ret = rt_device_pin_register("pin", &_pin_ops, RT_NULL);

  return ret;
}
INIT_BOARD_EXPORT(rt_hw_pin_init);

#endif /*RT_USING_PIN */
