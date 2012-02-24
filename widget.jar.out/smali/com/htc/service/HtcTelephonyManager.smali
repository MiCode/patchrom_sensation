.class public Lcom/htc/service/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field private static sInstance:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/htc/service/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/service/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IHtcTelephony;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 1

    .prologue
    .line 2204
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->dualGSMPhoneEnable()Z

    move-result v0

    return v0
.end method

.method public static dualPhoneEnable()Z
    .locals 1

    .prologue
    .line 2127
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->dualPhoneEnable()Z

    move-result v0

    return v0
.end method

.method public static getDefMainPhoneType()I
    .locals 1

    .prologue
    .line 2131
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getDefMainPhoneType()I

    move-result v0

    return v0
.end method

.method public static getDefSubPhoneType()I
    .locals 1

    .prologue
    .line 2135
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getDefSubPhoneType()I

    move-result v0

    return v0
.end method

.method public static getDefault()Lcom/htc/service/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-object v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    .prologue
    .line 49
    const-string v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;
    .locals 1

    .prologue
    .line 53
    const-string v0, "htctelephonyinternal"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 57
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMainPhoneType()I
    .locals 1

    .prologue
    .line 2139
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getMainPhoneType()I

    move-result v0

    return v0
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 1
    .parameter "phoneName"

    .prologue
    .line 2155
    invoke-static {p0}, Lcom/android/internal/telephony/HtcTelephony;->getPhoneTypeByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSubPhoneType()I
    .locals 1

    .prologue
    .line 2147
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getSubPhoneType()I

    move-result v0

    return v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2167
    invoke-static {p0}, Lcom/android/internal/telephony/HtcTelephony;->isDefMainPhone(I)Z

    move-result v0

    return v0
.end method

.method public static isMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2163
    invoke-static {p0}, Lcom/android/internal/telephony/HtcTelephony;->isMainPhone(I)Z

    move-result v0

    return v0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2159
    invoke-static {p0}, Lcom/android/internal/telephony/HtcTelephony;->isValidPhoneType(I)Z

    move-result v0

    return v0
.end method

.method public static setMainPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2143
    invoke-static {p0}, Lcom/android/internal/telephony/HtcTelephony;->setMainPhoneType(I)V

    .line 2144
    return-void
.end method

