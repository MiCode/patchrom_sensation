.class Lcom/android/server/BatteryService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$WirelessChargingTimerThread;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SCALE:I = 0x64

.field private static final BATTERY_STATS_SERVICE_NAME:Ljava/lang/String; = "batteryinfo"

.field private static final BATTERY_WIRELESS_CHARGNING_START:I = 0x1

.field private static final BATTERY_WIRELESS_CHARGNING_STOP:I = 0x2

.field private static final CHECK_SCREEN_FLAG_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_attr_check_screen_flag"

.field private static final DUMPSYS_ARGS:[Ljava/lang/String; = null

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final HTC_BATT_MONITOR_MIN_DISCHARGE_RATE:I = 0x5

.field private static final HTC_BATT_MONITOR_MIN_DURATION:I = 0xdbba00

.field private static final LOCAL_LOGV:Z = false

.field private static LOW_BATTERY_LEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_WAKELOCK_KEY:Ljava/lang/String; = "BatteryServiceUpdateStats"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "BatteryService_WAKELOCK"

.field private static final WIRELESS_CHARGER_SHOWING_ACTION:Ljava/lang/String; = "com.android.server.batteryservice.action.SHOW_WIRELESS_CHARGING"


# instance fields
.field private final BATTERY_STATS_UPDATE_PERIOD:I

.field private final UPDATE_WAKELOCK_TIMEOUT:I

.field private filePath:Ljava/lang/String;

.field private filePathCMCC:Ljava/lang/String;

.field private isBroadcsatBatteryIntent:Z

.field private isInterruptShowing:Z

.field private isShowingInPopingDialog:Z

.field private mAcOnline:Z

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryPresent:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatsUpdatePeriod:I

.field private mBatteryStatus:I

.field private mBatteryTechnology:Ljava/lang/String;

.field private mBatteryTemperature:I

.field private mBatteryTestChangeCount:I

.field private mBatteryVoltage:I

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mEnableHTCPowerLogUpload:Z

.field private mHadNoPowerShutdown:Z

.field private mInvalidCharger:I

.field private mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryLevelLow:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastInvalidCharger:I

.field private mLastPlugType:I

.field private mLastUnsupportedCharger:Z

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mLowBatteryWarningLevelAry:[I

.field private mPlugType:I

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPowerSupplyObserver:Landroid/os/UEventObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSentLowBatteryBroadcast:Z

.field private mTimerThreadInPopingDialog:Lcom/android/server/BatteryService$WirelessChargingTimerThread;

.field private mUnsupportedCharger:Z

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUsbOnline:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWirelessChargerStatus:I

.field private mWirelessOnline:Z

.field private updateBatteryStats:Ljava/lang/Runnable;

.field private usbCableConnect:Ljava/lang/String;

.field private usbCableConnectCMCC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 142
    const/16 v0, 0xf

    sput v0, Lcom/android/server/BatteryService;->LOW_BATTERY_LEVEL:I

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-u"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 5
    .parameter "context"
    .parameter "lights"

    .prologue
    const v3, 0xea60

    const/4 v4, 0x0

    .line 263
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    .line 200
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevelAry:[I

    .line 204
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 213
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 225
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->isBroadcsatBatteryIntent:Z

    .line 226
    const-string v2, "usb_cable_connect"

    iput-object v2, p0, Lcom/android/server/BatteryService;->usbCableConnect:Ljava/lang/String;

    .line 227
    const-string v2, "online"

    iput-object v2, p0, Lcom/android/server/BatteryService;->usbCableConnectCMCC:Ljava/lang/String;

    .line 228
    const-string v2, "/sys/devices/platform/msm_hsusb/"

    iput-object v2, p0, Lcom/android/server/BatteryService;->filePath:Ljava/lang/String;

    .line 229
    const-string v2, "/sys/class/power_supply/usb/"

    iput-object v2, p0, Lcom/android/server/BatteryService;->filePathCMCC:Ljava/lang/String;

    .line 234
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mHadNoPowerShutdown:Z

    .line 244
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/server/BatteryService;->UPDATE_WAKELOCK_TIMEOUT:I

    .line 250
    iput v3, p0, Lcom/android/server/BatteryService;->BATTERY_STATS_UPDATE_PERIOD:I

    .line 251
    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryStatsUpdatePeriod:I

    .line 253
    new-instance v2, Lcom/android/server/BatteryService$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->updateBatteryStats:Ljava/lang/Runnable;

    .line 311
    new-instance v2, Lcom/android/server/BatteryService$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    new-instance v2, Lcom/android/server/BatteryService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mPowerSupplyObserver:Landroid/os/UEventObserver;

    .line 364
    new-instance v2, Lcom/android/server/BatteryService$4;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    .line 925
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->isInterruptShowing:Z

    .line 926
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->isShowingInPopingDialog:Z

    .line 927
    iput v4, p0, Lcom/android/server/BatteryService;->mWirelessChargerStatus:I

    .line 1270
    iput v4, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    .line 264
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 268
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 271
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mUpdateHandler:Landroid/os/Handler;

    .line 274
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 276
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 278
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 281
    iget-object v2, p0, Lcom/android/server/BatteryService;->mPowerSupplyObserver:Landroid/os/UEventObserver;

    const-string v3, "SUBSYSTEM=power_supply"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 284
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 285
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 286
    .local v1, powerManager:Landroid/os/PowerManager;
    const v2, 0x1000000a

    const-string v3, "BatteryService_WAKELOCK"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    iget-object v2, p0, Lcom/android/server/BatteryService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 289
    const/4 v2, 0x1

    const-string v3, "BatteryServiceUpdateStats"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 290
    iget-object v2, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 295
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 300
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v2, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    .line 308
    return-void
.end method

.method private ULogForBattery(IILjava/lang/String;)V
    .locals 5
    .parameter "mBatteryLevel"
    .parameter "mPlugType"
    .parameter "category"

    .prologue
    .line 1182
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 1185
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "device_status"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "charger"

    if-nez p2, :cond_0

    const-string v2, "off"

    :goto_0
    invoke-interface {v3, v4, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "battery_power"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1190
    if-nez p2, :cond_1

    const-string v0, "off"

    .line 1191
    .local v0, s:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "battery_power="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    const-string v2, "BatteryService_ULog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1199
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 1200
    return-void

    .line 1185
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    const-string v2, "on"

    goto :goto_0

    .line 1190
    :cond_1
    const-string v0, "on"

    goto :goto_1
.end method

.method private ULogForBatteryChargingStateChange(II)V
    .locals 3
    .parameter "mBatteryLevel"
    .parameter "mPlugType"

    .prologue
    .line 1165
    const-string v0, "BatteryService_ULog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ULogForBatteryChargingStateChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const-string v0, "battery"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BatteryService;->ULogForBattery(IILjava/lang/String;)V

    .line 1170
    return-void
.end method

.method private ULogForBatteryLow(II)V
    .locals 3
    .parameter "mBatteryLevel"
    .parameter "mPlugType"

    .prologue
    .line 1173
    const-string v0, "BatteryService_ULog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ULogForBatteryLow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v0, "battery_low"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BatteryService;->ULogForBattery(IILjava/lang/String;)V

    .line 1178
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/BatteryService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->isInterruptShowing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isInterruptShowing:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isShowingInPopingDialog:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/BatteryService;->mWirelessChargerStatus:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->sendShowWirelessChargingIntent(I)V

    return-void
.end method

.method private checkFileInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, bResult:Z
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 950
    .local v2, myPackageManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 951
    .local v1, myPackageInfo:Landroid/content/pm/PackageInfo;
    const/4 v0, 0x1

    .line 957
    .end local v1           #myPackageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 953
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final getIcon(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 1095
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1096
    const v0, 0x1080504

    .line 1104
    :goto_0
    return v0

    .line 1098
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1101
    :cond_1
    const v0, 0x10804f6

    goto :goto_0

    .line 1104
    :cond_2
    const v0, 0x1080512

    goto :goto_0
.end method

.method private final logBatteryStats()V
    .locals 11

    .prologue
    .line 1001
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1002
    .local v0, batteryInfoService:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 1005
    .local v1, db:Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1007
    const/4 v2, 0x0

    .line 1008
    .local v2, dumpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 1011
    .local v4, dumpStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batteryinfo.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1012
    .end local v2           #dumpFile:Ljava/io/File;
    .local v3, dumpFile:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1013
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .local v5, dumpStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1014
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1018
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 1021
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    if-eqz v7, :cond_2

    const-string v7, "htc_batt_log"

    invoke-virtual {p0, v7, v3}, Lcom/android/server/BatteryService;->addErrorToDropBoxForHTC(Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1030
    :cond_2
    if-eqz v5, :cond_3

    .line 1032
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1037
    :cond_3
    :goto_1
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1038
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_0

    .line 1033
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 1034
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1024
    .end local v3           #dumpFile:Ljava/io/File;
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #dumpFile:Ljava/io/File;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 1025
    .local v6, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1030
    if-eqz v4, :cond_4

    .line 1032
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1037
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_4
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1038
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1033
    .restart local v6       #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 1034
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1026
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 1027
    .restart local v6       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1030
    if-eqz v4, :cond_5

    .line 1032
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1037
    :cond_5
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1038
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1033
    :catch_4
    move-exception v6

    .line 1034
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1030
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_6

    .line 1032
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1037
    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1038
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v7

    .line 1033
    :catch_5
    move-exception v6

    .line 1034
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1030
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .line 1026
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .line 1024
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :cond_8
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_0
.end method

.method private final logOutlier(J)V
    .locals 12
    .parameter "duration"

    .prologue
    .line 1045
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1046
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "battery_discharge_threshold"

    invoke-static {v0, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1048
    .local v2, dischargeThresholdString:Ljava/lang/String;
    const-string v8, "battery_discharge_duration_threshold"

    invoke-static {v0, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1053
    .local v5, durationThresholdString:Ljava/lang/String;
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_1

    .line 1054
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "userdebug"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v2, :cond_1

    if-nez v5, :cond_1

    const-wide/32 v8, 0xdbba00

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v8, v9

    const v9, 0x36ee80

    mul-int/2addr v8, v9

    int-to-long v8, v8

    div-long/2addr v8, p1

    const-wide/16 v10, 0x5

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 1060
    const-string v8, "batterylog.upload"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1061
    .local v7, prop:I
    if-eqz v7, :cond_0

    .line 1062
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    .line 1064
    :cond_0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V

    .line 1065
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    .line 1066
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable HTC power log upload, discharge rate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v10, v11

    const v11, 0x36ee80

    mul-int/2addr v10, v11

    int-to-long v10, v10

    div-long/2addr v10, p1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(%/hour)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v7           #prop:I
    :cond_1
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " discharge: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 1075
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1076
    .local v3, durationThreshold:J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1077
    .local v1, dischargeThreshold:I
    cmp-long v8, p1, v3

    if-gtz v8, :cond_2

    iget v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v8, v9

    if-lt v8, v1, :cond_2

    .line 1080
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .end local v1           #dischargeThreshold:I
    .end local v3           #durationThreshold:J
    :cond_2
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v6

    .line 1087
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/FileWriter;)V
    .locals 8
    .parameter "file"
    .parameter "writer"

    .prologue
    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, input:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 493
    .local v4, line:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 494
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v3, input:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 495
    .local v0, count:I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 500
    .end local v0           #count:I
    .end local v3           #input:Ljava/io/BufferedReader;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 504
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 498
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 502
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #count:I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v5

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_3

    .line 499
    .end local v0           #count:I
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    .locals 8
    .parameter "file"
    .parameter "writer"
    .parameter "lines"

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 469
    .local v2, input:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 470
    .local v4, line:Ljava/lang/String;
    if-nez p3, :cond_3

    const/16 v5, 0x800

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 472
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 473
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v3, input:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 474
    .local v0, count:I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 477
    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-virtual {p2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 481
    :cond_1
    invoke-virtual {p2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 485
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 487
    .end local v0           #count:I
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .line 470
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 485
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_1

    .line 482
    .end local v0           #count:I
    :catch_1
    move-exception v1

    .line 483
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v5

    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_3

    .line 482
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :cond_5
    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private native native_update()V
.end method

.method private noteHadNoPowerShutdown()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mHadNoPowerShutdown:Z

    .line 390
    return-void
.end method

.method private processValues()V
    .locals 17

    .prologue
    .line 641
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->native_update()V

    .line 662
    const/4 v10, 0x0

    .line 663
    .local v10, logOutlier:Z
    const-wide/16 v8, 0x0

    .line 665
    .local v8, dischargeDuration:J
    const/4 v15, 0x0

    .line 667
    .local v15, showUnsupportedChargerWarningFlag:Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 668
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sget v2, Lcom/android/server/BatteryService;->LOW_BATTERY_LEVEL:I

    if-gt v1, v2, :cond_12

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 669
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v1, :cond_13

    .line 670
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 681
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTemp()V

    .line 691
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastUnsupportedCharger:Z

    if-eq v1, v2, :cond_10

    .line 701
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v1, v2, :cond_18

    .line 702
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v1, :cond_17

    .line 703
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    if-nez v1, :cond_16

    .line 708
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-eq v1, v2, :cond_1

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v1, v3

    .line 710
    const/4 v10, 0x1

    .line 711
    const/16 v1, 0xaaa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 714
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 716
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/BatteryService;->ULogForBatteryChargingStateChange(II)V

    .line 743
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v1, v2, :cond_4

    .line 747
    :cond_3
    const/16 v2, 0xaa3

    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 751
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v1, v2, :cond_6

    .line 754
    :cond_5
    const/16 v1, 0xaa2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 759
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v1, :cond_7

    .line 760
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/BatteryService;->ULogForBatteryChargingStateChange(II)V

    .line 762
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelLow:Z

    if-nez v1, :cond_8

    .line 763
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/BatteryService;->ULogForBatteryLow(II)V

    .line 767
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v1, :cond_9

    .line 771
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v1, v3

    .line 772
    const/4 v10, 0x1

    .line 775
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v1, :cond_1c

    const/4 v13, 0x1

    .line 776
    .local v13, plugged:Z
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v1, :cond_1d

    const/4 v12, 0x1

    .line 784
    .local v12, oldPlugged:Z
    :goto_7
    if-nez v13, :cond_1e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v1, v2, :cond_1e

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v1, v2, :cond_1e

    :cond_a
    const/4 v14, 0x1

    .line 789
    .local v14, sendBatteryLow:Z
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendIntent()V

    .line 791
    const-string v1, "com.htc.demoflorebooter"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/BatteryService;->checkFileInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    .line 795
    .local v11, mDemoFlowIsExist:Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    :goto_a
    xor-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 799
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 801
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/BatteryService;->showWirelessChargingDialog(I)V

    .line 811
    :cond_b
    :goto_b
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 812
    .local v16, statusIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 813
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v1, :cond_22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v1, :cond_22

    .line 814
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 826
    :cond_c
    :goto_c
    if-nez v11, :cond_d

    .line 830
    if-eqz v14, :cond_23

    .line 832
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 833
    const-string v1, "android.intent.action.BATTERY_LOW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 846
    :cond_d
    :goto_d
    const/4 v1, 0x1

    if-ne v1, v15, :cond_e

    .line 847
    const-string v1, "com.htc.content.intent.action.BATTERY_WARNING_INFO"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const-string v1, "com.htc.content.intent.extra.KEY_BATTERY_CHARGING_OVER_VOLTAGE"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 859
    :cond_e
    if-eqz v10, :cond_f

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-eqz v1, :cond_f

    .line 860
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/server/BatteryService;->logOutlier(J)V

    .line 863
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 864
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 865
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 866
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 867
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 868
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 869
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 870
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 871
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelLow:Z

    .line 872
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mLastUnsupportedCharger:Z

    .line 873
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 875
    .end local v11           #mDemoFlowIsExist:Z
    .end local v12           #oldPlugged:Z
    .end local v13           #plugged:Z
    .end local v14           #sendBatteryLow:Z
    .end local v16           #statusIntent:Landroid/content/Intent;
    :cond_10
    return-void

    .line 667
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 668
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 671
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v1, :cond_14

    .line 672
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_2

    .line 673
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mWirelessOnline:Z

    if-eqz v1, :cond_15

    .line 674
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_2

    .line 676
    :cond_15
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_2

    .line 719
    :cond_16
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 721
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v1, :cond_2

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 724
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 725
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    .line 726
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/BatteryService;->ULogForBatteryChargingStateChange(II)V

    goto/16 :goto_4

    .line 729
    :cond_18
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v1, :cond_19

    .line 731
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    if-ne v1, v2, :cond_2

    .line 732
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 736
    :cond_19
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    if-ne v1, v2, :cond_1a

    .line 737
    const/4 v15, 0x1

    .line 739
    :cond_1a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    goto/16 :goto_4

    .line 747
    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 775
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 776
    .restart local v13       #plugged:Z
    :cond_1d
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 784
    .restart local v12       #oldPlugged:Z
    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 795
    .restart local v11       #mDemoFlowIsExist:Z
    .restart local v14       #sendBatteryLow:Z
    :cond_1f
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 804
    :cond_21
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/BatteryService;->showWirelessChargingDialog(I)V

    goto/16 :goto_b

    .line 819
    .restart local v16       #statusIntent:Landroid/content/Intent;
    :cond_22
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v1, :cond_c

    .line 820
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 837
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v1, v2, :cond_d

    .line 839
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 840
    const-string v1, "android.intent.action.BATTERY_OKAY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 684
    .end local v11           #mDemoFlowIsExist:Z
    .end local v12           #oldPlugged:Z
    .end local v13           #plugged:Z
    .end local v14           #sendBatteryLow:Z
    .end local v16           #statusIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method private final sendIntent()V
    .locals 4

    .prologue
    .line 962
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 966
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIcon(I)I

    move-result v0

    .line 968
    .local v0, icon:I
    const-string v2, "status"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    const-string v2, "health"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    const-string v2, "present"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 971
    const-string v2, "level"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 975
    const-string v2, "voltage"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 976
    const-string v2, "temperature"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v2, "invalid_charger"

    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 997
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 998
    return-void
.end method

.method private sendShowWirelessChargingIntent(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.batteryservice.action.SHOW_WIRELESS_CHARGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, showIntent:Landroid/content/Intent;
    const-string v1, "isCancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 915
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 919
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    .line 920
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->isShowingInPopingDialog:Z

    .line 921
    new-instance v1, Lcom/android/server/BatteryService$WirelessChargingTimerThread;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$WirelessChargingTimerThread;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mTimerThreadInPopingDialog:Lcom/android/server/BatteryService$WirelessChargingTimerThread;

    .line 922
    iget-object v1, p0, Lcom/android/server/BatteryService;->mTimerThreadInPopingDialog:Lcom/android/server/BatteryService$WirelessChargingTimerThread;

    invoke-virtual {v1}, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->start()V

    .line 924
    :cond_0
    return-void
.end method

.method private showWirelessChargingDialog(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 934
    iput p1, p0, Lcom/android/server/BatteryService;->mWirelessChargerStatus:I

    .line 935
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->isShowingInPopingDialog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mTimerThreadInPopingDialog:Lcom/android/server/BatteryService$WirelessChargingTimerThread;

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->isInterruptShowing:Z

    .line 937
    iget-object v0, p0, Lcom/android/server/BatteryService;->mTimerThreadInPopingDialog:Lcom/android/server/BatteryService$WirelessChargingTimerThread;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->interrupt()V

    .line 941
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->sendShowWirelessChargingIntent(I)V

    goto :goto_0
.end method

.method private final shutdownIfNoPower()V
    .locals 9

    .prologue
    const/high16 v8, 0x1000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 395
    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mHadNoPowerShutdown:Z

    if-nez v5, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/android/server/BatteryService;->noteHadNoPowerShutdown()V

    .line 401
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "Shutdown device! Device is not powered, and battery level reached 0"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 446
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-gt v5, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mHadNoPowerShutdown:Z

    if-nez v5, :cond_3

    .line 413
    const/4 v0, 0x0

    .line 415
    .local v0, bFastboot:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_fastboot"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_2

    move v0, v3

    .line 421
    :goto_1
    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/android/server/BatteryService;->noteHadNoPowerShutdown()V

    .line 423
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device quick boot power off! battery level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.REQUEST_QUICKBOOT_POWEROFF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    move v0, v4

    .line 415
    goto :goto_1

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 429
    .end local v0           #bFastboot:Z
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mHadNoPowerShutdown:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    const/4 v5, 0x3

    if-le v3, v5, :cond_0

    .line 430
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mHadNoPowerShutdown:Z

    goto :goto_0
.end method

.method private final shutdownIfOverTemp()V
    .locals 4

    .prologue
    .line 451
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    const/16 v2, 0x2a8

    if-le v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown device! Battery temperature is too high (> 68.0 degree celsius)! battery temperature is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 462
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final declared-synchronized update()V
    .locals 4

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->updateBatteryStats:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    invoke-direct {p0}, Lcom/android/server/BatteryService;->processValues()V

    .line 632
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->updateBatteryStats:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryStatsUpdatePeriod:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :cond_1
    monitor-exit p0

    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateBatteryTest()V
    .locals 8

    .prologue
    const v7, 0xea60

    const/4 v6, 0x0

    .line 1272
    const-string v0, "sys.batt.test."

    .line 1273
    .local v0, SYSTEM_PROP_PREFIX:Ljava/lang/String;
    const-string v3, "sys.batt.test.enable"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1274
    .local v2, isEnable:Z
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery test is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    if-eqz v2, :cond_0

    .line 1277
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBatteryTest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v3, "sys.batt.test.period"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryStatsUpdatePeriod:I

    .line 1279
    const-string v3, "sys.batt.test.wireless"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mWirelessOnline:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessOnline:Z

    .line 1280
    const-string v3, "sys.batt.test.ac"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    .line 1281
    const-string v3, "sys.batt.test.usb"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    .line 1282
    const-string v3, "sys.batt.test.level"

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    .line 1283
    const-string v3, "sys.batt.test.status"

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    .line 1284
    const-string v3, "sys.batt.test.health"

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    .line 1285
    const-string v3, "sys.batt.test.present"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    .line 1286
    const-string v3, "sys.batt.test.volt"

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    .line 1287
    const-string v3, "sys.batt.test.temp"

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    .line 1288
    const-string v3, "sys.batt.test.tech"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    .line 1289
    const-string v3, "sys.batt.test.unsuppoted"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    .line 1290
    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    .line 1296
    :goto_0
    :try_start_0
    const-string v3, "sys.batt.test.count"

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :goto_1
    return-void

    .line 1292
    :cond_0
    iput v7, p0, Lcom/android/server/BatteryService;->mBatteryStatsUpdatePeriod:I

    .line 1293
    iput v6, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    goto :goto_0

    .line 1297
    :catch_0
    move-exception v1

    .line 1298
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "Unable to set SystemProperties: sys.batt.test.count"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addErrorToDropBoxForHTC(Ljava/lang/String;Ljava/io/File;)V
    .locals 16
    .parameter "eventType"
    .parameter "logFile"

    .prologue
    .line 508
    const-string v13, "HTC_BATT_LOG"

    .line 509
    .local v13, dropboxTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DropBoxManager;

    .line 513
    .local v6, dbox:Landroid/os/DropBoxManager;
    if-eqz v6, :cond_0

    const-string v2, "HTC_BATT_LOG"

    invoke-virtual {v6, v2}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 518
    .local v7, entryTime:J
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 520
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v2, "Type: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v2, "Process: system_server\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v2, "Time: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v2, "TimeZoneOffset: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v2, "Build: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v2, "Project Branch: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.build.project"

    const-string v5, "unknown"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v2, "Changelist: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.build.changelist"

    const-string v5, "unknown"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v2, "Release: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v2, "Bootloader: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.bootloader"

    const-string v5, "unknown"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v2, "Radio: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.baseband"

    const-string v5, "unknown"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 533
    const-string v2, "Network: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.operator.alpha"

    const-string v5, "unknown"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v10

    .line 536
    .local v10, accountMgr:Landroid/accounts/AccountManagerService;
    if-eqz v10, :cond_5

    .line 537
    const-string v2, "com.htc.android.mail.eas"

    invoke-virtual {v10, v2}, Landroid/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 538
    .local v11, accounts:[Landroid/accounts/Account;
    if-eqz v11, :cond_3

    .line 539
    move-object v12, v11

    .local v12, arr$:[Landroid/accounts/Account;
    array-length v15, v12

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_3

    aget-object v9, v12, v14

    .line 540
    .local v9, account:Landroid/accounts/Account;
    if-eqz v9, :cond_2

    .line 541
    const-string v2, "Account: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 544
    .end local v9           #account:Landroid/accounts/Account;
    .end local v12           #arr$:[Landroid/accounts/Account;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :cond_3
    const-string v2, "com.google"

    invoke-virtual {v10, v2}, Landroid/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 545
    if-eqz v11, :cond_5

    .line 546
    move-object v12, v11

    .restart local v12       #arr$:[Landroid/accounts/Account;
    array-length v15, v12

    .restart local v15       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_2
    if-ge v14, v15, :cond_5

    aget-object v9, v12, v14

    .line 547
    .restart local v9       #account:Landroid/accounts/Account;
    if-eqz v9, :cond_4

    .line 548
    const-string v2, "Account: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 556
    .end local v9           #account:Landroid/accounts/Account;
    .end local v10           #accountMgr:Landroid/accounts/AccountManagerService;
    .end local v11           #accounts:[Landroid/accounts/Account;
    .end local v12           #arr$:[Landroid/accounts/Account;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :cond_5
    new-instance v1, Lcom/android/server/BatteryService$5;

    const-string v3, "Error dump: HTC_BATT_LOG"

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;J)V

    .line 620
    .local v1, worker:Ljava/lang/Thread;
    invoke-virtual {v1}, Lcom/android/server/BatteryService$5;->run()V

    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Battery service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-eqz v0, :cond_2

    const-string v0, "-a"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    :cond_2
    monitor-enter p0

    .line 1121
    :try_start_0
    const-string v0, "Current Battery Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AC powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USB powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Wireless powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mWirelessOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    const-string v0, "  scale: 100"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  voltage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getBatteryLevel()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method final getPlugType()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method final isPowered()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 325
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mWirelessOnline:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPowered(I)Z
    .locals 4
    .parameter "plugTypeSet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 331
    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v3, v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 335
    goto :goto_0

    .line 337
    :cond_2
    const/4 v0, 0x0

    .line 338
    .local v0, plugTypeBit:I
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v3, :cond_3

    .line 339
    or-int/lit8 v0, v0, 0x1

    .line 341
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v3, :cond_4

    .line 342
    or-int/lit8 v0, v0, 0x2

    .line 345
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessOnline:Z

    if-eqz v3, :cond_5

    .line 346
    or-int/lit8 v0, v0, 0x4

    .line 349
    :cond_5
    and-int v3, p1, v0

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method systemReady()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTemp()V

    .line 384
    return-void
.end method
