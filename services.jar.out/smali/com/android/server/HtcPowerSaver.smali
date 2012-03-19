.class public Lcom/android/server/HtcPowerSaver;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcPowerSaver$OnlyCDMA;,
        Lcom/android/server/HtcPowerSaver$ReduceFrameRate;,
        Lcom/android/server/HtcPowerSaver$ReduceCPU;,
        Lcom/android/server/HtcPowerSaver$Switch2GCall;,
        Lcom/android/server/HtcPowerSaver$DataConn;,
        Lcom/android/server/HtcPowerSaver$Wifi;,
        Lcom/android/server/HtcPowerSaver$Bluetooth;,
        Lcom/android/server/HtcPowerSaver$HapticFeedback;,
        Lcom/android/server/HtcPowerSaver$Animations;,
        Lcom/android/server/HtcPowerSaver$ScreenTimeout;,
        Lcom/android/server/HtcPowerSaver$Brightness;,
        Lcom/android/server/HtcPowerSaver$Feature;
    }
.end annotation


# static fields
.field public static final HTC_POWERSAVER_OFF:Ljava/lang/String; = "com.android.server.htcpowersaver.action.OFF"

.field public static final HTC_POWERSAVER_ON:Ljava/lang/String; = "com.android.server.htcpowersaver.action.ON"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field public static final KEY_SET_SCHEDULE:Ljava/lang/String; = "powersaver_set_schedule"

.field public static final KEY_STATUS:Ljava/lang/String; = "STATUS_POWER_SAVING_AUTO"

.field public static final KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String; = "user_powersaver_enable"

.field public static final NORMAL_STATUS:I = 0x1f40

.field public static final POWERSAVER_STATUS:I = 0x1f41

.field public static final POWERSAVER_USER_ENABLED:I = 0x1f42

.field public static final STATUS_NORMAL:I = 0x1f40

.field public static final STATUS_NO_CHANGED:I = -0x1

.field public static final STATUS_POWER_SAVING_AUTO:I = 0x1f41

.field public static final STATUS_POWER_SAVING_MANUAL:I = 0x1f42

.field private static final TAG:Ljava/lang/String; = "HtcPowerSaver"

.field protected static final TAG_PREFIX:Ljava/lang/String; = "HtcPowerSaver-"


# instance fields
.field private final DEFAULT_ENABLE:Z

.field private final DEFAULT_ENABLE_LEVEL:I

.field private final DEFAULT_USER_ENABLE:Z

.field private final KEY_POWERSAVER_SHARED:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

.field private mBatteryInfoUpdated:Z

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBootNotify:Z

.field private mContext:Landroid/content/Context;

.field private mFeatureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/HtcPowerSaver$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBatteryLevel:I

.field private mLastBatteryStatus:I

.field private mLastPlugType:I

.field private mLastPlugged:Z

