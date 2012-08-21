.class public Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;
.super Ljava/lang/Object;
.source "FmReceiverEventLoop.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverEventLoop"


# instance fields
.field private mService:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->classFmInitNative()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    .line 71
    return-void
.end method

.method private static native classFmInitNative()V
.end method

.method private native cleanupLoopNative()V
.end method

.method private native initLoopNative()V
.end method


# virtual methods
.method public declared-synchronized onRadioAfJumpEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioAfJumpEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioAfJumpEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioAudioDataEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioAudioDataEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioAudioModeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioAudioModeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioAudioPathEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "path"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioAudioPathEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioDeemphEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "time"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioDeemphEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioMuteEvent(IZ)V
    .locals 2
    .parameter "status"
    .parameter "muted"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioMuteEvent(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioNflEstimationEvent(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioNflEstimationEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioOffEvent(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioOffEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioOnEvent(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioOnEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioRdsModeEvent(IZZI)V
    .locals 2
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioRdsModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioRdsModeEvent(IZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioRdsTypeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "rdsType"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioRdsTypeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsUpdateEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioRegionEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "region"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioRegionEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioScanStepEvent(I)V
    .locals 2
    .parameter "stepSize"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioScanStepEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioSearchCompleteEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioSearchCompleteEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioSearchEvent(II)V
    .locals 2
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioSearchEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioTuneEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioTuneEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRadioVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onRadioVolumeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->initLoopNative()V

    .line 78
    return-void
.end method

.method public stopFM_Loop()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->cleanupLoopNative()V

    .line 86
    return-void
.end method
