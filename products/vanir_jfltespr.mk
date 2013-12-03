#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-jfltespr

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltespr/full_jfltespr.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf-common.mk)

$(call inherit-product, vendor/commotio/products/cdma.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltespr TARGET_DEVICE=jfltespr BUILD_FINGERPRINT="samsung/jfltespr/jfltespr:4.4/KRT16S/L720VPUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jfltespr-user 4.4 KRT16S L720VPUAMDL release-keys"

PRODUCT_NAME := commotio_jfltespr
PRODUCT_DEVICE := jfltespr
