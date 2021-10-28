#CUSTOMDRIVER

CUSTOMDRIVER_VERSION = 59c54d099d1f9bfecd6213b4f18e13670cadf396
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CUSTOMDRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Sharath-Jonnala.git'
CUSTOMDRIVER_SITE_METHOD = git
CUSTOMDRIVER_GIT_SUBMODULES = YES
CUSTOMDRIVER_MODULE_SUBDIRS = aesd-char-driver/

define CUSTOMDRIVER_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
