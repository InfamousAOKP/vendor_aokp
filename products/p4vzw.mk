# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/p4vzw/p4vzw.mk)

# Inherit AOKP common bits for tablet & 3G
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# p4vzw Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p4vzw

# Setup device specific product configuration.
PRODUCT_NAME := aokp_p4vzw
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4vzw
PRODUCT_MODEL := SCH-I905
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I905 BUILD_FINGERPRINT=samsung/SCH-I905/SCH-I905:4.0.4/IMM76D/LP11:user/release-keys PRIVATE_BUILD_DESC="SCH-I905-user 4.0.4 IMM76D LP11 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := p4vzw

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
