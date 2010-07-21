SUBPROJECTS = Extension Preferences Updater
export ADDITIONAL_CFLAGS += -I../Common
export CURRENT_VERSION = 513

include framework/makefiles/common.mk
include framework/makefiles/aggregate.mk

after-stage::
	# Convert Info.plist and Defaults.plist to binary
	- find $(FW_STAGING_DIR)/Applications -iname '*.plist' -exec plutil -convert binary1 {} \;
