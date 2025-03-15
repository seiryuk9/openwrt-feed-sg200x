#
# Copyright (C) 2009 OpenWrt.org
#

SUBTARGET:=sg2000
BOARDNAME:=sg2000 based boards
DTSDIR:=cvitek

DEVICE_PACKAGES := u-boot-milkv_duo_module_01_sd


define Target/Description
	Build firmware images for sophgo cv181x based boards.
endef

