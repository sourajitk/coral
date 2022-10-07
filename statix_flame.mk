# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

# Define that we ship Pixel Launcher.
INCLUDE_PIXEL_LAUNCHER := true

# Define we have support for blur.
TARGET_USES_BLUR := true

# Define product.
PRODUCT_NAME := statix_flame
PRODUCT_MODEL := Pixel 4
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="flame-user 13 TP1A.221005.002 9012097 release-keys"

BUILD_FINGERPRINT := google/flame/flame:13/TP1A.221005.002/9012097:user/release-keys