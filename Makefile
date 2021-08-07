include $(THEOS)/makefiles/common.mk

export SDKVERSION=13.7
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

TWEAK_NAME = HideDock14

HideDock14_FILES = Tweak.x
HideDock14_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
after-install::

	install.exec "sbreload"
