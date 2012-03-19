.class public Lcom/android/camera/component/IndicatorsUI;
.super Lcom/android/camera/component/UIComponent;
.source "IndicatorsUI.java"


# static fields
.field private static final MSG_HIDE_REMAINING_COUNTER:I = 0x2

.field private static final MSG_SHOW_REMAINING_COUNTER:I = 0x1

.field private static final REMAINING_COUNTER_TIMEOUT:I = 0x7d0


# instance fields
.field private final m_CaptureUIClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_CaptureUIOpenEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_EffectCtrlVisibilityChangedHandler:Lcom/android/camera/IEventHandler;

.field private final m_HideIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

.field private m_MuteIndicator:Landroid/widget/ImageView;

.field private m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private final m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RecordWithAudioChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_RemainingCounter:Landroid/widget/TextView;

.field private m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private final m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_SelfTimerIndicator:Landroid/widget/ImageView;

.field private m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private final m_ShowIndicatorsEventHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 204
    const-string v0, "Indicators"

    const/4 v1, 0x1

    const v2, 0x7f08004d

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 53
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$1;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_CaptureUIClosedEventHandler:Lcom/android/camera/IEventHandler;

    .line 61
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$2;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_CaptureUIOpenEventHandler:Lcom/android/camera/IEventHandler;

    .line 76
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$3;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectCtrlVisibilityChangedHandler:Lcom/android/camera/IEventHandler;

    .line 85
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$4;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_HideIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

    .line 94
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$5;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

    .line 101
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$6;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$6;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    .line 119
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$7;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$7;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 139
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$8;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$8;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RecordWithAudioChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 146
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$9;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$9;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 176
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$10;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$10;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 184
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$11;

    invoke-direct {v0, p0}, Lcom/android/camera/component/IndicatorsUI$11;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_ShowIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/IndicatorsUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/IndicatorsUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/IEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_ShowIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V

    return-void
.end method

.method private convertToRemainingTimeString(J)Ljava/lang/String;
    .locals 13
    .parameter "totalSeconds"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 212
    rem-long v4, p1, v8

    .line 213
    .local v4, sec:J
    div-long v6, p1, v8

    rem-long v2, v6, v8

    .line 214
    .local v2, min:J
    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    .line 215
    .local v0, hour:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 216
    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 217
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private hideRemainingCounter(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 250
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/IndicatorsUI$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IndicatorsUI$12;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "container"
    .parameter "imageView"
    .parameter "orientation"

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/16 v0, 0x190

    new-instance v1, Lcom/android/camera/component/IndicatorsUI$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI$13;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    invoke-static {p1, p3, v0, v1}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    goto :goto_0
.end method

.method private setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "container"
    .parameter "imageView"
    .parameter "visible"

    .prologue
    .line 333
    if-eqz p1, :cond_1

    .line 336
    if-eqz p3, :cond_0

    .line 337
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V

    .line 340
    :cond_0
    invoke-virtual {p0, p1, p3, p3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 342
    :cond_1
    return-void
.end method

.method private showRemainingCounter()V
    .locals 12

    .prologue
    .line 350
    iget-object v9, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v9, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 355
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 358
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 359
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 361
    const/4 v9, 0x1

    const/16 v10, 0x64

    invoke-virtual {p0, p0, v9, v10}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;II)Z

    goto :goto_0

    .line 366
    :cond_2
    new-instance v5, Lcom/android/camera/QueryEvent;

    const-string v9, "Query.IsEffectControlVisible"

    invoke-direct {v5, v9}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v5, queryEvent:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 368
    invoke-virtual {v5}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    .line 372
    :cond_3
    const/4 v6, 0x0

    .line 373
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 374
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    sget v9, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v9, :cond_4

    sget v9, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 376
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-nez v9, :cond_6

    .line 378
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v2

    .line 379
    .local v2, count:J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_5

    .line 380
    const/16 v9, 0xa

    invoke-static {v2, v3, v9}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    .line 402
    .end local v2           #count:J
    :cond_5
    :goto_1
    if-nez v6, :cond_a

    .line 404
    iget-object v9, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 384
    :cond_6
    sget-object v9, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v9}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v9}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 386
    :cond_7
    iget-object v9, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v10, "Request from MMS or CU, not need to update free length"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 387
    :cond_8
    sget-object v9, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v9}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 388
    iget-object v9, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v10, "Request from Notes, not need to update free length"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :cond_9
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v4

    .line 392
    .local v4, limitCheck:Lcom/android/camera/RecordLimitCheck;
    if-eqz v4, :cond_5

    .line 394
    invoke-virtual {v4, v0}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;)V

    .line 395
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/camera/RecordLimitCheck;->remainTime(Z)J

    move-result-wide v7

    .line 396
    .local v7, time:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    .line 397
    invoke-direct {p0, v7, v8}, Lcom/android/camera/component/IndicatorsUI;->convertToRemainingTimeString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 407
    .end local v4           #limitCheck:Lcom/android/camera/RecordLimitCheck;
    .end local v7           #time:J
    :cond_a
    iget-object v9, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    const-string v10, "RemainingCounter.Showing"

    invoke-virtual {v9, v10}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 413
    iget-object v9, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 414
    const/4 v9, 0x2

    const/16 v10, 0x7d0

    invoke-virtual {p0, p0, v9, v10}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;II)Z

    goto/16 :goto_0
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "container"
    .parameter "imageView"

    .prologue
    .line 422
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V

    .line 423
    return-void
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;I)V
    .locals 5
    .parameter "container"
    .parameter "imageView"
    .parameter "orientation"

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 433
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 436
    .local v2, imageWidth:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 445
    .local v1, imageHeight:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 446
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x1

    if-eq p3, v4, :cond_1

    const/4 v4, 0x3

    if-ne p3, v4, :cond_3

    .line 448
    :cond_1
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 449
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 456
    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 459
    invoke-virtual {p1, p3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0

    .line 440
    .end local v1           #imageHeight:I
    .end local v2           #imageWidth:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 441
    .restart local v2       #imageWidth:I
    const/4 v1, 0x0

    .restart local v1       #imageHeight:I
    goto :goto_1

    .line 453
    .restart local v3       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 454
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private updateMuteIndicator()V
    .locals 4

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v1, "pref_camera_record_with_audio"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_fast_fps"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator(ZZ)V

    .line 471
    return-void
.end method

.method private updateMuteIndicator(ZZ)V
    .locals 7
    .parameter "recordWithAudio"
    .parameter "fastFrameRecording"

    .prologue
    .line 475
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v5, :cond_0

    .line 508
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 480
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    .line 482
    .local v2, is2ndCamera:Z
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 483
    if-eqz p1, :cond_3

    if-nez v2, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 488
    .local v1, iconRedId:I
    :goto_1
    if-nez v1, :cond_5

    .line 489
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :goto_2
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v6, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v6}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 496
    .local v4, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 497
    .local v3, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-nez v5, :cond_6

    .line 499
    const v5, 0x7f0b0094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 500
    const v5, 0x7f0b0093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 507
    :goto_3
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    goto :goto_0

    .line 483
    .end local v1           #iconRedId:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_3
    const v1, 0x7f02008c

    goto :goto_1

    .line 485
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #iconRedId:I
    goto :goto_1

    .line 491
    :cond_5
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 504
    .restart local v3       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_6
    const v5, 0x7f0b0096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 505
    const v5, 0x7f0b0095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3
