## Specify phone tech before including full_phone
$(call inherit-product, vendor/carbon/config/common_cdma.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CARBON stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/geehrc4g_spr_us/full_geehrc4g_spr_us.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc4g_spr_us
PRODUCT_NAME := carbon_geehrc4g_spr_us
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.geehrc4g_spr_us.$(shell date +%m%d%y).$(shell date +%H%M%S)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
#PRODUCT_PACKAGES += Torch
