############################################################
# <bsn.cl fy=2013 v=onl>
#
#        Copyright 2013, 2014 BigSwitch Networks, Inc.
#
#
#
# </bsn.cl>
############################################################
#
# Installer scriptlet for the powerpc-centec-e580-20q4z.
#

# The loader must be written raw to the first partition.
#platform_loader_raw=1

# The loader is installed in the fat partition of the first USB storage device
#platform_bootcmd='usb start; usbboot 0x10000000 0:1; setenv bootargs console=$consoledev,$baudrate onl_platform=powerpc-centec-e580-20q4z-r0; bootm 0x10000000'

#platform_installer() {
#    # Standard installation on usb storage.
#    installer_standard_blockdev_install sda 16M 64M ""
#}

platform_bootcmd='nand read 0x9000000 0x4000000 0x1000000; setenv bootargs console=$consoledev,$baudrate onl_platform=powerpc-centec-e580-20q4z-r0; bootm 0x9000000'

platform_installer() {
    # Standard installation on nand storage.
    installer_nand_install mtd3 mtd4 mtd5
}
