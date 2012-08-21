.class public final Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiverService$2;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;
    }
.end annotation


# static fields
.field private static FMQueue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;",
            ">;"
        }
    .end annotation
.end field

.field private static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field private static final LOOP_TAG:Ljava/lang/String; = "FmReceiverEventLoop"

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static final V:Z = true

.field private static volume:[I


# instance fields
.field private current_CMD:I

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volume:[I

    .line 210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    .line 450
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->classFmInitNative()V

    .line 451
    return-void

    .line 75
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 585
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 457
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->logTimeOut(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/service/fm/FmReceiverService;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private static native classFmInitNative()V
.end method

.method private cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    .locals 9
    .parameter "job"

    .prologue
    const-wide/16 v7, 0x0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, now:J
    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 216
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    if-eqz p1, :cond_3

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 221
    .local v0, existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_1

    .line 222
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_2

    .line 223
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed because of a FM off request. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 225
    const/4 v0, 0x0

    .line 226
    goto :goto_0

    .line 229
    :cond_1
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION_ABORT:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_2

    .line 230
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed because of an abort request. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 232
    const/4 v0, 0x0

    .line 233
    goto :goto_0

    .line 237
    :cond_2
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 238
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****** ***** Sent. So remove Job:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FMQueue.size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 240
    const/4 v0, 0x0

    .line 241
    goto/16 :goto_0

    .line 246
    .end local v0           #existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_3
    return-void
.end method

.method private native cleanupLoopNative()V
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private fetchNextJob()V
    .locals 7

    .prologue
    .line 397
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 398
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 399
    .local v0, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    if-nez v0, :cond_0

    .line 400
    const-string v1, "FmReceiverService"

    const-string v3, "******* ******* Processing job:job=null "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    monitor-exit v2

    .line 413
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-wide v3, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 403
    const-string v1, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing job:time=0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_1
    const-string v1, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing job after:FMQueue.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    .line 412
    monitor-exit v2

    goto :goto_0

    .end local v0           #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 406
    .restart local v0       #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_1
    :try_start_1
    const-string v1, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing job:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FMQueue.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 408
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private get_volume_table()V
    .locals 13

    .prologue
    .line 1395
    const-string v10, "FmReceiverService"

    const-string v11, "get_volume_table()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v7, "/system/etc/bluetooth/fm_volume.conf"

    .line 1397
    .local v7, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1399
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 1400
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1401
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1403
    .local v1, file:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 1404
    .local v5, level:I
    const/4 v9, 0x0

    .line 1405
    .local v9, value:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1406
    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1407
    .local v8, tmp:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1408
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1409
    if-ltz v5, :cond_0

    const/16 v10, 0xf

    if-gt v5, v10, :cond_0

    if-ltz v9, :cond_0

    const/16 v10, 0xff

    if-le v9, v10, :cond_2

    .line 1410
    :cond_0
    const-string v10, "FmReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "illegal FM volume value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , drop"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1415
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #level:I
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #tmp:[Ljava/lang/String;
    .end local v9           #value:I
    :catch_0
    move-exception v10

    move-object v2, v3

    .line 1420
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_1

    .line 1422
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1426
    :cond_1
    :goto_2
    return-void

    .line 1413
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #level:I
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #tmp:[Ljava/lang/String;
    .restart local v9       #value:I
    :cond_2
    :try_start_3
    sget-object v10, Lcom/broadcom/bt/service/fm/FmReceiverService;->volume:[I

    aput v9, v10, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1417
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #level:I
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #tmp:[Ljava/lang/String;
    .end local v9           #value:I
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 1418
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string v10, "FmReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1420
    if-eqz v2, :cond_1

    .line 1422
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1423
    :catch_2
    move-exception v10

    goto :goto_2

    .line 1420
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #level:I
    .restart local v6       #line:Ljava/lang/String;
    .restart local v9       #value:I
    :cond_3
    if-eqz v3, :cond_5

    .line 1422
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v2, v3

    .line 1423
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1420
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #level:I
    .end local v6           #line:Ljava/lang/String;
    .end local v9           #value:I
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v2, :cond_4

    .line 1422
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1423
    :cond_4
    :goto_5
    throw v10

    :catch_4
    move-exception v10

    goto :goto_2

    :catch_5
    move-exception v11

    goto :goto_5

    .line 1420
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1417
    :catch_6
    move-exception v0

    goto :goto_3

    .line 1415
    :catch_7
    move-exception v10

    goto :goto_1

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #level:I
    .restart local v6       #line:Ljava/lang/String;
    .restart local v9       #value:I
    :cond_5
    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 521
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 523
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->DEFAULT_FREQUENCY_CODE:I

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 525
    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 526
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 527
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    .line 528
    const-string v0, ""

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    .line 529
    const-string v0, ""

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    .line 530
    const-string v0, ""

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    .line 531
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 532
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 533
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 534
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 535
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 536
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    .line 537
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 538
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 539
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 540
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    .line 541
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    .line 542
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 543
    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    .line 544
    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    .line 545
    return-void
.end method

.method private logTimeOut(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 548
    packed-switch p1, :pswitch_data_0

    .line 578
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BTAPP TIMEOUT (1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 550
    :pswitch_0
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :pswitch_1
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :pswitch_2
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :pswitch_3
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_TUNE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :pswitch_4
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_MUTE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :pswitch_5
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SEEK_ABORT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :pswitch_6
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_RDS_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :pswitch_7
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :pswitch_8
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :pswitch_9
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_STEP_SIZE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :pswitch_a
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_FM_VOLUME"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    :pswitch_b
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_WORLD_REGION"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :pswitch_c
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_NFL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :pswitch_d
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_GENERIC"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private native muteNative(Z)Z
.end method

.method private processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    .locals 8
    .parameter "job"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, successful:I
    const/4 v2, -0x1

    iput v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 290
    iget-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 292
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** processCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmReceiverService$FMCommand:[I

    iget-object v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 295
    :pswitch_0
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOnRadio(I)I

    move-result v1

    .line 296
    goto :goto_0

    .line 298
    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOffRadio()I

    move-result v1

    .line 299
    goto :goto_0

    .line 301
    :pswitch_2
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_tuneRadio(I)I

    move-result v1

    .line 302
    goto :goto_0

    .line 304
    :pswitch_3
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_getStatus()I

    move-result v1

    .line 305
    goto :goto_0

    .line 307
    :pswitch_4
    iget-boolean v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_muteAudio(Z)I

    move-result v1

    .line 308
    goto :goto_0

    .line 310
    :pswitch_5
    iput v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 311
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekStation(II)I

    move-result v1

    .line 312
    goto :goto_0

    .line 314
    :pswitch_6
    iput v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 315
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekRdsStation(IIII)I

    move-result v1

    .line 316
    goto :goto_0

    .line 322
    :pswitch_7
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setRdsMode(IIII)I

    move-result v1

    .line 323
    goto :goto_0

    .line 325
    :pswitch_8
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioMode(I)I

    move-result v1

    .line 326
    goto :goto_0

    .line 328
    :pswitch_9
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioPath(I)I

    move-result v1

    .line 329
    goto :goto_0

    .line 331
    :pswitch_a
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setStepSize(I)I

    move-result v1

    .line 332
    goto :goto_0

    .line 334
    :pswitch_b
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setWorldRegion(II)I

    move-result v1

    .line 335
    goto :goto_0

    .line 338
    :pswitch_c
    :try_start_0
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_estimateNoiseFloorLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    .line 342
    goto :goto_0

    .line 351
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_d
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setFMVolume(I)I

    move-result v1

    .line 353
    const/4 v2, 0x5

    if-ne v2, v1, :cond_0

    .line 354
    iput-wide v6, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private processCommands()V
    .locals 7

    .prologue
    .line 367
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***** ***** processCommands:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v2, -0x1

    .line 369
    .local v2, statusCom:I
    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 371
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 373
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 375
    .local v1, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    const-string v3, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***** ***** processCommands: after"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I

    move-result v2

    .line 377
    if-nez v2, :cond_1

    .line 380
    monitor-exit v4

    .line 394
    .end local v1           #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :goto_1
    return-void

    .line 381
    .restart local v1       #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_1
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 390
    const-string v3, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***** ***** processCommands: after2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    .end local v1           #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private process_estimateNoiseFloorLevel(I)I
    .locals 7
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1568
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v2, 0x0

    .line 1573
    .local v2, returnStatus:I
    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    if-eqz p1, :cond_1

    .line 1576
    const/4 v2, 0x4

    .line 1602
    :cond_0
    :goto_0
    return v2

    .line 1577
    :cond_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v5, v3, :cond_2

    .line 1578
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/4 v2, 0x3

    goto :goto_0

    .line 1581
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1583
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1584
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1585
    const/16 v3, 0xe

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1586
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1587
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1590
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1591
    const/4 v2, 0x0

    .line 1598
    :goto_1
    if-eqz v2, :cond_0

    .line 1599
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1593
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1596
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_getStatus()I
    .locals 4

    .prologue
    .line 896
    const-string v1, "FmReceiverService"

    const-string v2, "getStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v0, 0x0

    .line 900
    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v1, v2, :cond_0

    .line 901
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x3

    .line 908
    :goto_0
    return v0

    .line 905
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_0
.end method

.method private process_muteAudio(Z)I
    .locals 7
    .parameter "mute"

    .prologue
    const/4 v6, 0x1

    .line 927
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v2, 0x0

    .line 931
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 932
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x3

    .line 956
    :cond_0
    :goto_0
    return v2

    .line 935
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 937
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 938
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 939
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 940
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 941
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 944
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 945
    const/4 v2, 0x0

    .line 952
    :goto_1
    if-eqz v2, :cond_0

    .line 953
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 947
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 950
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_seekRdsStation(IIII)I
    .locals 9
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1052
    const-string v3, "FmReceiverService"

    const-string v4, "seekRdsStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v2, 0x0

    .line 1057
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    if-le p2, v8, :cond_2

    .line 1059
    :cond_0
    const/4 v2, 0x4

    .line 1095
    :cond_1
    :goto_0
    return v2

    .line 1060
    :cond_2
    if-ltz p4, :cond_3

    if-le p4, v8, :cond_4

    .line 1062
    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    .line 1063
    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v6, :cond_5

    if-eq p3, v5, :cond_5

    .line 1066
    const/4 v2, 0x4

    goto :goto_0

    .line 1067
    :cond_5
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v5, v3, :cond_6

    .line 1068
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v2, 0x3

    goto :goto_0

    .line 1071
    :cond_6
    sput v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1073
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1074
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1075
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 1076
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1080
    and-int/lit16 p1, p1, 0x83

    .line 1083
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    .line 1084
    const/4 v2, 0x0

    .line 1091
    :goto_1
    if-eqz v2, :cond_1

    .line 1092
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1086
    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1089
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_seekStation(II)I
    .locals 7
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 982
    const-string v3, "FmReceiverService"

    const-string v4, "seekStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v2, 0x0

    .line 987
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    .line 989
    :cond_0
    const/4 v2, 0x4

    .line 1022
    :cond_1
    :goto_0
    return v2

    .line 990
    :cond_2
    if-eqz p1, :cond_3

    const/16 v3, 0x80

    if-eq p1, v3, :cond_3

    const/16 v3, 0x81

    if-eq p1, v3, :cond_3

    const/16 v3, 0x82

    if-eq p1, v3, :cond_3

    .line 992
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seekStation failed, scanMode too high (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v2, 0x3

    goto :goto_0

    .line 994
    :cond_3
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_4

    .line 995
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v2, 0x3

    goto :goto_0

    .line 998
    :cond_4
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1000
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1001
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1002
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 1003
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1004
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1007
    and-int/lit16 p1, p1, 0x83

    .line 1010
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    .line 1011
    const/4 v2, 0x0

    .line 1018
    :goto_1
    if-eqz v2, :cond_1

    .line 1019
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1013
    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1016
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setAudioMode(I)I
    .locals 7
    .parameter "audioMode"

    .prologue
    const/4 v6, 0x1

    .line 1225
    const/4 v2, 0x0

    .line 1227
    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 1230
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v2, 0x3

    .line 1258
    :cond_0
    :goto_0
    return v2

    .line 1233
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1235
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1236
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1237
    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1238
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1242
    and-int/lit8 p1, p1, 0x3

    .line 1245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1246
    const/4 v2, 0x0

    .line 1253
    :goto_1
    if-eqz v2, :cond_0

    .line 1254
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1248
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1251
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioModeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setAudioPath(I)I
    .locals 7
    .parameter "audioPath"

    .prologue
    const/4 v6, 0x1

    .line 1284
    const/4 v2, 0x0

    .line 1286
    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioPath("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 1289
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/4 v2, 0x3

    .line 1313
    :goto_0
    if-eqz v2, :cond_0

    .line 1314
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1316
    :cond_0
    return v2

    .line 1292
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1294
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1295
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1296
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1297
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1298
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1301
    and-int/lit16 p1, p1, 0x83

    .line 1304
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1305
    const/4 v2, 0x0

    goto :goto_0

    .line 1307
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1310
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioPathNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setFMVolume(I)I
    .locals 9
    .parameter "level"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 1436
    const-string v4, "FmReceiverService"

    const-string v5, "setFMVolume()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/4 v2, 0x0

    .line 1439
    .local v2, returnStatus:I
    const/4 v3, 0x0

    .line 1442
    .local v3, volume:I
    if-ltz p1, :cond_0

    const/16 v4, 0xf

    if-le p1, v4, :cond_2

    .line 1443
    :cond_0
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level is illegal ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const/4 v2, 0x4

    .line 1476
    :cond_1
    :goto_0
    return v2

    .line 1445
    :cond_2
    const/4 v4, 0x2

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v5, :cond_4

    .line 1446
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v8, v4, :cond_3

    .line 1449
    const/4 v2, 0x5

    goto :goto_0

    .line 1451
    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    .line 1454
    :cond_4
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->volume_mapping(I)I

    move-result v3

    .line 1455
    sput v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1457
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1458
    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1459
    const/16 v4, 0xc

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1460
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1461
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1462
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFMVolume ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_5

    .line 1465
    const/4 v2, 0x0

    .line 1472
    :goto_1
    if-eqz v2, :cond_1

    .line 1473
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1467
    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1470
    const-string v4, "FmReceiverService"

    const-string v5, "setFMVolumeNative failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setRdsMode(IIII)I
    .locals 10
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1155
    const/4 v5, 0x0

    .line 1157
    .local v5, returnStatus:I
    const-string v7, "FmReceiverService"

    const-string v8, "setRdsMode()"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    if-ltz p4, :cond_0

    const/16 v7, 0xff

    if-le p4, v7, :cond_2

    .line 1162
    :cond_0
    const/4 v5, 0x4

    .line 1201
    :cond_1
    :goto_0
    return v5

    .line 1163
    :cond_2
    const/4 v7, 0x2

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v7, v8, :cond_3

    .line 1164
    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v5, 0x3

    goto :goto_0

    .line 1167
    :cond_3
    const/4 v7, 0x4

    sput v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1168
    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1170
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1171
    .local v2, msg:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 1172
    const/16 v7, 0x8

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 1173
    iget-object v7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1174
    iget-object v7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1177
    and-int/lit8 p1, p1, 0x3

    .line 1178
    and-int/lit8 p3, p3, 0x1

    .line 1179
    and-int/lit8 p2, p2, 0x7c

    .line 1180
    if-eqz p1, :cond_5

    move v4, v6

    .line 1181
    .local v4, rdsOnNative:Z
    :goto_1
    if-eqz p3, :cond_4

    move v0, v6

    .line 1184
    .local v0, afOnNative:Z
    :cond_4
    and-int/lit8 v3, p1, 0x1

    .line 1188
    .local v3, rdsModeNative:I
    :try_start_0
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_6

    .line 1189
    const/4 v5, 0x0

    .line 1197
    :goto_2
    if-eqz v5, :cond_1

    .line 1198
    iget-object v7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .end local v0           #afOnNative:Z
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :cond_5
    move v4, v0

    .line 1180
    goto :goto_1

    .line 1191
    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    .restart local v4       #rdsOnNative:Z
    :cond_6
    const/4 v5, 0x2

    goto :goto_2

    .line 1193
    :catch_0
    move-exception v1

    .line 1194
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "FmReceiverService"

    const-string v8, "setRdsNative failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    const/4 v5, 0x2

    goto :goto_2
.end method

.method private process_setStepSize(I)I
    .locals 7
    .parameter "stepSize"

    .prologue
    const/4 v6, 0x1

    .line 1340
    const-string v3, "FmReceiverService"

    const-string v4, "setStepSize()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v2, 0x0

    .line 1345
    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    .line 1347
    const/4 v2, 0x4

    .line 1373
    :cond_0
    :goto_0
    return v2

    .line 1348
    :cond_1
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1349
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/4 v2, 0x3

    goto :goto_0

    .line 1352
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1354
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1355
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1356
    const/16 v3, 0xb

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1357
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1358
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1361
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1362
    const/4 v2, 0x0

    .line 1369
    :goto_1
    if-eqz v2, :cond_0

    .line 1370
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1364
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1367
    const-string v3, "FmReceiverService"

    const-string v4, "setScanStepNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setWorldRegion(II)I
    .locals 7
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1505
    const-string v3, "FmReceiverService"

    const-string v4, "setWorldRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/4 v2, 0x0

    .line 1510
    .local v2, returnStatus:I
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    .line 1513
    const/4 v2, 0x4

    .line 1542
    :cond_0
    :goto_0
    return v2

    .line 1514
    :cond_1
    if-eqz p2, :cond_2

    const/16 v3, 0x40

    if-eq p2, v3, :cond_2

    .line 1516
    const/4 v2, 0x4

    goto :goto_0

    .line 1517
    :cond_2
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v5, v3, :cond_3

    .line 1518
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const/4 v2, 0x3

    goto :goto_0

    .line 1521
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1523
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1524
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1525
    const/16 v3, 0xd

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1526
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1527
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1530
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1531
    const/4 v2, 0x0

    .line 1538
    :goto_1
    if-eqz v2, :cond_0

    .line 1539
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1533
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1536
    const-string v3, "FmReceiverService"

    const-string v4, "setRdsNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_tuneRadio(I)I
    .locals 7
    .parameter "freq"

    .prologue
    const/4 v6, 0x1

    .line 846
    const-string v3, "FmReceiverService"

    const-string v4, "tuneRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v2, 0x0

    .line 851
    .local v2, returnStatus:I
    if-lt p1, v6, :cond_0

    const v3, 0x1869f

    if-le p1, v3, :cond_2

    .line 853
    :cond_0
    const/4 v2, 0x4

    .line 879
    :cond_1
    :goto_0
    return v2

    .line 854
    :cond_2
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 855
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v2, 0x3

    goto :goto_0

    .line 858
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 860
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 861
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 862
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 863
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 867
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 868
    const/4 v2, 0x0

    .line 875
    :goto_1
    if-eqz v2, :cond_1

    .line 876
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 870
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 873
    const-string v3, "FmReceiverService"

    const-string v4, "tuneNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_turnOffRadio()I
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 791
    const-string v3, "FmReceiverService"

    const-string v4, "turnOffRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v2, 0x0

    .line 795
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_0

    .line 797
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 799
    :cond_0
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 801
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 802
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 803
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 804
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 808
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 809
    const/4 v2, 0x0

    .line 817
    :goto_0
    if-eqz v2, :cond_1

    .line 818
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    :cond_1
    return v2

    .line 811
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 814
    const-string v3, "FmReceiverService"

    const-string v4, "turnOnRadioNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_turnOnRadio(I)I
    .locals 9
    .parameter "functionalityMask"

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 715
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadio........()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    .line 717
    const/4 v4, 0x0

    .line 718
    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .line 719
    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .line 721
    .local v2, requestedRdsFeatures:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->get_volume_table()V

    .line 724
    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_1

    if-eqz v3, :cond_1

    .line 727
    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v4, 0x4

    .line 771
    :cond_0
    :goto_0
    return v4

    .line 729
    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_2

    .line 731
    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter (2)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x4

    goto :goto_0

    .line 733
    :cond_2
    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v5, :cond_3

    .line 736
    sput v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 738
    invoke-direct {p0, v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_0

    .line 740
    :cond_3
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v7, v5, :cond_4

    .line 742
    const-string v5, "FmReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process_turnOnRadio, STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v4, 0x3

    goto :goto_0

    .line 745
    :cond_4
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    .line 746
    sput v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 748
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 749
    .local v1, msg:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 750
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 751
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 755
    and-int/lit8 p1, p1, 0x73

    .line 758
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    .line 759
    const/4 v4, 0x0

    .line 767
    :goto_1
    if-eqz v4, :cond_0

    .line 768
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 761
    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 765
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadioNative failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    .locals 6
    .parameter "job"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 250
    const-string v2, "FmReceiverService"

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v2, v5, :cond_0

    iget-object v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v2, v3, :cond_0

    .line 254
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_0
    return v0

    .line 257
    :cond_0
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v2, v1, :cond_1

    iget-object v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v2, v3, :cond_1

    .line 259
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_1
    iget-object v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-eq v2, v3, :cond_2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v2, :cond_4

    .line 265
    :cond_2
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 267
    :try_start_0
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****** ****** Adding FM Job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FMQueue.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 269
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    .line 275
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :cond_4
    const-string v0, "FmReceiverService"

    const-string v2, "****** ****** FM is OFF, return STATUS_ILLEGAL_COMMAND... "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 279
    goto :goto_0
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .locals 6
    .parameter "audioMode"

    .prologue
    .line 1950
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1959
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1962
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1959
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1963
    :catch_0
    move-exception v3

    .line 1964
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1968
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1969
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1972
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1973
    return-void

    .line 1967
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 1936
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1937
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1938
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1939
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1940
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1941
    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .locals 6
    .parameter "audioPath"

    .prologue
    .line 1994
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioPathEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2003
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2006
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2003
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2007
    :catch_0
    move-exception v3

    .line 2008
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioPathEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2012
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2013
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2016
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2017
    return-void

    .line 2011
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 1980
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1981
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1982
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1983
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1984
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1985
    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .locals 6
    .parameter "nfl"

    .prologue
    .line 2097
    const-string v4, "FmReceiverService"

    const-string v5, "sendEstimateNflEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2106
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2109
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2106
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2110
    :catch_0
    move-exception v3

    .line 2111
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendEstimateNflEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2115
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2116
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2119
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2120
    return-void

    .line 2114
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 2083
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2084
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2085
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2086
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2087
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2088
    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .locals 6
    .parameter "rssi"

    .prologue
    .line 2139
    const-string v4, "FmReceiverService"

    const-string v5, "sendLiveAudioQualityEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2149
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2152
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2149
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2153
    :catch_0
    move-exception v3

    .line 2154
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendLiveAudioQualityEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2158
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2159
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2162
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .line 2157
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore(I)V
    .locals 2
    .parameter "rssi"

    .prologue
    .line 2126
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2127
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2128
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2129
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2130
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .locals 6
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1905
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsDataEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1916
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1919
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1916
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1920
    :catch_0
    move-exception v3

    .line 1921
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1925
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1926
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1929
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .line 1924
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V
    .locals 2
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1888
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1889
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1890
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1891
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1892
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1893
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1894
    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .locals 6
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    .line 1856
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1867
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1870
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1867
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1871
    :catch_0
    move-exception v3

    .line 1872
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1876
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1877
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1880
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1882
    return-void

    .line 1875
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1830
    const-string v5, "FmReceiverService"

    const-string v6, "sendRdsModeEventCallbackFromLocalStore"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const/4 v2, 0x0

    .line 1832
    .local v2, rds:I
    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v5, :cond_1

    move v0, v3

    .line 1834
    .local v0, af:I
    :goto_0
    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1836
    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v5, :cond_0

    .line 1837
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v5, :cond_2

    move v2, v3

    .line 1839
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1840
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1841
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1842
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1843
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1845
    return-void

    .line 1832
    .end local v0           #af:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #af:I
    :cond_2
    move v2, v4

    .line 1837
    goto :goto_1
.end method

.method private sendSeekCompleteEventCallback(IIZI)V
    .locals 6
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"
    .parameter "iSendNextJob"

    .prologue
    .line 1796
    const-string v4, "FmReceiverService"

    const-string v5, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1808
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1811
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1808
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1812
    :catch_0
    move-exception v3

    .line 1813
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1817
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1818
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1822
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    if-lez p4, :cond_0

    .line 1823
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1824
    :cond_0
    return-void

    .line 1816
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore(Z)V
    .locals 6
    .parameter "SendNextJob"

    .prologue
    const/4 v2, 0x1

    .line 1770
    const/4 v3, 0x2

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1772
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1773
    .local v0, msg:Landroid/os/Message;
    const/16 v3, 0x11

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1774
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZ)V

    .line 1777
    .local v1, search_st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1778
    if-ne p1, v2, :cond_0

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1779
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1781
    return-void

    .line 1778
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 13
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .parameter "iSendNextJob"

    .prologue
    .line 1737
    if-nez p3, :cond_0

    .line 1738
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1743
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 1744
    .local v9, callbacks:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_2

    .line 1747
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1744
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1740
    .end local v9           #callbacks:I
    .end local v12           #i:I
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0

    .line 1751
    .restart local v9       #callbacks:I
    .restart local v12       #i:I
    :catch_0
    move-exception v10

    .line 1752
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1756
    .end local v9           #callbacks:I
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v12           #i:I
    :catch_1
    move-exception v11

    .line 1757
    .local v11, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1760
    .end local v11           #e_i:Ljava/lang/IllegalStateException;
    :goto_3
    if-lez p9, :cond_1

    .line 1761
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1762
    :cond_1
    return-void

    .line 1755
    .restart local v9       #callbacks:I
    .restart local v12       #i:I
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private sendStatusEventCallbackFromLocalStore(Z)V
    .locals 12
    .parameter "SendNextJob"

    .prologue
    const/4 v11, 0x1

    .line 1704
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 1705
    .local v10, msg:Landroid/os/Message;
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1713
    .local v0, status:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
    const/16 v1, 0x10

    iput v1, v10, Landroid/os/Message;->what:I

    .line 1714
    if-ne p1, v11, :cond_0

    move v1, v11

    :goto_0
    iput v1, v10, Landroid/os/Message;->arg1:I

    .line 1715
    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1716
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1717
    return-void

    .line 1714
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendVolumeEventCallback(II)V
    .locals 6
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2188
    const-string v4, "FmReceiverService"

    const-string v5, "sendVolumeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2199
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2202
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2199
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2203
    :catch_0
    move-exception v3

    .line 2204
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendVolumeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2208
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2209
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2212
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2213
    return-void

    .line 2207
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendVolumeEventCallbackFromLocalStore(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2170
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2171
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2172
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2173
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2174
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2175
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2176
    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .locals 6
    .parameter "worldRegion"

    .prologue
    .line 2053
    const-string v4, "FmReceiverService"

    const-string v5, "sendWorldRegionEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2062
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2065
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2062
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2066
    :catch_0
    move-exception v3

    .line 2067
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendWorldRegionEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2071
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2072
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2075
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2076
    return-void

    .line 2070
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 2026
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    packed-switch v1, :pswitch_data_0

    .line 2030
    const/16 v1, 0x222e

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->DEFAULT_FREQUENCY_CODE:I

    .line 2036
    :goto_0
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->DEFAULT_FREQUENCY_CODE:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2039
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2040
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2041
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2042
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2043
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2044
    return-void

    .line 2033
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_0
    const/16 v1, 0x2328

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->DEFAULT_FREQUENCY_CODE:I

    goto :goto_0

    .line 2026
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method

.method private volume_mapping(I)I
    .locals 1
    .parameter "level"

    .prologue
    .line 1430
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volume:[I

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method public checkForPendingResponses()V
    .locals 2

    .prologue
    .line 2219
    const-string v0, "FmReceiverService"

    const-string v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    .line 2221
    return-void
.end method

.method public clearAllQueue()V
    .locals 4

    .prologue
    .line 420
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 421
    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Clearing the queue. Present size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 424
    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    .line 426
    :cond_0
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 2
    .parameter "nflLevel"

    .prologue
    .line 1562
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ESTIMATE_NOISE_FLOOR_LEVEL:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 461
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 462
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 514
    const-string v0, "FmReceiverService"

    const-string v1, "finish(). Cleanup Service here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->clearAllQueue()V

    .line 518
    return-void
.end method

.method public declared-synchronized getIsMute()Z
    .locals 1

    .prologue
    .line 1691
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMonoStereoMode()I
    .locals 1

    .prologue
    .line 1673
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    const-string v0, "FmReceiverService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    .line 434
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized getStatus()I
    .locals 2

    .prologue
    .line 891
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_GET_STATUS:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTunedFrequency()I
    .locals 1

    .prologue
    .line 1682
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 2
    .parameter "mute"

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;Z)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRadioAfJumpEvent(III)V
    .locals 4
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 2342
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2346
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2347
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2348
    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2349
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2352
    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    .line 2389
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2393
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2396
    if-nez p1, :cond_0

    .line 2397
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2398
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 2400
    :cond_0
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    .line 2401
    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 2355
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2364
    if-nez p1, :cond_0

    .line 2365
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 2367
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    .line 2369
    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "path"

    .prologue
    .line 2372
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2381
    if-nez p1, :cond_0

    .line 2382
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 2384
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    .line 2386
    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "time"

    .prologue
    .line 2483
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2489
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2490
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2491
    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .locals 3
    .parameter "status"
    .parameter "muted"

    .prologue
    const/4 v2, 0x1

    .line 2270
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    if-nez p1, :cond_0

    .line 2274
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2284
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2286
    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 2519
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2525
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2528
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 2529
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    .line 2531
    return-void
.end method

.method public onRadioOffEvent(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2247
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const-string v0, "SSD"

    const-string v1, "[ATS][fm_turn_off][complete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 2252
    if-nez p1, :cond_0

    .line 2253
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 2257
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2260
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    .line 2261
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2265
    :cond_1
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2267
    return-void
.end method

.method public onRadioOnEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 2225
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const-string v0, "SSD"

    const-string v1, "[ATS][fm_turn_on][complete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    if-nez p1, :cond_0

    .line 2230
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2237
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    .line 2238
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2242
    :cond_1
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2244
    return-void
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .locals 3
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    .line 2404
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRdsModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    if-nez p1, :cond_0

    .line 2408
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 2409
    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 2410
    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 2411
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", afOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2422
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 2423
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 2427
    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v2, 0x1

    .line 2431
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    if-nez p1, :cond_0

    .line 2435
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 2438
    :cond_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v2, v0, :cond_1

    .line 2443
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2445
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 2446
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 2451
    :goto_0
    return-void

    .line 2449
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_0
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    .line 2454
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    if-nez p1, :cond_0

    .line 2459
    packed-switch p2, :pswitch_data_0

    .line 2478
    :goto_0
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V

    .line 2480
    :cond_0
    return-void

    .line 2461
    :pswitch_1
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_0

    .line 2464
    :pswitch_2
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_0

    .line 2467
    :pswitch_3
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_0

    .line 2470
    :pswitch_4
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_0

    .line 2459
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "region"

    .prologue
    .line 2505
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2513
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 2514
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    .line 2516
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .locals 2
    .parameter "stepSize"

    .prologue
    .line 2494
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2500
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2501
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2502
    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v1, 0x1

    .line 2325
    const-string v0, "FmReceiverService"

    const-string v2, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2334
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2335
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2336
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2337
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2339
    return-void

    .line 2336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRadioSearchEvent(II)V
    .locals 3
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 2310
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2318
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2319
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2320
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2322
    return-void
.end method

.method public onRadioTuneEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 2289
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2300
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2301
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2305
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2307
    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2534
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2542
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallbackFromLocalStore(II)V

    .line 2544
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 2627
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 2628
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 2629
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 2630
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2642
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2632
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    if-eqz p1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 441
    :cond_0
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 6
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_RDS_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 2
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 4

    .prologue
    .line 1109
    monitor-enter p0

    :try_start_0
    const-string v2, "FmReceiverService"

    const-string v3, "seekStationAbort()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v1, 0x3

    .line 1113
    .local v1, returnStatus:I
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1115
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1116
    const/4 v1, 0x0

    .line 1124
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1118
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1121
    :try_start_2
    const-string v2, "FmReceiverService"

    const-string v3, "searchAbortNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1109
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 2
    .parameter "audioMode"

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 2
    .parameter "audioPath"

    .prologue
    .line 1279
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 2
    .parameter "volume"

    .prologue
    .line 1388
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 5
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    const/4 v4, 0x2

    .line 1627
    monitor-enter p0

    const/4 v1, 0x0

    .line 1629
    .local v1, returnStatus:I
    :try_start_0
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    if-eqz p1, :cond_1

    const/16 v2, 0xa

    if-lt p2, v2, :cond_0

    const v2, 0x186a0

    if-le p2, v2, :cond_1

    .line 1634
    :cond_0
    const/4 v1, 0x4

    .line 1655
    :goto_0
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    monitor-exit p0

    return v1

    .line 1635
    :cond_1
    :try_start_1
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v2, :cond_2

    .line 1636
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    const/4 v1, 0x3

    goto :goto_0

    .line 1639
    :cond_2
    const/4 v2, 0x2

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1642
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 1644
    const/4 v1, 0x0

    .line 1652
    :goto_1
    const/4 v2, 0x2

    :try_start_3
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1627
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1646
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1649
    :try_start_4
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 6
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 1149
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_RDS_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 2
    .parameter "stepSize"

    .prologue
    .line 1335
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_STEP_SIZE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 2
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 1499
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_WORLD_REGION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "FmReceiverService"

    const-string v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    monitor-exit p0

    return-void

    .line 470
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->startFM_Loop()V

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .locals 2

    .prologue
    .line 493
    const-string v0, "FmReceiverService"

    const-string v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initLoopNative()V

    .line 495
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    .line 496
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 483
    const-string v0, "FmReceiverService"

    const-string v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "FmReceiverService"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanupLoopNative()V

    .line 504
    return-void
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 2
    .parameter "freq"

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_TUNE_RADIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 2

    .prologue
    .line 786
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 2
    .parameter "functionalityMask"

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_0
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
