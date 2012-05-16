#
# Makefile for u8860
#

# The original zip file, MUST be specified by each product
local-zip-file     := sensation_3.32.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := HTCCamera HtcListen

local-modified-jars := HTCExtension

local-miui-modified-apps := Phone ThemeManager Mms MiuiHome Settings MiuiGallery DeskClock
# All apks from MIUI
local-miui-removed-apps  := LatinIME

# All apps need to be reserved from original ZIP file
local-phone-apps := ApplicationsProvider AppSharing BackupRestoreConfirmation Bluetooth BrcmBluetoothServices \
	CertInstaller CustomizationSettingsProvider DefaultContainerService DFPI DrmProvider FilePicker GoogleTTS \
	HTC_IME HtcBeatsNotify HTCCamera HtcFMRadio HtcListen HTMLViewer KeyChain LiveWallpapers LMW MarketUpdater \
	NoiseField OneTimeInitializer PhaseBeam PluginManager SDCardWizard SharedStorageBackup SmartNetwork Stk \
	talkback TrimIt UploadProvider Usage UserDictionaryProvider WifiRouter

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Update boot image
	cp other/boot.img $(ZIP_DIR)/boot.img

	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

	@echo Update htc resources
	$(APKTOOL) d -f $(ZIP_DIR)/system/framework/com.htc.resources.apk $(TMP_DIR)/com.htc.resources
	rm $(ZIP_DIR)/system/framework/com.htc.resources.apk
	cp other/com.htc.resources/res/drawable-hdpi/* $(TMP_DIR)/com.htc.resources/res/drawable-hdpi
	$(APKTOOL) b $(TMP_DIR)/com.htc.resources $(TMP_DIR)/com.htc.resources.apk
	cp $(TMP_DIR)/com.htc.resources.apk $(ZIP_DIR)/system/framework/com.htc.resources.apk

	@echo update default theme icons
	mv $(ZIP_DIR)/system/media/theme/default/icons $(TMP_DIR)/icons.zip
	$(UNZIP) $(TMP_DIR)/icons.zip -d $(TMP_DIR)/default_theme_icons
	cp other/default_theme_icons/* $(TMP_DIR)/default_theme_icons
	$(ZIP) -j $(ZIP_DIR)/system/media/theme/default/icons.zip $(TMP_DIR)/default_theme_icons/*
	mv $(ZIP_DIR)/system/media/theme/default/icons.zip $(ZIP_DIR)/system/media/theme/default/icons

	@echo CID default xml
	cp other/default.xml $(ZIP_DIR)/system/customize/CID/default.xml

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo update default lock wallpaper
	cp other/lock_wallpaper $(ZIP_DIR)/system/media/theme/default/lock_wallpaper

	@echo update default lock screen
	rm $(ZIP_DIR)/system/media/theme/default/lockscreen
	cp other/lockscreen $(ZIP_DIR)/system/media/theme/default/lockscreen
	cp other/framework-res $(ZIP_DIR)/system/media/theme/default/framework-res

	@echo add LiveWallpaperPicker
	cp other/LiveWallpapersPicker.apk $(ZIP_DIR)/system/app/LiveWallpapersPicker.apk

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip
