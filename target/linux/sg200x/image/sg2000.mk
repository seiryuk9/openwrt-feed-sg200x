# SPDX-License-Identifier: GPL-2.0-only
define Device/milkv_duo_module_01
  DEVICE_VENDOR := milkv.io
  DEVICE_MODEL := Milk-V Duo Module 01 Evaluation Board
  DEVICE_DTS_DIR := ${PWD}/sg2000/dts
  DEVICE_DTS := sg2000_milkv_duo_module_01_sd
endef
TARGET_DEVICES += milkv_duo_module_01
