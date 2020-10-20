ifeq ($(BUILD_GAPPS),true)
# Inherit from apex config only when built with Gapps
$(call inherit-product, vendor/prebuilts/config/apex.mk)

# Inherit our Gapps
$(call inherit-product-if-exists, vendor/google/gms/config.mk)
$(call inherit-product-if-exists, vendor/google/pixel/config.mk)

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/prebuilts/overlay-gapps
endif
