.class Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoiceAppUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;
    }
.end annotation


# instance fields
.field private app_map:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

.field private instance:Lcom/htc/server/HtcDeviceInfoManager;

.field private isPhoneCalling:Z

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;-><init>(Lcom/htc/server/HtcDeviceInfoManager$1;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->app_map:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    .line 341
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    .line 328
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->getInstance()Lcom/htc/server/HtcDeviceInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->instance:Lcom/htc/server/HtcDeviceInfoManager;

    .line 329
    return-void
.end method


# virtual methods
.method public declared-synchronized isVoiceInUse()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 333
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 334
    const-string v3, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceInUse, isPhoneCalling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", app_map not empty: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->app_map:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

    invoke-virtual {v2}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-boolean v2, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->app_map:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

    invoke-virtual {v2}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    move v2, v0

    .line 334
    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(II)V
    .locals 4
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->app_map:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->add(II)V

    .line 372
    iget-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_0
    monitor-exit p0

    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPhoneCall()V
    .locals 4

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    .line 361
    iget-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_0
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(II)V
    .locals 8
    .parameter "pid"
    .parameter "type"

    .prologue
    const-wide/16 v6, 0x0

    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->app_map:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

    invoke-virtual {v4, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->remove(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 399
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 401
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 402
    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 403
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->instance:Lcom/htc/server/HtcDeviceInfoManager;

    const-string v5, "stop"

    invoke-virtual {v4, v0, v1, v5}, Lcom/htc/server/HtcDeviceInfoManager;->addDeviceUseTime(JLjava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->instance:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v4, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->setLastDeviceUseUpdateTime(J)V

    .line 405
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v0           #duration:J
    .end local v2           #time:J
    :cond_0
    monitor-exit p0

    return-void

    .line 397
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopAll()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 412
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    .line 413
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->app_map:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;

    invoke-virtual {v4}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->clear()V

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 416
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 419
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 420
    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 421
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->instance:Lcom/htc/server/HtcDeviceInfoManager;

    const-string v5, "stopAll"

    invoke-virtual {v4, v0, v1, v5}, Lcom/htc/server/HtcDeviceInfoManager;->addDeviceUseTime(JLjava/lang/String;)V

    .line 422
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_0
    monitor-exit p0

    return-void

    .line 412
    .end local v0           #duration:J
    .end local v2           #time:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopPhoneCall()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 379
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    if-eqz v4, :cond_0

    .line 380
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isPhoneCalling:Z

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 383
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 385
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 386
    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 387
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->instance:Lcom/htc/server/HtcDeviceInfoManager;

    const-string v5, "stopPhoneCall"

    invoke-virtual {v4, v0, v1, v5}, Lcom/htc/server/HtcDeviceInfoManager;->addDeviceUseTime(JLjava/lang/String;)V

    .line 388
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->instance:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v4, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager;->setLastDeviceUseUpdateTime(J)V

    .line 389
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .end local v0           #duration:J
    .end local v2           #time:J
    :cond_0
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateTime()V
    .locals 8

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 347
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 349
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    iget-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 351
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->instance:Lcom/htc/server/HtcDeviceInfoManager;

    const-string v5, "auto update"

    invoke-virtual {v4, v0, v1, v5}, Lcom/htc/server/HtcDeviceInfoManager;->addDeviceUseTime(JLjava/lang/String;)V

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :cond_0
    monitor-exit p0

    return-void

    .line 346
    .end local v0           #duration:J
    .end local v2           #time:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
