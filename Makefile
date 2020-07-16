TARGET = iphone:13.0:13.0
ARCHS = arm64 arm64e

FINALPACKAGE = 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FakeShutoff
FakeShutoff_FILES = Tweak.x

include $(THEOS_MAKE_PATH)/tweak.mk

include $(THEOS_MAKE_PATH)/aggregate.mk
