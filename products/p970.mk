# Inherit AOSP device configuration for p970.
$(call inherit-product, device/lge/p970/p970.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# p970 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p970

# Copy p970 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_DEVICE := p970
PRODUCT_NAME := aokp_p970
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := LG-P970
PRODUCT_RELEASE_NAME := OptimusBlack

