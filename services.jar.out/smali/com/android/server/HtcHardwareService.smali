.class public Lcom/android/server/HtcHardwareService;
.super Landroid/os/IHtcHardwareService$Stub;
.source "HtcHardwareService.java"


# static fields
.field private static final LOCKED:I = 0x4

.field private static final NORMAL:I = 0x0

.field private static final PRESSED:I = 0x1

.field private static final RELEASED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcHardwareService"

.field private static final USED:I = 0x3

.field private static mHeadsetType:Ljava/lang/String;


# instance fields
.field iBd:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field mCurKeyFnActive:Z

.field mHasHWKB:I

.field mHasLED:Z

.field mIsUpdateByInner:Z

.field private mSystemCapState:I

.field private mSystemFnState:I

.field private m_FnKeyActive:Z

.field nwService:Landroid/os/INetworkManagementService;

.field oldCaps:I

.field oldFn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    const-string v0, "error_state"

    sput-object v0, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Landroid/os/IHtcHardwareService$Stub;-><init>()V

    .line 83
    iput v3, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 84
    iput v3, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    .line 129
    iput-boolean v3, p0, Lcom/android/server/HtcHardwareService;->m_FnKeyActive:Z

    .line 135
    iput-boolean v3, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    .line 136
    iput-boolean v3, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    .line 215
    iput v3, p0, Lcom/android/server/HtcHardwareService;->oldFn:I

    iput v3, p0, Lcom/android/server/HtcHardwareService;->oldCaps:I

    .line 271
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    .line 272
    iput-boolean v3, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    .line 52
    iput-object p1, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    .line 54
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HtcHardwareService;->iBd:Landroid/os/IBinder;

    .line 55
    iget-object v2, p0, Lcom/android/server/HtcHardwareService;->iBd:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/server/HtcHardwareService;->iBd:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HtcHardwareService;->nwService:Landroid/os/INetworkManagementService;

    .line 59
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/leds/caps/brightness"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, fileCAP:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/leds/func/brightness"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, fileFN:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    .line 63
    :cond_3
    return-void
.end method

.method private static native DmbRequestWakeUpSignal_native(I)V
.end method