.field private mLowBatteryWarningLevels:[I

.field private final mNotifyContentString:Ljava/lang/String;

.field private final mNotifyPopUpString:Ljava/lang/String;

.field private final mNotifyTileString:Ljava/lang/String;

.field private mPlugType:I

.field private mPlugged:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "ctx"

    .prologue
    const/16 v10, 0x7b

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v7, p0, Lcom/android/server/HtcPowerSaver;->DEFAULT_ENABLE:Z

    .line 60
    iput-boolean v7, p0, Lcom/android/server/HtcPowerSaver;->DEFAULT_USER_ENABLE:Z

    .line 63
    const/16 v8, 0x19

    iput v8, p0, Lcom/android/server/HtcPowerSaver;->DEFAULT_ENABLE_LEVEL:I

    .line 65
    const-string v8, "powersaver_shared"

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->KEY_POWERSAVER_SHARED:Ljava/lang/String;

    .line 67
    const-string v8, "sys.psaver.stat"

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

    .line 68
    const-string v8, "sys.psaver.gap"

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    .line 80
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    .line 83
    iput-boolean v7, p0, Lcom/android/server/HtcPowerSaver;->mBatteryInfoUpdated:Z

    .line 95
    sget-object v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x4080

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    move v4, v6

    .line 97
    .local v4, IS_SENSE_40_ABOVE:Z
    :goto_0
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    .line 99
    iget-object v8, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20c0224

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->mNotifyPopUpString:Ljava/lang/String;

    .line 100
    iget-object v8, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20c0225

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->mNotifyTileString:Ljava/lang/String;

    .line 101
    iget-object v8, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20c0226

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/HtcPowerSaver;->mNotifyContentString:Ljava/lang/String;

    .line 105
    new-instance v8, Lcom/android/server/HtcPowerSaver$DataConn;

    iget-object v9, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/server/HtcPowerSaver$DataConn;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v9

    or-int/2addr v8, v9

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v9

    or-int v1, v8, v9

    .line 109
    .local v1, IS_ENABLE_ONLYCDMA:Z
    if-eqz v1, :cond_2

    .line 110
    new-instance v8, Lcom/android/server/HtcPowerSaver$OnlyCDMA;

    iget-object v9, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/server/HtcPowerSaver$OnlyCDMA;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 111
    const-string v8, "HtcPowerSaver"

    const-string v9, "OnlyCDMA feature is registered."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_1
    new-instance v8, Lcom/android/server/HtcPowerSaver$ReduceCPU;

    iget-object v9, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/server/HtcPowerSaver$ReduceCPU;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 118
    new-instance v8, Lcom/android/server/HtcPowerSaver$ReduceFrameRate;

    iget-object v9, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/server/HtcPowerSaver$ReduceFrameRate;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 122
    iget-object v8, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 123
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    move v0, v6

    .line 126
    .local v0, IS_CDMA_PHONE:Z
    :goto_2
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v8, v10, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x30

    if-ne v8, v9, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-nez v8, :cond_4

    move v2, v6

    .line 130
    .local v2, IS_PYRAMID_GENERIC_WWE:Z
    :goto_3
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v8, v10, :cond_5

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x34

    if-ne v8, v9, :cond_5

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-nez v8, :cond_5

    move v3, v6

    .line 135
    .local v3, IS_PYRAMID_HTC_WWE:Z
    :goto_4
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_6

    .line 136
    :cond_0
    const-string v6, "HtcPowerSaver"

    const-string v7, "Switch2GCall feature is not registered."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_5
    new-instance v6, Lcom/android/server/HtcPowerSaver$Wifi;

    iget-object v7, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/server/HtcPowerSaver$Wifi;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 147
    new-instance v6, Lcom/android/server/HtcPowerSaver$Bluetooth;

    iget-object v7, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/server/HtcPowerSaver$Bluetooth;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 149
    new-instance v6, Lcom/android/server/HtcPowerSaver$Brightness;

    iget-object v7, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/server/HtcPowerSaver$Brightness;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 151
    new-instance v6, Lcom/android/server/HtcPowerSaver$ScreenTimeout;

    iget-object v7, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/server/HtcPowerSaver$ScreenTimeout;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 153
    new-instance v6, Lcom/android/server/HtcPowerSaver$Animations;

    iget-object v7, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/server/HtcPowerSaver$Animations;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 155
    new-instance v6, Lcom/android/server/HtcPowerSaver$HapticFeedback;

    iget-object v7, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/server/HtcPowerSaver$HapticFeedback;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 156
    return-void

    .end local v0           #IS_CDMA_PHONE:Z
    .end local v1           #IS_ENABLE_ONLYCDMA:Z
    .end local v2           #IS_PYRAMID_GENERIC_WWE:Z
    .end local v3           #IS_PYRAMID_HTC_WWE:Z
    .end local v4           #IS_SENSE_40_ABOVE:Z
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    move v4, v7

    .line 95
    goto/16 :goto_0

    .line 113
    .restart local v1       #IS_ENABLE_ONLYCDMA:Z
    .restart local v4       #IS_SENSE_40_ABOVE:Z
    :cond_2
    const-string v8, "HtcPowerSaver"

    const-string v9, "OnlyCDMA feature is not registered."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .restart local v5       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3
    move v0, v7

    .line 123
    goto :goto_2

    .restart local v0       #IS_CDMA_PHONE:Z
    :cond_4
    move v2, v7

    .line 126
    goto :goto_3

    .restart local v2       #IS_PYRAMID_GENERIC_WWE:Z
    :cond_5
    move v3, v7

    .line 130
    goto :goto_4

    .line 139
    .restart local v3       #IS_PYRAMID_HTC_WWE:Z
    :cond_6
    new-instance v6, Lcom/android/server/HtcPowerSaver$Switch2GCall;

    iget-object v7, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/server/HtcPowerSaver$Switch2GCall;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v6}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    .line 140
    const-string v6, "HtcPowerSaver"

    const-string v7, "Switch2GCall feature is registered."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 80
    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/server/HtcPowerSaver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcPowerSaver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private broadcastIntent(I)V
    .locals 5
    .parameter "nowStatus"

    .prologue
    .line 304
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    .line 306
    .local v1, intentString:Ljava/lang/String;
    const/16 v2, 0x1f41

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1f42

    if-ne p1, v2, :cond_1

    .line 308
    :cond_0
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    .line 311
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, i:Landroid/content/Intent;
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 316
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntent: intentString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nowStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private entering()V
    .locals 4

    .prologue
    .line 178
    const-string v2, "HtcPowerSaver"

    const-string v3, "Entering Power Saver mode..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPowerSaver$Feature;

    .line 180
    .local v0, f:Lcom/android/server/HtcPowerSaver$Feature;
    #calls: Lcom/android/server/HtcPowerSaver$Feature;->apply()Z
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver$Feature;->access$000(Lcom/android/server/HtcPowerSaver$Feature;)Z

    goto :goto_0

    .line 182
    .end local v0           #f:Lcom/android/server/HtcPowerSaver$Feature;
    :cond_0
    return-void
