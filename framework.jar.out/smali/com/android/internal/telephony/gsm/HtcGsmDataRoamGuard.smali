.class public Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;
.super Landroid/os/Handler;
.source "HtcGsmDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_GUARD_CHANGED:I = 0x4

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x5

.field private static final EVENT_MOBILE_ALLOW_CHANGED:I = 0x2

.field private static final EVENT_REENABLE_GUARD:I = 0x6

.field private static final EVENT_ROAM_ALLOW_CHANGED:I = 0x3

.field private static final EVENT_ROAM_OFF:I = 0x1

.field private static final EVENT_ROAM_ON:I = 0x0

.field private static final LOCAL_TAG:Ljava/lang/String; = "DGRD2"

.field private static final MASK_DATA_ALLOWED:I = -0x80000000

.field private static final MASK_DATA_STATE:I = 0xf00000

.field private static final MASK_DIALOG:I = 0x80000

.field private static final MASK_GUARD_ENABLED:I = 0x40000000

.field private static final MASK_MOBILE_ALLOWED:I = 0xf000000

.field private static final MASK_ROAM:I = 0x20000000

.field public static final MODE_DATA_ALLOWED:I = -0x80000000

.field public static final MODE_DATA_CONNECTED:I = 0x100000

.field public static final MODE_DATA_CONNECTING:I = 0x200000

.field public static final MODE_DATA_NOT_CONNECTED:I = 0x300000

.field public static final MODE_DIALOG_DISPLAY:I = 0x80000

.field public static final MODE_GUARD_ENABLED:I = 0x40000000

.field public static final MODE_MOBILE_ALLOWED_0:I = 0x1000000

.field public static final MODE_MOBILE_ALLOWED_1:I = 0x2000000

.field public static final MODE_MOBILE_ALLOWED_2:I = 0x4000000

.field public static final MODE_ROAM:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final URI_DATA_ALLOW:Ljava/lang/String; = "data_roaming"

.field private static final URI_GUARD_ENABLE:Ljava/lang/String; = "gsm"


# instance fields
.field private final LOCAL_DBG:Z

