# 1.0.0

* Configure DNS names service with attributes in `node.sys.resolv`.
* Set the timezone and configure NTP servers in `node.sys.time`.
* Configure sysctl with `node.sys.ctl`.
* Configure a serial console with attribute `node.serial`.
* Deploy cgroups with attributes in `node.sys.cgroups`.
* Alter Grub boot configuration attributes in `node.sys.boot`. 
* System login banner with attributes in `node.sys.banner`,
* Load Linux kernel modules with `linux_module`.
* Reboot/Shutdown node with `sys_shutdown`. 