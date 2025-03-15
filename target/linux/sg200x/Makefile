# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2025 OpenWrt.org
#
include $(TOPDIR)/rules.mk

ARCH:=riscv64
BOARD:=sg200x
BOARDNAME:=SG200X U-based RISC-V
FEATURES:=ext4
KERNELNAME:=Image
SUBTARGETS:=sg2000

KERNEL_PATCHVER:=5.15


include $(INCLUDE_DIR)/target.mk

define Target/Description
	Build firmware images for the Milk-V Duo Module 01 Evaluation Board
endef

$(eval $(call BuildTarget))