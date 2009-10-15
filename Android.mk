ifeq ($(strip $(TARGET_USERIMAGES_USE_UBIFS)),true)
include $(all-subdir-makefiles)
endif
