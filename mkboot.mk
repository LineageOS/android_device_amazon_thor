# use manually appened kernel+dtb
BOARD_MKBOOTIMG_ARGS := --kernel $(PRODUCT_OUT)/kernel.dt --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Hacked boot image
$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	@echo -e ${CL_CYN}"Building hdx hacked boot image: $@"${CL_RST}
	cat $(KERNEL_OUT)/arch/$(TARGET_ARCH)/boot/zImage device/amazon/thor/thor-dt.img > $(PRODUCT_OUT)/kernel.dt
	$(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made hdx hacked boot image: $@"${CL_RST}

# Hacked recovery image
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(recovery_ramdisk) $(recovery_kernel)
	@echo -e ${CL_CYN}"Building hdx hacked recovery image: $@"${CL_RST}
	cat $(KERNEL_OUT)/arch/$(TARGET_ARCH)/boot/zImage device/amazon/thor/thor-dt.img > $(PRODUCT_OUT)/kernel.dt
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made hdx hacked recovery image: $@"${CL_RST}
