INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Test
Test_FRAMEWORKS = UIKit
Test_FILES = Tweak.x
Test_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
