#
# Makefile for u8860
#

# The original zip file, MUST be specified by each product
local-zip-file     := sensation_4.5.4.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Phone HTCCamera

local-modified-jars := HTCExtension

local-miui-modified-apps := ThemeManager Mms MiuiHome TelephonyProvider MiuiSystemUI
# All apks from MIUI
local-miui-removed-apps  := Phone

# All apps need to be removed from original ZIP file
local-remove-apps	:= SystemUI HtcContacts AdobeReader CheckinProvider com.htc.FMRadioWidget HtcDialer com.htc.FriendStream3DWidget \
	com.htc.MusicWidget com.htc.Sync3DWidget com.htc.Task3DWidget com.htc.TrendsWidget com.htc.Twitter3DWidget \
	com.htc.htcmsgwidgets3d com.htc.idlescreen_SN DCSStock EReader Facebook Flickr FriendStream FusionStockWidget \
	GenieWidget GoogleFeedback GoogleQuickSearchBox GSD HtcConnectedMedia \
	HtcFacebook HtcFacebookChat HtcFacebookChatWidget HtcFeedback HtcLaputa HtcLaputaInstaller HtcLocationsWidget3d \
	HtcNavigateWidget3d HtcTwitter IdleScreen_Stock JETCET_PRINT JETCET_PRINT_Resources MyHTC MyReportAgent \
	MyShelf_Widget MySketcher picasapryramid PolarisOffice SoundHound_Freemium Stock teeter TripWidget3D Twitter \
	YouTube Flashlight \
	dice_ml TaskManager Tweaks HtcStore HtcStoreWidget MyTask HtcSoundRecorder HtcLockScreen \
	htccontactwidgets3D  htcbookmarkwidget3d \
	Idlescreen_Base  idlescreen_photo idlescreen_shortcut \
	Weather IdleScreen_Weather HtcWeather3DWidget HtcWeatherWallpaper WeatherLiveWallpaper WeatherVideo \
	HTCSetupWizard SetupWizard Superuser Mail HomePersonalize DockMode WifiRouter \
	Videos WorldClock HtcClock3DWidget HtcCalculatorWidget htccalendarwidgets3d htcmailwidgets3d htcsettingwidgets \
	BlueSky WeatherSyncProvider WeatherProvider VpnDialogs VisualizationWallpapers UserDictionaryProvider \
	MagicSmokeWallpapers Mode10Wallpapers Burgundy FaceLock HtcCompressViewer HtcAutoRotateWidget HtcDataRoamingWidget\
	HtcDataStripWidget HtcImageWallpaper HTCLivewallpaperStreak HtcProfileWidget HtcPowerStripWidget HtcPhotoWidget \
	HtcRingtoneWidget HtcRingtoneTrimmer HtcScreenBrightnessWidget HtcScreenTimeoutWidget HTCAlbum Galaxy4 com.htc.SN Tweaks dice_ml \
	HTCSync PCSC HtcSoundSetDownloadManager \
	HTCMediaAutoUploadSetting HtcBackgroundDataWidget HtcStreamPlayer HtcVideoPlayer HtcPowerSaverWidget HtcPainterView HtcMusicEnhancer \
	HtcMessageUploader HtcMessageProvider HtcLocationService HtcMediaCacheService HtcDLNAMiddleLayer HtcDMC HoloSpiralWallpaper MediaUploader \
	HtcSettingsProvider Rosie
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
local-zip-misc: add-lbesec-miui
	@echo Update boot image
	cp other/boot.img $(ZIP_DIR)/boot.img
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	@echo add tel location
	cp other/CallerLocation.apk $(ZIP_DIR)/system/app/CallerLocation.apk
	@echo Update htc resources
	rm $(ZIP_DIR)/system/framework/com.htc.resources.apk
	cp -r com.htc.resources $(TMP_DIR)/
	$(APKTOOL) b $(TMP_DIR)/com.htc.resources $(TMP_DIR)/com.htc.resources.apk
	cp $(TMP_DIR)/com.htc.resources.apk $(ZIP_DIR)/system/framework/com.htc.resources.apk
	@echo update default theme icons
	mv $(ZIP_DIR)/system/media/theme/default/icons $(TMP_DIR)/icons.zip
	$(UNZIP) $(TMP_DIR)/icons.zip -d $(TMP_DIR)/default_theme_icons
	cp other/default_theme_icons/* $(TMP_DIR)/default_theme_icons
	$(ZIP) -j $(ZIP_DIR)/system/media/theme/default/icons.zip $(TMP_DIR)/default_theme_icons/*
	mv $(ZIP_DIR)/system/media/theme/default/icons.zip $(ZIP_DIR)/system/media/theme/default/icons
local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip
