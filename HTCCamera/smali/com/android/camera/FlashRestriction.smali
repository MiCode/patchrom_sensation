.class public Lcom/android/camera/FlashRestriction;
.super Ljava/lang/Object;
.source "FlashRestriction.java"


# static fields
.field private static final BATTERY_CAPACITY_FLAG:B = 0x1t

.field private static BATTERY_CAPACITY_LIMIT:I = 0x0

.field private static final BATTERY_CAPACITY_LIMIT_PATH:Ljava/lang/String; = "/sys/camera_led_status/low_cap_limit"

.field private static final BATTERY_CAPACITY_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final BATTERY_TEMPERATURE_FLAG:B = 0x2t

.field private static BATTERY_TEMPERATURE_LIMIT:I = 0x0

.field private static final BATTERY_TEMPERATURE_LIMIT_PATH:Ljava/lang/String; = "/sys/camera_led_status/low_temp_limit"

.field private static final BATTERY_TEMPERATURE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_temp"

.field private static final HOTSPOT_STATUS_FLAG:B = 0x10t

.field private static final HOTSPOT_STATUS_PATH:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"

.field private static final NO_LIMIT_FLAG:B = 0x0t

.field private static final RIL_STATUS_FLAG:B = 0x8t

.field private static final RIL_STATUS_PATH:Ljava/lang/String; = "/sys/camera_led_status/led_ril_status"

.field private static final TAG:Ljava/lang/String; = "FlashRestriction"

.field private static final WIMAX_STATUS_FLAG:B = 0x4t

.field private static final WIMAX_STATUS_PATH:Ljava/lang/String; = "/sys/camera_led_status/led_wimax_status"


# instance fields
.field private mDisableFlash:B

.field private mFileObserver_BatCap:Landroid/os/FileObserver;

.field private mFileObserver_BatTemp:Landroid/os/FileObserver;

.field private mFileObserver_HotSpot:Landroid/os/FileObserver;

.field private mFileObserver_RIL:Landroid/os/FileObserver;

.field private mFileObserver_Wimax:Landroid/os/FileObserver;

.field private mIsLimitBatCap:B

.field private mIsLimitBatTemp:B

.field private mIsLimitHotSpot:B

.field private mIsLimitRIL:B

.field private mIsLimitWimax:B

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    .line 30
    const/16 v0, 0xf

    sput v0, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    .line 69
    invoke-static {}, Lcom/android/camera/FlashRestriction;->initBatteryLimit()V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    .line 46
    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    .line 48
    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    .line 50
    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    .line 52
    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    .line 54
    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    .line 56
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    .line 58
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    .line 60
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    .line 62
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    .line 64
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    .line 66
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FlashRestriction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->checkHotSpotStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FlashRestriction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->checkRILStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/FlashRestriction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->checkWimaxStatus()V

    return-void
.end method

