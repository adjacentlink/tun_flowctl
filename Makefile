kernel=$(shell uname -r)

all:
	@if test -d $(kernel); then \
		cd $(kernel) && $(MAKE); \
	else \
		echo "You are running an unsupported kernel version: $(kernel)";\
	exit 1;\
	fi

clean:
	@if test -d $(kernel); then \
		cd $(kernel) && $(MAKE) clean; \
	else \
		echo "You are running an unsupported kernel version: $(kernel)";\
	exit 1;\
	fi

install: all
	sudo insmod $(kernel)/tun_flowctl.ko


uninstall:
	sudo rmmod tun_flowctl