.end method

.method private getDialogId(IIZ)I
    .locals 5
    .parameter "enableLevel"
    .parameter "currentLevel"
    .parameter "userEnable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    if-ge p2, p1, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    :cond_1
    move v1, v2

    .line 265
    .local v1, enable_powersaver:Z
    :goto_0
    const/16 v4, 0xf

    if-ge p2, v4, :cond_4

    .line 267
    .local v2, low_battery:Z
    :goto_1
    const/4 v0, -0x1

    .line 272
    .local v0, dialogId:I
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 273
    const/4 v0, 0x2

    .line 277
    :cond_2
    :goto_2
    return v0

    .end local v0           #dialogId:I
    .end local v1           #enable_powersaver:Z
    .end local v2           #low_battery:Z
    :cond_3
    move v1, v3

    .line 264
    goto :goto_0

    .restart local v1       #enable_powersaver:Z
    :cond_4
    move v2, v3

    .line 265
    goto :goto_1

    .line 274
    .restart local v0       #dialogId:I
    .restart local v2       #low_battery:Z
    :cond_5
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 275
    const/4 v0, 0x3

    goto :goto_2
.end method

.method private getEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "powersaver_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private getSchedule()I
    .locals 5

    .prologue
    .line 399
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "powersaver_set_schedule"

    const/16 v4, 0x19

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 402
    .local v2, schedule:I
    :try_start_0
    const-string v3, "sys.psaver.gap"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return v2

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    const-string v4, "getSchedule: Unable to set SystemProperties: sys.psaver.gap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string v3, "HtcPowerSaver"

    const-string v4, "Context is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-object v2

    .line 169
    :cond_0
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    .local v0, appsContext:Landroid/content/Context;
    const-string v2, "powersaver_shared"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    .line 170
    .end local v0           #appsContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingsSharedPreferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStatus()I
    .locals 5

    .prologue
    .line 378
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "STATUS_POWER_SAVING_AUTO"

    const/16 v4, 0x1f40

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 381
    .local v2, status:I
    :try_start_0
    const-string v3, "sys.psaver.stat"

    invoke-direct {p0, v2}, Lcom/android/server/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return v2

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcPowerSaver"

    const-string v4, "getStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStatus(IZZ)I
    .locals 3
    .parameter "currentStatus"
    .parameter "enable"
    .parameter "userManual"

    .prologue
    .line 325
    if-eqz p2, :cond_2

    .line 326
    if-eqz p3, :cond_1

    .line 327
    const/16 v0, 0x1f42

    .line 335
    .local v0, nextStatus:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->switchStatus(I)I

    move-result v1

    .line 336
    .local v1, statusChangeTo:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    if-eqz v2, :cond_0

    .line 337
    move v1, v0

    .line 340
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver;->broadcastIntent(I)V

    .line 342
    return v1

    .line 329
    .end local v0           #nextStatus:I
    .end local v1           #statusChangeTo:I
    :cond_1
    const/16 v0, 0x1f41

    .restart local v0       #nextStatus:I
    goto :goto_0

    .line 332
    .end local v0           #nextStatus:I
    :cond_2
    const/16 v0, 0x1f40

    .restart local v0       #nextStatus:I
    goto :goto_0
