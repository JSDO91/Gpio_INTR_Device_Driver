obj-m += gpio_intr_device_driver.o

PWD := $(shell pwd)

KDIR := /home/work/rpi_kernel_src/linux
 
all:
	make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -C $(KDIR) M=$(PWD) modules
	#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -C $(KDIR) M=$(PWD) modules

clean:
	clear
	make -C $(KDIR) M=$(PWD) clean
	rm  -f $(SRC_PATH)/*.o
