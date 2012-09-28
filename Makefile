ifneq ($(KERNELRELEASE),)
obj-m := hello.o
else
KDIR ?= /usr/src/linux-headers-`uname -r`
all:
	$(MAKE) -C $(KDIR) M=`pwd` modules
clean:
	$(MAKE) -C $(KDIR) M=`pwd` clean
endif
