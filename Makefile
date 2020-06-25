INSTALL_TARGET_PROCESSES = SpringBoard
export ARCHS = arm64
export TARGET = iphone:clang:13.0:13.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP = 192.168.0.59

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FakeShutoff

FakeShutoff_FILES = Tweak.x
FakeShutoff_CFLAGS = -fobjc-arc
FakeShutoff_FRAMEWORKS = UIKit
#FakeShutoff_LIBRARIES = activator
include $(THEOS_MAKE_PATH)/tweak.mk
