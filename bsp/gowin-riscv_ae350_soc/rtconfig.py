import os

# toolchains options
ARCH     = 'risc-v'
CPU      = 'a25'
CROSS_TOOL  = 'gcc'

# bsp lib config
BSP_LIBRARY_TYPE = None

#------- toolchains path -------------------------------------------------------
if os.getenv('RTT_CC'):
    CROSS_TOOL = os.getenv('RTT_CC')

if  CROSS_TOOL == 'gcc':
    PLATFORM    = 'gcc'
    # EXEC_PATH   = r'E:/RDS5/workspace/ae350_rtthread_std/tool/xpack/xpack-riscv-none-embed-gcc-10.2.0-1.2/bin'   ## users
    EXEC_PATH   = os.getenv('RTT_EXEC_PATH') or '/usr/bin'
else:
    print('Please make sure your toolchains is GNU GCC!')
    exit(0)

BUILD = 'debug'
#BUILD = 'release'

CORE = 'risc-v'
LINK_FILE = './ae350_soc/sag/ae350-ddr.ld'                                                              ## users
TARGET_NAME = 'rtthread.bin'                                                                            ## users

#------- GCC settings ----------------------------------------------------------
if PLATFORM == 'gcc':
    # toolchains
    # PREFIX = 'riscv-none-embed-'
    PREFIX  = os.getenv('RTT_CC_PREFIX') or 'riscv32-unknown-elf-'
    CC = PREFIX + 'gcc'
    CXX= PREFIX + 'g++'
    AS = PREFIX + 'gcc'
    AR = PREFIX + 'ar'
    LINK = PREFIX + 'gcc'
    TARGET_EXT = 'elf'
    SIZE = PREFIX + 'size'
    OBJDUMP = PREFIX + 'objdump'
    OBJCPY = PREFIX + 'objcopy'

    DEVICE = ' -march=rv32imafdc -mabi=ilp32d -mcmodel=medany -DUSE_M_TIME -DNO_INIT '
    CFLAGS  = DEVICE + '-D_POSIX_C_SOURCE -ffreestanding -flax-vector-conversions -Wno-cpp -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fdiagnostics-color=always'
    CFLAGS += ' -save-temps=obj'
    AFLAGS  = ' -c' + DEVICE + ' -x assembler-with-cpp -D__ASSEMBLY__ '
    AFLAGS += ' -Iplatform -Isrc/ae350'
    LFLAGS = DEVICE
    LFLAGS  = DEVICE + ' -nostartfiles -Wl,--gc-sections,-Map=rtthread.map,-cref,-u,_start -T ' + LINK_FILE + ' -lsupc++ -lgcc -static'

    CPATH = ''
    LPATH = ''

    if BUILD == 'debug':
        CFLAGS += ' -O0 -g3'
        AFLAGS += ' -g3'
    else:
        CFLAGS += ' -O2'

    POST_ACTION = OBJCPY + ' -O binary $TARGET ' + TARGET_NAME + '\n'
    POST_ACTION += SIZE + ' $TARGET\n'
