.class public final Lcom/broadcom/bt/service/fm/FmTransmitterService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmTransmitterService$2;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static FMTX_Queue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;",
            ">;"
        }
    .end annotation
.end field

.field private static final FMTX_STATE_BUSY:I = 0x4

.field private static final FMTX_STATE_OFF:I = 0x0

.field private static final FMTX_STATE_READY_FOR_COMMAND:I = 0x2

.field private static final FMTX_STATE_STARTING:I = 0x1

.field private static final FMTX_STATE_STOPPING:I = 0x3

.field private static final FM_TRANSMITTER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_TRANSMITTER"

.field private static final OPERATION_FMTX_ABORT_SEARCH:I = 0x10

.field private static final OPERATION_FMTX_BCHNL_EVT:I = 0x25

.field private static final OPERATION_FMTX_CFG_EVT:I = 0x22

.field private static final OPERATION_FMTX_CHIRP_EVT:I = 0x26

.field private static final OPERATION_FMTX_DISABLE:I = 0x3

.field private static final OPERATION_FMTX_DISABLE_EVT:I = 0x1f

.field private static final OPERATION_FMTX_ENABLE:I = 0x2

.field private static final OPERATION_FMTX_ENABLE_EVT:I = 0x1e

.field private static final OPERATION_FMTX_INTF_EVT:I = 0x24

.field private static final OPERATION_FMTX_INTF_NOTIF:I = 0xe

.field private static final OPERATION_FMTX_MUTE_EVT:I = 0x23

.field private static final OPERATION_FMTX_POWER_EVT:I = 0x20

.field private static final OPERATION_FMTX_SEARCH_BEST_CHANS:I = 0xf

.field private static final OPERATION_FMTX_SET_AUDIO_MODE:I = 0x7

.field private static final OPERATION_FMTX_SET_AUDIO_PATH:I = 0xc

.field private static final OPERATION_FMTX_SET_BANDWIDTH:I = 0xa

.field private static final OPERATION_FMTX_SET_FREQ_EVT:I = 0x21

.field private static final OPERATION_FMTX_SET_MUTE_AUDIO:I = 0xd

.field private static final OPERATION_FMTX_SET_PREEMPHASIS:I = 0xb

.field private static final OPERATION_FMTX_SET_REGION:I = 0x9

.field private static final OPERATION_FMTX_SET_TXFREQ:I = 0x5

.field private static final OPERATION_FMTX_SET_TXPWR_LEVEL:I = 0x6

.field private static final OPERATION_FMTX_SET_VOLUME:I = 0x8

.field private static final OPERATION_FMTX_START_AUDIO_CHIRP:I = 0x11

.field private static final OPERATION_FMTX_STATUS_EVT:I = 0x20

.field private static final OPERATION_FMTX_STOP_AUDIO_CHIRP:I = 0x12

.field private static final OPERATION_FMTX_TIMEOUT:I = 0x1

.field private static final OPERATION_FMTX_TIMEOUT_GENERIC:I = 0x1388

.field private static final OPERATION_FMTX_TIMEOUT_SEARCH:I = 0x4e20

.field private static final OPERATION_FMTX_TIMEOUT_SHUTDOWN:I = 0x4e20

.field private static final OPERATION_FMTX_TIMEOUT_STARTUP:I = 0x4e20

.field private static final OPERATION_FMTX_TXPOWER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FmTransmitterService"

.field private static final V:Z = true

.field private static radio_state:I


# instance fields
.field private current_CMD:I

.field private m_bpowerOn:Z

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_iSaveFreq:I

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 237
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    .line 426
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->classFmTxInitNative()V

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 107
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 108
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    .line 611
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    .line 433
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initializeStateMachine()V

    .line 434
    return-void
.end method

