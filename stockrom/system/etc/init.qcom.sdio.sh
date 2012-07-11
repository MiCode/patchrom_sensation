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
#

# For successful WLAN card detection, WLAN needs SDIO polling turned on.
# This script can be used to turn on/off SDIO polling on appropriate
# SDIO slot on the MSM target (e.g. slot 3 on 7x30 surf).

arg=$1
target=`getprop ro.board.platform`

case "$target" in
    "msm7627_6x")
        echo "$arg" > /sys/devices/platform/msm_sdcc.1/polling
        echo "$arg" > /sys/devices/platform/msm_sdcc.2/polling
        ;;

    "msm7627_ffa")
        echo "$arg" > /sys/devices/platform/msm_sdcc.2/polling
        ;;

    "msm7627_surf")
        echo "$arg" > /sys/devices/platform/msm_sdcc.1/polling
        echo "$arg" > /sys/devices/platform/msm_sdcc.2/polling
        ;;

    "msm7627a")
        echo "$arg" > /sys/devices/platform/msm_sdcc.2/polling
        ;;

    "msm7630_surf")
        echo "$arg" > /sys/devices/platform/msm_sdcc.3/polling
        ;;

    "msm7630_1x")
        echo "$arg" > /sys/devices/platform/msm_sdcc.3/polling
        ;;

    "msm7630_fusion")
        echo "$arg" > /sys/devices/platform/msm_sdcc.3/polling
        ;;

    "msm8660")
        echo "$arg" > /sys/devices/platform/msm_sdcc.4/polling
        ;;

    "msm8660_csfb")
        echo "$arg" > /sys/devices/platform/msm_sdcc.4/polling
        ;;
esac

exit 0
