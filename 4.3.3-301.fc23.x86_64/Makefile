LANG=C

obj-m += tun_flowctl.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm -f modules.order *.o *.ko *.mod.c *.mod.o .*.cmd
