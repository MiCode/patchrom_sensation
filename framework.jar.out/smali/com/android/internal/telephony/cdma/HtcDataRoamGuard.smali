.class public Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;
.super Landroid/os/Handler;
.source "HtcDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;
    }
.end annotation


# static fields
.field public static final DOMESTIC_ROAMING:I = 0x2

.field private static final EVENT_GET_PREF_SYSTEM:I = 0x3

.field private static final EVENT_PENDING_AFTER_RADIO_READY:I = 0x2

.field private static final EVENT_RADIO_READY:I = 0x1

.field private static final EVENT_SET_PREF_SYSTEM:I = 0x4

.field public static final FIELD_ROAM_GUARD_DOMESTIC:I = 0x0

.field public static final FIELD_ROAM_GUARD_INTERNATIONAL:I = 0x1

.field public static final FIELD_ROAM_SETTING_DOMESTIC:I = 0x2

.field public static final FIELD_ROAM_SETTING_INTERNATIONAL:I = 0x3

.field public static final FIELD_ROAM_TOTAL:I = 0x4

.field public static final HOME:I = 0x1

.field public static final INTERNATIONAL_ROAMING:I = 0x3

.field public static final MODE_BOTH_DATA_ROAMING_ALLOW:I = 0x6

.field public static final MODE_BOTH_DATA_ROAMING_NOT_ALLOW:I = 0x0

.field public static final MODE_CONNECTION_ACCEPTED_BY_USER:I = 0x40000

.field private static final MODE_CONNECTION_MASK:I = 0x40000

.field public static final MODE_DATA_CONNED:I = 0x300

.field public static final MODE_DATA_CONNED_REQUEST_DISC:I = 0x400

.field public static final MODE_DATA_CONNED_REQUEST_DISC_CONN:I = 0x500

.field private static final MODE_DATA_MASK:I = 0xf00

.field public static final MODE_DATA_REQUEST_CONN:I = 0x100

.field public static final MODE_DATA_REQUEST_CONN_DISC:I = 0x200

.field private static final MODE_DATA_ROAMING_MASK:I = 0x6

.field private static final MODE_DATA_ROAM_GUARD_SETTING_MASK:I = 0x60

.field public static final MODE_DIALOG_DISPLAY:I = 0x100000

.field public static final MODE_DIALOG_HISTORY_ACCEPTED:I = 0x80000

.field private static final MODE_DIALOG_HISTORY_MASK:I = 0x80000

.field private static final MODE_DIALOG_MASK:I = 0x100000

.field public static final MODE_DOMESTIC_DATA_ROAMING_ALLOW:I = 0x2

.field public static final MODE_INTERNATIONAL_DATA_ROAMING_ALLOW:I = 0x4

.field public static final MODE_MOBILE_ALLOW_ENABLE:I = 0x800000

.field private static final MODE_MOBILE_ALLOW_MASK:I = 0x800000

.field public static final MODE_NETWORK_DOMESTIC_ROAMING:I = 0x4000000

.field public static final MODE_NETWORK_EXTERNAL_ROAMING:I = 0x2000000

.field public static final MODE_NETWORK_HOME:I = 0x0

.field public static final MODE_NETWORK_INTERNAL_ROAMING:I = 0x1000000

.field public static final MODE_NETWORK_INTERNATIONAL_ROAMING:I = 0x8000000

.field private static final MODE_NETWORK_MASK:I = 0xf000000

.field public static final MODE_ROAMING_ALLOW:I = 0x40000000

.field private static final MODE_ROAMING_MASK:I = 0x40000000

.field public static final MODE_SETTING_ALWAYS_ASK:I = 0x10000000

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_DISABLE:I = 0x0

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_ENABLE:I = 0x60

.field public static final MODE_SETTING_DEFAULT:I = 0x0

.field public static final MODE_SETTING_DOMESTIC_DATA_ROAM_GUARD_ENABLE:I = 0x20

.field public static final MODE_SETTING_INTERNATIONAL_DATA_ROAM_GUARD_ENABLE:I = 0x40

.field private static final MODE_SETTING_MASK:I = 0x30000000

.field public static final MODE_SETTING_NEVER_ASK:I = 0x20000000

.field private static final MODE_SYSTEM_MASK:I = -0x80000000

.field public static final MODE_SYSTEM_NONE_SWITCH_NETWORK:I = -0x80000000

.field public static final MODE_SYSTEM_QUERIED:I = 0x50000000

.field private static final MODE_SYSTEM_QUERIED_MASK:I = 0x50000000

.field public static final MODE_USER_ACCEPTED:I = 0x200000

.field private static final MODE_USER_MASK:I = 0x600000

.field public static final MODE_USER_REJECTED:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_Prefix:Ljava/lang/String; = "DGRD2"


