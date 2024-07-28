
/* Gowin RiscV_AE350_SOC and RT-Thread Standard version */

// Includes ---------------------------------------------------------------------------------
#include <rtthread.h>
#include "rttypes.h"
#include "spi_msd.h"
#include <dfs_fs.h>
#include <dfs_romfs.h>
#include <sys/stat.h>

extern const struct romfs_dirent romfs_root;

// Main application entry
int main(void)
{
    rt_kprintf("Hello, RT-Thread!\n");
    if (dfs_mount(RT_NULL, "/", "rom", 0, &romfs_root) != 0)
    {
        rt_kprintf("Dir / mount failed!\n");
    }
    if (msd_init("sd0", "spi02") != 0)
    {
        rt_kprintf("SD Card init failed!\n");
    }
    if (dfs_mount("sd0", "/mnt", "elm", 0, RT_NULL) != 0)
    {
        rt_kprintf("SD Card mount failed!\n");
    }
    if (dfs_mount(RT_NULL, "/tmp", "tmp", 0, RT_NULL) != 0)
    {
        rt_kprintf("tmp mount failed!\n");
    }
    return 0;
}
