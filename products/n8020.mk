# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := n8020

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1200

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/n8020/full_n8020.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n8020
PRODUCT_NAME := aokp_n8020
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N8020
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N8020 TARGET_DEVICE=GT-N8020 BUILD_FINGERPRINT="samsung/p4noteltexx/p4notelte:4.1.1/JRO03C/N8020XXALJD:user/release-keys" PRIVATE_BUILD_DESC="p4noteltexx-user 4.1.1 JRO03C N8020XXALJD release-keys"
