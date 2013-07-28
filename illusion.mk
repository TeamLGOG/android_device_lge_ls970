## Specify phone tech before including full_phone
$(call inherit-product, vendor/illusion/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := geehrc4g_spr_us

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common illusion stuff.
$(call inherit-product, vendor/illusion/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/illusion/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc4g_spr_us/full_geehrc4g_spr_us.mk)

# Inherit led flash settings
$(call inherit-product, vendor/illusion/config/common_ledflash.mk)

PRODUCT_COPY_FILES +=  \
    vendor/illusion/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc4g_spr_us
PRODUCT_NAME := illusion_geehrc4g_spr_us
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"