.method public static setSubPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2151
    invoke-static {p0}, Lcom/android/internal/telephony/HtcTelephony;->setSubPhoneType(I)V

    .line 2152
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 3
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 470
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->akaAuthentication([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 475
    :goto_0
    return-object v1

    .line 472
    :catch_0
    move-exception v0

    .line 474
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "akaAuthentication(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1836
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateAkaResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1845
    :goto_0
    return-object v1

    .line 1838
    :catch_0
    move-exception v0

    .line 1840
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1843
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1844
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1851
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1860
    :goto_0
    return-object v1

    .line 1853
    :catch_0
    move-exception v0

    .line 1855
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1858
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1859
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 1866
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateNafExternalKey([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1875
    :goto_0
    return-object v1

    .line 1868
    :catch_0
    move-exception v0

    .line 1870
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1873
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1874
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 3
    .parameter "channel"

    .prologue
    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->closeIccLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "closeIccLogicalChannel(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 3

    .prologue
    .line 805
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->confirmFirstDataRoaming()V

    .line 814
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->confirmFirstDataRoaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 812
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "confirmFirstDataRoaming(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 873
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v1

    .line 881
    :goto_0
    return v1

    .line 876
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 880
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "dialWithoutDelay(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 881
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2030
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->disableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    :goto_0
    return-void

    .line 2032
    :catch_0
    move-exception v0

    .line 2034
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "disableLocationUpdatesExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2020
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    :goto_0
    return-void

    .line 2022
    :catch_0
    move-exception v0

    .line 2024
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enableLocationUpdatesExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableMpdp(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1580
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableMpdp(Z)V

    .line 1589
    :goto_0
    return-void

    .line 1583
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableMpdp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1585
    :catch_0
    move-exception v0

    .line 1587
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enableMpdp(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1929
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->enableRegistrationState_wifi_call(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1935
    :goto_0
    return-void

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1932
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1933
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveCallConnectTime()J
    .locals 3

    .prologue
    .line 1061
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallConnectTime()J

    move-result-wide v1

    .line 1069
    :goto_0
    return-wide v1

    .line 1064
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActiveCallConnectTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1068
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getActiveCallConnectTime(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1028
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1036
    :goto_0
    return-object v1

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActiveCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1035
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getActiveCallNumber(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1595
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getActivePDPList()[Ljava/lang/String;

    move-result-object v1

    .line 1603
    :goto_0
    return-object v1

    .line 1598
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePDPList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1600
    :catch_0
    move-exception v0

    .line 1602
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enableMpdp(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1603
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivePhoneType()I
    .locals 3

    .prologue
    .line 2117
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2122
    :goto_0
    return v1

    .line 2119
    :catch_0
    move-exception v0

    .line 2121
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getActivePhoneType(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1044
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1052
    :goto_0
    return-object v1

    .line 1047
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getBackgroundCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v0

    .line 1051
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getBackgroundCallNumber(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1126
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumber()Ljava/lang/String;

    move-result-object v1

    .line 1134
    :goto_0
    return-object v1

    .line 1129
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1133
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getCFUNumber(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1171
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v1

    .line 1179
    :goto_0
    return-object v1

    .line 1174
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCFUNumberFromOperator()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1176
    :catch_0
    move-exception v0

    .line 1178
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getCFUNumberFromOperator(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2084
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCallStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2089
    :goto_0
    return v1

    .line 2086
    :catch_0
    move-exception v0

    .line 2088
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getCallStateExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2089
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCardCheckedState()I
    .locals 3

    .prologue
    .line 2194
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getCardCheckedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2199
    :goto_0
    return v1

    .line 2196
    :catch_0
    move-exception v0

    .line 2198
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getCardCheckedState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 713
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getCdmaMin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 718
    :goto_0
    return-object v1

    .line 715
    :catch_0
    move-exception v0

    .line 717
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getCdmaMin(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 6
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 2005
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2006
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 2007
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 2014
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 2010
    :catch_0
    move-exception v2

    .line 2011
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "getCellLocationExt(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 2012
    goto :goto_0

    .line 2013
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 2014
    goto :goto_0
.end method

.method public getCurrentCallState()I
    .locals 3

    .prologue
    .line 1283
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getCurrentCallState()I

    move-result v1

    .line 1291
    :goto_0
    return v1

    .line 1286
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCurrentCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1288
    :catch_0
    move-exception v0

    .line 1290
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getCurrentCallState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDataActivityExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2095
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataActivityExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2100
    :goto_0
    return v1

    .line 2097
    :catch_0
    move-exception v0

    .line 2099
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getDataActivityExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2106
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2111
    :goto_0
    return v1

    .line 2108
    :catch_0
    move-exception v0

    .line 2110
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getDataStateExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 3

    .prologue
    .line 788
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getDetailIccStatus()[I

    move-result-object v1

    .line 796
    :goto_0
    return-object v1

    .line 791
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDetailIccStatus()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 795
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getDetailIccStatus(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 699
    :goto_0
    return-object v1

    .line 696
    :catch_0
    move-exception v0

    .line 698
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getEsn(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 3

    .prologue
    .line 506
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getGlobalDataRoamingOption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 511
    :goto_0
    return v1

    .line 508
    :catch_0
    move-exception v0

    .line 510
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getGlobalDataRoamingOption(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 3

    .prologue
    .line 823
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getGprsState()I

    move-result v1

    .line 831
    :goto_0
    return v1

    .line 826
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getGprsState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 830
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getGprsState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 559
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 564
    :goto_0
    return-object v1

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcDeviceId(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 577
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 581
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcDeviceSvn(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 611
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 616
    :goto_0
    return-object v1

    .line 613
    :catch_0
    move-exception v0

    .line 615
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcIccSerialNumber(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 645
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 650
    :goto_0
    return-object v1

    .line 647
    :catch_0
    move-exception v0

    .line 649
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcLine1AlphaTag(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 628
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 633
    :goto_0
    return-object v1

    .line 630
    :catch_0
    move-exception v0

    .line 632
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcLine1Number(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 3
    .parameter "stack"

    .prologue
    .line 1411
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v1

    .line 1419
    :goto_0
    return v1

    .line 1414
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getHtcNetworkType([Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v0

    .line 1418
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcNetworkType(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1419
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHtcServiceStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2183
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcServiceStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2188
    :goto_0
    return v1

    .line 2185
    :catch_0
    move-exception v0

    .line 2187
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcServiceStateExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2188
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 594
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 599
    :goto_0
    return-object v1

    .line 596
    :catch_0
    move-exception v0

    .line 598
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcSubscriberId(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 679
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 684
    :goto_0
    return-object v1

    .line 681
    :catch_0
    move-exception v0

    .line 683
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcVoiceMailAlphaTag(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 662
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 667
    :goto_0
    return-object v1

    .line 664
    :catch_0
    move-exception v0

    .line 666
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getHtcVoiceMailNumber(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastError()I
    .locals 3

    .prologue
    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getLastError(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 3
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2040
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNeighboringCellInfoExt(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2045
    :goto_0
    return-object v1

    .line 2042
    :catch_0
    move-exception v0

    .line 2044
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getNeighboringCellInfoExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2045
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkTypeExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2051
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNetworkTypeExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2056
    :goto_0
    return v1

    .line 2053
    :catch_0
    move-exception v0

    .line 2055
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getNetworkTypeExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2056
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 3
    .parameter "profileSlot"

    .prologue
    .line 1301
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v1

    .line 1309
    :goto_0
    return-object v1

    .line 1304
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPdnSettings(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1306
    :catch_0
    move-exception v0

    .line 1308
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getPdnSettings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "profile"

    .prologue
    .line 1346
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1351
    :goto_0
    return-object v1

    .line 1348
    :catch_0
    move-exception v0

    .line 1350
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getPdnSettings2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1351
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1961
    const/4 v1, 0x0

    .line 1963
    .local v1, state:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPhoneState()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1970
    :goto_0
    return-object v1

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1966
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1967
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 3

    .prologue
    .line 1111
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getPowerKeyFlag()Z

    move-result v1

    .line 1119
    :goto_0
    return v1

    .line 1114
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1118
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getPowerKeyFlag(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1119
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 3

    .prologue
    .line 1381
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getPreferredNetworkType()I

    move-result v1

    .line 1389
    :goto_0
    return v1

    .line 1384
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1388
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getPreferredNetworkType(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1389
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 4
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 450
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 459
    :goto_0
    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 454
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 457
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 458
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 3

    .prologue
    .line 842
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getServiceState()I

    move-result v1

    .line 850
    :goto_0
    return v1

    .line 845
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 849
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getServiceState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSubsidyLockTypes()I
    .locals 3

    .prologue
    .line 748
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getSubsidyLockTypes()I

    move-result v1

    .line 756
    :goto_0
    return v1

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSubsidyLockTypes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 755
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getSubsidyLockTypes(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1502
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v1

    .line 1510
    :goto_0
    return-object v1

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStatus()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1507
    :catch_0
    move-exception v0

    .line 1509
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getUSSDVerificationStatus(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1510
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1531
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1532
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v1

    .line 1539
    :goto_0
    return-object v1

    .line 1534
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStrings()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1536
    :catch_0
    move-exception v0

    .line 1538
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getUSSDVerificationStrings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVTLoopBackMode()Z
    .locals 1

    .prologue
    .line 1259
    const/4 v0, 0x0

    return v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 1241
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2073
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getVoiceMessageCountExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2078
    :goto_0
    return v1

    .line 2075
    :catch_0
    move-exception v0

    .line 2077
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getVoiceMessageCountExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2078
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasIccCardExt(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2062
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->hasIccCardExt(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2067
    :goto_0
    return v1

    .line 2064
    :catch_0
    move-exception v0

    .line 2066
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "hasIccCardExt(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2067
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasVTCall()Z
    .locals 1

    .prologue
    .line 1270
    const/4 v0, 0x0

    return v0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "9999999999"

    return-object v0
.end method

.method public htcCdmaEndCall()Z
    .locals 3

    .prologue
    .line 975
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaEndCall()Z

    move-result v1

    .line 983
    :goto_0
    return v1

    .line 978
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 982
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "htcCdmaEndCall(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 3

    .prologue
    .line 937
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaExitRadioPowerSaveMode()V

    .line 946
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->htcCdmaExitRadioPowerSaveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 944
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "htcCdmaExitRadioPowerSaveMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public htcModemLinkOn()Z
    .locals 3

    .prologue
    .line 956
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->htcModemLinkOn()Z

    move-result v1

    .line 964
    :goto_0
    return v1

    .line 959
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->htcModemLinkOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 963
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "htcModemLinkOn(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallWaiting()Z
    .locals 3

    .prologue
    .line 1143
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->isCallWaiting()Z

    move-result v1

    .line 1151
    :goto_0
    return v1

    .line 1146
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isCallWaiting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1150
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "isCallWaiting(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 3

    .prologue
    .line 992
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->isFdnEnabled()Z

    move-result v1

    .line 1000
    :goto_0
    return v1

    .line 995
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isFdnEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 997
    :catch_0
    move-exception v0

    .line 999
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "isFdnEnabled(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 2172
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->isInService(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2177
    :goto_0
    return v1

    .line 2174
    :catch_0
    move-exception v0

    .line 2176
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "isInService(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimPinEnabled()Z
    .locals 3

    .prologue
    .line 1983
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1988
    :goto_0
    return v1

    .line 1985
    :catch_0
    move-exception v0

    .line 1987
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "isSimPinEnabled(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1988
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUimPinEnabled()Z
    .locals 3

    .prologue
    .line 1994
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->isUimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1999
    :goto_0
    return v1

    .line 1996
    :catch_0
    move-exception v0

    .line 1998
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "isUimPinEnabled(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1999
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyKeyEvent(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 1905
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyKeyEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1911
    :goto_0
    return-void

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyKeyEvent(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1908
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1909
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyKeyEvent(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyScreenBusy(Z)V
    .locals 3
    .parameter "busy"

    .prologue
    .line 1895
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyScreenBusy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1901
    :goto_0
    return-void

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyScreenBusy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1898
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1899
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyScreenBusy(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 3
    .parameter "AID"

    .prologue
    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->openIccLogicalChannel(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 274
    :goto_0
    return v1

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "openIccLogicalChannel(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performHtcPhoneAction(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 1563
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1564
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->performHtcPhoneAction(I)V

    .line 1572
    :goto_0
    return-void

    .line 1566
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->performHtcPhoneAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1568
    :catch_0
    move-exception v0

    .line 1570
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "performHtcPhoneAction(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->queryCAVE()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "queryCAVE(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->queryMD5()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "queryMD5(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->querySSDUpdate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "querySSDUpdate(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->queryUIMAUTH()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "queryUIMAUTH(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->queryVPM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "queryVPM(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randu"

    .prologue
    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestCAVE(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestCW_UW_DREG()V
    .locals 3

    .prologue
    .line 1716
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1717
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_DREG()V

    .line 1725
    :goto_0
    return-void

    .line 1719
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_DREG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1721
    :catch_0
    move-exception v0

    .line 1723
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestCW_UW_DREG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestCW_UW_REG()V
    .locals 3

    .prologue
    .line 1701
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1702
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_REG()V

    .line 1710
    :goto_0
    return-void

    .line 1704
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_REG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1706
    :catch_0
    move-exception v0

    .line 1708
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestCW_UW_REG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 3

    .prologue
    .line 1452
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestEhrpdDomainNameChangeState()I

    move-result v1

    .line 1460
    :goto_0
    return v1

    .line 1455
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestEhrpdDomainNameChangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1457
    :catch_0
    move-exception v0

    .line 1459
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestEhrpdDomainNameChangeState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1805
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetBtid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1814
    :goto_0
    return-object v1

    .line 1807
    :catch_0
    move-exception v0

    .line 1809
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetBtid(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1812
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1813
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetBtid(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 333
    :catch_0
    move-exception v0

    .line 335
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetDOMAIN(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetDOMAIN(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 3

    .prologue
    .line 1484
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1485
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDeviceCapability()I

    move-result v1

    .line 1492
    :goto_0
    return v1

    .line 1487
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDeviceCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1489
    :catch_0
    move-exception v0

    .line 1491
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestGetEhrpdDeviceCapability(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1492
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 3

    .prologue
    .line 1468
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDisableCapability()I

    move-result v1

    .line 1476
    :goto_0
    return v1

    .line 1471
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDisableCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1473
    :catch_0
    move-exception v0

    .line 1475
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestGetEhrpdDisableCapability(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetGID1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 495
    :goto_0
    return-object v1

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetGID1(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 493
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 494
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetGID1(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetHasISIM()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1760
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetHasISIM()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1769
    :goto_0
    return v1

    .line 1762
    :catch_0
    move-exception v0

    .line 1764
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetHasISIM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1767
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1768
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetHasISIM(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 313
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIMPI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 322
    :goto_0
    return-object v1

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 320
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 321
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIMPU()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 358
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPU(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 356
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 357
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPU(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 384
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 393
    :goto_0
    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMSI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 391
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 392
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMSI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIsGBASupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1775
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIsGBASupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1784
    :goto_0
    return v1

    .line 1777
    :catch_0
    move-exception v0

    .line 1779
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIsGBASupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1782
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1783
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIsGBASupported(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1820
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetKeyLifetime()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1829
    :goto_0
    return-object v1

    .line 1822
    :catch_0
    move-exception v0

    .line 1824
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetKeyLifetime(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1827
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1828
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetKeyLifetime(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 412
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 407
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetMobileNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 410
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetMobileNumber(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 365
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 374
    :goto_0
    return-object v1

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCF(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 372
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 373
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCF(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "ifc_name"

    .prologue
    const/4 v1, 0x0

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCFAddress(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 226
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCFAddress(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1790
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetRand()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1799
    :goto_0
    return-object v1

    .line 1792
    :catch_0
    move-exception v0

    .line 1794
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetRand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1797
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1798
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetRand(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetSIMType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1945
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetSIMType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1951
    :goto_0
    return v1

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetO2SIMType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1949
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1950
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetO2SIMType(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetVolteSipRegFailure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetVolteSipRegFailure(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 211
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetVolteSipRegFailure(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 7
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 1640
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 1648
    :goto_0
    return-object v0

    .line 1643
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestISIMRead(IIIII)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1645
    :catch_0
    move-exception v6

    .line 1647
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestISIMRead(): RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1648
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 433
    :goto_0
    return-object v1

    .line 426
    :catch_0
    move-exception v0

    .line 428
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestImsAkaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 431
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 432
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestImsAkaAuthentication(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1734
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestLtePermanentlyDetached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1738
    :goto_0
    return v1

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1737
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1738
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestMD5(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestQueryISIMSupported()Z
    .locals 3

    .prologue
    .line 1625
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1626
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestQueryISIMSupported()Z

    move-result v1

    .line 1633
    :goto_0
    return v1

    .line 1628
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestQueryISIMSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1630
    :catch_0
    move-exception v0

    .line 1632
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestQueryISIMSupported(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1633
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestResetWSIMState()Z
    .locals 3

    .prologue
    .line 1671
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestResetWSIMState()Z

    move-result v1

    .line 1679
    :goto_0
    return v1

    .line 1674
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestResetWSIMState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1676
    :catch_0
    move-exception v0

    .line 1678
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestResetWSIMState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1679
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randssd"

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSSDUpdate(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "authbs"

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSSDUpdateConfirm(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 3
    .parameter "ehrpdmode"

    .prologue
    .line 1437
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetEhrpdDisableCapability(I)V

    .line 1446
    :goto_0
    return-void

    .line 1440
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetEhrpdDisableCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1444
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetEhrpdDisableCapability(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 1747
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSetFastDormancy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    :goto_0
    return-void

    .line 1749
    :catch_0
    move-exception v0

    .line 1751
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetFastDormancy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"

    .prologue
    .line 1655
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1656
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1663
    :goto_0
    return-object v1

    .line 1658
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1660
    :catch_0
    move-exception v0

    .line 1662
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetISIMAUTH(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1663
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSetLBSNTFY(I)V
    .locals 3
    .parameter "lbsvalue"

    .prologue
    .line 1687
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1688
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetLBSNTFY(I)V

    .line 1696
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetLBSNTFY(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1692
    :catch_0
    move-exception v0

    .line 1694
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetLBSNTFY(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 534
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 538
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetMultiRABTrafficThrottling(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestVPM()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestVPM(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetPdnForSettingsChange()V
    .locals 3

    .prologue
    .line 1331
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1332
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange()V

    .line 1340
    :goto_0
    return-void

    .line 1334
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->resetPdnForSettingsChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1336
    :catch_0
    move-exception v0

    .line 1338
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "resetPdnForSettingsChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPdnForSettingsChange2()V
    .locals 3

    .prologue
    .line 1367
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :goto_0
    return-void

    .line 1369
    :catch_0
    move-exception v0

    .line 1371
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "resetPdnForSettingsChange2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendAT_BRIC()V
    .locals 3

    .prologue
    .line 858
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAT_BRIC()V

    .line 867
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->sendAT_BRIC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 865
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendAT_BRIC(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 917
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->sendAT_PushMail(II)V

    .line 926
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendAT_PushMail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    :catch_0
    move-exception v0

    .line 924
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendAT_PushMail(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "command"

    .prologue
    .line 1010
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1018
    :goto_0
    return-object v1

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1017
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendAllowedCSIMCommand(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 3
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    .line 1200
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v1

    .line 1208
    :goto_0
    return-object v1

    .line 1203
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuth3GReq([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v0

    .line 1207
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 3
    .parameter "szRAND"

    .prologue
    .line 1215
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuthGSMReq([B)[B

    move-result-object v1

    .line 1223
    :goto_0
    return-object v1

    .line 1218
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuthGSMReq([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    .line 1222
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendLanguageChange(I)V
    .locals 3
    .parameter "languageCode"

    .prologue
    .line 1608
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendLanguageChange(I)V

    .line 1617
    :goto_0
    return-void

    .line 1611
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendLanguageChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1613
    :catch_0
    move-exception v0

    .line 1615
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendLanguageChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 3
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 1157
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v1

    .line 1165
    :goto_0
    return v1

    .line 1160
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCFUNumber(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setCFUNumber(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 1882
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    :goto_0
    return-void

    .line 1884
    :catch_0
    move-exception v0

    .line 1886
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setGbaBootstrappingParams(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 518
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGlobalDataRoamingOption(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 522
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setGlobalDataRoamingOption(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 3
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 1316
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings(ILjava/lang/String;)V

    .line 1325
    :goto_0
    return-void

    .line 1319
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPdnSettings(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1321
    :catch_0
    move-exception v0

    .line 1323
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPdnSettings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 1357
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings2([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_0
    return-void

    .line 1359
    :catch_0
    move-exception v0

    .line 1361
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPdnSettings2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPowerKeyFlag()V
    .locals 3

    .prologue
    .line 1095
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->setPowerKeyFlag()V

    .line 1104
    :goto_0
    return-void

    .line 1098
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1102
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPowerKeyFlag(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPreferredNetworkType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1396
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V

    .line 1405
    :goto_0
    return-void

    .line 1399
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1401
    :catch_0
    move-exception v0

    .line 1403
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPreferredNetworkType(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 1917
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setPreferredNetworkType_wifi_call(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1924
    :goto_0
    return v1

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1924
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1920
    :catch_1
    move-exception v0

    .line 1921
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setTimeZone(ZI)V
    .locals 3
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 897
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setTimeZone(ZI)V

    .line 906
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setTimeZone(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    :catch_0
    move-exception v0

    .line 904
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setTimeZone(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1517
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 1526
    :goto_0
    return-void

    .line 1520
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    .line 1524
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setUSSDVerificationStatus(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 1550
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :goto_0
    return-void

    .line 1553
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1555
    :catch_0
    move-exception v0

    .line 1557
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setUSSDVerificationStrings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVTLoopBackMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1246
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTLoopBackMode(Z)V

    .line 1255
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTLoopBackMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1253
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setVTLoopBackMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1229
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTSimulatedMode(Z)V

    .line 1238
    :goto_0
    return-void

    .line 1232
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTSimulatedMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1234
    :catch_0
    move-exception v0

    .line 1236
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setVTSimulatedMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showIncallScreen()V
    .locals 1

    .prologue
    .line 1974
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHtcTelephony;->showIncallScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1978
    :goto_0
    return-void

    .line 1976
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1975
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "pin"

    .prologue
    .line 768
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 776
    :goto_0
    return v1

    .line 771
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 775
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "supplySubsidyLockPin(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchHoldAndActiveCall()V
    .locals 3

    .prologue
    .line 1078
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->switchHoldAndActiveCall()V

    .line 1087
    :goto_0
    return-void

    .line 1081
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->switchHoldAndActiveCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1085
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "switchHoldAndActiveCall(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 240
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v7

    .line 244
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "transmitIccBasicChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 255
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v8

    .line 259
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "transmitIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "puk"
    .parameter "newpin"

    .prologue
    const/4 v1, 0x0

    .line 729
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 736
    :goto_0
    return v1

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 735
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 736
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public updateRegDregState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->updateRegDregState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "updateRegDregState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "updateSipInviteState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
