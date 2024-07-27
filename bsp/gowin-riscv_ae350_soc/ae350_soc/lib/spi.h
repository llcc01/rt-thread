#ifndef __LIB_SPI_H__
#define __LIB_SPI_H__

#include "ae350.h"
#include "stdint.h"

void spi_init(SPI_RegDef * spi_base);
void spi_transfer(SPI_RegDef * spi_base, const uint8_t * tx_buf, uint8_t * rx_buf, uint16_t len);

#endif    /* __LIB_SPI_H__ */
