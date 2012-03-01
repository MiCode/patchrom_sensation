#
# Makefile for u8860
#

# The original zip file, MUST be specified by each product
local-zip-file     := sensation_4.5.4.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Rosie

local-modified-jars := widget

# All apks from MIUI
local-miui-apps     := AntiSpam Backup BugReport CloudService MiuiCompass Contacts DeskClock FileExplorer \
	MiuiHome MiuiSystemUI Mms Monitor Notes PackageInstaller QuickSearchBox SoundRecorder SuperMarket \
	ThemeManager Updater ContactsProvider DownloadProvider DownloadProviderUi TelocationProvider \
	Music Settings

# All apps need to be removed from original ZIP file
local-remove-apps	:= SystemUI HtcContacts AdobeReader CheckinProvider com.htc.FMRadioWidget HtcDialer com.htc.FriendStream3DWidget \
	com.htc.MusicWidget com.htc.Sync3DWidget com.htc.Task3DWidget com.htc.TrendsWidget com.htc.Twitter3DWidget \
	com.htc.htcmsgwidgets3d com.htc.idlescreen_SN DCSStock EReader Facebook Flickr FriendStream FusionStockWidget \
	GenieWidget GoogleBackupTransport GoogleFeedback GooglePartnerSetup GoogleQuickSearchBox GSD HtcConnectedMedia \
	HtcFacebook HtcFacebookChat HtcFacebookChatWidget HtcFeedback HtcLaputa HtcLaputaInstaller HtcLocationsWidget3d \
	HtcNavigateWidget3d HtcTwitter IdleScreen_Stock JETCET_PRINT JETCET_PRINT_Resources Maps MyHTC MyReportAgent \
	MyShelf_Widget MySketcher picasapryramid PolarisOffice SoundHound_Freemium Stock Talk teeter TripWidget3D Twitter \
	VoiceSearch YouTube HtcListen \
	dice_ml TaskManager Tweaks HtcStore HtcStoreWidget MyTask HtcSoundRecorder HtcLockScreen \
	TrimIt htccontactwidgets3D  htcbookmarkwidget3d \
	Idlescreen_Base  idlescreen_photo idlescreen_shortcut \
	Weather IdleScreen_Weather HtcWeather3DWidget HtcWeatherWallpaper WeatherLiveWallpaper WeatherVideo \
	HTCSetupWizard SetupWizard
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

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/$(local-out-zip-file)
	adb push $(OUT_ZIP) /sdcard/$(local-out-zip-file)
