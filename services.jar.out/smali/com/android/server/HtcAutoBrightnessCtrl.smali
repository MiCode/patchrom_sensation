.class final Lcom/android/server/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# static fields
.field private static final ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String; = "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

.field private static final ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String; = "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.android.server.HtcAutoBrightnessCtrl.action."

.field private static final BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I = 0x7f

.field private static final BRIGHTER_ONLY_TIMEOUT:I = 0xea60

.field private static final DEBUG_ON:Z = false

.field private static final DEFAULT_APP_ENTERING_TRANSITION_DELAY:I = 0x14

.field private static final DEFAULT_APP_LEAVING_TRANSITION_DELAY:I = 0x28

.field public static final DEFAULT_SYSTEM_TRANSITION_DELAY:I = 0xa

.field private static final KEY_BACKLIGHT_DELAY:Ljava/lang/String; = "backlight.delay"

.field private static final KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String; = "entering.screen.brightness"

.field private static final TAG:Ljava/lang/String; = "HtcAutoBrightnessCtrl"


# instance fields
.field private final mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private final mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEnableBrighterOnly:Z

.field private mEnableHtcAutoBrightnessCtrl:Z

.field private mHandler:Landroid/os/Handler;

.field private mIPowerManager:Landroid/os/IPowerManager;

.field private mOriginalLcdValue:I

.field private mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

.field private mPreviousLcdValue:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V
    .locals 5
    .parameter "context"
    .parameter "pmsInternalAPI"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableHtcAutoBrightnessCtrl:Z

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 63
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I

    .line 90
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$2;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 76
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableHtcAutoBrightnessCtrl:Z

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIPowerManager:Landroid/os/IPowerManager;

    .line 81
    iput-object p2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.DEVICE_POWER"

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, autoBrightnessMode:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 187
    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return v2

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "HtcAutoBrightnessCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScreenBrightnessMode: [SettingNotFoundException]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private reset(I)V
    .locals 4
    .parameter "delayInterval"

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iput-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 167
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    .line 168
    .local v0, currentLcdValue:I
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    .line 170
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1, v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(III)V

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mOriginalLcdValue:I

    .line 178
    return-void
.end method


# virtual methods
.method protected getCtrlAutoBrightnessValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    .line 191
    move v0, p1

    .line 193
    .local v0, ctrlLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    if-ge p1, v1, :cond_0

    .line 194
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    .line 207
    :cond_0
    iput v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPreviousLcdValue:I

    .line 208
    return v0
.end method
