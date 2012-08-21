.class public final Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;
.super Ljava/lang/Thread;
.source "BluetoothPrinterEventLoop.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterEventLoop"

.field private static final V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field final mPrinterCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->Native_classBluetoothPrinterInit()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPrinterEventLoop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    .line 82
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .line 83
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private native Native_BluetoothPrinterEventLoop()V
.end method

.method private static native Native_classBluetoothPrinterInit()V
.end method


# virtual methods
.method declared-synchronized onAuthorizeEvent(IIIZ)V
    .locals 4
    .parameter "realmIndex"
    .parameter "realmLength"
    .parameter "realmCharSet"
    .parameter "required"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*************onAuthorizeEvent("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p4, :cond_0

    const-string v1, "TRUE"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.bpp.action.ON_AUTH_PRTR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, i:Landroid/content/Intent;
    const-string v1, "REALM_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v1, "REALM_LNGTH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v1, "REALM_CHARSET"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "REQD"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 256
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :try_start_1
    const-string v1, "FALSE"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onBppDocCompleteEvent(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBppDocCompleteEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 453
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 454
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onBppDocCompleteEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_DOC_CMPL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 462
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onCloseEvent(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCloseEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 215
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 216
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onCloseEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->clearCurrentJob()V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_CLOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onEnableEvent()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onEnableEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onGetCapabilitiesEvent(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    .locals 4
    .parameter "services"
    .parameter "bppFeatures"
    .parameter "oppFeatures"
    .parameter "bipFeatures"
    .parameter "bc"
    .parameter "ba"

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinterEventLoop"

    const-string v2, "onGetCapabilitiesEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v1, "BluetoothPrinterEventLoop"

    const-string v2, "*** Printer Capabilities ***"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printer Services: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPP Features: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP Features: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v1, "BluetoothPrinterEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BPP Features: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.bpp.action.ON_GET_PRTR_CAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, i:Landroid/content/Intent;
    const-string v1, "SVC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v1, "BPP_FEAT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "OPP_FEAT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v1, "BIP_FEAT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v1, "BIPCAP"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    const-string v1, "BPPATTR"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 301
    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onGetObjectEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothPrinterEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetObjectEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v2

    .line 402
    .local v2, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v2, :cond_0

    .line 403
    const-string v3, "BluetoothPrinterEventLoop"

    const-string v4, "ERROR: onGetObjectEvent(): Cannot find current job!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, filePath:Ljava/lang/String;
    iget-object v3, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    if-eqz v3, :cond_2

    .line 412
    iget-object v3, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->getMappedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_1

    .line 417
    const-string v3, "BluetoothPrinterEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetObjectEvent:BppObjectResolver provided file path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v3, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V

    .line 427
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.bpp.action.ON_GET_OBJ"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, i:Landroid/content/Intent;
    const-string v3, "JOBID"

    iget-wide v4, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 429
    const-string v3, "NAME"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized onJobStatusEvent(Lcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "onJobStatusEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 488
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 489
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onJobStatusEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :goto_0
    monitor-exit p0

    return-void

    .line 493
    :cond_0
    :try_start_1
    iput-object p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 494
    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_JOB_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 499
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 500
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onOpenEvent(I)V
    .locals 5
    .parameter "serviceId"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpenEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 135
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 136
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onOpenEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_OPEN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string v2, "SVCID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onPartialImageEvent(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPartialImageEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 371
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 372
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onPartialImageEvent() Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_PART_IMG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 379
    const-string v2, "NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onProgressEvent(II)V
    .locals 5
    .parameter "totalBytes"
    .parameter "processedBytes"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 174
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 175
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onProgressEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    :try_start_1
    iput p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    .line 180
    iput p2, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    .line 181
    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_PROGRESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 186
    const-string v2, "TOTAL_BYTES"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v2, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onThumbnailEvent()V
    .locals 5

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "onThumbnailEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v1

    .line 342
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-nez v1, :cond_0

    .line 343
    const-string v2, "BluetoothPrinterEventLoop"

    const-string v3, "ERROR: onThumbnailEvent(): Cannot find current job!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.bpp.action.ON_THUMBNAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, i:Landroid/content/Intent;
    const-string v2, "JOBID"

    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "Register Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 93
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "ENTER BluetoothPrinterEventLoop in Native code"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    invoke-static {}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string v0, "BluetoothPrinterEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPrinterEventLoop: Entering JNI. thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->Native_BluetoothPrinterEventLoop()V

    .line 102
    const-string v0, "BluetoothPrinterEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPrinterEventLoop: Exiting JNI thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "ENTER BluetoothPrinterEventLoop in Native code"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "Unregister Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