.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mNofiticationList:Landroid/os/RegistrantList;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->LOCAL_DBG:Z

    .line 155
    new-instance v5, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$1;-><init>(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    .line 109
    const-string/jumbo v5, "initialize HtcGsmDataRoamGuard"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5, p0, v4, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5, p0, v3, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    :cond_0
    iput v4, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 127
    iget v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setRoam(IZ)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z

    move-result v2

    .line 132
    .local v2, guardEnable:Z
    iget v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setGuardEnabled(IZ)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, dataAllow:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_1

    move v0, v3

    .line 143
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataAllowed(IZ)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 146
    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    const/high16 v4, 0x30

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataState(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->registerForEnhancedRoamingSettingChange()V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcGsmDataRoamGuard is initialized, mMode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 152
    return-void

    :cond_1
    move v0, v4

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .line 141
    const-string v3, "fail to read GSM data allow setting for initialization"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z

    move-result v0

    return v0
.end method

.method private createNotificationObject(I)[I
    .locals 5
    .parameter "newMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 476
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 477
    .local v0, notifications:[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "newMode=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 479
    aput v3, v0, v3

    .line 480
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v0, v2

    .line 481
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 482
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 484
    return-object v0

    :cond_0
    move v1, v3

    .line 480
    goto :goto_0
.end method

.method private handleDataConnectionStateChange(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, newMode:I
    const/high16 v1, 0x20

    if-eq p1, v1, :cond_0

    .line 387
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataState(II)I

    move-result v0

    .line 392
    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 393
    return-void

    .line 389
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0
.end method

.method private handleDataRoamGuardSettingsChange(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 363
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 364
    const-string v1, "guard enable setting is not changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-void

    .line 368
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setGuardEnabled(IZ)I

    move-result v0

    .line 370
    .local v0, newMode:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 377
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 378
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 380
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 373
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1
.end method

.method private handleMobileAllowStatusChange(IZ)V
    .locals 3
    .parameter "id"
    .parameter "allowMobileData"

    .prologue
    const/4 v2, 0x1

    .line 281
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    :cond_0
    const-string v1, "handleMobileAllowStatusChange() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 287
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setMobileAllowed(IIZ)I

    move-result v0

    .line 289
    .local v0, newMode:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-ne v1, p2, :cond_2

    .line 290
    const-string v1, "handleMobileAllowStatusChange(), mobile allow setting is not changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 304
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 307
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 309
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 298
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1
.end method

.method private handleReEnableGuardDialog()V
    .locals 3

    .prologue
    .line 493
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    :cond_0
    const-string/jumbo v1, "handleReEnableGuardDialog() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 499
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 501
    .local v0, newMode:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 505
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 506
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 508
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0
.end method

.method private handleRoamAllowSettingChange(Z)V
    .locals 4
    .parameter "allowRoam"

    .prologue
    const/4 v3, 0x1

    .line 319
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_1

    .line 321
    :cond_0
    const-string/jumbo v2, "handleRoamAllowSettingChange() is only supported in Sprint world phone"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 325
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDataAllowed(IZ)I

    move-result v0

    .line 327
    .local v0, newMode:I
    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-ne v2, p1, :cond_2

    .line 328
    const-string/jumbo v2, "handleRoamAllowSettingChange(), data allow setting is not changed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    const/4 v1, 0x0

    .line 335
    .local v1, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 343
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 344
    if-eqz p1, :cond_5

    .line 345
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 353
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 354
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 356
    :cond_3
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 358
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    goto :goto_0

    .line 338
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_1

    .line 347
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 350
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private isDataAllowed(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, -0x8000

    .line 621
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataRoaming(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataStateEqual(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataStateEqual(II)Z
    .locals 1
    .parameter "mode"
    .parameter "dataState"

    .prologue
    .line 637
    const/high16 v0, 0xf0

    and-int/2addr v0, p1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisplayDialog(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, 0x8

    .line 641
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmDataRoamGuardEnabled()Z
    .locals 3

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 666
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 670
    return v0
.end method

.method private isGuardEnabled(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, 0x4000

    .line 625
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileAllowed(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 633
    const/high16 v0, 0xf00

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoam(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/high16 v1, 0x2000

    .line 629
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 700
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 704
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void
.end method

.method private registerForEnhancedRoamingSettingChange()V
    .locals 4

    .prologue
    .line 683
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    :cond_0
    const-string/jumbo v0, "registerForEnhancedRoamingSettingChange() is only supported in Sprint world phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 693
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_guard_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;-><init>(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private setDataAllowed(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "allow"

    .prologue
    .line 546
    const v1, 0x7fffffff

    and-int v0, p1, v1

    .line 548
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 549
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 551
    :cond_0
    return v0
.end method

.method private setDataState(II)I
    .locals 2
    .parameter "mode"
    .parameter "dataState"

    .prologue
    .line 600
    const v1, -0xf00001

    and-int v0, p1, v1

    .line 602
    .local v0, newMode:I
    or-int/2addr v0, p2

    .line 604
    return v0
.end method

.method private setDisplayDialog(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "show"

    .prologue
    .line 608
    const v1, -0x80001

    and-int v0, p1, v1

    .line 610
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 611
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 613
    :cond_0
    return v0
.end method

.method private setGuardEnabled(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "enable"

    .prologue
    .line 555
    const v1, -0x40000001

    and-int v0, p1, v1

    .line 557
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 558
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 560
    :cond_0
    return v0
.end method

.method private setMobileAllowed(IIZ)I
    .locals 2
    .parameter "mode"
    .parameter "id"
    .parameter "allow"

    .prologue
    .line 573
    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 574
    const-string/jumbo v1, "index out of bound when trying to store mobile allow setting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 596
    .end local p1
    :goto_0
    return p1

    .line 578
    .restart local p1
    :cond_0
    move v0, p1

    .line 580
    .local v0, newMode:I
    if-eqz p3, :cond_1

    .line 581
    packed-switch p2, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 596
    goto :goto_0

    .line 582
    :pswitch_0
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    goto :goto_1

    .line 583
    :pswitch_1
    const/high16 v1, 0x200

    or-int/2addr v0, v1

    goto :goto_1

    .line 584
    :pswitch_2
    const/high16 v1, 0x400

    or-int/2addr v0, v1

    goto :goto_1

    .line 588
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 589
    :pswitch_3
    const v1, -0x1000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 590
    :pswitch_4
    const v1, -0x2000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 591
    :pswitch_5
    const v1, -0x4000001

    and-int/2addr v0, v1

    goto :goto_1

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 588
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setRoam(IZ)I
    .locals 2
    .parameter "mode"
    .parameter "roam"

    .prologue
    .line 564
    const v1, -0x20000001

    and-int v0, p1, v1

    .line 566
    .local v0, newMode:I
    if-eqz p2, :cond_0

    .line 567
    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    .line 569
    :cond_0
    return v0
.end method

.method private shouldShowDialog(I)Z
    .locals 2
    .parameter "newMode"

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 677
    .local v0, showDialog:Z
    :goto_0
    return v0

    .line 674
    .end local v0           #showDialog:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDataConnection(ILjava/lang/Boolean;Z)V
    .locals 3
    .parameter "newMode"
    .parameter "requestConnectionStatus"
    .parameter "userRequest"

    .prologue
    .line 454
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    :cond_0
    const-string/jumbo v1, "updateDataConnection() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 460
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataConnection(), newMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestConnectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 464
    if-eqz p2, :cond_1

    .line 465
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 466
    .local v0, requestConnect:Z
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    goto :goto_0

    .line 460
    .end local v0           #requestConnect:Z
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateUI(I)V
    .locals 4
    .parameter "newMode"

    .prologue
    .line 414
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_2

    .line 416
    :cond_0
    const-string/jumbo v2, "updateUI() is only supported in Sprint world phone"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 420
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUI(), newMode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 422
    const/4 v1, 0x0

    .line 426
    .local v1, notify:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 427
    const/4 v1, 0x1

    .line 430
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 431
    const/4 v1, 0x1

    .line 434
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGuardEnabled(I)Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 435
    const/4 v1, 0x1

    .line 438
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 439
    const/4 v1, 0x1

    .line 442
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isMobileAllowed(I)Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 443
    const/4 v1, 0x1

    .line 445
    :cond_7
    if-eqz v1, :cond_1

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify GSM DRG, show dialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDisplayDialog(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 447
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->createNotificationObject(I)[I

    move-result-object v0

    .line 448
    .local v0, notification:[I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public blockedByDataRoamGuard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    :cond_0
    const-string v1, "blockedByDataRoamGuard() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 406
    :cond_1
    :goto_0
    return v0

    .line 404
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 406
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isRoam(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "disposing HtcGsmDataRoamGuard..."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 184
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 185
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 186
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 187
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 188
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->removeMessages(I)V

    .line 190
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    :cond_0
    const-string v0, "HtcGsmDataRoamGuard is disposed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 201
    const-string v0, "HtcGsmDataRoamGuard is finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 208
    :pswitch_0
    const-string/jumbo v0, "receive message EVENT_ROAM_ON"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleRoamUpdate(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 212
    :pswitch_1
    const-string/jumbo v0, "receive message EVENT_ROAM_OFF"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 213
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleRoamUpdate(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 216
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive message EVENT_MOBILE_ALLOW_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", arg2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 217
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleMobileAllowStatusChange(IZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 220
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive message EVENT_ROAM_ALLOW_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 221
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleRoamAllowSettingChange(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 224
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive message EVENT_DATA_GUARD_CHANGED, arg1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 225
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleDataRoamGuardSettingsChange(Z)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 228
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive message EVENT_DATA_STATE_CHANGED, arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 229
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleDataConnectionStateChange(I)V

    goto/16 :goto_0

    .line 232
    :pswitch_6
    const-string/jumbo v0, "receive message EVENT_REENABLE_GUARD"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->handleReEnableGuardDialog()V

    goto/16 :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleRoamUpdate(ZLandroid/os/AsyncResult;)V
    .locals 5
    .parameter "roam"
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleRoamUpdate(), roam status is updated, roam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 244
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get content of EVENT_ROAM, roam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->logE(Ljava/lang/String;)V

    .line 248
    :cond_0
    const/4 v1, 0x0

    .line 249
    .local v1, requestConnectionStatus:Ljava/lang/Boolean;
    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setRoam(IZ)I

    move-result v0

    .line 252
    .local v0, newMode:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->shouldShowDialog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    .line 259
    :goto_0
    if-eqz p1, :cond_3

    .line 260
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isDataAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 269
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateUI(I)V

    .line 270
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->updateDataConnection(ILjava/lang/Boolean;Z)V

    .line 272
    iput v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    .line 273
    return-void

    .line 255
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->setDisplayDialog(IZ)I

    move-result v0

    goto :goto_0

    .line 263
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 266
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public haveMobileAllowStatusChange(IZ)V
    .locals 2
    .parameter "id"
    .parameter "allowMobileData"

    .prologue
    .line 276
    const/4 v1, 0x2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveRoamAllowSettingChange(Z)V
    .locals 3
    .parameter "allowRoam"

    .prologue
    const/4 v1, 0x0

    .line 314
    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void

    :cond_0
    move v0, v1

    .line 314
    goto :goto_0
.end method

.method public reEnableGuardDialog()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 489
    return-void
.end method

.method public registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 518
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    :cond_0
    const-string/jumbo v1, "registerForNotification() is only supported in Sprint world phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 525
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 526
    iget v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->createNotificationObject(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterForNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 531
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    :cond_0
    const-string/jumbo v0, "unregisterForNotification() is only supported in Sprint world phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->log(Ljava/lang/String;)V

    .line 538
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    goto :goto_0
.end method
