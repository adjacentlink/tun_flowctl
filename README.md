tun_flowctl
===========
The tun_flowctl project aims to restore tuntap back pressure behavior last available in linux kernels prior to 3.8 by lightly patching the driver so it will block instead of dropping packets once queues are full.

The patched module is renamed tun_flowctl and can exist alongside the standard tun module.

  # lsmod | grep tun
  tun_flowctl            27177  0 
  tun                    27153  2 

The project contains tun_flowctl versions for Fedora and Ubuntu distribution kernels.

The tun_flowctl module may be useful for network experimenters and protocol developers who require transmit socket buffer push back in order to detect congestion.

We use this module when enabling flow control within the EMANE emulator:

   https://github.com/adjacentlink/emane 

To see if your running kernel is currently supported:

  # cd tun_flowctl
  # [ -d $(uname -r) ] && echo "tun_flowctl support available"
  tun_flowctl support available

To build:

  # make

To install (insmod only):

  # make install

To remove (rmmod only):

  # make uninstall
