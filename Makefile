KPATH := $(RSPI_TOP)/linux
ARCH := arm
CROSS_COMPILE := $(RSPI_TOP)/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-

obj-m := sample_driver.o

all:
	make ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) -C $(KPATH) M=$(PWD) modules

clean:
	make ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) -C $(KPATH) M=$(PWD) clean