.end method

.method private isManunalEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "user_powersaver_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 348
    .local v1, userEnabled:Z
    :goto_0
    return v1

    .end local v1           #userEnabled:Z
    :cond_0
    move v1, v2

    .line 347
    goto :goto_0
.end method

.method private leaving()V
    .locals 4

    .prologue
    .line 185
    const-string v2, "HtcPowerSaver"

    const-string v3, "Leaving Power Saver mode..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPowerSaver$Feature;

    .line 187
    .local v0, f:Lcom/android/server/HtcPowerSaver$Feature;
    #calls: Lcom/android/server/HtcPowerSaver$Feature;->restore()V
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver$Feature;->access$100(Lcom/android/server/HtcPowerSaver$Feature;)V

    goto :goto_0

    .line 189
    .end local v0           #f:Lcom/android/server/HtcPowerSaver$Feature;
    :cond_0
    return-void
.end method

.method private notifyUser(II)V
    .locals 3
    .parameter "statusChangeTo"
    .parameter "dialogId"

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 243
    const-string v0, "HtcPowerSaver"

    const-string v1, "notifyUser: Unknown Status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver;->mNotifyPopUpString:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mNotifyTileString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mNotifyContentString:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/HtcPowerSaver;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->removeNotification()V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private popDialog(I)V
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 352
    if-lez p1, :cond_0

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.powersaversetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "case"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popDialog: Send intent with case: dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private popLowBatteryDialog(IIIZZ)Z
    .locals 7
    .parameter "level"
    .parameter "lastLevel"
    .parameter "status"
    .parameter "plugged"
    .parameter "lastPlugged"

    .prologue
    const/4 v4, 0x1

    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, popDialog:Z
    iget-object v5, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    array-length v1, v5

    .line 251
    .local v1, loopSize:I
    if-nez p4, :cond_0

    if-ne p3, v4, :cond_1

    :cond_0
    move v3, v2

    .line 260
    .end local v2           #popDialog:Z
    .local v3, popDialog:I
    :goto_0
    return v3

    .line 255
    .end local v3           #popDialog:I
    .restart local v2       #popDialog:Z
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    if-nez v2, :cond_4

    .line 256
    iget-object v5, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v5, v5, v0

    if-gt p1, v5, :cond_3

    if-nez p5, :cond_2

    iget v5, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    iget-object v6, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v6, v6, v0

    if-le v5, v6, :cond_3

    :cond_2
    move v2, v4

    .line 255
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v3, v2

    .line 260
    .restart local v3       #popDialog:I
    goto :goto_0
.end method

