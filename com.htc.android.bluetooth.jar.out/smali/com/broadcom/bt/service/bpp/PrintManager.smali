.class Lcom/broadcom/bt/service/bpp/PrintManager;
.super Ljava/lang/Object;
.source "PrintManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrintManager"

.field private static mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

.field private static mIncrementalJobIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized clearCurrentJob()V
    .locals 2

    .prologue
    .line 70
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v0

    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static createJob(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 12
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"

    .prologue
    .line 40
    new-instance v0, Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJobId()J

    move-result-wide v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/broadcom/bt/service/bpp/PrintJob;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)V

    return-object v0
.end method

.method static createJob(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 12
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "fileFormat"
    .parameter "cb"

    .prologue
    const/4 v8, 0x0

    .line 47
    new-instance v0, Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJobId()J

    move-result-wide v1

    const/4 v4, 0x0

    const-string v6, ""

    move-object v3, p0

    move v5, p2

    move-object v7, p1

    move-object v9, v8

    move-object v10, v8

    move-object v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/broadcom/bt/service/bpp/PrintJob;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)V

    return-object v0
.end method

.method static createJob(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 12
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "bppParams"
    .parameter "cb"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 53
    new-instance v0, Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJobId()J

    move-result-wide v1

    const-string v6, ""

    move-object v3, p0

    move v5, v4

    move-object v7, p1

    move-object v9, p2

    move-object v10, v8

    move-object v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/broadcom/bt/service/bpp/PrintJob;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)V

    return-object v0
.end method

.method static declared-synchronized createJobId()J
    .locals 6

    .prologue
    .line 33
    const-class v1, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V
    .locals 5
    .parameter "job"

    .prologue
    .line 58
    const-class v1, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 67
    :goto_0
    monitor-exit v1

    return-void

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Attempting to start a new job with jobId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when an existing job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget-wide v3, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is still in progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    sput-object p0, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
