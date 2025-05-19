DEVICE_VARS += TPLINK_BOARD_ID


define Device/tplink_deco-m4r-v3
	KERNEL_SUFFIX := -uImage.itb
	KERNEL = kernel-bin | gzip | fit gzip $$(KDIR)/image-$$(DEVICE_DTS).dtb | pad-to 64k
	KERNEL_NAME := Image
	DEVICE_VENDOR := TP-Link
	DEVICE_MODEL := Deco-M4R
	DEVICE_VARIANT := V3
	SOC := qcom-ipq4019
	DEVICE_DTS := qcom-ipq4019-deco-m4r-v3
	DEVICE_DTS_CONFIG := config@ap.dk04.1-c1
	#DEVICE_PACKAGES := ipq-wifi-tplink_deco_m4r_v3
	#BOARD_NAME := deco-m4r-v3
	DEVICE_DTS_DELIMITER := @
	TPLINK_BOARD_ID := DECO-M4R-V3
	IMAGE_SIZE := 20000k
	IMAGES := factory.bin sysupgrade.bin
	IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
	IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
endef
TARGET_DEVICES += tplink_deco-m4r-v3