.method private registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method private removeNotification()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method private setEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "powersaver_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    return-void

    .line 411
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setNotification(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "show"
    .parameter "popUp"
    .parameter "title"
    .parameter "content"
    .parameter "dialogId"

    .prologue
    const/4 v7, 0x0

    .line 204
    if-eqz p1, :cond_0

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$PowersaverListActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 216
    .local v2, notificationManager:Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    const v4, 0x108072b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v4, p2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 217
    .local v1, notification:Landroid/app/Notification;
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 222
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 225
    .local v3, pIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, p3, p4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 226
    const-string v4, "Powersaver"

    invoke-virtual {v2, v4, v7, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 231
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v3           #pIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 228
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 229
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    const-string v4, "Powersaver"

    invoke-virtual {v2, v4, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "sys.psaver.stat"

    invoke-direct {p0, p1}, Lcom/android/server/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    const-string v2, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    return-void

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcPowerSaver"

    const-string v3, "setStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "popUp"
    .parameter "title"
    .parameter "content"
    .parameter "dialogId"

    .prologue
    .line 201
    return-void
.end method

.method private statusToString(I)Ljava/lang/String;
    .locals 1
    .parameter "status"

    .prologue
    .line 362
    const-string v0, "unknown"

    .line 363
    .local v0, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    return-object v0

    .line 365
    :pswitch_0
    const-string v0, "normal"

    .line 366
    goto :goto_0

    .line 368
    :pswitch_1
    const-string v0, "auto"

    .line 369
    goto :goto_0

    .line 371
    :pswitch_2
    const-string v0, "manual"

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchStatus(I)I
    .locals 2
    .parameter "nextStatus"

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->getStatus()I

    move-result v0

    .line 283
    .local v0, nowStatus:I
    if-ne p1, v0, :cond_0

    .line 284
    const/4 p1, -0x1

    .line 300
    .end local p1
    :goto_0
    return p1

    .line 286
    .restart local p1
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 298
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/HtcPowerSaver;->setStatus(I)V

    goto :goto_0

    .line 288
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->leaving()V

    goto :goto_1

    .line 292
    :pswitch_1
    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->entering()V

    goto :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatusLocked(IIZ)V
    .locals 18
    .parameter "currentLevel"
    .parameter "batteryStatus"
    .parameter "plugged"

    .prologue
    .line 466
    const-string v3, "HtcPowerSaver"

    const-string v4, ">> updateStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/android/server/HtcPowerSaver;->getStatus()I

    move-result v9

    .line 471
    .local v9, currentStatus:I
    const/16 v12, 0x14

    .line 474
    .local v12, enableLevel:I
    if-gtz v12, :cond_3

    const/4 v14, 0x1

    .line 485
    .local v14, isNeverEnable:Z
    :goto_0
    const/4 v13, 0x0

    .line 490
    .local v13, enabled:Z
    const/16 v17, 0x0

    .line 495
    .local v17, userManual:Z
    if-nez p3, :cond_4

    if-eqz v13, :cond_4

    const/4 v11, 0x1

    .line 497
    .local v11, enable:Z
    :goto_1
    if-eqz v17, :cond_5

    .line 501
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v11, v1}, Lcom/android/server/HtcPowerSaver;->handleStatus(IZZ)I

    move-result v16

    .line 503
    .local v16, statusChangeTo:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_0

    .line 504
    const-string v4, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PowerSaver ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v17, :cond_7

    const-string v3, "manual"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " plugged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", enabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/HtcPowerSaver;->getDialogId(IIZ)I

    move-result v10

    .line 510
    .local v10, dialogId:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v10}, Lcom/android/server/HtcPowerSaver;->notifyUser(II)V

    .line 512
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/HtcPowerSaver;->mLastPlugged:Z

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/HtcPowerSaver;->popLowBatteryDialog(IIIZZ)Z

    move-result v15

    .line 513
    .local v15, popDialog:Z
    if-nez v15, :cond_1

    const/16 v3, 0x1f41

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    .line 516
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/HtcPowerSaver;->popDialog(I)V

    .line 519
    :cond_2
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enableLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", popDialog="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statusChangeTo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/HtcPowerSaver;->mBatteryStatus:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/HtcPowerSaver;->mLastBatteryStatus:I

    .line 528
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/HtcPowerSaver;->mBatteryLevel:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    .line 529
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/HtcPowerSaver;->mPlugType:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/HtcPowerSaver;->mLastPlugType:I

    .line 530
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/HtcPowerSaver;->mPlugged:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/HtcPowerSaver;->mLastPlugged:Z

    .line 531
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    .line 533
    const-string v3, "HtcPowerSaver"

    const-string v4, "<< updateStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 474
    .end local v10           #dialogId:I
    .end local v11           #enable:Z
    .end local v13           #enabled:Z
    .end local v14           #isNeverEnable:Z
    .end local v15           #popDialog:Z
    .end local v16           #statusChangeTo:I
    .end local v17           #userManual:Z
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 495
    .restart local v13       #enabled:Z
    .restart local v14       #isNeverEnable:Z
    .restart local v17       #userManual:Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 497
    .restart local v11       #enable:Z
    :cond_5
    if-eqz v11, :cond_6

    move/from16 v0, p1

    if-ge v0, v12, :cond_6

    if-nez v14, :cond_6

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 504
    .restart local v16       #statusChangeTo:I
    :cond_7
    const-string v3, "auto"

    goto/16 :goto_3
.end method


# virtual methods
.method public bootCompletedNotify()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    .line 539
    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mBatteryInfoUpdated:Z

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver;->check()V

    .line 542
    :cond_0
    return-void
.end method

.method public check()V
    .locals 3

    .prologue
    .line 454
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const-string v0, "HtcPowerSaver"

    const-string v1, "System is not ready. Skipping PowerSaver update."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string v0, "HtcPowerSaver"

    const-string v1, "Checking..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    monitor-enter p0

    .line 461
    :try_start_0
    iget v0, p0, Lcom/android/server/HtcPowerSaver;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/HtcPowerSaver;->mBatteryStatus:I

    iget-boolean v2, p0, Lcom/android/server/HtcPowerSaver;->mPlugged:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/HtcPowerSaver;->updateStatusLocked(IIZ)V

    .line 462
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBatteryInfo(Landroid/content/Intent;)V
    .locals 9
    .parameter "i"

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 420
    const-string v6, "HtcPowerSaver"

    const-string v7, "Recived battery changed intent."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 423
    .local v3, contentResolver:Landroid/content/ContentResolver;
    const-string v6, "level"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 424
    .local v1, batteryLevel:I
    const-string v6, "status"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 425
    .local v2, batteryStatus:I
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 426
    .local v4, plugType:I
    and-int/lit8 v6, v4, 0x7

    if-eqz v6, :cond_0

    .line 427
    .local v5, plugged:Z
    :goto_0
    const-string v6, "scale"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 429
    .local v0, BATTERY_SCALE:I
    if-ne v1, v8, :cond_1

    .line 430
    const-string v6, "HtcPowerSaver"

    const-string v7, "Not found BatteryManager.EXTRA_LEVEL. Call with wrong Intent?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_1
    return-void

    .line 426
    .end local v0           #BATTERY_SCALE:I
    .end local v5           #plugged:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 434
    .restart local v0       #BATTERY_SCALE:I
    .restart local v5       #plugged:Z
    :cond_1
    mul-int/lit8 v6, v1, 0x64

    div-int v1, v6, v0

    .line 436
    monitor-enter p0

    .line 438
    :try_start_0
    iget v6, p0, Lcom/android/server/HtcPowerSaver;->mBatteryStatus:I

    iput v6, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryStatus:I

    .line 439
    iget v6, p0, Lcom/android/server/HtcPowerSaver;->mBatteryLevel:I

    iput v6, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    .line 440
    iget v6, p0, Lcom/android/server/HtcPowerSaver;->mPlugType:I

    iput v6, p0, Lcom/android/server/HtcPowerSaver;->mLastPlugType:I

    .line 441
    iget-boolean v6, p0, Lcom/android/server/HtcPowerSaver;->mPlugged:Z

    iput-boolean v6, p0, Lcom/android/server/HtcPowerSaver;->mLastPlugged:Z

    .line 444
    iput v2, p0, Lcom/android/server/HtcPowerSaver;->mBatteryStatus:I

    .line 445
    iput v1, p0, Lcom/android/server/HtcPowerSaver;->mBatteryLevel:I

    .line 446
    iput v4, p0, Lcom/android/server/HtcPowerSaver;->mPlugType:I

    .line 447
    iput-boolean v5, p0, Lcom/android/server/HtcPowerSaver;->mPlugged:Z

    .line 449
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/HtcPowerSaver;->mBatteryInfoUpdated:Z

    .line 450
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
