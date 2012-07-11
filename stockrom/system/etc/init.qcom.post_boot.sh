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

target=`getprop ro.board.platform`
case "$target" in
    "msm7201a_ffa" | "msm7201a_surf" | "msm7627_ffa" | "msm7627_6x" | "msm7627a"  | "msm7627_surf" | \
    "qsd8250_surf" | "qsd8250_ffa" | "msm7630_surf" | "msm7630_1x" | "msm7630_fusion" | "qsd8650a_st1x")
        echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
        echo 90 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
        ;;
esac

case "$target" in
    "msm7201a_ffa" | "msm7201a_surf")
        echo 500000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
        ;;
esac

case "$target" in
    "msm7630_surf" | "msm7630_1x" | "msm7630_fusion")
        echo 75000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
        echo 1 > /sys/module/pm2/parameters/idle_sleep_mode
        ;;
esac

case "$target" in
     "msm7201a_ffa" | "msm7201a_surf" | "msm7627_ffa" | "msm7627_6x" | "msm7627_surf" | "msm7630_surf" | "msm7630_1x" | "msm7630_fusion" | "msm7627a" )
        echo 245760 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
        ;;
esac

# Target msm7x30: HTC Runnymede, Bliss, Mecha, Flyer, Ace, Saga, etc.
case "$target" in
     "msm7x30")
        echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
        echo 50000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
        echo 90 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
        echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
        echo 4 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
        # /system/lib/libqct-opt JNI native will write mfreq to set CPU freq to max for performance
        chown root.system /sys/devices/system/cpu/mfreq
        chmod 220 /sys/devices/system/cpu/mfreq
        # Allow PowerManagerService to acquire perflock and enable perf mode
        chown system /sys/power/perflock
        ;;
esac

case "$target" in
    "msm8660" | "msm8660_csfb")
	 echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
	 echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
	 echo 2 > /sys/module/rpm_resources/enable_low_power/vdd_dig
	 echo 2 > /sys/module/rpm_resources/enable_low_power/vdd_mem
	 echo 1 > /sys/module/rpm_resources/enable_low_power/rpm_cpu
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu0/power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu1/power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu0/standalone_power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu1/standalone_power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu0/power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu1/power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu0/standalone_power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8660/modes/cpu1/standalone_power_collapse/idle_enabled
	 echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	 echo "ondemand" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	 echo 50000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
	 echo 90 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
	 echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	 echo 4 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
	 echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	 echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
	 chown root.system /sys/devices/system/cpu/mfreq
	 chmod 220 /sys/devices/system/cpu/mfreq
	 chown root.system /sys/devices/system/cpu/cpu1/online
	 chmod 664 /sys/devices/system/cpu/cpu1/online
         # Allow PowerManagerService to acquire perflock and enable perf mode
         chown system /sys/power/perflock
        ;;
esac

case "$target" in
    "msm8960")
     echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
     echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
     echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_dig
     echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_mem
     echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
     echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
     echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
     echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/idle_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu0/power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu1/power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu0/standalone_power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu1/standalone_power_collapse/suspend_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu0/standalone_power_collapse/idle_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu1/standalone_power_collapse/idle_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu0/power_collapse/idle_enabled
     echo 1 > /sys/module/pm_8660/modes/cpu1/power_collapse/idle_enabled
     echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
     echo "ondemand" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
     echo 90 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
     echo 50000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
     echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
     echo 4 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
     echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
     echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
     chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
     chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
     chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
     chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
     chown root.system /sys/devices/system/cpu/mfreq
     chmod 220 /sys/devices/system/cpu/mfreq
     chown root.system /sys/devices/system/cpu/cpu1/online
     chmod 664 /sys/devices/system/cpu/cpu1/online
        ;;
esac

case "$target" in
    "msm7627_ffa" | "msm7627_surf" | "msm7627a" | "msm7627_6x")
        echo 25000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
        ;;
esac

case "$target" in
    "qsd8250_surf" | "qsd8250_ffa" | "qsd8650a_st1x")
        echo 50000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
        ;;
esac

case "$target" in
    "qsd8650a_st1x")
        mount -t debugfs none /sys/kernel/debug
    ;;
esac

chown system /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate

emmc_boot=`getprop ro.emmc`
case "$emmc_boot"
    in "1")
        chown system /sys/devices/platform/rs300000a7.65536/force_sync
        chown system /sys/devices/platform/rs300000a7.65536/sync_sts
        chown system /sys/devices/platform/rs300100a7.65536/force_sync
        chown system /sys/devices/platform/rs300100a7.65536/sync_sts
    ;;
esac


# Post-setup services
case "$target" in
    "msm8660" | "msm8660_csfb" | "msm8960")
        start mpdecision
	;;
esac

case "$target" in
    "msm8660" | "msm8660_csfb")
        start thermald
    ;;
esac
