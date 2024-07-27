#include "spi.h"

#include <stddef.h>
#include <stdint.h>
#include "ae350.h"
#include "ae350_soc/driver/ae350/spi_ae350.h"

void spi_init(SPI_RegDef * spi_base)
{
    spi_base->TRANSFMT |= SPI_SLAVE | SPI_MERGE | DATA_BITS(8);
}

void spi_transfer(SPI_RegDef * spi_base, const uint8_t * tx_buf, uint8_t * rx_buf, uint16_t len)
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

    if (tx_buf != NULL)
    {
        for (size_t i = 0; i < len; i++)
        {
            spi_base->DATA = tx_buf[i];
        }
    }
    spi_base->CMD = 0;

    while (spi_base->STATUS & SPI_STATUS_ACTIVE);
    
    if (rx_buf != NULL)
    {
        for (size_t i = 0; i < len; i++)
        {
            rx_buf[i] = spi_base->DATA;
        }
    }

}
