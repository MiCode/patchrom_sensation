.class public Lcom/android/camera/SensorHandler;
.super Ljava/lang/Object;
.source "SensorHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SensorHandler$2;,
        Lcom/android/camera/SensorHandler$STATE;
    }
.end annotation


# static fields
.field private static final FOCUS_FILE_PATH:Ljava/lang/String; = "/data/.sc_msg"

.field private static HANDSHAKE_THRESHOLD:F = 0.0f

.field private static final NEED_CHECK_SCENE_CHANGE:Z = false

.field private static RESTART_CHECK_DURATION:J = 0x0L

.field private static SENSOR_UNSTABLE_THRESHOLD:F = 0.0f

.field public static STABLE_PERIOD:J = 0x0L

.field private static STABLE_THRESHOLD:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "SensorHandler"

.field private static TOUCH_UNSTABLE_THRESHOLD:F

.field private static UNSTABLE_THRESHOLD:F

.field private static mIsRegistered:Z

.field private static mfocuFile:Ljava/io/File;


# instance fields
.field private isMovement:[Z

.field private mCurrentState:Lcom/android/camera/SensorHandler$STATE;

.field private mCurrentValue:[F

.field private mFileObserver:Landroid/os/FileObserver;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mHandShakeStableTime:I

.field private mHandShakeValue:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStableValue:[F

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 32
    const v0, 0x3dcccccd

    sput v0, Lcom/android/camera/SensorHandler;->STABLE_THRESHOLD:F

    .line 35
    sput v1, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    .line 38
    sput v1, Lcom/android/camera/SensorHandler;->SENSOR_UNSTABLE_THRESHOLD:F

    .line 40
    const v0, 0x3f4ccccd

    sput v0, Lcom/android/camera/SensorHandler;->TOUCH_UNSTABLE_THRESHOLD:F

    .line 43
    const v0, 0x3e4ccccd

    sput v0, Lcom/android/camera/SensorHandler;->HANDSHAKE_THRESHOLD:F

    .line 50
    const-wide/16 v0, 0xbe

    sput-wide v0, Lcom/android/camera/SensorHandler;->STABLE_PERIOD:J

    .line 52
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/android/camera/SensorHandler;->RESTART_CHECK_DURATION:J

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/SensorHandler;->mfocuFile:Ljava/io/File;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "camera"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 27
    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    .line 29
    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->NON_STABLE:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    .line 56
    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    .line 58
    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    .line 60
    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    .line 62
    iput v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    .line 68
    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    .line 77
    iput-object p1, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 78
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    sput-boolean v2, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    .line 81
    return-void

    .line 74
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private checkHandShake([F)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 356
    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    if-nez v2, :cond_0

    .line 357
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setHandShakeValue([F)V

    .line 384
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 362
    .local v0, IsChanged:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    aget v2, v2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/android/camera/SensorHandler;->HANDSHAKE_THRESHOLD:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 364
    const/4 v0, 0x1

    .line 368
    :cond_1
    if-eqz v0, :cond_5

    .line 369
    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/BooleanEvent;

    const-string v4, "SensorValue.RotateChanged"

    invoke-direct {v3, v4, v0}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 371
    :cond_2
    iput v5, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    .line 383
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setHandShakeValue([F)V

    goto :goto_0

    .line 362
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    :cond_5
    iget v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    .line 376
    iget v2, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    .line 377
    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_6

    .line 378
    iget-object v2, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/BooleanEvent;

    const-string v4, "SensorValue.RotateChanged"

    invoke-direct {v3, v4, v0}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 379
    :cond_6
    iput v5, p0, Lcom/android/camera/SensorHandler;->mHandShakeStableTime:I

    goto :goto_2
.end method

.method private checkSensorFocus([F)V
    .locals 5
    .parameter "values"

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x1f

    .line 211
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setCurrenValue([F)V

    .line 212
    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->CHECK_SENSOR:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    .line 213
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 214
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_0

    .line 218
    const-string v0, "SensorHandler"

    const-string v1, "checkSensorFocus() - mHTCCamera == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    sget-wide v1, Lcom/android/camera/SensorHandler;->STABLE_PERIOD:J

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    sget-wide v1, Lcom/android/camera/SensorHandler;->RESTART_CHECK_DURATION:J

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method private checkSensorState([F)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    .line 152
    sget-object v0, Lcom/android/camera/SensorHandler$2;->$SwitchMap$com$android$camera$SensorHandler$STATE:[I

    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    invoke-virtual {v1}, Lcom/android/camera/SensorHandler$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    const-string v0, "SensorHandler"

    const-string v1, "checkStableState() - unknow state !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 155
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    goto :goto_0

    .line 159
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkifChange([F)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkifChange([F)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setCurrenValue([F)V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setStableValue([F)V

    goto :goto_0

    .line 176
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkifChange([F)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    .line 178
    invoke-direct {p0}, Lcom/android/camera/SensorHandler;->restartUnstableState()V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkifChange([F)Z
    .locals 5
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 388
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    if-nez v3, :cond_1

    .line 389
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setCurrenValue([F)V

    .line 433
    :cond_0
    :goto_0
    return v1

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    if-nez v3, :cond_2

    .line 395
    invoke-direct {p0, p1}, Lcom/android/camera/SensorHandler;->setStableValue([F)V

    goto :goto_0

    .line 412
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 416
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/camera/SensorHandler;->STABLE_THRESHOLD:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_4

    .line 418
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aput-boolean v1, v3, v0

    .line 420
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    aget v4, p1, v0

    aput v4, v3, v0

    .line 412
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_4
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 426
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    aget v4, p1, v0

    aput v4, v3, v0

    .line 427
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aput-boolean v2, v3, v0

    .line 428
    invoke-virtual {p0, v1}, Lcom/android/camera/SensorHandler;->setTouchThreshold(Z)V

    goto :goto_2

    .line 433
    :cond_5
    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public static createFocusFile()V
    .locals 2

    .prologue
    .line 528
    const-string v0, "SensorHandler"

    const-string v1, "createFocusFile() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public static deleteFocusFile()V
    .locals 2

    .prologue
    .line 561
    const-string v0, "SensorHandler"

    const-string v1, "deleteFocusFile() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private releaseFileObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    const-string v1, "SensorHandler"

    const-string v2, "releaseFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_0

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    iput-object v3, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    .line 523
    :cond_0
    :goto_0
    const-string v1, "SensorHandler"

    const-string v2, "releaseFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SensorHandler"

    const-string v2, "mFileObserver.stopWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    iput-object v3, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    throw v1
.end method

.method private restartUnstableState()V
    .locals 3

    .prologue
    const/16 v2, 0x23

    .line 189
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableTouchAEC()V

    .line 191
    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 193
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 197
    :cond_0
    return-void
.end method

.method private setCurrenValue([F)V
    .locals 3
    .parameter "values"

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 314
    const-string v1, "SensorHandler"

    const-string v2, "values is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    if-nez v1, :cond_2

    .line 319
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    .line 322
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setHandShakeValue([F)V
    .locals 3
    .parameter "values"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    if-nez v1, :cond_0

    .line 345
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    .line 348
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mHandShakeValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    return-void
.end method

.method private setStableValue([F)V
    .locals 3
    .parameter "values"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    if-nez v1, :cond_0

    .line 332
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    .line 335
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mStableValue:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 337
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->isMovement:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    return-void
.end method

.method private setupFileObserver()V
    .locals 4

    .prologue
    .line 486
    const-string v1, "SensorHandler"

    const-string v2, "setupFileObserver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_0

    .line 490
    :try_start_0
    new-instance v1, Lcom/android/camera/SensorHandler$1;

    const-string v2, "/data/.sc_msg"

    const/16 v3, 0xfff

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/SensorHandler$1;-><init>(Lcom/android/camera/SensorHandler;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    .line 500
    iget-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    :goto_0
    const-string v1, "SensorHandler"

    const-string v2, "setupFileObserver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SensorHandler"

    const-string v2, "mFileObserver.startWatching() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SensorHandler;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0
.end method


# virtual methods
.method public checkSceneChange()V
    .locals 3

    .prologue
    const/16 v2, 0x21

    .line 236
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    sget-object v1, Lcom/android/camera/SensorHandler$STATE;->CHECK_SCENE_CHANGE:Lcom/android/camera/SensorHandler$STATE;

    if-eq v0, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public enterSceneChangeState()V
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->CHECK_SCENE_CHANGE:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    .line 232
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 447
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 452
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 453
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 477
    :pswitch_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/android/camera/SensorHandler;->checkHandShake([F)V

    .line 478
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/android/camera/SensorHandler;->checkSensorState([F)V

    goto :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public registerSensor()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 84
    const-string v5, "SensorHandler"

    const-string v6, "registerSensor() - start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-boolean v5, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    if-ne v5, v8, :cond_0

    .line 87
    const-string v5, "SensorHandler"

    const-string v6, "registerSensor() - end, mIsRegistered = true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    .line 92
    sget-object v5, Lcom/android/camera/SensorHandler$STATE;->NON_STABLE:Lcom/android/camera/SensorHandler$STATE;

    iput-object v5, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    .line 94
    iget-object v5, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, mSensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 96
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 97
    .local v3, sensor:Landroid/hardware/Sensor;
    const-string v5, "SensorHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Support sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 100
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 95
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 105
    .local v2, register:Z
    const-string v5, "SensorHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "register "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 113
    .end local v2           #register:Z
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #type:I
    :cond_1
    sput-boolean v8, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    .line 114
    const-string v5, "SensorHandler"

    const-string v6, "registerSensor() - end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseSensorHandler()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 439
    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    .line 440
    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 441
    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    .line 442
    return-void
.end method

.method public restartCheckSensorFocus()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    if-nez v0, :cond_0

    .line 202
    const-string v0, "SensorHandler"

    const-string v1, "restartCheckSensorFocus() - mCurrentValue = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentValue:[F

    invoke-direct {p0, v0}, Lcom/android/camera/SensorHandler;->checkSensorFocus([F)V

    .line 207
    invoke-direct {p0}, Lcom/android/camera/SensorHandler;->restartUnstableState()V

    goto :goto_0
.end method

.method public setTouchThreshold(Z)V
    .locals 1
    .parameter "isTouch"

    .prologue
    .line 303
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 304
    sget v0, Lcom/android/camera/SensorHandler;->TOUCH_UNSTABLE_THRESHOLD:F

    sput v0, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    sget v0, Lcom/android/camera/SensorHandler;->SENSOR_UNSTABLE_THRESHOLD:F

    sput v0, Lcom/android/camera/SensorHandler;->UNSTABLE_THRESHOLD:F

    goto :goto_0
.end method

.method public setifWaitFocus(Z)V
    .locals 3
    .parameter "wait"

    .prologue
    .line 287
    const-string v0, "SensorHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setifWaitFocus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 292
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 293
    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->STABLE_WAIT_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    iput-object v0, p0, Lcom/android/camera/SensorHandler;->mCurrentState:Lcom/android/camera/SensorHandler$STATE;

    goto :goto_0
.end method

.method public unregisterSensor()V
    .locals 7

    .prologue
    .line 118
    const-string v4, "SensorHandler"

    const-string v5, "unregisterSensor() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-boolean v4, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    if-nez v4, :cond_0

    .line 120
    const-string v4, "SensorHandler"

    const-string v5, "unregisterSensor() - end, mIsRegistered = false"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, mSensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 126
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 127
    .local v2, sensor:Landroid/hardware/Sensor;
    const-string v4, "SensorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Support sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 130
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    .line 125
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_2

    .line 139
    .end local v2           #sensor:Landroid/hardware/Sensor;
    .end local v3           #type:I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 140
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 141
    iget-object v4, p0, Lcom/android/camera/SensorHandler;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x21

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 146
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/camera/SensorHandler;->mIsRegistered:Z

    .line 147
    const-string v4, "SensorHandler"

    const-string v5, "unregisterSensor() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