.end method

.method private updateRemainingCounterLayout(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v2, -0x2

    .line 516
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 520
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 521
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 536
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 537
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 540
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0

    .line 524
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 525
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 528
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 529
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 532
    :pswitch_2
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 533
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSelfTimerIndicator()V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator(I)V

    .line 550
    return-void
.end method

.method private updateSelfTimerIndicator(I)V
    .locals 3
    .parameter "selfTimerInterval"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    .line 583
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 561
    sparse-switch p1, :sswitch_data_0

    .line 570
    const/4 v0, 0x0

    .line 578
    .local v0, iconRedId:I
    :goto_1
    if-nez v0, :cond_2

    .line 579
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    :goto_2
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 564
    .end local v0           #iconRedId:I
    :sswitch_0
    const v0, 0x7f02008e

    .line 565
    .restart local v0       #iconRedId:I
    goto :goto_1

    .line 567
    .end local v0           #iconRedId:I
    :sswitch_1
    const v0, 0x7f02008d

    .line 568
    .restart local v0       #iconRedId:I
    goto :goto_1

    .line 575
    .end local v0           #iconRedId:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #iconRedId:I
    goto :goto_1

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 561
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 237
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 240
    :goto_0
    return-void

    .line 229
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 270
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, baseLayout:Landroid/view/View;
    const v2, 0x7f0800e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 272
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f0800e4

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    .line 275
    const v2, 0x7f0800e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 276
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f0800e6

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    .line 279
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 280
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f0800e8

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounter:Landroid/widget/TextView;

    .line 281
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(I)V

    .line 284
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    .line 285
    .local v1, eventManager:Lcom/android/camera/EventManager;
    const-string v2, "CaptureUI.Closed"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_CaptureUIClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 286
    const-string v2, "CaptureUI.Open"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_CaptureUIOpenEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 287
    const-string v2, "EffectControl.VisibilityChanged"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectCtrlVisibilityChangedHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 288
    const-string v2, "EffectPanel.Closed"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_ShowIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 289
    const-string v2, "EffectPanel.Opening"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_HideIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 290
    const-string v2, "FastFrameRecording.Changed"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_RecordWithAudioChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 291
    const-string v2, "Menu.Opening"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 292
    const-string v2, "CameraActivity.PreviewStarted"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 293
    const-string v2, "RecordWithAudio.Changed"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_RecordWithAudioChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 294
    const-string v2, "Recording.Stopped"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_HideIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 295
    const-string v2, "Recording.TimeChanged"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 296
    const-string v2, "CameraActivity.RotateChanged"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 297
    const-string v2, "SelfTimer.Changed"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 298
    const-string v2, "Mode.Switched"

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_HideIndicatorsEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 300
    return-void
.end method
