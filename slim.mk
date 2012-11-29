$(call inherit-product, device/samsung/ariesve/full_ariesve.mk)

# Release name
PRODUCT_RELEASE_NAME := ariesve

$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/slim/config/gsm.mk)

#PRODUCT_PACKAGE_OVERLAYS += vendor/slim/overlay/ariesve

# Setup device configuration
PRODUCT_NAME := slim_ariesve
PRODUCT_DEVICE := ariesve
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9001

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-I9001/GT-I9001:2.3.6/GINGERBREAD/XXKQB:user/release-keys PRIVATE_BUILD_DESC="GT-I9001-user 2.3.6 GINGERBREAD XXKQB release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

