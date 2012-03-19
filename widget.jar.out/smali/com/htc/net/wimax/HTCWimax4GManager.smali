.class public Lcom/htc/net/wimax/HTCWimax4GManager;
.super Lcom/htc/net/wimax/Wimax4GManager;
.source "HTCWimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/HTCWimax4GManager$1;,
        Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    }
.end annotation


# static fields
.field public static final AKA_FAIL_ACCESS_DENIED:I = 0x402

.field public static final AKA_FAIL_AFTER_AUTHEN_NO_POPUP:I = 0xe49

.field public static final AKA_FAIL_BEFORE_AUTHEN_NO_POPUP:I = 0x4e49

.field public static final AKA_FAIL_GENERAL_AFTER_AUTHEN:I = 0x0

.field public static final AKA_FAIL_GENERAL_BEFORE_AUTHEN:I = 0x4000

.field public static final AKA_FAIL_INVALID_ATTRIBUTE_INCLUDED_AFTER_AUTHEN:I = 0x7dc

.field public static final AKA_FAIL_INVALID_ATTRIBUTE_INCLUDED_BEFORE_AUTHEN:I = 0x47dc

.field public static final AKA_FAIL_INVALID_AT_CHECKCODE:I = 0x7e7

.field public static final AKA_FAIL_INVALID_AT_MAC:I = 0x7e5

.field public static final AKA_FAIL_INVALID_AT_RES:I = 0x7e6

.field public static final AKA_FAIL_INVALID_AUTHTYPE:I = 0xe4a

.field public static final AKA_FAIL_INVALID_IDENTITY:I = 0x4e35

.field public static final AKA_FAIL_INVALID_SUBTYPE_AFTER_AUTHEN:I = 0x7d1

.field public static final AKA_FAIL_INVALID_SUBTYPE_BEFORE_AUTHEN:I = 0x47d1

.field public static final AKA_FAIL_INVALID_USER:I = 0x4e42

.field public static final AKA_FAIL_LOST_TERMINAL:I = 0x4e46

.field public static final AKA_FAIL_LOST_UICC:I = 0x4e45

.field public static final AKA_FAIL_MISSING_ATTRIBUTE_AFTER_AUTHEN:I = 0x7db

.field public static final AKA_FAIL_MISSING_ATTRIBUTE_BEFORE_AUTHEN:I = 0x47db

.field public static final AKA_FAIL_NOT_SUBSCRIBED_SERVICE:I = 0x407

.field public static final AKA_FAIL_PREPATMENT_OVER_RECHARGEABLE:I = 0xe40

.field public static final AKA_FAIL_PREPAYMENT_GENERAL_AFTER_AUTHEN:I = 0xe48

.field public static final AKA_FAIL_PREPAYMENT_GENERAL_BEFORE_AUTHEN:I = 0x4e48

.field public static final AKA_FAIL_PREPAYMENT_OVER:I = 0xe3f

.field public static final AKA_FAIL_PSSMAC_NOT_MATCH:I = 0x4e43

.field public static final AKA_FAIL_TOO_MANY_SQN_FAIL:I = 0x4e44

.field public static final AKA_FAIL_UNAVAILABLE_BS:I = 0x4e4b

.field public static final AKA_FAIL_UNKNOWN_BS:I = 0x4e4c

.field public static final AKA_FAIL_USAGELIMIT_EXHAUSTED:I = 0x4e47

.field public static final AKA_SUCCESS:I = 0x8000

.field public static final AKA_SUCCESS_NO_POPUP:I = 0x8001

.field public static final EXTRA_EAP_AKA_NOTIFICATION_CODE:Ljava/lang/String; = "eap_aka_notification_code"

.field public static final EXTRA_EAP_NOTIFICATION_MSG:Ljava/lang/String; = "eap_notification_msg"

.field public static final KT_WIBRO_LINK_STATE:Ljava/lang/String; = "kt_wibro_link_state"

.field public static final KT_WIBRO_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.KT_WIBRO_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "HTCWimax4GManager"

.field public static final WIMAX_4G_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

.field public static final WIMAX_4G_NOT_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_4G_NOT_AVAILABLE"

.field public static final WIMAX_EAP_AKA_NOTIFICATION_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_EAP_AKA_NOTIFICATION"

.field public static final WIMAX_EAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_EAP_NOTIFICATION"


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GManager;-><init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V

    .line 185
    sput-object p1, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->mService:Lcom/htc/net/wimax/IWimaxController;

    .line 186
    return-void
.end method


# virtual methods
.method public addFrequency(III)Z
    .locals 2
    .parameter "frequencyHz"
    .parameter "bandWidth"
    .parameter "duration"

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/net/wimax/IWimaxController;->addFrequency(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeToCorpNapid(I)Z
    .locals 2
    .parameter "napid"

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->changeToCorpNapid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 351
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearChannelList()Z
    .locals 2

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->clearChannelList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cli(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->cli(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 399
    :goto_0
    return-object v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createConnectionStatistics()Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;-><init>()V

    return-object v0
.end method

.method public getLastAkaNotificationCode()I
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getLastAkaNotificationCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 329
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLastEapNotificationMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getLastEapNotificationMsg()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, ""

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSettingAuthMode()I
    .locals 2

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingAuthMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSettingChannelList()[I
    .locals 2

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingChannelList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSettingIdleModeTimer()I
    .locals 2

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingIdleModeTimer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSettingTxPower()F
    .locals 2

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingTxPower()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 278
    :goto_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method public getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "propId"

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 408
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrivateNetwork()Z
    .locals 2

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isPrivateNetwork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 369
    :goto_0
    return v1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetPacketErrorRate()Z
    .locals 2

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->resetPacketErrorRate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public revertToSprintNapid()Z
    .locals 2

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->revertToSprintNapid()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 360
    :goto_0
    return v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAuthMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setAuthMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIdleModeTimer(I)Z
    .locals 2
    .parameter "idleTimeoutMs"

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setIdleModeTimer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setToggling(Z)Z
    .locals 2
    .parameter "isToogling"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setToggling(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTxPower(F)Z
    .locals 2
    .parameter "txPower"

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setTxPower(F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 267
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "propId"
    .parameter "value"

    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 417
    :goto_0
    return v1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wimaxRescan()I
    .locals 2

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->wimaxRescan()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
