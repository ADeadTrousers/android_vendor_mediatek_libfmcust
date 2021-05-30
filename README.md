# AOSP Integration for libfmcust.so 

## Disclaimer

This repository uses source code proprietary to MediaTek Inc.
It is provided to the public without the explicit permission of MediaTek Inc.
Hereby it may be removed at any time or as soon as the lawyers of MediaTek Inc. get to know of this.
Because I believe in the good cause of opensource and in the need to make the world a better place nothing should be hidden behind a legal wall.

## Introduction

libfmcust.so is a compiled library file ("Shared Object") for providing the settings to utilize a FM device from the FMRadio app that is part of AOSP. Basically it's just a config file that provides additional functionality in form of arbitrary code.

## Integration

Add the following to the manifest-tag in your `roomservice.xml`

```xml
  <project name="ADeadTrousers/android_vendor_mediatek_libfmcust" path="vendor/mediatek/libfmcust" remote="github" revision="master" />
```

Add the following to your device.mk

```
PRODUCT_PACKAGES += \
    libfmcust
```
