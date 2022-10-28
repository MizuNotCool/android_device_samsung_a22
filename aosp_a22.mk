# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Aosp stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from a22 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a22
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := aosp_a22
PRODUCT_MODEL := SM-A225M

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a22
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="redfin-user-13-TP1A.221005.002-9012097-release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/redfin/redfin:13/TP1A.221005.002/9012097:user/release-keys
PRODUCT_OVERRIDE_GMS_FINGERPRINT := google/redfin/redfin:13/TP1A.221005.002/9012097:user/release-keys
