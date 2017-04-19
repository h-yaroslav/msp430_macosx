# 
# Install:
#      mspdebug rf2500
#      erase
#      prog led_button.elf
#      run

#OBJECTS=blink.o
OBJECTS=led_button.o

GCC_DIR =  ~/Install//msp430_gcc/bin
SUPPORT_FILE_DIRECTORY = ~/Install//msp430_gcc/include

DEVICE  = msp430g2553
CC      = $(GCC_DIR)/msp430-elf-gcc
GDB     = $(GCC_DIR)/msp430-elf-gdb

#CFLAGS = -I $(SUPPORT_FILE_DIRECTORY) -mmcu=$(DEVICE) -O2 -g
CFLAGS = -I $(SUPPORT_FILE_DIRECTORY) -mmcu=$(DEVICE) -Os
LFLAGS = -L $(SUPPORT_FILE_DIRECTORY)

all: ${OBJECTS}
	$(CC) $(CFLAGS) $(LFLAGS) $? -o $(DEVICE).out

debug: all
	$(GDB) $(DEVICE).out

clean:
	rm *.o *.out
