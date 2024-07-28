#include "spi.h"

#include <stddef.h>
#include <stdint.h>
#include "ae350.h"
#include "ae350_soc/driver/ae350/spi_ae350.h"

uint32_t txfifo_size = 0;

void spi_init(SPI_RegDef * spi_base)
{
    spi_base->TRANSFMT |=  SPI_MERGE | DATA_BITS(8);
    txfifo_size = 2 << ((spi_base->CONFIG >> 4) & 0xf);
}

void spi_transfer_part(SPI_RegDef * spi_base, const uint8_t * tx_buf, uint8_t * rx_buf, uint16_t len)
{
    uint32_t trans_ctrl = WR_TRANCNT(len) | RD_TRANCNT(len);
    if ((tx_buf == NULL) && (rx_buf != NULL))
    {
        trans_ctrl |= SPI_TRANSMODE_RDONLY;
    }
    else if ((tx_buf != NULL) && (rx_buf == NULL))
    {
        trans_ctrl |= SPI_TRANSMODE_WRONLY;
    }
    else if ((tx_buf != NULL) && (rx_buf != NULL))
    {
        trans_ctrl |= SPI_TRANSMODE_WRnRD;
    }
    else
    {
        return;
    }
    spi_base->TRANSCTRL = trans_ctrl;

    spi_base->CMD = 0;

    spi_base->CTRL = (TXFIFORST | RXFIFORST);

    if (tx_buf != NULL)
    {
        for (size_t i = 0; i < len; i += 4)
        {
            spi_base->DATA = *(uint32_t *)(tx_buf + i);
        }
    }

    while (spi_base->STATUS & 0x1)
    {
        ;
    }

    if (rx_buf != NULL)
    {
        for (size_t i = 0; i < len; i += 4)
        {
            uint32_t d = spi_base->DATA;
            for (size_t j = 0; (j < 4) && (i + j < len); j++)
            {
                rx_buf[i + j] = d & 0xff;
                d >>= 8;
            }
        }
    }

}

void spi_transfer(SPI_RegDef * spi_base, const uint8_t * tx_buf, uint8_t * rx_buf, uint16_t len)
{
    uint32_t part_len = txfifo_size;
    while (len > 0)
    {
        if (len < part_len)
        {
            part_len = len;
        }
        spi_transfer_part(spi_base, tx_buf, rx_buf, part_len);
        len -= part_len;
        if (tx_buf != NULL)
        {
            tx_buf += part_len;
        }
        if (rx_buf != NULL)
        {
            rx_buf += part_len;
        }
    }
}