# instance fields
.field private final Setting_DATA_ROAMING_GUARD_to_MODE:[I

.field private mMode:I

.field private mNofiticationList:Landroid/os/RegistrantList;

.field mNotification:[I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mRoamingType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-array v1, v6, [I

    aput v3, v1, v3

    const/high16 v2, 0x1000

    aput v2, v1, v4

    const/high16 v2, 0x2000

    aput v2, v1, v5

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    .line 236
    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    .line 891
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    .line 1168
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 51
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 53
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    const-string v1, "New HtcDataRoamGuard"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 58
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 61
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 64
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 68
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->registerForEnhancedRoamingSettingChange()V

    .line 85
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 89
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial HtcDataRoamGuard mMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    return-void

    .line 71
    :cond_6
    const/4 v0, 0x0

    .line 73
    .local v0, dataRoamSetting:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 78
    const/4 v0, 0x0

    .line 80
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    goto :goto_1

    .line 891
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamGuardSettingsChange(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamAllowSettingsChange(ZZ)V

    return-void
.end method

.method private blockedBySprintDataRoamGuard()Z
    .locals 4

    .prologue
    const/high16 v3, 0xf00

    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, blocking:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1049
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    const-string v1, "Domestic roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1051
    const/4 v0, 0x1

    .line 1054
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1055
    const-string/jumbo v1, "international roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1056
    const/4 v0, 0x1

    .line 1059
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedBySprintDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1060
    return v0
.end method

.method private createNotificationObject(IZ)[I
    .locals 10
    .parameter "newMode"
    .parameter "turnRoamAllowOff"

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1443
    const/high16 v6, 0x60

    and-int/2addr v6, p1

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_0

    move v0, v4

    .line 1445
    .local v0, disabledByCancel:Z
    :goto_0
    const/4 v2, 0x0

    .line 1446
    .local v2, displayDialog:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1447
    and-int v6, p1, v8

    if-ne v6, v8, :cond_1

    move v2, v4

    .line 1452
    :goto_1
    and-int v6, p1, v9

    if-ne v6, v9, :cond_4

    move v1, v4

    .line 1453
    .local v1, discDisplayed:Z
    :goto_2
    const/4 v6, 0x4

    new-array v3, v6, [I

    .line 1454
    .local v3, notifications:[I
    if-eqz v0, :cond_5

    move v6, v4

    :goto_3
    aput v6, v3, v5

    .line 1455
    if-eqz v2, :cond_6

    move v6, v4

    :goto_4
    aput v6, v3, v4

    .line 1456
    const/4 v7, 0x2

    if-eqz v1, :cond_7

    move v6, v4

    :goto_5
    aput v6, v3, v7

    .line 1457
    const/4 v6, 0x3

    if-eqz p2, :cond_8

    :goto_6
    aput v4, v3, v6

    .line 1458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disabledByCancel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",displayDialog="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",discDisplayed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",turnRoamAllowOff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1459
    return-object v3

    .end local v0           #disabledByCancel:Z
    .end local v1           #discDisplayed:Z
    .end local v2           #displayDialog:Z
    .end local v3           #notifications:[I
    :cond_0
    move v0, v5

    .line 1443
    goto :goto_0

    .restart local v0       #disabledByCancel:Z
    .restart local v2       #displayDialog:Z
    :cond_1
    move v2, v5

    .line 1447
    goto :goto_1

    .line 1449
    :cond_2
    and-int v6, p1, v8

    if-ne v6, v8, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_7
    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_7

    :cond_4
    move v1, v5

    .line 1452
    goto :goto_2

    .restart local v1       #discDisplayed:Z
    .restart local v3       #notifications:[I
    :cond_5
    move v6, v5

    .line 1454
    goto :goto_3

    :cond_6
    move v6, v5

    .line 1455
    goto :goto_4

    :cond_7
    move v6, v5

    .line 1456
    goto :goto_5

    :cond_8
    move v4, v5

    .line 1457
    goto :goto_6
.end method

.method private getEnhancedRoamingSettings(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 1619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting enhanced roaming with field index which is out of range. index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->logE(Ljava/lang/String;)V

    .line 1624
    :goto_0
    return v0

    .line 1596
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1599
    goto :goto_0

    .line 1602
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1605
    goto :goto_0

    .line 1608
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1611
    goto :goto_0

    .line 1614
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1617
    goto :goto_0

    .line 1593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private haveSprintDataRoamAllowSettingsChange(ZZ)V
    .locals 11
    .parameter "allowDomRoam"
    .parameter "allowIntRoam"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x2

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    .line 802
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v5, 0x6

    .line 803
    .local v2, prevAllow:I
    const/4 v0, 0x0

    .line 804
    .local v0, currAllow:I
    if-eqz p1, :cond_0

    move v0, v4

    .line 805
    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 806
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prevAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 807
    if-ne v2, v0, :cond_2

    .line 889
    :goto_0
    return-void

    .line 812
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v5, v5, -0x7

    or-int v1, v5, v0

    .line 813
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 814
    const/4 v3, 0x0

    .line 815
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    const v5, -0x600001

    and-int/2addr v1, v5

    .line 816
    and-int/lit8 v5, v1, 0x6

    packed-switch v5, :pswitch_data_0

    .line 883
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 886
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowDomRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowIntRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 888
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 818
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :pswitch_1
    const/high16 v5, 0xf00

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    .line 819
    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v5, v4, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_8

    .line 821
    :cond_6
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 822
    and-int/2addr v1, v7

    .line 823
    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    .line 824
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 826
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 830
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 831
    and-int/2addr v1, v7

    goto :goto_1

    .line 836
    :pswitch_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_b

    .line 837
    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    .line 838
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 839
    and-int/2addr v1, v7

    .line 840
    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    .line 841
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 843
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 847
    :cond_a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 848
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 850
    :cond_b
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_3

    .line 851
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 852
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 856
    :pswitch_3
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v10, :cond_e

    .line 857
    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_d

    .line 858
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    .line 859
    and-int/2addr v1, v7

    .line 860
    and-int v4, v1, v9

    if-ne v4, v9, :cond_c

    .line 861
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 863
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 867
    :cond_d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 868
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 870
    :cond_e
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_3

    .line 871
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 872
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 876
    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 877
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 878
    and-int/2addr v1, v7

    goto/16 :goto_1

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private haveSprintDataRoamGuardSettingsChange(ZZ)V
    .locals 11
    .parameter "enableDomRoamGuard"
    .parameter "enableIntRoamGuard"

    .prologue
    const/high16 v10, 0x10

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 552
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v4, 0x60

    .line 553
    .local v2, prevGuard:I
    const/4 v0, 0x0

    .line 554
    .local v0, currGuard:I
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 555
    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x40

    .line 556
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prevGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 557
    if-ne v2, v0, :cond_2

    .line 629
    :goto_0
    return-void

    .line 562
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v4, v4, -0x61

    or-int v1, v4, v0

    .line 563
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 564
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 565
    sparse-switch v0, :sswitch_data_0

    .line 622
    :cond_3
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 624
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 628
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 567
    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    .line 568
    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 570
    :cond_6
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 571
    and-int/2addr v1, v6

    .line 572
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 573
    or-int/2addr v1, v10

    goto :goto_1

    .line 578
    :cond_7
    and-int/2addr v1, v6

    goto :goto_1

    .line 583
    :sswitch_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_9

    .line 584
    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_8

    .line 585
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 586
    and-int/2addr v1, v6

    .line 587
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 588
    or-int/2addr v1, v10

    goto :goto_1

    .line 593
    :cond_8
    and-int/2addr v1, v6

    goto :goto_1

    .line 596
    :cond_9
    and-int/2addr v1, v6

    .line 598
    goto :goto_1

    .line 600
    :sswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 601
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 602
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    .line 603
    and-int/2addr v1, v6

    .line 604
    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    .line 605
    or-int/2addr v1, v10

    goto/16 :goto_1

    .line 610
    :cond_a
    and-int/2addr v1, v6

    goto/16 :goto_1

    .line 613
    :cond_b
    and-int/2addr v1, v6

    .line 615
    goto/16 :goto_1

    .line 617
    :sswitch_3
    and-int/2addr v1, v6

    .line 618
    const v4, -0x600001

    and-int/2addr v1, v4

    goto/16 :goto_1

    .line 565
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method private haveSprintERIupdate(IIZ)V
    .locals 11
    .parameter "eriId"
    .parameter "dataGuardRequest"
    .parameter "showRoamIcon"

    .prologue
    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const/4 v7, 0x0

    const v6, -0x100001

    .line 387
    const/4 v2, 0x0

    .line 388
    .local v2, newNetworkArea:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingType()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "roamingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 391
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 392
    const/high16 v2, 0x800

    .line 402
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    .line 403
    .local v0, currNetworkArea:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",newNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 404
    if-ne v0, v2, :cond_4

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRG not support, ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 472
    :cond_1
    :goto_1
    return-void

    .line 393
    .end local v0           #currNetworkArea:I
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 394
    const/high16 v2, 0x400

    goto :goto_0

    .line 397
    :cond_3
    if-eqz p3, :cond_0

    .line 398
    const/high16 v2, 0x200

    goto :goto_0

    .line 412
    .restart local v0       #currNetworkArea:I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Domestic roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Domestic roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 418
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    .line 420
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 421
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 422
    sparse-switch v2, :sswitch_data_0

    .line 464
    :cond_5
    :goto_2
    invoke-direct {p0, v1, v3, v7, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 466
    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 470
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_1

    .line 424
    :sswitch_0
    and-int/2addr v1, v6

    .line 425
    and-int/2addr v1, v10

    .line 426
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 427
    goto :goto_2

    .line 429
    :sswitch_1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 430
    and-int v4, v1, v8

    if-eq v4, v8, :cond_7

    .line 431
    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    .line 432
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 440
    :cond_7
    :goto_3
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 441
    const-string v4, "Domestic data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 442
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 436
    :cond_8
    const-string v4, "Domestic data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 437
    and-int/2addr v1, v6

    .line 438
    and-int/2addr v1, v10

    goto :goto_3

    .line 446
    :sswitch_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 447
    and-int v4, v1, v8

    if-eq v4, v8, :cond_9

    .line 448
    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    .line 449
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 457
    :cond_9
    :goto_4
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 458
    const-string/jumbo v4, "international data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 459
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 453
    :cond_a
    const-string v4, "International data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 454
    and-int/2addr v1, v6

    .line 455
    and-int/2addr v1, v10

    goto :goto_4

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private haveSprintMobileAllowStatusChange(Z)V
    .locals 10
    .parameter "allowMobileData"

    .prologue
    const/high16 v9, 0x10

    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v8, -0x100001

    const/high16 v7, 0x4

    .line 686
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    .line 687
    .local v2, prevAllow:I
    if-eqz p1, :cond_0

    move v0, v3

    .line 688
    .local v0, currAllow:I
    :goto_0
    if-ne v2, v0, :cond_1

    .line 728
    :goto_1
    return-void

    .end local v0           #currAllow:I
    :cond_0
    move v0, v4

    .line 687
    goto :goto_0

    .line 692
    .restart local v0       #currAllow:I
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 693
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 694
    if-ne v0, v3, :cond_4

    .line 695
    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 722
    :cond_2
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 725
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 727
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_1

    .line 699
    :sswitch_1
    and-int/lit8 v3, v1, 0x20

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    .line 700
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 701
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 702
    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    .line 708
    :sswitch_2
    and-int/lit8 v3, v1, 0x40

    const/16 v5, 0x40

    if-ne v3, v5, :cond_2

    .line 709
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 710
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 711
    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    .line 719
    :cond_4
    and-int/2addr v1, v8

    goto :goto_2

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isDataConnected(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, isDataConnected:Z
    and-int/lit16 v1, p1, 0xf00

    sparse-switch v1, :sswitch_data_0

    .line 1471
    :goto_0
    return v0

    .line 1468
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1464
    nop

    :sswitch_data_0
    .sparse-switch
        0x300 -> :sswitch_0
        0x400 -> :sswitch_0
        0x500 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDataRoamGuardFunctionEnabled()Z
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    .line 1352
    const/4 v0, 0x0

    .line 1353
    .local v0, DRGSupport:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1355
    :goto_0
    return v0

    .line 1353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataRoamGuardSupported()Z
    .locals 4

    .prologue
    .line 1337
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriCarrierId()I

    move-result v0

    .line 1338
    .local v0, eriCarrierId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1339
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    .line 1340
    const/4 v0, 0x3

    .line 1343
    :cond_0
    const/4 v1, 0x0

    .line 1344
    .local v1, supported:Z
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1345
    const/4 v1, 0x1

    .line 1347
    :cond_1
    return v1
.end method

.method private isDataRoaming(I)Z
    .locals 3
    .parameter "givenMode"

    .prologue
    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, dataRoam:Z
    and-int/lit16 v1, p1, 0xf00

    .line 1480
    .local v1, dataStatus:I
    const/16 v2, 0x300

    if-eq v1, v2, :cond_0

    const/16 v2, 0x500

    if-ne v1, v2, :cond_1

    .line 1481
    :cond_0
    const/high16 v2, 0xf00

    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_0

    .line 1501
    :cond_1
    :goto_0
    return v0

    .line 1483
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1484
    const/high16 v2, 0x3000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 1485
    const/4 v0, 0x1

    goto :goto_0

    .line 1489
    :cond_2
    const/4 v0, 0x1

    .line 1491
    goto :goto_0

    .line 1493
    :sswitch_1
    const/4 v0, 0x1

    .line 1494
    goto :goto_0

    .line 1497
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1481
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 1632
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 3
    .parameter "logStr"

    .prologue
    .line 1639
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return-void
.end method

.method private reEnableSprintGuardDialog(Z)V
    .locals 8
    .parameter "isReenableRejected"

    .prologue
    const/high16 v3, 0x60

    const/high16 v7, 0x10

    const v6, -0x100001

    const/high16 v5, 0x80

    const/4 v4, 0x0

    .line 1118
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1119
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1120
    .local v0, newMode:I
    if-eqz p1, :cond_3

    .line 1121
    and-int v2, v0, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 1122
    const v2, -0x600001

    and-int/2addr v0, v2

    .line 1123
    and-int/lit8 v2, v0, 0x60

    if-eqz v2, :cond_0

    .line 1124
    and-int/2addr v0, v6

    .line 1125
    and-int v2, v0, v5

    if-ne v2, v5, :cond_0

    .line 1126
    or-int/2addr v0, v7

    .line 1129
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1163
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-> 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1164
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1166
    .end local v0           #newMode:I
    :cond_2
    return-void

    .line 1133
    .restart local v0       #newMode:I
    :cond_3
    and-int v2, v0, v3

    if-nez v2, :cond_1

    .line 1134
    const/4 v1, 0x0

    .line 1135
    .local v1, tryEnableDialog:Z
    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 1154
    :cond_4
    :goto_1
    :sswitch_0
    if-eqz v1, :cond_5

    .line 1155
    and-int v2, v0, v5

    if-ne v2, v5, :cond_5

    .line 1156
    and-int v2, v0, v6

    or-int v0, v2, v7

    .line 1159
    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_0

    .line 1139
    :sswitch_1
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 1140
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1141
    const/4 v1, 0x1

    goto :goto_1

    .line 1146
    :sswitch_2
    and-int/lit8 v2, v0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 1147
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1148
    const/4 v1, 0x1

    goto :goto_1

    .line 1135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private registerForEnhancedRoamingSettingChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1540
    const-string v0, "Initialize enhanced roaming."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_guard_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1550
    return-void
.end method

.method private storeSetting(I)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 1360
    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 1361
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1363
    :cond_0
    if-gez v0, :cond_1

    .line 1364
    const/4 v0, 0x0

    .line 1367
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1369
    return-void
.end method

.method private updateDataRoamingNotification(ILjava/lang/Boolean;)V
    .locals 7
    .parameter "newMode"
    .parameter "requestConnectionStatus"

    .prologue
    const v6, 0x42022

    const/4 v5, 0x0

    .line 1505
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v0

    .line 1506
    .local v0, origDataRoam:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v1

    .line 1507
    .local v1, updateDataRoam:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "origDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",updateDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newMode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1508
    if-eqz p2, :cond_0

    .line 1509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestConnectionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1512
    :cond_0
    if-eqz v1, :cond_1

    .line 1513
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    .line 1514
    const/4 v1, 0x0

    .line 1518
    :cond_1
    if-eq v0, v1, :cond_2

    .line 1519
    if-eqz v1, :cond_3

    .line 1521
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1535
    :cond_2
    :goto_0
    return-void

    .line 1528
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, v6, v5, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updatePreferSystem(I)V
    .locals 11
    .parameter "statusCdmaRoamingMode"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0xf00

    const v8, -0x100001

    const/high16 v7, 0x80

    const/high16 v6, 0x4000

    .line 1185
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateSprintPreferSystem(I)V

    .line 1241
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    .line 1190
    .local v0, currIsEnabled:Z
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    .line 1191
    .local v2, newMode:I
    if-eqz p1, :cond_1

    if-ne p1, v10, :cond_2

    .line 1193
    :cond_1
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    .line 1195
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    .line 1196
    .local v1, newIsEnabled:Z
    if-eq v0, v1, :cond_4

    .line 1197
    const/4 v3, 0x0

    .line 1199
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    if-eqz v1, :cond_7

    .line 1200
    const/high16 v4, 0x3000

    and-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 1235
    :cond_3
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v10, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1238
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1240
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 1202
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :sswitch_0
    and-int v4, v2, v9

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_3

    .line 1203
    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    .line 1204
    and-int v4, v2, v7

    if-ne v4, v7, :cond_5

    .line 1205
    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    .line 1208
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1212
    :sswitch_1
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    .line 1213
    and-int v4, v2, v6

    if-ne v4, v6, :cond_6

    .line 1214
    and-int v4, v2, v7

    if-ne v4, v7, :cond_6

    .line 1215
    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    .line 1218
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1222
    :sswitch_2
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    .line 1223
    and-int v4, v2, v6

    if-eq v4, v6, :cond_3

    .line 1224
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1231
    :cond_7
    const v4, -0x600001

    and-int/2addr v2, v4

    .line 1232
    and-int/2addr v2, v8

    .line 1233
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1200
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateSprintPreferSystem(I)V
    .locals 11
    .parameter "statusCdmaRoamingMode"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 1244
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    .line 1245
    .local v0, currIsEnabled:Z
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    .line 1246
    .local v2, newMode:I
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1248
    :cond_0
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    .line 1250
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    .line 1251
    .local v1, newIsEnabled:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "newIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1252
    if-eq v0, v1, :cond_3

    .line 1253
    const/4 v3, 0x0

    .line 1254
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    if-eqz v1, :cond_e

    .line 1255
    and-int/lit8 v4, v2, 0x6

    packed-switch v4, :pswitch_data_0

    .line 1327
    :cond_2
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1330
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1332
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1333
    return-void

    .line 1257
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :pswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 1258
    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_5

    :cond_4
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_7

    .line 1260
    :cond_5
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1261
    and-int/2addr v2, v6

    .line 1262
    and-int v4, v2, v8

    if-ne v4, v8, :cond_6

    .line 1263
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1265
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1269
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1270
    and-int/2addr v2, v6

    goto :goto_0

    .line 1275
    :pswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_a

    .line 1276
    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_9

    .line 1277
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1278
    and-int/2addr v2, v6

    .line 1279
    and-int v4, v2, v8

    if-ne v4, v8, :cond_8

    .line 1280
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1282
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1286
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1287
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1289
    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_2

    .line 1290
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1291
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1295
    :pswitch_3
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_d

    .line 1296
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_c

    .line 1297
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    .line 1298
    and-int/2addr v2, v6

    .line 1299
    and-int v4, v2, v8

    if-ne v4, v8, :cond_b

    .line 1300
    const/high16 v4, 0x10

    or-int/2addr v2, v4

    .line 1302
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1306
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1307
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1309
    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_2

    .line 1310
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1311
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1315
    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 1316
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1317
    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1323
    :cond_e
    const v4, -0x600001

    and-int/2addr v2, v4

    .line 1324
    and-int/2addr v2, v6

    .line 1325
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V
    .locals 8
    .parameter "newMode"
    .parameter "requestConnectionStatus"
    .parameter "userRequest"
    .parameter "turnRoamAllowOff"

    .prologue
    .line 1372
    const/4 v3, 0x0

    .line 1373
    .local v3, notify:Z
    const/high16 v5, 0x60

    and-int/2addr v5, p1

    const/high16 v6, 0x40

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x60

    and-int/2addr v6, v7

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    :goto_1
    if-eq v5, v6, :cond_0

    .line 1375
    const/4 v3, 0x1

    .line 1377
    :cond_0
    const/high16 v5, 0x10

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 1378
    const/4 v3, 0x1

    .line 1380
    :cond_1
    const/high16 v5, 0x8

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x8

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_2

    .line 1381
    const/4 v3, 0x1

    .line 1383
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0xf00

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0xf00

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_3

    .line 1384
    const/4 v3, 0x1

    .line 1388
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_5

    and-int/lit8 v5, p1, 0x6

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x6

    if-eq v5, v6, :cond_5

    .line 1389
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    and-int/lit8 v5, p1, 0x2

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1390
    const-string/jumbo v5, "roaming allow change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1391
    const/4 v3, 0x1

    .line 1394
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    and-int/lit8 v5, p1, 0x4

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x4

    if-eq v5, v6, :cond_5

    .line 1395
    const-string/jumbo v5, "roaming allow change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1396
    const/4 v3, 0x1

    .line 1400
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_7

    and-int/lit8 v5, p1, 0x60

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x60

    if-eq v5, v6, :cond_7

    .line 1401
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    and-int/lit8 v5, p1, 0x20

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x20

    if-eq v5, v6, :cond_6

    .line 1402
    const-string/jumbo v5, "roaming guard change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1403
    const/4 v3, 0x1

    .line 1406
    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    and-int/lit8 v5, p1, 0x40

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x40

    if-eq v5, v6, :cond_7

    .line 1407
    const-string/jumbo v5, "roaming guard change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1408
    const/4 v3, 0x1

    .line 1412
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",turnRoamAllowOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",userRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1413
    if-nez v3, :cond_8

    if-eqz p4, :cond_e

    .line 1415
    :cond_8
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v2

    .line 1416
    .local v2, notification:[I
    const/4 v0, 0x0

    .line 1417
    .local v0, bNotify:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v5, 0x4

    if-ge v1, v5, :cond_c

    .line 1419
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v1

    aget v6, v2, v1

    if-eq v5, v6, :cond_9

    .line 1420
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v2, v1

    aput v6, v5, v1

    .line 1421
    const/4 v0, 0x1

    .line 1417
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1373
    .end local v0           #bNotify:Z
    .end local v1           #i:I
    .end local v2           #notification:[I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1424
    .restart local v0       #bNotify:Z
    .restart local v1       #i:I
    .restart local v2       #notification:[I
    :cond_c
    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1425
    :cond_d
    const-string/jumbo v5, "updateStatusAndConnection.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1426
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1431
    .end local v0           #bNotify:Z
    .end local v1           #i:I
    .end local v2           #notification:[I
    :cond_e
    if-eqz p2, :cond_10

    .line 1432
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1433
    .local v4, requestConnect:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestConnect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1434
    if-eqz v4, :cond_f

    const/high16 v5, 0x80

    and-int/2addr v5, p1

    const/high16 v6, 0x80

    if-ne v5, v6, :cond_10

    .line 1436
    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    .line 1440
    .end local v4           #requestConnect:Z
    :cond_10
    return-void
.end method


# virtual methods
.method public blockedByDataRoamGuard()Z
    .locals 8

    .prologue
    const/high16 v7, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x4000

    const/high16 v5, 0x4

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, blocking:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedBySprintDataRoamGuard()Z

    move-result v1

    .line 1017
    :goto_0
    return v1

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 992
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_1

    .line 993
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    .line 994
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    .line 995
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_2

    move v0, v1

    .line 1016
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedByDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    move v1, v0

    .line 1017
    goto :goto_0

    :cond_2
    move v0, v2

    .line 995
    goto :goto_1

    .line 998
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1003
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 1004
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1005
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    .line 1006
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_6

    .line 1007
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 1010
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 97
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 98
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 101
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "CDMA"

    const-string v1, "HtcDatatRoamGuard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const v5, -0x50000001

    const/high16 v4, 0x5000

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    .line 115
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HtcDataRoamGuard drop event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 121
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 126
    :pswitch_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    .line 127
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 133
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 137
    .local v2, statusCdmaRoamingMode:I
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_0

    .line 142
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_3
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 143
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 149
    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 150
    .local v1, responseMsg:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 151
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 152
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 146
    .end local v1           #responseMsg:Landroid/os/Message;
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 9
    .parameter "dataState"

    .prologue
    const/high16 v8, 0x10

    const v7, -0x40001

    .line 893
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 894
    .local v3, newMode:I
    and-int/lit16 v1, v3, 0xf00

    .line 895
    .local v1, currDataReqState:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currDataReqState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 896
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_5

    .line 897
    if-nez v1, :cond_3

    .line 898
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    .line 906
    :cond_0
    :goto_0
    const/high16 v5, 0x60

    and-int/2addr v5, v3

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 907
    and-int v5, v3, v7

    const/high16 v6, 0x4

    or-int v3, v5, v6

    .line 908
    const v5, -0x600001

    and-int/2addr v3, v5

    .line 920
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-nez v5, :cond_8

    and-int v5, v3, v8

    if-ne v5, v8, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 923
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v4

    .line 924
    .local v4, notification:[I
    const/4 v0, 0x0

    .line 925
    .local v0, bNotify:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v5, 0x4

    if-ge v2, v5, :cond_7

    .line 927
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v2

    aget v6, v4, v2

    if-eq v5, v6, :cond_2

    .line 928
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v4, v2

    aput v6, v5, v2

    .line 929
    const/4 v0, 0x1

    .line 925
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 900
    .end local v0           #bNotify:Z
    .end local v2           #i:I
    .end local v4           #notification:[I
    :cond_3
    const/16 v5, 0x100

    if-ne v1, v5, :cond_4

    .line 901
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    goto :goto_0

    .line 903
    :cond_4
    const/16 v5, 0x200

    if-ne v1, v5, :cond_0

    .line 904
    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x400

    goto :goto_0

    .line 911
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_1

    .line 914
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_1

    .line 916
    :cond_6
    and-int/lit16 v3, v3, -0xf01

    .line 917
    and-int/2addr v3, v7

    goto :goto_1

    .line 933
    .restart local v0       #bNotify:Z
    .restart local v2       #i:I
    .restart local v4       #notification:[I
    :cond_7
    if-eqz v0, :cond_8

    .line 934
    const-string v5, "dataState.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 935
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 939
    .end local v0           #bNotify:Z
    .end local v2           #i:I
    .end local v4           #notification:[I
    :cond_8
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mode=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 943
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 944
    return-void
.end method

.method public haveERIupdate(IIZ)V
    .locals 11
    .parameter "eriId"
    .parameter "dataGuardRequest"
    .parameter "showRoamIcon"

    .prologue
    const/high16 v10, 0x3000

    const/high16 v9, 0x4000

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintERIupdate(IIZ)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const/4 v2, 0x0

    .line 302
    .local v2, newNetworkArea:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    .line 304
    if-eqz p2, :cond_3

    .line 305
    const/high16 v2, 0x200

    .line 318
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    .line 319
    .local v0, currNetworkArea:I
    if-ne v0, v2, :cond_5

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v0           #currNetworkArea:I
    :cond_3
    const/high16 v2, 0x100

    goto :goto_1

    .line 313
    :cond_4
    if-eqz p3, :cond_2

    .line 314
    const/high16 v2, 0x200

    goto :goto_1

    .line 328
    .restart local v0       #currNetworkArea:I
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    .line 330
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 331
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 332
    sparse-switch v2, :sswitch_data_0

    .line 377
    :cond_6
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 379
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 383
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_0

    .line 334
    :sswitch_0
    and-int/2addr v1, v6

    .line 335
    const v4, -0x600001

    and-int/2addr v1, v4

    .line 336
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 337
    goto :goto_2

    .line 339
    :sswitch_1
    if-nez v0, :cond_8

    .line 340
    and-int v4, v1, v10

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_6

    .line 341
    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    .line 342
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 343
    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    .line 344
    and-int v4, v1, v8

    if-ne v4, v8, :cond_6

    .line 345
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    goto :goto_2

    .line 352
    :cond_8
    and-int v4, v1, v10

    if-nez v4, :cond_6

    .line 353
    and-int/2addr v1, v6

    .line 354
    const v4, -0x600001

    and-int/2addr v1, v4

    .line 355
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 360
    :sswitch_2
    and-int v4, v1, v9

    if-ne v4, v9, :cond_a

    .line 361
    and-int v4, v1, v10

    const/high16 v5, 0x2000

    if-eq v4, v5, :cond_6

    .line 362
    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    .line 363
    const/high16 v4, 0x60

    and-int/2addr v4, v1

    if-nez v4, :cond_9

    and-int v4, v1, v8

    if-ne v4, v8, :cond_9

    .line 365
    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    .line 367
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 372
    :cond_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveMobileAllowStatusChange(Z)V
    .locals 10
    .parameter "allowMobileData"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v9, -0x100001

    const/high16 v8, 0x4000

    const/high16 v7, 0x4

    .line 632
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 633
    const-string v3, "SPCS roaming enhancement enabled: haveMobileAllowStatusChange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintMobileAllowStatusChange(Z)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    .line 638
    .local v2, prevAllow:I
    if-eqz p1, :cond_4

    move v0, v3

    .line 639
    .local v0, currAllow:I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 643
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 644
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 645
    if-ne v0, v3, :cond_5

    .line 646
    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 677
    :cond_2
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 680
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 682
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .end local v0           #currAllow:I
    .end local v1           #newMode:I
    :cond_4
    move v0, v4

    .line 638
    goto :goto_1

    .line 650
    .restart local v0       #currAllow:I
    .restart local v1       #newMode:I
    :sswitch_1
    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x1000

    if-ne v3, v5, :cond_2

    .line 651
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 652
    and-int v3, v1, v8

    if-ne v3, v8, :cond_2

    .line 653
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 654
    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    .line 661
    :sswitch_2
    and-int v3, v1, v8

    if-ne v3, v8, :cond_2

    .line 662
    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x2000

    if-eq v3, v5, :cond_2

    .line 663
    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    .line 664
    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 665
    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    .line 674
    :cond_5
    and-int/2addr v1, v9

    goto :goto_2

    .line 646
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveRoamAllowSettingChange(Z)V
    .locals 11
    .parameter "allowRoam"

    .prologue
    const v10, -0x100001

    const/high16 v9, 0xf00

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const/high16 v4, 0x4000

    .line 731
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 732
    const-string/jumbo v4, "haveRoamAllowSettingChange: Sprint roaming enable, ignore it"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v4

    .line 736
    .local v2, prevAllow:I
    if-eqz p1, :cond_4

    move v0, v4

    .line 737
    .local v0, currAllow:I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 742
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x40000001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    .line 744
    .local v1, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 745
    const/4 v3, 0x0

    .line 747
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    const v5, -0x600001

    and-int/2addr v1, v5

    .line 748
    const/high16 v5, 0x3000

    and-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 793
    :cond_2
    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 796
    .end local v3           #requestConnectionStatus:Ljava/lang/Boolean;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 798
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 736
    .end local v0           #currAllow:I
    .end local v1           #newMode:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 750
    .restart local v0       #currAllow:I
    .restart local v1       #newMode:I
    .restart local v3       #requestConnectionStatus:Ljava/lang/Boolean;
    :sswitch_0
    and-int v5, v1, v9

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_2

    .line 751
    and-int v5, v1, v4

    if-ne v5, v4, :cond_6

    .line 752
    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    .line 753
    and-int/2addr v1, v10

    .line 754
    and-int v4, v1, v8

    if-ne v4, v8, :cond_5

    .line 755
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 757
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 761
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 766
    :sswitch_1
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    .line 767
    and-int v5, v1, v4

    if-ne v5, v4, :cond_8

    .line 768
    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    .line 769
    and-int/2addr v1, v10

    .line 770
    and-int v4, v1, v8

    if-ne v4, v8, :cond_7

    .line 771
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 773
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 777
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 782
    :sswitch_2
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    .line 783
    and-int v5, v1, v4

    if-ne v5, v4, :cond_9

    .line 784
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 787
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 748
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public reEnableGuardDialog(Z)V
    .locals 9
    .parameter "isReenableRejected"

    .prologue
    const/high16 v8, 0x10

    const v7, -0x100001

    const/high16 v6, 0x3000

    const/high16 v5, 0x80

    const/4 v4, 0x0

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reEnableGuardDialog: isReenableRejected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1066
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableSprintGuardDialog(Z)V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1070
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 1071
    .local v0, newMode:I
    if-eqz p1, :cond_4

    .line 1072
    const/high16 v2, 0x60

    and-int/2addr v2, v0

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_3

    .line 1073
    const v2, -0x600001

    and-int/2addr v0, v2

    .line 1074
    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_2

    .line 1075
    and-int/2addr v0, v7

    .line 1076
    and-int v2, v0, v5

    if-ne v2, v5, :cond_2

    .line 1077
    or-int/2addr v0, v8

    .line 1080
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 1111
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 1112
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 1084
    :cond_4
    const/high16 v2, 0x60

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    .line 1085
    const/4 v1, 0x0

    .line 1086
    .local v1, tryEnableDialog:Z
    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 1101
    :cond_5
    :goto_2
    :sswitch_0
    if-eqz v1, :cond_6

    .line 1102
    const/high16 v2, 0x4000

    and-int/2addr v2, v0

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_6

    and-int v2, v0, v5

    if-ne v2, v5, :cond_6

    .line 1104
    and-int v2, v0, v7

    or-int v0, v2, v8

    .line 1107
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_1

    .line 1090
    :sswitch_1
    and-int v2, v0, v6

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_5

    .line 1091
    const/4 v1, 0x1

    goto :goto_2

    .line 1095
    :sswitch_2
    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_5

    .line 1096
    const/4 v1, 0x1

    goto :goto_2

    .line 1086
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1171
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1172
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1174
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1175
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 161
    return-void
.end method

.method public setSettingTo(I)V
    .locals 11
    .parameter "setting"

    .prologue
    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    const/high16 v6, 0x4000

    .line 477
    const/high16 v4, 0x3000

    and-int v0, p1, v4

    .line 478
    .local v0, guardSetting:I
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0x3000

    and-int v2, v4, v5

    .line 479
    .local v2, prevSetting:I
    if-ne v0, v2, :cond_0

    .line 549
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    .line 485
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0x30000001

    and-int/2addr v4, v5

    or-int v1, v4, v0

    .line 487
    .local v1, newMode:I
    const/4 v3, 0x0

    .line 488
    .local v3, requestConnectionStatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    sparse-switch v0, :sswitch_data_0

    .line 542
    :cond_1
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 544
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 548
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    .line 491
    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_5

    .line 492
    and-int v4, v1, v6

    if-ne v4, v6, :cond_4

    .line 493
    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    .line 494
    and-int/2addr v1, v7

    .line 495
    and-int v4, v1, v9

    if-ne v4, v9, :cond_3

    .line 496
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 498
    :cond_3
    and-int/2addr v1, v10

    .line 499
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 503
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 507
    :cond_5
    and-int/2addr v1, v7

    .line 508
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 510
    goto :goto_1

    .line 512
    :sswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 513
    and-int v4, v1, v6

    if-ne v4, v6, :cond_7

    .line 514
    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    .line 515
    and-int/2addr v1, v7

    .line 516
    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    .line 517
    const/high16 v4, 0x10

    or-int/2addr v1, v4

    .line 519
    :cond_6
    and-int/2addr v1, v10

    .line 520
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 524
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 529
    :sswitch_2
    and-int/2addr v1, v7

    .line 530
    and-int/2addr v1, v10

    .line 531
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 532
    and-int v4, v1, v6

    if-ne v4, v6, :cond_8

    .line 533
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 536
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public setUserDialogResponse(ZZ)V
    .locals 8
    .parameter "accept"
    .parameter "remember"

    .prologue
    const/high16 v7, 0x2000

    const/high16 v6, 0x8

    const v5, -0x80001

    const v4, -0x600001

    .line 947
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 948
    .local v0, newMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    const/4 v1, 0x0

    .line 950
    .local v1, requestConnectionStatus:Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 952
    .local v2, turnAllowRoamOff:Z
    const v3, -0x100001

    and-int/2addr v0, v3

    .line 953
    if-eqz p2, :cond_2

    .line 954
    if-eqz p1, :cond_1

    .line 955
    const v3, -0x30000001

    and-int/2addr v3, v0

    or-int v0, v3, v7

    .line 956
    and-int v3, v0, v5

    or-int v0, v3, v6

    .line 957
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    .line 958
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 977
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    .line 980
    .end local v1           #requestConnectionStatus:Ljava/lang/Boolean;
    .end local v2           #turnAllowRoamOff:Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserDialogResponse accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "remember="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    .line 982
    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    .line 983
    return-void

    .line 961
    .restart local v1       #requestConnectionStatus:Ljava/lang/Boolean;
    .restart local v2       #turnAllowRoamOff:Z
    :cond_1
    const v3, -0x40000001

    and-int/2addr v0, v3

    .line 962
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 963
    const/4 v2, 0x1

    goto :goto_0

    .line 967
    :cond_2
    if-eqz p1, :cond_3

    .line 968
    and-int v3, v0, v4

    const/high16 v4, 0x20

    or-int v0, v3, v4

    .line 969
    and-int v3, v0, v5

    or-int v0, v3, v6

    .line 970
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 973
    :cond_3
    and-int v3, v0, v4

    const/high16 v4, 0x40

    or-int v0, v3, v4

    goto :goto_0
.end method

.method public unregisterForNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1179
    return-void
.end method