.method private broadcastFNCAPSStatus(II)V
    .locals 15
    .parameter "systemFNState"
    .parameter "systemCapState"

    .prologue
    .line 220
    iget v2, p0, Lcom/android/server/HtcHardwareService;->oldFn:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/android/server/HtcHardwareService;->oldCaps:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_1

    .line 221
    :cond_0
    const/4 v13, 0x0

    .local v13, fn:I
    const/4 v12, 0x0

    .line 222
    .local v12, caps:I
    packed-switch p1, :pswitch_data_0

    .line 235
    const/4 v13, 0x0

    .line 238
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 251
    const/4 v12, 0x0

    .line 255
    :goto_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 256
    .local v1, am:Landroid/app/IActivityManager;
    if-eqz v1, :cond_1

    .line 257
    new-instance v3, Landroid/content/Intent;

    const-string v2, "com.htc.content.Intent.ACTION_HW_META_UPDATE"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .local v3, msg:Landroid/content/Intent;
    const-string v2, "meta_status_fn"

    invoke-virtual {v3, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v2, "meta_status_caps"

    invoke-virtual {v3, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v3           #msg:Landroid/content/Intent;
    .end local v12           #caps:I
    .end local v13           #fn:I
    :cond_1
    :goto_2
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/HtcHardwareService;->oldFn:I

    .line 268
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/HtcHardwareService;->oldCaps:I

    .line 269
    return-void

    .line 224
    .restart local v12       #caps:I
    .restart local v13       #fn:I
    :pswitch_0
    const/4 v13, 0x0

    .line 225
    goto :goto_0

    .line 227
    :pswitch_1
    const/4 v13, 0x2

    .line 228
    goto :goto_0

    .line 232
    :pswitch_2
    const/4 v13, 0x1

    .line 233
    goto :goto_0

    .line 240
    :pswitch_3
    const/4 v12, 0x0

    .line 241
    goto :goto_1

    .line 243
    :pswitch_4
    const/4 v12, 0x2

    .line 244
    goto :goto_1

    .line 248
    :pswitch_5
    const/4 v12, 0x1

    .line 249
    goto :goto_1

    .line 262
    .restart local v1       #am:Landroid/app/IActivityManager;
    .restart local v3       #msg:Landroid/content/Intent;
    :catch_0
    move-exception v14

    .line 263
    .local v14, sEx:Landroid/os/RemoteException;
    const-string v2, "HtcHardwareService"

    const-string v4, "[broadcastFNCAPSStatus]:"

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 238
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private detectHeadsetType()V
    .locals 6

    .prologue
    .line 308
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/htc_accessory/headset/state"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    :cond_0
    const-string v4, "HtcHardwareService"

    const-string v5, "Headset type is not existed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    .line 355
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v2, 0x0

    .line 319
    .local v2, input:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2           #input:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .restart local v2       #input:Ljava/io/BufferedReader;
    if-nez v2, :cond_2

    .line 330
    const-string v4, "HtcHardwareService"

    const-string v5, "BufferedReader input = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 321
    .end local v2           #input:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "HtcHardwareService"

    const-string v5, "detectHeadsetType() FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :cond_2
    const/4 v3, 0x0

    .line 338
    .local v3, line:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    if-nez v3, :cond_3

    .line 350
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 341
    :catch_1
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    const-string v4, "HtcHardwareService"

    const-string v5, "detectHeadsetType() IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v4, "error_state"

    sput-object v4, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0

    .line 354
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    sput-object v3, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    goto :goto_0
.end method

.method private press(I)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 87
    if-ne p1, v1, :cond_1

    .line 96
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 89
    .restart local p1
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move p1, v0

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 93
    if-ne p1, v0, :cond_3

    .line 94
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    move p1, v1

    .line 96
    goto :goto_0
.end method

.method private release(I)I
    .locals 1
    .parameter "current"

    .prologue
    .line 100
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 101
    const/4 p1, 0x0

    .line 105
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 102
    .restart local p1
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 103
    const/4 p1, 0x2

    goto :goto_0
.end method

.method private static native setCapsLedState_native(Z)V
.end method

.method private static native setDualLedState_native(IIII)V
.end method

.method private static native setFlashlightBrightness_native(I)V
.end method

.method private static native setFnLedState_native(Z)V
.end method

.method private static native setHeadsetFMType_native(Ljava/lang/String;)V
.end method

.method private static native setHeadsetTTYType_native(Ljava/lang/String;)V
.end method

.method private static native setJogBallMode_native(I)V
.end method


# virtual methods
.method public DmbRequestWakeUpSignal(I)V
    .locals 0
    .parameter "wakeup"

    .prologue
    .line 292
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->DmbRequestWakeUpSignal_native(I)V

    .line 293
    return-void
.end method

.method public getCapsLedState()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    return v0
.end method

.method public getFnLedState()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    return v0
.end method

.method public getHeadsetType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/server/HtcHardwareService;->detectHeadsetType()V

    .line 359
    const-string v0, "HtcHardwareService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeadsetType() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/android/server/HtcHardwareService;->mHeadsetType:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSITstmp(Ljava/lang/String;)J
    .locals 3
    .parameter "mImsi"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasHWKB()I
    .locals 3

    .prologue
    .line 274
    iget v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 276
    .local v0, conf:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_1

    .line 277
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 278
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    .line 282
    .end local v0           #conf:Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    return v1

    .line 279
    .restart local v0       #conf:Landroid/content/res/Configuration;
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    goto :goto_0
.end method

.method public isFnKeyActive()Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeFnState(IIZIZ)V
    .locals 5
    .parameter "code"
    .parameter "metaKeys"
    .parameter "down"
    .parameter "repeatCount"
    .parameter "keyguardOn"

    .prologue
    const/16 v0, 0x39

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    if-eqz p3, :cond_9

    .line 180
    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_3

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->press(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 206
    :cond_1
    :goto_0
    if-nez p4, :cond_2

    .line 207
    iput-boolean v1, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    .line 208
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    if-eqz v0, :cond_d

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/HtcHardwareService;->setFnLedState(Z)V

    .line 209
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    if-eqz v0, :cond_e

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/HtcHardwareService;->setCapsLedState(Z)V

    .line 210
    iput-boolean v2, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    .line 212
    :cond_2
    return-void

    .line 182
    :cond_3
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_5

    .line 183
    :cond_4
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->press(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    .line 185
    :cond_5
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    if-ne v0, v1, :cond_7

    .line 186
    iput v4, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 190
    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    if-ne v0, v1, :cond_8

    .line 191
    iput v4, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    .line 187
    :cond_7
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    if-ne v0, v3, :cond_6

    .line 188
    iput v2, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    goto :goto_3

    .line 192
    :cond_8
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    if-ne v0, v3, :cond_1

    .line 193
    iput v2, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    .line 199
    :cond_9
    if-eq p1, v0, :cond_a

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_b

    .line 200
    :cond_a
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->release(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    goto :goto_0

    .line 201
    :cond_b
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    .line 202
    :cond_c
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0}, Lcom/android/server/HtcHardwareService;->release(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    goto :goto_0

    :cond_d
    move v0, v2

    .line 208
    goto :goto_1

    :cond_e
    move v1, v2

    .line 209
    goto :goto_2
.end method

.method public setCapsLedState(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 121
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setCapsLedState_native(Z)V

    .line 122
    :cond_0
    if-nez p1, :cond_1

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    .line 125
    :cond_1
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    iget v1, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/HtcHardwareService;->broadcastFNCAPSStatus(II)V

    .line 127
    :cond_2
    return-void
.end method

.method public setDualLedState(IIII)V
    .locals 0
    .parameter "color"
    .parameter "mode"
    .parameter "offMin"
    .parameter "offSec"

    .prologue
    .line 110
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/HtcHardwareService;->setDualLedState_native(IIII)V

    .line 111
    return-void
.end method

.method public setFlashlightBrightness(I)V
    .locals 0
    .parameter "brightness"

    .prologue
    .line 287
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFlashlightBrightness_native(I)V

    .line 288
    return-void
.end method

.method public setFnLedState(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mHasHWKB:I

    if-ne v0, v2, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mHasLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFnLedState_native(Z)V

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 143
    iput v3, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    .line 145
    :cond_1
    iget v0, p0, Lcom/android/server/HtcHardwareService;->mSystemFnState:I

    iget v1, p0, Lcom/android/server/HtcHardwareService;->mSystemCapState:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/HtcHardwareService;->broadcastFNCAPSStatus(II)V

    .line 147
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->mIsUpdateByInner:Z

    if-eqz v0, :cond_5

    .line 148
    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    .line 157
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/HtcHardwareService;->m_FnKeyActive:Z

    .line 159
    :cond_2
    return-void

    .line 151
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/HtcHardwareService;->m_FnKeyActive:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    goto :goto_0

    .line 152
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    goto :goto_0

    .line 155
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/HtcHardwareService;->mCurKeyFnActive:Z

    goto :goto_0
.end method

.method public setHeadsetFMType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 297
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setHeadsetFMType_native(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setHeadsetTTYType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 302
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setHeadsetTTYType_native(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public setIMSITstmp(Ljava/lang/String;)Z
    .locals 3
    .parameter "mImsi"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public setJogBallMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setJogBallMode_native(I)V

    .line 116
    return-void
.end method