.method private checkHotSpotStatus()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 323
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 324
    .local v2, limit_old:Z
    :goto_0
    const-string v5, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {p0, v5}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v1

    .line 326
    .local v1, limit_new:Z
    if-ne v1, v2, :cond_2

    .line 351
    :cond_0
    :goto_1
    return-void

    .end local v1           #limit_new:Z
    .end local v2           #limit_old:Z
    :cond_1
    move v2, v4

    .line 323
    goto :goto_0

    .line 330
    .restart local v1       #limit_new:Z
    .restart local v2       #limit_old:Z
    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    xor-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    .line 332
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    .line 333
    .local v0, disable:Z
    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    .line 340
    if-eq v1, v0, :cond_0

    .line 343
    if-ne v1, v3, :cond_4

    .line 344
    const-string v3, "FlashRestriction"

    const-string v4, "enable hot spot, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    .end local v0           #disable:Z
    :cond_3
    move v0, v4

    .line 332
    goto :goto_2

    .line 346
    .restart local v0       #disable:Z
    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "disable hot spot, restore flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private checkRILStatus()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 354
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 355
    .local v2, limit_old:Z
    :goto_0
    const-string v5, "/sys/camera_led_status/led_ril_status"

    invoke-direct {p0, v5}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v1

    .line 357
    .local v1, limit_new:Z
    if-ne v1, v2, :cond_2

    .line 382
    :cond_0
    :goto_1
    return-void

    .end local v1           #limit_new:Z
    .end local v2           #limit_old:Z
    :cond_1
    move v2, v4

    .line 354
    goto :goto_0

    .line 361
    .restart local v1       #limit_new:Z
    .restart local v2       #limit_old:Z
    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    xor-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    .line 363
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    .line 364
    .local v0, disable:Z
    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    .line 371
    if-eq v1, v0, :cond_0

    .line 374
    if-ne v1, v3, :cond_4

    .line 375
    const-string v3, "FlashRestriction"

    const-string v4, "phone incoming, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    .end local v0           #disable:Z
    :cond_3
    move v0, v4

    .line 363
    goto :goto_2

    .line 377
    .restart local v0       #disable:Z
    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "no phone incoming, restore flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private checkWimaxStatus()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 385
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 386
    .local v2, limit_old:Z
    :goto_0
    const-string v5, "/sys/camera_led_status/led_wimax_status"

    invoke-direct {p0, v5}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v1

    .line 388
    .local v1, limit_new:Z
    if-ne v1, v2, :cond_2

    .line 413
    :cond_0
    :goto_1
    return-void

    .end local v1           #limit_new:Z
    .end local v2           #limit_old:Z
    :cond_1
    move v2, v4

    .line 385
    goto :goto_0

    .line 392
    .restart local v1       #limit_new:Z
    .restart local v2       #limit_old:Z
    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    xor-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    .line 394
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    .line 395
    .local v0, disable:Z
    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    .line 402
    if-eq v1, v0, :cond_0

    .line 405
    if-ne v1, v3, :cond_4

    .line 406
    const-string v3, "FlashRestriction"

    const-string v4, "use wimax, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    .end local v0           #disable:Z
    :cond_3
    move v0, v4

    .line 394
    goto :goto_2

    .line 408
    .restart local v0       #disable:Z
    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "no use wimax, recover flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static initBatteryLimit()V
    .locals 4

    .prologue
    .line 74
    const-string v1, "/sys/camera_led_status/low_temp_limit"

    invoke-static {v1}, Lcom/android/camera/Util;->getIntegerFromFile(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    sput v1, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    .line 77
    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new Battery Temp limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    const-string v1, "/sys/camera_led_status/low_cap_limit"

    invoke-static {v1}, Lcom/android/camera/Util;->getIntegerFromFile(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    .line 85
    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new Battery Capacity limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_1
    return-void

    .line 79
    :cond_0
    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default Battery Temp limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default Battery Capacity limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initDisableFlash()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 109
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    .line 110
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    .line 111
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    .line 112
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    .line 113
    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    .line 115
    const-string v0, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {p0, v0}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 116
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    .line 117
    const-string v0, "FlashRestriction"

    const-string v1, "enable hot spot, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    const-string v0, "/sys/camera_led_status/led_ril_status"

    invoke-direct {p0, v0}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 120
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    .line 121
    const-string v0, "FlashRestriction"

    const-string v1, "phone incoming, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    const-string v0, "/sys/camera_led_status/led_wimax_status"

    invoke-direct {p0, v0}, Lcom/android/camera/FlashRestriction;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 124
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    .line 125
    const-string v0, "FlashRestriction"

    const-string v1, "use wimax, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    const-string v0, "/sys/class/power_supply/battery/batt_temp"

    sget v1, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 128
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    .line 129
    const-string v0, "FlashRestriction"

    const-string v1, "battery temperature lower, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_3
    const-string v0, "/sys/class/power_supply/battery/capacity"

    sget v1, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 132
    iput-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    .line 133
    const-string v0, "FlashRestriction"

    const-string v1, "battery capacity lower, must disable flashlight"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_4
    iget-byte v0, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v0

    if-ne v0, v2, :cond_5

    .line 144
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    .line 146
    :cond_5
    return-void
.end method

.method private isChecked(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 486
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 488
    :cond_0
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChecked() - File does not exist!! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 510
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return v4

    .line 492
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    .line 493
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2           #input:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 495
    .restart local v2       #input:Ljava/io/BufferedReader;
    if-nez v2, :cond_3

    .line 496
    const-string v6, "FlashRestriction"

    const-string v7, "isChecked() - BufferedReader input = null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_3
    const/4 v3, 0x0

    .line 500
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 503
    if-eqz v3, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0x31

    if-eq v6, v7, :cond_1

    :cond_4
    move v4, v5

    .line 506
    goto :goto_0

    .line 508
    .end local v1           #file:Ljava/io/File;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 509
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChecked() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 510
    goto :goto_0
.end method

.method private isLower(Ljava/lang/String;I)Z
    .locals 8
    .parameter "path"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 516
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 518
    :cond_0
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLower() - File does not exist!! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 549
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return v4

    .line 522
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    .line 523
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2           #input:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 525
    .restart local v2       #input:Ljava/io/BufferedReader;
    if-nez v2, :cond_3

    .line 526
    const-string v6, "FlashRestriction"

    const-string v7, "isLower() - BufferedReader input = null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_3
    const/4 v3, 0x0

    .line 530
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    if-eqz v3, :cond_4

    .line 535
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-lt v6, p2, :cond_1

    move v4, v5

    .line 538
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLower() - parse integer failed!! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 541
    goto :goto_0

    .line 544
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    const-string v4, "FlashRestriction"

    const-string v6, "isLower() - line == null"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v5

    .line 545
    goto :goto_0

    .line 547
    .end local v1           #file:Ljava/io/File;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 548
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "FlashRestriction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLower() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 549
    goto :goto_0
.end method

.method private startFileObserver()V
    .locals 4

    .prologue
    .line 179
    const-string v1, "FlashRestriction"

    const-string v2, "startFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Lcom/android/camera/FlashRestriction$1;

    const-string v2, "/sys/camera_led_status/led_hotspot_status"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$1;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    if-nez v1, :cond_1

    .line 202
    new-instance v1, Lcom/android/camera/FlashRestriction$2;

    const-string v2, "/sys/camera_led_status/led_ril_status"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$2;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    .line 221
    new-instance v1, Lcom/android/camera/FlashRestriction$3;

    const-string v2, "/sys/camera_led_status/led_wimax_status"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$3;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    if-nez v1, :cond_3

    .line 240
    new-instance v1, Lcom/android/camera/FlashRestriction$4;

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$4;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 258
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    if-nez v1, :cond_4

    .line 259
    new-instance v1, Lcom/android/camera/FlashRestriction$5;

    const-string v2, "/sys/class/power_supply/battery/capacity"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/FlashRestriction$5;-><init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 275
    :goto_4
    const-string v1, "FlashRestriction"

    const-string v2, "startFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_HotSpot.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 216
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_RIL.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 235
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_Wimax.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 253
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 254
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatTemp.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 272
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 273
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatCap.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private stopFileObserver()V
    .locals 3

    .prologue
    .line 279
    const-string v1, "FlashRestriction"

    const-string v2, "stopFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    if-eqz v1, :cond_0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    if-eqz v1, :cond_1

    .line 290
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    if-eqz v1, :cond_2

    .line 298
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 304
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    if-eqz v1, :cond_3

    .line 306
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 312
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    if-eqz v1, :cond_4

    .line 314
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 319
    :cond_4
    :goto_4
    const-string v1, "FlashRestriction"

    const-string v2, "stopFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_HotSpot.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 292
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_RIL.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 299
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 300
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_Wimax.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 308
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatTemp.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 315
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 316
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FlashRestriction"

    const-string v2, "mFileObserver_BatCap.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private updateFlashState()V
    .locals 2

    .prologue
    const/16 v1, 0x2c

    .line 174
    iget-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 176
    return-void
.end method


# virtual methods
.method public checkBatteryCapacity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 447
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 448
    .local v2, limit_old:Z
    :goto_0
    const-string v5, "/sys/class/power_supply/battery/capacity"

    sget v6, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-direct {p0, v5, v6}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v1

    .line 450
    .local v1, limit_new:Z
    if-ne v1, v2, :cond_2

    .line 475
    :cond_0
    :goto_1
    return-void

    .end local v1           #limit_new:Z
    .end local v2           #limit_old:Z
    :cond_1
    move v2, v4

    .line 447
    goto :goto_0

    .line 454
    .restart local v1       #limit_new:Z
    .restart local v2       #limit_old:Z
    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    xor-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    .line 456
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    .line 457
    .local v0, disable:Z
    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    .line 464
    if-eq v1, v0, :cond_0

    .line 467
    if-ne v1, v3, :cond_4

    .line 468
    const-string v3, "FlashRestriction"

    const-string v4, "battery capacity lower, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    .end local v0           #disable:Z
    :cond_3
    move v0, v4

    .line 456
    goto :goto_2

    .line 470
    .restart local v0       #disable:Z
    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "battery capacity not lower, recover flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public checkBatteryTemperature()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 416
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 417
    .local v2, limit_old:Z
    :goto_0
    const-string v5, "/sys/class/power_supply/battery/batt_temp"

    sget v6, Lcom/android/camera/FlashRestriction;->BATTERY_TEMPERATURE_LIMIT:I

    invoke-direct {p0, v5, v6}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v1

    .line 419
    .local v1, limit_new:Z
    if-ne v1, v2, :cond_2

    .line 444
    :cond_0
    :goto_1
    return-void

    .end local v1           #limit_new:Z
    .end local v2           #limit_old:Z
    :cond_1
    move v2, v4

    .line 416
    goto :goto_0

    .line 423
    .restart local v1       #limit_new:Z
    .restart local v2       #limit_old:Z
    :cond_2
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    xor-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    .line 425
    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v5, :cond_3

    move v0, v3

    .line 426
    .local v0, disable:Z
    :goto_2
    iget-byte v4, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitWimax:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    .line 433
    if-eq v1, v0, :cond_0

    .line 436
    if-ne v1, v3, :cond_4

    .line 437
    const-string v3, "FlashRestriction"

    const-string v4, "battery temperature lower, must disable flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->updateFlashState()V

    goto :goto_1

    .end local v0           #disable:Z
    :cond_3
    move v0, v4

    .line 425
    goto :goto_2

    .line 439
    .restart local v0       #disable:Z
    :cond_4
    const-string v3, "FlashRestriction"

    const-string v4, "battery temperature not lower, recover flashlight"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public checkLowPower()Z
    .locals 4

    .prologue
    .line 479
    const-string v1, "/sys/class/power_supply/battery/capacity"

    sget v2, Lcom/android/camera/FlashRestriction;->BATTERY_CAPACITY_LIMIT:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/FlashRestriction;->isLower(Ljava/lang/String;I)Z

    move-result v0

    .line 480
    .local v0, isLowPower:Z
    const-string v1, "FlashRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLowPower - isLowPower is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return v0
.end method

.method public getRestrictionHint()I
    .locals 3

    .prologue
    .line 155
    const v0, 0x7f0a003a

    .line 156
    .local v0, id:I
    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatTemp:B

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 157
    const v0, 0x7f0a003c

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitBatCap:B

    and-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 159
    const v0, 0x7f0a003b

    goto :goto_0

    .line 160
    :cond_2
    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitHotSpot:B

    and-int/2addr v1, v2

    if-lez v1, :cond_3

    .line 161
    const v0, 0x7f0a003e

    goto :goto_0

    .line 162
    :cond_3
    iget-byte v1, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    iget-byte v2, p0, Lcom/android/camera/FlashRestriction;->mIsLimitRIL:B

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 163
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isShowFlashLightHint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    const v0, 0x7f0a003d

    goto :goto_0

    .line 166
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFlashRestriction(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "camera"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    .line 93
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->initDisableFlash()V

    .line 94
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->startFileObserver()V

    .line 95
    return-void
.end method

.method public isDisableFlash()Z
    .locals 1

    .prologue
    .line 150
    iget-byte v0, p0, Lcom/android/camera/FlashRestriction;->mDisableFlash:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseFlashRestriction()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/camera/FlashRestriction;->stopFileObserver()V

    .line 99
    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mUIHandler:Landroid/os/Handler;

    .line 100
    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_HotSpot:Landroid/os/FileObserver;

    .line 101
    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_RIL:Landroid/os/FileObserver;

    .line 102
    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_Wimax:Landroid/os/FileObserver;

    .line 103
    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatTemp:Landroid/os/FileObserver;

    .line 104
    iput-object v0, p0, Lcom/android/camera/FlashRestriction;->mFileObserver_BatCap:Landroid/os/FileObserver;

    .line 105
    return-void
.end method
