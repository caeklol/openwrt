#
# Copyright (C) 2006-2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=firmware-utils
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=https://github.com/caeklol/firmware-utils.git
PKG_SOURCE_DATE:=2024-12-23
PKG_SOURCE_VERSION:=625ff6fa1c10afba064cbc1b5c85fae7f2dcd8cb
PKG_MIRROR_HASH:=skip

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

$(eval $(call HostBuild))
