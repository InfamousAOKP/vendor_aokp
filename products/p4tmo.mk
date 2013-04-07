# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/p4tmo/p4tmo.mk)

# Inherit AOKP common bits for tablet & 3G
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# p4tmo Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p4tmo

# Setup device specific product configuration.
PRODUCT_NAME := aokp_p4tmo
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4tmo
PRODUCT_MODEL := SGH-T859
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T859 BUILD_FINGERPRINT=samsung/SGH-T859/SGH-T859:4.0.4/IMM76D/VLH6:user/release-keys PRIVATE_BUILD_DESC="SGH-T859-user 4.0.4 IMM76D VLH6 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := p4tmo

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
