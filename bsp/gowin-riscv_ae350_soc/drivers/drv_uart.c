#include <rttypes.h>
#include <rthw.h>
#include <rtdevice.h>
#include <rtthread.h>
#include <stdint.h>

#include "ae350_soc/ae350/ae350.h"
#include "ae350_soc/lib/uart.h"

#include "drv_uart.h"


#define DBG_TAG "DRV.UART"
#define DBG_LVL DBG_WARNING
#include <rtdbg.h>

#define UART1_IRQn 0
#define UART2_IRQn 1

typedef enum
{
    UART_0 = 0,
    UART_1,
    UART_2,
    UART_3,
    UART_4,
    UART_5,
    UART_MAX,
} uart_port_t;

struct ae350_uart
{
    uart_port_t port;
    UART_RegDef *uart_base;
    rt_uint32_t irq;
};


static rt_err_t _uart_configure(struct rt_serial_device *serial, struct serial_configure *cfg);
static rt_err_t _uart_control(struct rt_serial_device *serial, int cmd, void *arg);
static int _uart_putc(struct rt_serial_device *serial, char c);
static int _uart_getc(struct rt_serial_device *serial);
static rt_ssize_t _uart_transmit(struct rt_serial_device *serial,
                                rt_uint8_t *buf, rt_size_t size, int tx_flag);

const struct rt_uart_ops _uart_ops =
{
    _uart_configure,
    _uart_control,
    _uart_putc,
    _uart_getc,
    _uart_transmit
};

#ifdef BSP_USING_UART1
struct rt_serial_device serial1;
struct ae350_uart uart1 = {UART_1, AE350_UART1, IRQ_UART1_SOURCE};
#endif

#ifdef BSP_USING_UART2
struct rt_serial_device serial2;
struct ae350_uart uart2 = {UART_2, AE350_UART2, IRQ_UART2_SOURCE};
#endif

static rt_err_t _uart_configure(struct rt_serial_device *serial, struct serial_configure *cfg)
{
    struct ae350_uart *uart = (struct ae350_uart *)serial->parent.user_data;

    uart_init(uart->uart_base, cfg->baud_rate);

    return RT_EOK;
}

static rt_err_t _uart_control(struct rt_serial_device *serial, int cmd, void *arg)
{
    struct ae350_uart *uart;

    uart = serial->parent.user_data;

    RT_ASSERT(uart != RT_NULL);

    LOG_D("uart%d control cmd:%x, arg:%x\n", uart->uart_port, cmd, ctrl_arg);

    switch (cmd)
    {
    case RT_DEVICE_CTRL_CLR_INT:
        if ((size_t)arg == RT_DEVICE_FLAG_INT_RX)
        {
            uart_set_interrupt(uart->uart_base, 0);
        }
        break;

    case RT_DEVICE_CTRL_SET_INT:
        if ((size_t)arg == RT_DEVICE_FLAG_INT_RX)
        {
            uart_set_interrupt(uart->uart_base, 1);
        }
        break;
    }

    return (RT_EOK);
}

static int _uart_putc(struct rt_serial_device *serial, char c)
{
    uart_putc(((struct ae350_uart *)serial->parent.user_data)->uart_base, c);
    return 1;
}

static rt_ssize_t _uart_transmit(struct rt_serial_device *serial,
                                rt_uint8_t *buf, rt_size_t size, int tx_flag)
{
    rt_uint8_t *ptr;
    struct ae350_uart *uart = (struct ae350_uart *)serial->parent.user_data;

    for (rt_size_t i = 0; i < size; i++) {
        uart_putc(uart->uart_base, buf[i]);
    }

    return size;
}

static int _uart_getc(struct rt_serial_device *serial)
{
    return uart_getc(((struct ae350_uart *)serial->parent.user_data)->uart_base);
}

static void uart_irq_handler(int vector, void *param)
{
    struct rt_serial_device *serial = (struct rt_serial_device *)param;
    struct ae350_uart *uart = (struct ae350_uart *)serial->parent.user_data;

    if (vector == uart->irq)
    {
        rt_hw_serial_isr(serial, RT_SERIAL_EVENT_RX_IND);
    }
}

static int _uart_init(const char *name, struct ae350_uart *uart, struct rt_serial_device *serial)
{
    struct serial_configure config = RT_SERIAL_CONFIG_DEFAULT;

    uart_init(uart->uart_base, config.baud_rate);

    serial->ops = &_uart_ops;
    serial->config = config;

    rt_hw_serial_register(serial, name, RT_DEVICE_FLAG_RDWR | RT_DEVICE_FLAG_INT_RX, uart);
    
    rt_hw_interrupt_install(uart->irq, uart_irq_handler, serial, name);
    rt_hw_interrupt_umask(uart->irq);
    
    return 0;
}

/*
 * UART Initiation
 */
int rt_hw_uart_init(void)
{
#ifdef BSP_USING_UART1
    _uart_init("uart1", &uart1, &serial1);
#endif

#ifdef BSP_USING_UART2
    _uart_init("uart2", &uart2, &serial2);
#endif

    return 0;
}
