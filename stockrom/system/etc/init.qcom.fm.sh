#!/system/bin/sh
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#

setprop hw.fm.init 0

mode=`getprop hw.fm.mode`
version=`getprop hw.fm.version`
isAnalog=`getprop hw.fm.isAnalog`

#find the transport type
TRANSPORT=`getprop ro.qualcomm.bt.hci_transport`

LOG_TAG="qcom-fm"
LOG_NAME="${0}:"

loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

failed ()
{
  loge "$1: exit code $2"
  exit $2
}

logi "In FM shell Script"
logi "mode: $mode"
logi "isAnalog: $isAnalog"
logi "Transport : $TRANSPORT"
logi "Version : $version"

#$fm_qsoc_patches <fm_chipVersion> <enable/disable WCM>
#
case $mode in
  "normal")
    case $TRANSPORT in
    "smd")
        logi "inserting the radio transport module"
        insmod /system/lib/modules/radio-iris-transport.ko
     ;;
     *)
        logi "default transport case "
     ;;
    esac
      /system/bin/fm_qsoc_patches $version 0
     ;;
  "wa_enable")
   /system/bin/fm_qsoc_patches $version 1
     ;;
  "wa_disable")
   /system/bin/fm_qsoc_patches $version 2
     ;;
  "config_dac")
   /system/bin/fm_qsoc_patches $version 3 $isAnalog
     ;;
   *)
    logi "Shell: Default case"
    /system/bin/fm_qsoc_patches $version 0
    ;;
esac

exit_code_fm_qsoc_patches=$?

case $exit_code_fm_qsoc_patches in
   0)
	logi "FM QSoC calibration and firmware download succeeded"
   ;;
  *)
	failed "FM QSoC firmware download and/or calibration failed" $exit_code_fm_qsoc_patches
   ;;
esac

setprop hw.fm.init 1

exit 0
