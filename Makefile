
include $(THEOS)/makefiles/common.mk


export ARCHS = arm64
export TARGET = iphone:clang:13.4:13.4
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP = 192.168.0.59
PACKAGE_VERSION=1.0




TWEAK_NAME = FakeShutoff

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_FRAMEWORKS = UIKit CoreGraphics
#$(TWEAK_NAME)_LIBRARIES = activator

include $(THEOS_MAKE_PATH)/tweak.mk
