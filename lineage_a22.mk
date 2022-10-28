# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a22 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a22
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a22
PRODUCT_MODEL := SM-A225M

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a22
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a22ub-user 12 SP1A.210812.016 A225MUBU4BVH2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a22ub/a22:12/SP1A.210812.016/A225MUBU4BVH2:user/release-keys
