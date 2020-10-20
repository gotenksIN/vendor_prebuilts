ifeq ($(BUILD_GAPPS),true)
# Inherit from apex config only when built with Gapps
$(call inherit-product, vendor/prebuilts/config/apex.mk)

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/prebuilts/overlay-gapps
endif