.method private HandleStatusTimeOut(I)V
    .locals 6
    .parameter "Cmd"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 530
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 531
    packed-switch p1, :pswitch_data_0

    .line 602
    :pswitch_0
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMEOUT Handling UNKNOWN CALLBACK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void

    .line 534
    :pswitch_1
    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 535
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterEnabledEventFromLocal(I)V

    goto :goto_0

    .line 541
    :pswitch_2
    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 542
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterDisabledEventFromLocal(I)V

    goto :goto_0

    .line 547
    :pswitch_3
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    invoke-direct {p0, v3, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxFrequencyEventFromLocal(II)V

    goto :goto_0

    .line 551
    :pswitch_4
    iget-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    invoke-direct {p0, v3, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxPowerEventFromLocal(IZ)V

    goto :goto_0

    .line 556
    :pswitch_5
    new-array v0, v4, [I

    .line 557
    .local v0, freq:[I
    new-array v1, v4, [I

    .line 559
    .local v1, rssi:[I
    aput v2, v0, v2

    aput v2, v1, v2

    .line 560
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onBestChannelEventFromLocal(II[I[I)V

    goto :goto_0

    .line 565
    .end local v0           #freq:[I
    .end local v1           #rssi:[I
    :pswitch_6
    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 569
    :pswitch_7
    invoke-direct {p0, v4, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 573
    :pswitch_8
    invoke-direct {p0, v5, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 577
    :pswitch_9
    invoke-direct {p0, v5, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 581
    :pswitch_a
    invoke-direct {p0, v3, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 585
    :pswitch_b
    const/4 v2, 0x5

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 589
    :pswitch_c
    const/4 v2, 0x6

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 593
    :pswitch_d
    const/4 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 598
    :pswitch_e
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private native abortScanForBestChannelNative()Z
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->logTimeOut(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->HandleStatusTimeOut(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onChannelStatusEventFromLocal(III)V

    return-void
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onBestChannelEventFromLocal(II[I[I)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterEnabledEventFromLocal(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterDisabledEventFromLocal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/fm/FmTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/service/fm/FmTransmitterService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxPowerEventFromLocal(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxFrequencyEventFromLocal(II)V

    return-void
.end method

.method private static native classFmTxInitNative()V
.end method

.method private cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    .locals 9
    .parameter "job"

    .prologue
    const-wide/16 v7, 0x0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 244
    .local v2, now:J
    sget-object v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;>;"
    if-eqz p1, :cond_3

    .line 246
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .line 250
    .local v0, existingJob:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    if-ne v4, v5, :cond_1

    .line 251
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_2

    .line 252
    const-string v4, "FmTransmitterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed because of a FMTX off request. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ABORT_SEARCH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    if-ne v4, v5, :cond_2

    .line 258
    const-string v4, "FmTransmitterService"

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

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 263
    :cond_2
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 264
    const-string v4, "FmTransmitterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****** ***** Sent. So remove Job:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 270
    .end local v0           #existingJob:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_3
    return-void
.end method

.method private native cleanupLoopNative()V
.end method

.method private native disableNative()Z
.end method

.method private native enableNative()Z
.end method

.method private fetchNextJob()V
    .locals 5

    .prologue
    .line 391
    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 392
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .line 393
    .local v0, job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    if-nez v0, :cond_0

    .line 394
    monitor-exit v2

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v1, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing FMTX job:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V

    .line 398
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 400
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommands()V

    .line 401
    monitor-exit v2

    goto :goto_0

    .end local v0           #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 483
    return-void
.end method

.method private logTimeOut(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 487
    packed-switch p1, :pswitch_data_0

    .line 523
    const-string v0, "FmTransmitterService"

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

    .line 525
    :goto_0
    return-void

    .line 489
    :pswitch_0
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :pswitch_1
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :pswitch_2
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_TXPOWER"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :pswitch_3
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_TXFREQ"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :pswitch_4
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_TXPWR_LEVEL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :pswitch_5
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_AUDIO_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :pswitch_6
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_VOLUME"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :pswitch_7
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_REGION"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :pswitch_8
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_BANDWIDTH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :pswitch_9
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_PREEMPHASIS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :pswitch_a
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_AUDIO_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :pswitch_b
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_MUTE_AUDIO"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :pswitch_c
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_INTF_NOTIF"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    :pswitch_d
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SEARCH_BEST_CHANS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :pswitch_e
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_ABORT_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :pswitch_f
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_START_AUDIO_CHIRP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :pswitch_10
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_STOP_AUDIO_CHIRP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 487
    nop

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
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private native muteAudioNative(I)Z
.end method

.method private onBestChannelEventFromLocal(II[I[I)V
    .locals 5
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    .line 1750
    const-string v3, "FmTransmitterService"

    const-string v4, "onBestChannelEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1765
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1768
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onBestChannelEvent(II[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1769
    :catch_0
    move-exception v1

    .line 1770
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1773
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1775
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1776
    return-void
.end method

.method private onChannelStatusEventFromLocal(III)V
    .locals 5
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    .line 1803
    const-string v3, "FmTransmitterService"

    const-string v4, "onChannelStatusEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1817
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1820
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onChannelStatusEvent(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1822
    :catch_0
    move-exception v1

    .line 1823
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1826
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1828
    return-void
.end method

.method private onFmTransmitterDisabledEventFromLocal(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 1546
    const-string v3, "FmTransmitterService"

    const-string v4, "onFmTransmitterDisabledEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 1551
    if-nez p1, :cond_0

    .line 1553
    const/4 v3, 0x0

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 1563
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1564
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1567
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterDisabledEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1568
    :catch_0
    move-exception v1

    .line 1569
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1572
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1574
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1575
    return-void
.end method

.method private onFmTransmitterEnabledEventFromLocal(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 1507
    const-string v3, "FmTransmitterService"

    const-string v4, "onFmTransmitterEnabledEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    if-nez p1, :cond_0

    .line 1511
    const/4 v3, 0x1

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 1520
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1521
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1524
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterEnabledEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    :catch_0
    move-exception v1

    .line 1526
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1529
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1531
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1532
    return-void
.end method

.method private onSetTxFrequencyEventFromLocal(II)V
    .locals 5
    .parameter "status"
    .parameter "frequency"

    .prologue
    .line 1650
    const-string v3, "FmTransmitterService"

    const-string v4, "onSetTxFrequencyEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1663
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1666
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxFrequencyEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1667
    :catch_0
    move-exception v1

    .line 1668
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1671
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1673
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1674
    return-void
.end method

.method private onSetTxPowerEventFromLocal(IZ)V
    .locals 5
    .parameter "status"
    .parameter "powerOn"

    .prologue
    .line 1698
    const-string v3, "FmTransmitterService"

    const-string v4, "onSetTxPowerEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1710
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1713
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxPowerEvent(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1714
    :catch_0
    move-exception v1

    .line 1715
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1718
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1720
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1721
    return-void
.end method

.method private onStatusEventFromLocal(II)V
    .locals 6
    .parameter "type"
    .parameter "status"

    .prologue
    .line 1604
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStatusEventFromLocal: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1616
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1619
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onStatusEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1620
    :catch_0
    move-exception v1

    .line 1621
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1624
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1626
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1627
    return-void
.end method

.method private processCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)Z
    .locals 11
    .parameter "job"

    .prologue
    .line 291
    const/4 v10, 0x0

    .line 293
    .local v10, successful:I
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    .line 295
    iget-wide v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    .line 297
    const-string v0, "FmTransmitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** ***** process FMTX Command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    iget-object v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 353
    const-string v0, "FmTransmitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** ***** unknown command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v10, 0x5

    .line 358
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 300
    :pswitch_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_enableFmTransmitter()I

    move-result v10

    .line 301
    goto :goto_0

    .line 303
    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_disableFmTransmitter()I

    move-result v10

    .line 304
    goto :goto_0

    .line 306
    :pswitch_2
    iget-boolean v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setTxPower(Z)I

    move-result v10

    .line 307
    goto :goto_0

    .line 309
    :pswitch_3
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setTxFrequency(I)I

    move-result v10

    .line 310
    goto :goto_0

    .line 312
    :pswitch_4
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setPwrLevel(I)I

    move-result v10

    .line 313
    goto :goto_0

    .line 315
    :pswitch_5
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setAudioMode(I)I

    move-result v10

    .line 316
    goto :goto_0

    .line 318
    :pswitch_6
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setVolume(I)I

    move-result v10

    .line 319
    goto :goto_0

    .line 321
    :pswitch_7
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setRegion(I)I

    move-result v10

    .line 322
    goto :goto_0

    .line 324
    :pswitch_8
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setBandwidth(I)I

    move-result v10

    .line 325
    goto :goto_0

    .line 327
    :pswitch_9
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setPreemphasis(I)I

    move-result v10

    .line 328
    goto :goto_0

    .line 330
    :pswitch_a
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setAudioPath(I)I

    move-result v10

    .line 331
    goto :goto_0

    .line 333
    :pswitch_b
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_muteAudio(I)I

    move-result v10

    .line 334
    goto :goto_0

    .line 336
    :pswitch_c
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setInterferenceNotif(I)I

    move-result v10

    .line 337
    goto :goto_0

    .line 339
    :pswitch_d
    const/16 v0, 0xf

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    .line 340
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    iget-boolean v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_scanForBestChannel(IZ)I

    move-result v10

    .line 341
    goto :goto_0

    .line 347
    :pswitch_e
    iget-boolean v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    iget v2, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg4:I

    iget v6, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg5:I

    iget v7, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg6:I

    iget v8, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg7:I

    iget v9, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg8:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_startAudioChirp(ZIIIIIIII)I

    move-result v10

    .line 348
    goto :goto_0

    .line 350
    :pswitch_f
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_stopAudioChirp()I

    move-result v10

    .line 351
    goto/16 :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 298
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
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private processCommands()V
    .locals 5

    .prologue
    .line 368
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** process FMTX_Commands:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .line 374
    .local v1, job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    .end local v1           #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_0
    return-void

    .line 384
    .restart local v1       #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private process_disableFmTransmitter()I
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 721
    const-string v3, "FmTransmitterService"

    const-string v4, "process_disableFmTransmitter()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/4 v2, 0x5

    .line 725
    .local v2, returnStatus:I
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 728
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 729
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 730
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 732
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 733
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 736
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->disableNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    const/4 v2, 0x0

    .line 743
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 744
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    :cond_1
    iput-boolean v7, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 750
    sput v7, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 752
    return v2

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 740
    const-string v3, "FmTransmitterService"

    const-string v4, "disableFmTransmitter failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_enableFmTransmitter()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 671
    const-string v3, "FmTransmitterService"

    const-string v4, "process_enableFmTransmitter()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    .line 674
    const/4 v2, 0x5

    .line 676
    .local v2, returnStatus:I
    sput v6, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 679
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 680
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 681
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 683
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 687
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->enableNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    const/4 v2, 0x0

    .line 695
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 696
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    :cond_1
    return v2

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 691
    const-string v3, "FmTransmitterService"

    const-string v4, "enableFmTransmitter failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_muteAudio(I)I
    .locals 7
    .parameter "mute"

    .prologue
    const/4 v6, 0x1

    .line 1205
    const-string v3, "FmTransmitterService"

    const-string v4, "process_muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v2, 0x5

    .line 1209
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1210
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v2, 0x3

    .line 1233
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1234
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    :cond_1
    return v2

    .line 1214
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1217
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1218
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1219
    const/16 v3, 0xd

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1221
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1222
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1225
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->muteAudioNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    const/4 v2, 0x0

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1229
    const-string v3, "FmTransmitterService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_scanForBestChannel(IZ)I
    .locals 7
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    const/4 v6, 0x1

    .line 1294
    const-string v3, "FmTransmitterService"

    const-string v4, "process_scanForBestChannel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const/4 v2, 0x5

    .line 1298
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1299
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v2, 0x3

    .line 1322
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1323
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1325
    :cond_1
    return v2

    .line 1303
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1306
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1307
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1308
    const/16 v3, 0xf

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1310
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1314
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->scanForBestChannelNative(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1315
    const/4 v2, 0x0

    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1318
    const-string v3, "FmTransmitterService"

    const-string v4, "scanForBestChannel failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setAudioMode(I)I
    .locals 7
    .parameter "audioMode"

    .prologue
    const/4 v6, 0x1

    .line 926
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v2, 0x5

    .line 931
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 932
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x3

    .line 955
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 956
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    :cond_1
    return v2

    .line 936
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 939
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 940
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 941
    const/4 v3, 0x7

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 943
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 947
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioModeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    const/4 v2, 0x0

    goto :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 951
    const-string v3, "FmTransmitterService"

    const-string v4, "setAudioMode failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setAudioPath(I)I
    .locals 7
    .parameter "audioPath"

    .prologue
    const/4 v6, 0x1

    .line 1159
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setAudioPath()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v2, 0x5

    .line 1163
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1164
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v2, 0x3

    .line 1187
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1188
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1190
    :cond_1
    return v2

    .line 1168
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1171
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1172
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1173
    const/16 v3, 0xc

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1175
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1176
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1179
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioPathNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1180
    const/4 v2, 0x0

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1183
    const-string v3, "FmTransmitterService"

    const-string v4, "setAudioPath failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setBandwidth(I)I
    .locals 7
    .parameter "bandwidth"

    .prologue
    const/4 v6, 0x1

    .line 1065
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setBandwidth()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v2, 0x5

    .line 1069
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1070
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v2, 0x3

    .line 1093
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1094
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1096
    :cond_1
    return v2

    .line 1074
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1077
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1078
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1079
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1081
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1085
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setBandwidthNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1086
    const/4 v2, 0x0

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1089
    const-string v3, "FmTransmitterService"

    const-string v4, "setBandwidth failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setInterferenceNotif(I)I
    .locals 6
    .parameter "notifBitmask"

    .prologue
    const/4 v5, 0x2

    .line 1251
    const-string v2, "FmTransmitterService"

    const-string v3, "process_setInterferenceNotif()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v1, 0x5

    .line 1255
    .local v1, returnStatus:I
    sget v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v5, v2, :cond_1

    .line 1256
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v1, 0x3

    .line 1272
    :cond_0
    :goto_0
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1275
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process_setInterferenceNotif() return ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1279
    return v1

    .line 1260
    :cond_1
    const/4 v2, 0x4

    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1264
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setInterferenceNotifNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1265
    const/4 v1, 0x0

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 1268
    const-string v2, "FmTransmitterService"

    const-string v3, "setInterferenceNotif failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setPreemphasis(I)I
    .locals 7
    .parameter "preemph"

    .prologue
    const/4 v6, 0x1

    .line 1111
    const-string v3, "FmTransmitterService"

    const-string v4, "setPreemphasis()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v2, 0x5

    .line 1116
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1117
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v2, 0x3

    .line 1140
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1141
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1143
    :cond_1
    return v2

    .line 1121
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1124
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1125
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1126
    const/16 v3, 0xb

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1128
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1132
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPreemphasisNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1133
    const/4 v2, 0x0

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1136
    const-string v3, "FmTransmitterService"

    const-string v4, "setPreemphasis failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setPwrLevel(I)I
    .locals 7
    .parameter "dbGain"

    .prologue
    const/4 v6, 0x1

    .line 874
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setPwrLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v2, 0x5

    .line 879
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 880
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v2, 0x3

    .line 903
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 904
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    :cond_1
    return v2

    .line 884
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 887
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 888
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 889
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 891
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 895
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPwrLevelNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 896
    const/4 v2, 0x0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 899
    const-string v3, "FmTransmitterService"

    const-string v4, "setPwrLevel failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setRegion(I)I
    .locals 7
    .parameter "region"

    .prologue
    const/4 v6, 0x1

    .line 1019
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v2, 0x5

    .line 1023
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1024
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v2, 0x3

    .line 1047
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1048
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    :cond_1
    return v2

    .line 1028
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1031
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1032
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1033
    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1035
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1036
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1039
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setRegionNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1040
    const/4 v2, 0x0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1043
    const-string v3, "FmTransmitterService"

    const-string v4, "setRegion failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setTxFrequency(I)I
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    .line 828
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setTxFrequency()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v2, 0x5

    .line 832
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 833
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v2, 0x3

    .line 856
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 857
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 859
    :cond_1
    return v2

    .line 837
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 840
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 841
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 842
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 843
    iput p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    .line 844
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 845
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 848
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxFrequencyNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    const/4 v2, 0x0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 852
    const-string v3, "FmTransmitterService"

    const-string v4, "setTxFrequency failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setTxPower(Z)I
    .locals 8
    .parameter "powerOn"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 769
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setTxPower()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v2, 0x5

    .line 774
    .local v2, returnStatus:I
    sget v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v7, v3, :cond_1

    .line 775
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v2, 0x3

    .line 812
    :cond_0
    :goto_0
    return v2

    .line 777
    :cond_1
    iget-boolean v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    if-ne v3, p1, :cond_2

    .line 779
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    sput v7, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 781
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 782
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 783
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 784
    iput-boolean p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 786
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 791
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 794
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 795
    .restart local v1       #msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 796
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 798
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 799
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 802
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxPowerNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 803
    const/4 v2, 0x0

    .line 809
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 810
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 806
    const-string v3, "FmTransmitterService"

    const-string v4, "setTxPower failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setVolume(I)I
    .locals 7
    .parameter "volume"

    .prologue
    const/4 v6, 0x1

    .line 973
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setVolume()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v2, 0x5

    .line 977
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 978
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v2, 0x3

    .line 1001
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1002
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1004
    :cond_1
    return v2

    .line 982
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 985
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 986
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 987
    const/16 v3, 0x8

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 989
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 990
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 993
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setVolumeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 994
    const/4 v2, 0x0

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 997
    const-string v3, "FmTransmitterService"

    const-string v4, "setVolume failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_startAudioChirp(ZIIIIIIII)I
    .locals 6
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    .line 1367
    const-string v3, "FmTransmitterService"

    const-string v4, "process_startAudioChirp()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v2, 0x5

    .line 1371
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 1372
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v2, 0x3

    .line 1396
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1398
    return v2

    .line 1376
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1379
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1380
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1381
    const/16 v3, 0x11

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1383
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1384
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1387
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startAudioChirpNative(ZIIIIIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1389
    const/4 v2, 0x0

    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1392
    const-string v3, "FmTransmitterService"

    const-string v4, "startAudioChirp failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_stopAudioChirp()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1414
    const-string v3, "FmTransmitterService"

    const-string v4, "process_stopAudioChirp()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/4 v2, 0x5

    .line 1418
    .local v2, returnStatus:I
    sget v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v7, v3, :cond_1

    .line 1419
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v2, 0x3

    .line 1441
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1442
    sput v7, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1444
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1445
    return v2

    .line 1423
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1427
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1428
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1430
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1434
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopAudioChirpNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1435
    const/4 v2, 0x0

    goto :goto_0

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1438
    const-string v3, "FmTransmitterService"

    const-string v4, "stopAudioChirpNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    .locals 4
    .parameter "job"

    .prologue
    .line 274
    const-string v0, "FmTransmitterService"

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 278
    :try_start_0
    const-string v0, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** ****** Adding FMTX Job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V

    .line 280
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommands()V

    .line 286
    :cond_0
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native scanForBestChannelNative(IZ)Z
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setBandwidthNative(I)Z
.end method

.method private native setInterferenceNotifNative(I)Z
.end method

.method private native setPreemphasisNative(I)Z
.end method

.method private native setPwrLevelNative(I)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setTxFrequencyNative(I)Z
.end method

.method private native setTxPowerNative(Z)Z
.end method

.method private native setVolumeNative(I)Z
.end method

.method private native startAudioChirpNative(ZIIIIIIII)Z
.end method

.method private startFM_Loop()V
    .locals 2

    .prologue
    .line 459
    const-string v0, "FmTransmitterService"

    const-string v1, "startFmTransmit_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initLoopNative()V

    .line 462
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initNativeDataNative()V

    .line 463
    return-void
.end method

.method private native stopAudioChirpNative()Z
.end method

.method private stopFM_Loop()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "FmTransmitterService"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanupLoopNative()V

    .line 470
    return-void
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .locals 4

    .prologue
    .line 1341
    monitor-enter p0

    :try_start_0
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v1, 0x5

    .line 1345
    .local v1, returnStatus:I
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 1348
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->abortScanForBestChannelNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1349
    const/4 v1, 0x0

    .line 1355
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 1352
    :try_start_2
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1341
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disableFmTransmitter()I
    .locals 2

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFmTransmitter()I
    .locals 3

    .prologue
    .line 704
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "FmTransmitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    const/4 v0, 0x6

    .line 711
    :goto_0
    monitor-exit p0

    return v0

    .line 710
    :cond_0
    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ON:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    const/4 v0, 0x0

    goto :goto_0

    .line 704
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
    .line 437
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    .line 438
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 439
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 476
    const-string v0, "FmTransmitterService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v0, "bluetooth_fm_transmitter_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    .line 410
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized muteAudio(I)I
    .locals 2
    .parameter "mute"

    .prologue
    .line 1242
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBestChannelEvent(II[I[I)V
    .locals 7
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    .line 1736
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V

    .line 1738
    .local v0, st:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1739
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1740
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 1742
    .local v6, msg:Landroid/os/Message;
    const/16 v1, 0x25

    iput v1, v6, Landroid/os/Message;->what:I

    .line 1743
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1745
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1746
    return-void
.end method

.method public onChannelStatusEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    .line 1791
    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V

    .line 1793
    .local v1, st:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1795
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x24

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1796
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1798
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1799
    return-void
.end method

.method public onFmTransmitterDisabledEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1536
    const/4 v1, 0x0

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1537
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1538
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1539
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1541
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1542
    return-void
.end method

.method public onFmTransmitterEnabledEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1498
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1499
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1500
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1502
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1503
    return-void
.end method

.method public onSetTxFrequencyEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "frequency"

    .prologue
    .line 1638
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1639
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1640
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1641
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1642
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1643
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1645
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1646
    return-void
.end method

.method public onSetTxPowerEvent(IZ)V
    .locals 3
    .parameter "status"
    .parameter "powerOn"

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1687
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1688
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1689
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1690
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1691
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 1693
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1694
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 1831
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 1832
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 1833
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 1834
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1836
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStatusEvent(II)V
    .locals 3
    .parameter "type"
    .parameter "status"

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1593
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1594
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1595
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1596
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1597
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1599
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1600
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    if-eqz p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 417
    :cond_0
    return-void
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .locals 2
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 1331
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SEARCH_BEST_CHANS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;IZ)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 2
    .parameter "audioMode"

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 2
    .parameter "audioPath"

    .prologue
    .line 1196
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBandwidth(I)I
    .locals 2
    .parameter "bandwidth"

    .prologue
    .line 1102
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_BANDWIDTH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .locals 2
    .parameter "notifBitmask"

    .prologue
    .line 1285
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_INTF_NOTIF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreemphasis(I)I
    .locals 2
    .parameter "preemph"

    .prologue
    .line 1150
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_PREEMPHASIS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPwrLevel(I)I
    .locals 3
    .parameter "dbGain"

    .prologue
    .line 912
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPWR_LEVEL:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegion(I)I
    .locals 2
    .parameter "region"

    .prologue
    .line 1056
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_REGION:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxFrequency(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    .line 865
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXFREQ:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxPower(Z)I
    .locals 2
    .parameter "powerOn"

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPOWER:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;Z)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVolume(I)I
    .locals 2
    .parameter "volume"

    .prologue
    .line 1010
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitterService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startFM_Loop()V

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .locals 11
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    .line 1405
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_START_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;ZIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitterService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .locals 2

    .prologue
    .line 1452
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_STOP_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
