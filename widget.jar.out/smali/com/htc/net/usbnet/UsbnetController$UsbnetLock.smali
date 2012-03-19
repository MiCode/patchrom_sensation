.class public Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;
.super Ljava/lang/Object;
.source "UsbnetController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/usbnet/UsbnetController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbnetLock"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/net/usbnet/UsbnetController;


# direct methods
.method private constructor <init>(Lcom/htc/net/usbnet/UsbnetController;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 301
    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->this$0:Lcom/htc/net/usbnet/UsbnetController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mTag:Ljava/lang/String;

    .line 303
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    .line 304
    iput v1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCount:I

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCounted:Z

    .line 306
    iput-boolean v1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/net/usbnet/UsbnetController;Ljava/lang/String;Lcom/htc/net/usbnet/UsbnetController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;-><init>(Lcom/htc/net/usbnet/UsbnetController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    .line 310
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 313
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->this$0:Lcom/htc/net/usbnet/UsbnetController;

    iget-object v0, v0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/htc/net/usbnet/IUsbnetController;->acquireUsbnetLock(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z

    .line 318
    :cond_0
    monitor-exit v1

    .line 319
    return-void

    .line 311
    :cond_1
    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 314
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 365
    :try_start_1
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->this$0:Lcom/htc/net/usbnet/UsbnetController;

    iget-object v0, v0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lcom/htc/net/usbnet/IUsbnetController;->releaseUsbnetLock(Landroid/os/IBinder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 325
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->this$0:Lcom/htc/net/usbnet/UsbnetController;

    iget-object v0, v0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lcom/htc/net/usbnet/IUsbnetController;->releaseUsbnetLock(Landroid/os/IBinder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z

    .line 330
    :cond_0
    iget v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCount:I

    if-gez v0, :cond_2

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbnetLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 323
    :cond_1
    :try_start_3
    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    return-void

    .line 326
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .parameter "refCounted"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCounted:Z

    .line 338
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 348
    iget-object v4, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 349
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mHeld:Z

    if-eqz v3, :cond_0

    const-string v1, "held; "

    .line 351
    .local v1, s2:Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCounted:Z

    if-eqz v3, :cond_1

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, s3:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsbnetLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 350
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 354
    .restart local v1       #s2:Ljava/lang/String;
    :cond_1
    const-string v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_1

    .line 357
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
