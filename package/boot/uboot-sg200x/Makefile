# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2022 OpenWrt.org
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_RELEASE:=1
PKG_VERSION:=2021.10

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=https://github.com/draftbottle/uboot-sophgo
PKG_SOURCE_VERSION:=59f64ab3055253b2cc752391c3c6f37fa1f84e10
PKG_MIRROR_HASH=b87bfdaa37594e5bad9f2714073735effefc2bd19a31b9a7d41b98226c0134cd

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk


define Build/Prepare
    $(call Build/Prepare/Default)
	$(warning print....................... Build/Prepare: ${SUBTARGET} $$(DEVICE_DTS)  $(STAGING_DIR_IMAGE) )
	cp files/$(SUBTARGET)/$(BUILD_DEVICES)_defconfig $(PKG_BUILD_DIR)/configs/$(BUILD_VARIANT)_defconfig
	cp files/$(SUBTARGET)/dts/*.dts $(PKG_BUILD_DIR)/arch/riscv/dts/
	cp files/$(SUBTARGET)/dts/*.dtsi $(PKG_BUILD_DIR)/arch/riscv/dts/
	cp files/$(SUBTARGET)/dts/cvi_board_memmap.h $(PKG_BUILD_DIR)/arch/riscv/dts/
	cp files/$(SUBTARGET)/cvitek.h $(PKG_BUILD_DIR)/include/cvitek/
	cp files/$(SUBTARGET)/cvi_board_init.c $(PKG_BUILD_DIR)/board/cvitek
endef


define U-Boot/Default
	BUILD_TARGET:=sg200x
	BUILD_DEVICES=$(1)
	UBOOT_IMAGE:=u-boot.bin
	DTS_DIR:=arch/riscv/dts
	UENV:=default
endef

# sophgo boards
define U-Boot/milkv_duo_module_01_sd
	NAME:=Milk-V Duo Module 01 Evaluation Board
	UBOOT_DTS:=milkv_duo_module_01_sd.dtb
	BUILD_DEVICES:=milkv_duo_module_01_sd
	UBOOT_MAKE_FLAGS := \
		CHIP=sg2000 \
		CVIBOARD=milkv_duo_module_01_sd \
		BOARD=cv181x \
		CHIP_SEGMENT=cv181x
endef


UBOOT_TARGETS := \
	milkv_duo_module_01_sd


define Build/InstallDev
	$(INSTALL_DIR) $(BIN_DIR)
	mkdir -p $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/u-boot.bin $(STAGING_DIR_IMAGE)/u-boot.bin
endef

$(eval $(call BuildPackage/U-Boot))
