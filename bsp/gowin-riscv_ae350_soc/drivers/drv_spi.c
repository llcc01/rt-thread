#include "drv_spi.h"
#include "ae350.h"
#include "rttypes.h"

#include <drivers/spi.h>
#include <rtdevice.h>
#include <rthw.h>
#include <rtthread.h>

#if defined(RT_USING_SPI) && defined(RT_USING_PIN)

#include "ae350_soc/lib/spi.h"
#include "ae350_soc/driver/include/Driver_GPIO.h"
#include "ae350_soc/lib/gpio.h"

struct spi_cs_t {
  rt_uint8_t cs;
  rt_uint8_t pin;
};

static rt_err_t configure(struct rt_spi_device *device,
                          struct rt_spi_configuration *configuration) {
  
  return RT_EOK;
}

static rt_ssize_t xfer(struct rt_spi_device *device,
                       struct rt_spi_message *message) {
  struct spi_cs_t *spi_cs = (struct spi_cs_t *)device->parent.user_data;
  if (message->cs_take) {
    gpio_write(AE350_GPIO, spi_cs->pin, 0);
  }

  const rt_uint8_t *send_ptr = message->send_buf;
  rt_uint8_t *recv_ptr = message->recv_buf;
  const rt_uint32_t size = message->length;
  
  spi_transfer(AE350_SPI, send_ptr, recv_ptr, size);

  if (message->cs_release) {
    gpio_write(AE350_GPIO, spi_cs->pin, 1);
  }

  return size;
}

static struct rt_spi_bus spi_bus0;
static struct rt_spi_device spi_device1;
static struct spi_cs_t spi_cs1 = {.cs = 1, .pin = 0};
static struct rt_spi_ops spi_ops = {.configure = configure, .xfer = xfer};

int rt_hw_spi_init(void) {
  spi_init(AE350_SPI);
  rt_spi_bus_register(&spi_bus0, "spi0", &spi_ops);

  gpio_mode(AE350_GPIO, spi_cs1.pin, AE350_GPIO_DIR_OUTPUT);
  rt_spi_bus_attach_device(&spi_device1, "spi01", "spi0", &spi_cs1);

  return 0;
}
INIT_BOARD_EXPORT(rt_hw_spi_init);

#endif /* RT_USING_SPI && RT_USING_PIN */
