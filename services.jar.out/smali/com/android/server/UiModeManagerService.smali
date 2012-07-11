.class Lcom/android/server/UiModeManagerService;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_NIGHT_MODE:Ljava/lang/String; = "com.android.server.action.UPDATE_NIGHT_MODE"

.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final DMB_DONGLE_ENABLED:Ljava/lang/String; = "uimode_dmb_enabled"

.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final KEY_LAST_UPDATE_INTERVAL:Ljava/lang/String; = "LAST_UPDATE_INTERVAL"

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final LOG:Z = false

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_UPDATE_TWILIGHT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

.field private final HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnabled:Z

.field private final mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurUiMode:I

.field private mDeskDockDimScreenValue:I

.field private mDeskModeEnabled:Z

.field private final mDeskModeKeepsScreenOn:Z

.field private mDmbDongleEnabled:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUiMode:I

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

.field private mbIsCarDockStateChanged:Z

.field private mbIsGoogleCarPanelAppExisting:Z

.field private mbIsHtcDockModeAppExist:Z

.field private mbIsHtcLocationExist:Z

.field private mbIsHtcSetupWizardInstalled:Z

.field private mbIsKeepsScreenOn4DeskMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 397
    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 98
    iput v11, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 99
    iput v11, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 101
    iput v10, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 102
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 104
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 107
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 110
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 115
    iput v11, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 116
    iput v11, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 118
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 119
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 133
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    .line 137
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 143
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    .line 144
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    .line 145
    const-string v1, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

    .line 146
    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 148
    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 150
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    .line 152
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 154
    const-string v1, "com.htc.android.htcsetupwizard"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

    .line 155
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    .line 170
    new-instance v1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    new-instance v1, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v1, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v1, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    new-instance v1, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 339
    new-instance v1, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    .line 1193
    new-instance v1, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 398
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    .line 400
    const-string v1, "uimode"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 406
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 408
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 410
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.UPDATE_NIGHT_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 417
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 421
    .local v7, powerManager:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 423
    const/4 v1, 0x6

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    .line 426
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 429
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 433
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v11, v1, Landroid/content/res/Configuration;->fontsize:I

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_3

    move v1, v10

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_4

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 441
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ui_night_mode"

    invoke-static {v1, v3, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 446
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 447
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "deskdock_dim_screen"

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 449
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 450
    new-instance v9, Lcom/android/server/UiModeManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/UiModeManagerService$SettingsObserver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    .line 451
    .local v9, settingsObserver:Lcom/android/server/UiModeManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 455
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 456
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    if-eq v1, v12, :cond_0

    .line 458
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 460
    :cond_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    if-eq v1, v12, :cond_1

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v1, :cond_2

    :cond_1
    move v11, v10

    :cond_2
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    .line 464
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->checkAppPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    .line 465
    return-void

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v8           #settingsCursor:Landroid/database/Cursor;
    .end local v9           #settingsObserver:Lcom/android/server/UiModeManagerService$SettingsObserver;
    :cond_3
    move v1, v11

    .line 436
    goto :goto_0

    :cond_4
    move v1, v11

    .line 438
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->launchHtcLocations()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UiModeManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->exitHtcLocations()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1095
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v2, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_2

    .line 1103
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1111
    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_3

    .line 1112
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1117
    :cond_3
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_4

    .line 1118
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1122
    :cond_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    .line 1123
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_6

    .line 1124
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1126
    .local v0, carModeOffIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1127
    .local v1, n:Landroid/app/Notification;
    const v2, 0x10804ec

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 1128
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1129
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1130
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 1131
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104044d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104044e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1136
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .end local v0           #carModeOffIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_5
    move v2, v3

    .line 1112
    goto :goto_1

    .line 1138
    :cond_6
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private adjustStatusBarDeskModeLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1145
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 1146
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1163
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    .line 1164
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1170
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v2, :cond_2

    .line 1171
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_3

    .line 1173
    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1175
    .local v0, deskModeHomeIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1176
    .local v1, n:Landroid/app/Notification;
    const v2, 0x20807bb

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 1177
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1178
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1179
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 1180
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040544

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040545

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1185
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1190
    .end local v0           #deskModeHomeIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_2
    :goto_0
    return-void

    .line 1187
    :cond_3
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "category"

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    return-object v0
.end method

.method private checkAppPackageInstalled(Ljava/lang/String;)Z
    .locals 8
    .parameter "strAppPackage"

    .prologue
    const/4 v6, 0x0

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 802
    .local v3, nTimeBegin:J
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 803
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 805
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 806
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 809
    const/4 v6, 0x1

    .line 814
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v6
.end method

.method private existCurrentModeIfAny(I)V
    .locals 5
    .parameter "nNewEnteringMode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 781
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 782
    .local v0, nCurModeType:I
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_0

    if-eq p1, v4, :cond_0

    .line 785
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableDeskMode(I)V

    .line 787
    :cond_0
    and-int/lit8 v1, v0, 0x3

    if-ne v1, v3, :cond_1

    if-eq p1, v3, :cond_1

    .line 790
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_2

    if-eq p1, v3, :cond_2

    .line 795
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    .line 797
    :cond_2
    return-void
.end method

.method private exitHtcLocations()V
    .locals 2

    .prologue
    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 752
    return-void
.end method

.method private getAutoLaunchCarDock(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, value:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_launch_car_dock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 652
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 653
    :goto_0
    return v1

    .line 652
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAutoLaunchDeskDock(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, value:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "deskdock_auto_launch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 662
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 663
    :goto_0
    return v1

    .line 662
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimScreenTimeoutValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_dim_screen"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasOOBEState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 755
    if-nez p1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v0

    .line 758
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    if-eqz v1, :cond_0

    .line 761
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setup_wizard_has_run"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final isDeskDockState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 631
    packed-switch p0, :pswitch_data_0

    .line 637
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 635
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isGoogleCarPanelExisting(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    .line 712
    const/4 v8, 0x0

    .line 713
    .local v8, result:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 715
    .local v5, nTimeBegin:J
    iget-object v10, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 717
    .local v7, packageMgr:Landroid/content/pm/PackageManager;
    if-nez v7, :cond_0

    move v9, v8

    .line 741
    .end local v8           #result:Z
    .local v9, result:I
    :goto_0
    return v9

    .line 719
    .end local v9           #result:I
    .restart local v8       #result:Z
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v4, intent:Landroid/content/Intent;
    const v10, 0x10080

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 722
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    .line 724
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 726
    .local v3, info:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    .line 728
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "android.dock_home"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 729
    .local v1, bMetaDataValue:Z
    if-eqz v1, :cond_1

    .line 731
    const/4 v8, 0x1

    .end local v1           #bMetaDataValue:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    move v9, v8

    .line 741
    .restart local v9       #result:I
    goto :goto_0
.end method

.method private isHtcDockModeAppExisting(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 766
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 767
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 769
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 770
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.htc.dockmode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 773
    const/4 v4, 0x1

    .line 776
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method private isHtcLocationExisting(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 695
    .local v3, nTimeBegin:J
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 696
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 698
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 699
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.htc.laputa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 702
    const/4 v6, 0x1

    .line 707
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v6
.end method

.method private launchHtcLocations()V
    .locals 3

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v0, naviIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 747
    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 470
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 473
    :cond_0
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableDeskMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 491
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 494
    :cond_0
    monitor-exit v1

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

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

    .line 1404
    :goto_0
    return-void

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1390
    :try_start_0
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    const-string v0, "  mDockState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1392
    const-string v0, " mLastBroadcastState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1393
    const-string v0, "  mNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1394
    const-string v0, " mCarModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1395
    const-string v0, " mComputedNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1396
    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1399
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 1401
    const-string v0, "  mLocation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1403
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 478
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->existCurrentModeIfAny(I)V

    .line 480
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 482
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 485
    :cond_0
    monitor-exit v1

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDeskMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 499
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->existCurrentModeIfAny(I)V

    .line 501
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 503
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 506
    :cond_0
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentModeType()I
    .locals 2

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v0, 0xf

    monitor-exit v1

    return v0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDockState()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    return v0
.end method

.method public getNightMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 542
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method isDoingNightMode()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCarModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 568
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 570
    :cond_0
    return-void
.end method

.method setDeskModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 575
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 577
    :cond_0
    return-void
.end method

.method setDmbDongleLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eq v0, p1, :cond_0

    .line 583
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 585
    :cond_0
    return-void
.end method

.method public setNightMode(I)V
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 518
    packed-switch p1, :pswitch_data_0

    .line 524
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 538
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 526
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    monitor-exit v3

    .line 539
    :goto_0
    return-void

    .line 530
    :cond_0
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_1

    .line 531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    .local v0, ident:J
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 536
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 538
    .end local v0           #ident:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method systemReady()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 546
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 547
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 548
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 550
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 554
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 555
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uimode_dmb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 558
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    monitor-exit v3

    .line 560
    return-void

    :cond_0
    move v2, v1

    .line 548
    goto :goto_0

    :cond_1
    move v0, v1

    .line 554
    goto :goto_1

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final updateConfigurationLocked(Z)V
    .locals 4
    .parameter "sendIt"

    .prologue
    .line 819
    const/4 v1, 0x1

    .line 820
    .local v1, uiMode:I
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_2

    .line 821
    const/4 v1, 0x3

    .line 827
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    .line 828
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v2, :cond_4

    .line 829
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    .line 830
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    :goto_1
    or-int/2addr v1, v2

    .line 841
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v2, :cond_6

    .line 877
    :cond_1
    :goto_3
    return-void

    .line 823
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_0

    .line 825
    const/4 v1, 0x2

    goto :goto_0

    .line 830
    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    .line 833
    :cond_4
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    goto :goto_2

    .line 837
    :cond_5
    and-int/lit8 v2, v1, -0x31

    or-int/lit8 v1, v2, 0x10

    goto :goto_2

    .line 848
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v2, :cond_1

    .line 863
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 865
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    if-eq v1, v2, :cond_1

    .line 866
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 867
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 869
    if-eqz p1, :cond_1

    .line 871
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failure communicating with activity manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method updateDockState(I)V
    .locals 7
    .parameter "newState"

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 589
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 590
    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_6

    .line 591
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 592
    .local v0, mOldDockState:I
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 597
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_0

    .line 598
    monitor-exit v4

    .line 628
    .end local v0           #mOldDockState:I
    :goto_0
    return-void

    .line 601
    .restart local v0       #mOldDockState:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_1

    .line 602
    monitor-exit v4

    goto :goto_0

    .line 627
    .end local v0           #mOldDockState:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 606
    .restart local v0       #mOldDockState:I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchCarDock(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_2

    .line 607
    monitor-exit v4

    goto :goto_0

    .line 610
    :cond_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchDeskDock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v1, :cond_4

    .line 611
    monitor-exit v4

    goto :goto_0

    .line 613
    :cond_4
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_7

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 615
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 619
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_8

    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDmbDongleLocked(Z)V

    .line 621
    if-ne v0, v5, :cond_9

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 622
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_5

    .line 623
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 625
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 627
    .end local v0           #mOldDockState:I
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .restart local v0       #mOldDockState:I
    :cond_7
    move v3, v2

    .line 613
    goto :goto_1

    :cond_8
    move v3, v2

    .line 619
    goto :goto_2

    :cond_9
    move v1, v2

    .line 621
    goto :goto_3
.end method

.method final updateLocked(II)V
    .locals 17
    .parameter "enableFlags"
    .parameter "disableFlags"

    .prologue
    .line 880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 883
    .local v12, ident:J
    const/4 v9, 0x0

    .line 884
    .local v9, action:Ljava/lang/String;
    const/16 v16, 0x0

    .line 885
    .local v16, oldAction:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 886
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 887
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 908
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_b

    .line 909
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    .line 912
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-nez v1, :cond_1

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isGoogleCarPanelExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    .line 914
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v1, :cond_9

    .line 917
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 919
    const-string v9, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    .line 966
    :cond_2
    :goto_1
    if-eqz v9, :cond_11

    .line 979
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v2, intent:Landroid/content/Intent;
    const-string v1, "enableFlags"

    move/from16 v0, p1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    const-string v1, "disableFlags"

    move/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 987
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1035
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_16

    .line 1038
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-nez v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_16

    .line 1089
    :cond_4
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    return-void

    .line 888
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 890
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_6

    .line 892
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    .line 895
    :cond_6
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 898
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    .line 899
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 903
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-nez v1, :cond_0

    .line 904
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 921
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-eqz v1, :cond_2

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 924
    if-eqz v16, :cond_a

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 927
    :cond_a
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 928
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 935
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_e

    .line 937
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isHtcDockModeAppExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    .line 940
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_c

    .line 942
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    .line 945
    :cond_c
    if-eqz v16, :cond_d

    .line 946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 948
    :cond_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 949
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 952
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eqz v1, :cond_10

    .line 953
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    .line 954
    if-eqz v16, :cond_f

    .line 955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 957
    :cond_f
    const/16 v1, 0x20

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 958
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 962
    :cond_10
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 963
    move-object/from16 v9, v16

    goto/16 :goto_1

    .line 989
    :cond_11
    const/4 v11, 0x0

    .line 990
    .local v11, homeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_14

    .line 991
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_12

    .line 995
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_13

    .line 1026
    :cond_12
    :goto_4
    if-eqz v11, :cond_3

    .line 1028
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1029
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 997
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-eqz v1, :cond_12

    .line 999
    const-string v1, "android.intent.category.CAR_DOCK"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    .line 1005
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_15

    .line 1007
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_12

    .line 1009
    const-string v1, "android.intent.category.DESK_DOCK"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    .line 1012
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_12

    .line 1016
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_12

    .line 1017
    const-string v1, "android.intent.category.HOME"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    .line 1043
    .end local v11           #homeIntent:Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_4

    .line 1049
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 1053
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    const/4 v10, 0x1

    .line 1055
    .local v10, bIsATTSku:Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v1, :cond_17

    if-eqz v10, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    if-eqz v1, :cond_1b

    :cond_18
    const/4 v14, 0x1

    .line 1061
    .local v14, keepScreenOn:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v14, v1, :cond_19

    .line 1062
    if-eqz v14, :cond_1c

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1072
    :cond_19
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_1d

    const/4 v15, 0x1

    .line 1073
    .local v15, keepScreenOn4DeskDock:Z
    :goto_8
    if-eqz v15, :cond_1e

    if-nez v14, :cond_1e

    .line 1075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1089
    .end local v10           #bIsATTSku:Z
    .end local v14           #keepScreenOn:Z
    .end local v15           #keepScreenOn4DeskDock:Z
    :catchall_0
    move-exception v1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1053
    :cond_1a
    const/4 v10, 0x0

    goto :goto_5

    .line 1055
    .restart local v10       #bIsATTSku:Z
    :cond_1b
    const/4 v14, 0x0

    goto :goto_6

    .line 1065
    .restart local v14       #keepScreenOn:Z
    :cond_1c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    .line 1072
    :cond_1d
    const/4 v15, 0x0

    goto :goto_8

    .line 1081
    .restart local v15       #keepScreenOn4DeskDock:Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method updateTwilightLocked()V
    .locals 17

    .prologue
    .line 1331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-nez v4, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1334
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1337
    .local v2, currentTime:J
    new-instance v1, Lcom/android/server/TwilightCalculator;

    invoke-direct {v1}, Lcom/android/server/TwilightCalculator;-><init>()V

    .line 1338
    .local v1, tw:Lcom/android/server/TwilightCalculator;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 1340
    iget v4, v1, Lcom/android/server/TwilightCalculator;->mState:I

    if-nez v4, :cond_2

    .line 1341
    const/4 v14, 0x0

    .line 1347
    .local v14, nightMode:Z
    :goto_1
    const-wide/16 v12, 0x0

    .line 1348
    .local v12, nextUpdate:J
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1350
    :cond_1
    const-wide/32 v4, 0x2932e00

    add-long v12, v2, v4

    .line 1369
    :goto_2
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.android.server.action.UPDATE_NIGHT_MODE"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v16, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1372
    .local v15, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v12, v13, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1375
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_0

    .line 1343
    .end local v12           #nextUpdate:J
    .end local v14           #nightMode:Z
    .end local v15           #pendingIntent:Landroid/app/PendingIntent;
    .end local v16           #updateIntent:Landroid/content/Intent;
    :cond_2
    const/4 v14, 0x1

    .restart local v14       #nightMode:Z
    goto :goto_1

    .line 1352
    .restart local v12       #nextUpdate:J
    :cond_3
    iget v11, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 1354
    .local v11, mLastTwilightState:I
    const-wide/32 v4, 0xea60

    add-long/2addr v12, v4

    .line 1355
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 1357
    const-wide/32 v4, 0x5265c00

    add-long v5, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 1362
    :cond_4
    const/4 v4, 0x1

    if-ne v11, v4, :cond_5

    .line 1363
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    add-long/2addr v12, v4

    goto :goto_2

    .line 1365
    :cond_5
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    add-long/2addr v12, v4

    goto :goto_2
.end method
