.class public Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;
.super Landroid/os/Handler;
.source "HtcDataConnectionPowerSave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$1;,
        Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;,
        Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;
    }
.end annotation


# static fields
.field private static final ALARM_INTENT_EXTRA_FOR_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final ALARM_INTENT_EXTRA_INDEX:Ljava/lang/String; = "Index"

.field private static final EVENT_CHARGING_CHANGE:I = 0x3

.field private static final EVENT_COUNT_DOWN_REACHED:I = 0x2

.field private static final EVENT_SCREEN_STATUS_CHANGE:I = 0x1

.field private static final TAG_Prefix:Ljava/lang/String; = "PowSv"


# instance fields
.field private mAlarmIntentName:Ljava/lang/String;

.field private mChargerIsOn:Z

.field private mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionIsOn:Z

.field private mFunctionPaused:Z

.field private mLogTag:Ljava/lang/String;

.field private mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

.field private mOwnerName:Ljava/lang/String;

.field private mPowerSavingCountingDownConnectionOn:Z

.field private mPowerSavingCountingDownIndex:I

.field private mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

.field private mPowerSavingSupportConnectingPeriod:Z

.field private mPowerSavingWaitingForConnectingMode:Z

.field private mScreenIsOn:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "context"
    .parameter "callBack"
    .parameter "alarmIntentName"
    .parameter "logTag"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    .line 68
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mAlarmIntentName:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    .line 72
    return-void
.end method

