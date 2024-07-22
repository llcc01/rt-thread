
/* Gowin RiscV_AE350_SOC and RT-Thread Standard version */

#ifndef __BOARD_H_
#define __BOARD_H_

extern  void *_end;
extern  void *_heap_end;
#define HEAP_BEGIN  &_end
#define HEAP_END    &_heap_end

#endif