.method private cancelCountingDown()V
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 435
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    .line 437
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    .line 438
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    .line 440
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private getPowerSavingSetting()Z
    .locals 2

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, settingOn:Z
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    invoke-interface {v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_SettingOn()Z

    move-result v0

    .line 546
    :cond_0
    return v0
.end method

.method private startCountingDown(Ljava/lang/Boolean;Z)Z
    .locals 8
    .parameter "forceCountingOnOff"
    .parameter "waitingForConnecting"

    .prologue
    const/4 v4, 0x0

    .line 388
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 428
    :goto_0
    return v4

    .line 391
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mAlarmIntentName:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "Connection"

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    .line 394
    const-string v5, "Index"

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    .line 397
    if-eqz p1, :cond_1

    .line 398
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    .line 403
    :goto_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    .line 404
    const-wide/16 v1, 0x0

    .line 405
    .local v1, countDownDelay:J
    if-eqz p2, :cond_3

    .line 406
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v4, :cond_2

    .line 408
    const-wide/32 v1, 0x493e0

    .line 425
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 426
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 428
    const/4 v4, 0x1

    goto :goto_0

    .line 401
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #countDownDelay:J
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    goto :goto_1

    .line 412
    .restart local v1       #countDownDelay:J
    :cond_2
    const-wide/32 v1, 0x1b7740

    goto :goto_2

    .line 416
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v4, :cond_4

    .line 418
    const-wide/32 v1, 0x493e0

    goto :goto_2

    .line 422
    :cond_4
    const-wide/32 v1, 0x1b7740

    goto :goto_2
.end method

.method private timeoutCountingDown(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 444
    const-string v6, "Connection"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 445
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] get unknown timeout - conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string v6, "Connection"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 450
    .local v0, forConnectionOn:Z
    const-string v6, "Index"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 452
    .local v2, requestIndex:I
    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    if-eq v2, v6, :cond_3

    .line 455
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PowSv["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", waiting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pending intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-nez v8, :cond_2

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    monitor-exit p0

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    move v4, v5

    .line 455
    goto :goto_1

    .line 460
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    .line 461
    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIndex:I

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v1

    .line 464
    .local v1, powerSavingSetting:Z
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    if-eqz v6, :cond_7

    move v3, v4

    .line 465
    .local v3, waitingForConnecting:Z
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    .line 466
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v6, :cond_4

    if-nez v1, :cond_9

    .line 468
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v4, v5, :cond_8

    .line 473
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    .line 537
    :cond_6
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .end local v3           #waitingForConnecting:Z
    :cond_7
    move v3, v5

    .line 464
    goto :goto_2

    .line 476
    .restart local v3       #waitingForConnecting:Z
    :cond_8
    if-eqz v1, :cond_6

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] didn\'t reconnect when timeout - conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 484
    :cond_9
    if-eqz v3, :cond_d

    .line 487
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v7, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v6, v7, :cond_6

    .line 490
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v6, :cond_a

    .line 491
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-nez v0, :cond_b

    move v6, v4

    :goto_4
    invoke-interface {v7, v6}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    .line 493
    :cond_a
    new-instance v6, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    :goto_5
    invoke-direct {v6, v4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x1

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    .line 494
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown retry conn - for="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    move v6, v5

    .line 491
    goto :goto_4

    :cond_c
    move v4, v5

    .line 493
    goto :goto_5

    .line 499
    :cond_d
    if-eqz v0, :cond_10

    .line 500
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-eqz v4, :cond_f

    .line 501
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v4, v5, :cond_e

    .line 503
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    .line 504
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown disc - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 508
    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] didn\'t disc when timeout - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 513
    :cond_f
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    .line 514
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown conn - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 519
    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-eqz v4, :cond_11

    .line 520
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    .line 521
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] countdown disc - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 525
    :cond_11
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v4, v5, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v5, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v4, v5, :cond_13

    .line 528
    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    goto/16 :goto_3

    .line 531
    :cond_13
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowSv["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] didn\'t conn when timeout - request="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method private updateChageState(ZZZ)V
    .locals 5
    .parameter "isScreenOn"
    .parameter "isCharging"
    .parameter "isDiabling"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 326
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-eqz v4, :cond_3

    :cond_0
    move v1, v3

    .line 327
    .local v1, previousOn:Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    .line 328
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    .line 329
    iput-boolean p3, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    .line 330
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-eqz v4, :cond_4

    :cond_1
    move v0, v3

    .line 331
    .local v0, currentOn:Z
    :goto_1
    if-ne v1, v0, :cond_5

    .line 332
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] scr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", crg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fun="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    :goto_2
    return-void

    .end local v0           #currentOn:Z
    .end local v1           #previousOn:Z
    :cond_3
    move v1, v2

    .line 326
    goto :goto_0

    .restart local v1       #previousOn:Z
    :cond_4
    move v0, v2

    .line 330
    goto :goto_1

    .line 336
    .restart local v0       #currentOn:Z
    :cond_5
    if-eqz v0, :cond_8

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v2, v4, :cond_7

    .line 345
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;->htcDataConnectionPowerSave_RequestConnection(Z)V

    goto :goto_2

    .line 348
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] didn\'t reconnect when turn on - conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 356
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 357
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-eq v3, v4, :cond_a

    .line 359
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] countdown  - conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 365
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] didn\'t countdown when turn off - request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 370
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowSv["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] didn\'t countdown when turn off - conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 376
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    goto/16 :goto_2
.end method

.method private updateChargingStatus(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isCharging"

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 320
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChageState(ZZZ)V

    .line 322
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateScreenStatus(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isScreenChangeToOn"

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    monitor-enter p0

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChageState(ZZZ)V

    .line 310
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public connectiongPeriodSupport(Z)V
    .locals 1
    .parameter "isSupported"

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eq v0, p1, :cond_0

    .line 253
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    .line 254
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eqz v0, :cond_0

    .line 261
    :cond_0
    monitor-exit p0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disablePowerSaveMode(Z)V
    .locals 2
    .parameter "isSupported"

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-eq v0, p1, :cond_0

    .line 267
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChageState(ZZZ)V

    .line 269
    :cond_0
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mModifyConnection:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$onModifyPowerSaveListener;

    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "PowSv"

    const-string v1, "HtcDataConnectionPowerSave finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public getControlledState()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, underControl:Ljava/lang/Boolean;
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 243
    new-instance v1, Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .end local v0           #underControl:Ljava/lang/Boolean;
    .local v1, underControl:Ljava/lang/Boolean;
    move-object v0, v1

    .line 245
    .end local v1           #underControl:Ljava/lang/Boolean;
    .restart local v0       #underControl:Ljava/lang/Boolean;
    :cond_0
    monitor-exit p0

    .line 246
    return-object v0

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 281
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HtcDataConnectionPowerSave drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 286
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 288
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateScreenStatus(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->timeoutCountingDown(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->updateChargingStatus(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBatteryChangeIntent(Z)V
    .locals 2
    .parameter "isCharging"

    .prologue
    .line 94
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method public onConnectFailOrConnectionBreak()V
    .locals 3

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    .line 210
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingSupportConnectingPeriod:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn when try - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    monitor-exit p0

    .line 233
    return-void

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    .line 219
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] clear & countdown conn when try - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn during try - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onConnectRequest(Z)V
    .locals 3
    .parameter "fromExternal"

    .prologue
    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcDataConnectionPowerSave$ConnectionRequestState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown stop - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    monitor-exit p0

    .line 170
    return-void

    .line 144
    :pswitch_1
    if-eqz p1, :cond_2

    .line 145
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 148
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    .line 152
    :pswitch_2
    if-eqz p1, :cond_0

    .line 153
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    .line 159
    :pswitch_3
    if-eqz p1, :cond_0

    .line 160
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->External:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onConnected()V
    .locals 3

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->None:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    if-ne v0, v1, :cond_0

    .line 176
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->InternalOnly:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown disc when conn - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    monitor-exit p0

    .line 204
    return-void

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown disc when conn dup - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 193
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V

    .line 194
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] clear & countdown disc when conn - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->cancelCountingDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onDisconnectRequest(Z)V
    .locals 3
    .parameter "fromExternal"

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcDataConnectionPowerSave$ConnectionRequestState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mDataConnectionIsOn:Z

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mScreenIsOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mChargerIsOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mFunctionPaused:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->getPowerSavingSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->startCountingDown(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn when request - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    :goto_1
    monitor-exit p0

    .line 138
    return-void

    .line 102
    :pswitch_0
    if-eqz p1, :cond_0

    .line 103
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :pswitch_1
    if-eqz p1, :cond_0

    .line 108
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    .line 115
    :pswitch_2
    if-eqz p1, :cond_0

    .line 116
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;->ExternalDisconnect:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowSv["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] countdown conn when request - request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mConnectionRequestStatus:Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave$ConnectionRequestState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", counting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingCountingDownConnectionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", waiting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->mPowerSavingWaitingForConnectingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReceiveAlarmTimeoutIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 90
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method

.method public onScreenStatusChangeIntent(Z)V
    .locals 2
    .parameter "isScreenChangeToOn"

    .prologue
    .line 86
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataConnectionPowerSave;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method
