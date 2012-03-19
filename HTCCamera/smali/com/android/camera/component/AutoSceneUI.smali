.class public Lcom/android/camera/component/AutoSceneUI;
.super Lcom/android/camera/component/UIComponent;
.source "AutoSceneUI.java"


# static fields
.field public static final ENTER_AUTOSCENE:I = 0x7

.field public static final ENTER_LOW_LIGHT:I = 0x2

.field public static final ENTER_MACRO:I = 0x4

.field public static final ENTER_PORTRAIT:I = 0x6

.field public static final IS_AUTO:I = 0x0

.field public static final IS_LOWLIGHT:I = 0x2

.field public static final IS_MACRO:I = 0x1

.field public static final IS_PORTRAIT:I = 0x3

.field public static final LEAVE_AUTOSCENE:I = 0x8

.field public static final LEAVE_LOW_LIGHT:I = 0x1

.field public static final LEAVE_MACRO:I = 0x3

.field public static final LEAVE_PORTRAIT:I = 0x5

.field public static final NAME:Ljava/lang/String; = "AutoScene UI"

.field public static final RECORDING_END:I = 0xa

.field public static final RECORDING_START:I = 0x9


# instance fields
.field private MARGIN_RIGHT:I

.field private MARGIN_TOP:I

.field private final ORIGINAL_MARGIN_RIGHT:I

.field private final ORIGINAL_MARGIN_TOP:I

.field private m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

.field private m_AutoSceneImage:Landroid/widget/ImageView;

.field private m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_HTCCamera:Lcom/android/camera/HTCCamera;

.field private m_HasRecordIcon:Z

.field private m_IsAutoSceneMode:Z

.field private m_IsLowLight:Z

.field private m_IsMacro:Z

.field private m_IsPortrait:Z

.field private m_IsTimer:Z

.field private m_canShow:Z

.field private m_menuIsOpen:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    const/16 v5, 0x41

    const/16 v4, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    const-string v0, "AutoScene UI"

    const v1, 0x7f080063

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 55
    iput v4, p0, Lcom/android/camera/component/AutoSceneUI;->ORIGINAL_MARGIN_RIGHT:I

    .line 56
    iput v5, p0, Lcom/android/camera/component/AutoSceneUI;->ORIGINAL_MARGIN_TOP:I

    .line 58
    iput v4, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    .line 59
    iput v5, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 67
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsLowLight:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsMacro:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsPortrait:Z

    .line 70
    iput-boolean v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_canShow:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_HasRecordIcon:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_menuIsOpen:Z

    .line 85
    return-void
.end method

.method private HideDisable()V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_canShow:Z

    .line 436
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->hideIcon()V

    .line 437
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoSceneUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/CameraThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/AutoSceneUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->resetLayoutPosition()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/camera/component/AutoSceneUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/component/AutoSceneUI;->m_menuIsOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/AutoSceneUI;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/AutoSceneUI;->setLayoutForTimer(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/AutoSceneUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_HasRecordIcon:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/AutoSceneUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/component/AutoSceneUI;->m_HasRecordIcon:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/AutoSceneUI;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/AutoSceneUI;->setLayoutForRecordIcon(ZI)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/component/AutoSceneUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsPortrait:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->updateIcon()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/component/AutoSceneUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->HideDisable()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->checkCanShow()V

    return-void
.end method

.method private checkCanShow()V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_canShow:Z

    .line 432
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->updateIcon()V

    goto :goto_0
.end method

.method private hasDetected()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsLowLight:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsMacro:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsPortrait:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/AutoSceneUI;->showUI(Landroid/view/View;ZZ)V

    .line 377
    :cond_0
    return-void
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 173
    invoke-static {}, Lcom/android/camera/component/AutoSceneController;->isSupported()Z

    move-result v0

    return v0
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 183
    .local v0, eventManager:Lcom/android/camera/EventManager;
    if-nez v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v1, "CameraActivity.RotateChanged"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$1;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 210
    const-string v1, "PortraitMode.Changed"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$2;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 220
    const-string v1, "AutoScene.Enabled"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$3;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 230
    const-string v1, "CameraActivity.Pausing"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$4;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 239
    const-string v1, "ActionScreen.Open"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$5;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 247
    const-string v1, "ActionScreen.Closed"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$6;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 255
    const-string v1, "CameraActivity.PreviewStarted"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$7;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 282
    const-string v1, "Mode.Switched"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$8;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 291
    const-string v1, "EffectPanel.Opening"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$9;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 299
    const-string v1, "EffectPanel.Closed"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$10;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 307
    const-string v1, "Menu.Opening"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$11;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 316
    const-string v1, "Menu.Closed"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$12;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 325
    const-string v1, "SelfTimer.Changed"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$13;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$13;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 335
    const-string v1, "RecordWithAudio.Changed"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$14;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 345
    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$15;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$15;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 353
    const-string v1, "CaptureUI.Open"

    new-instance v2, Lcom/android/camera/component/AutoSceneUI$16;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoSceneUI$16;-><init>(Lcom/android/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto/16 :goto_0
.end method

.method private resetLayoutPosition()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v3, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 524
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_self_timer"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 526
    const-string v3, "2s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    iput-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    .line 537
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/AutoSceneUI;->setLayoutForTimer(ZI)V

    goto :goto_0

    .line 528
    :cond_2
    const-string v3, "10s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    iput-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    goto :goto_1

    .line 531
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    goto :goto_1

    .line 534
    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z

    goto :goto_1

    .line 541
    .end local v0           #value:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/camera/component/AutoSceneUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_HasRecordIcon:Z

    .line 543
    iget-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_HasRecordIcon:Z

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/AutoSceneUI;->setLayoutForRecordIcon(ZI)V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 541
    goto :goto_2
.end method

.method private setLayoutForRecordIcon(ZI)V
    .locals 4
    .parameter "hasIcon"
    .parameter "orientation"

    .prologue
    const/16 v3, 0x86

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 492
    if-eqz p1, :cond_6

    .line 493
    if-nez p2, :cond_3

    .line 494
    iput v3, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 495
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    .line 515
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoSceneUI;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    goto :goto_0

    .line 497
    :cond_3
    if-ne p2, v2, :cond_4

    .line 498
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 499
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1

    .line 501
    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 502
    iput v3, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 503
    iput v1, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1

    .line 505
    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 506
    const/16 v0, 0x89

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 507
    iput v1, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1

    .line 511
    :cond_6
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 512
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1
.end method

.method private setLayoutForTimer(ZI)V
    .locals 4
    .parameter "isTimer"
    .parameter "orientation"

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0xa

    const/16 v1, 0x86

    .line 453
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 459
    if-eqz p1, :cond_6

    .line 460
    if-nez p2, :cond_3

    .line 461
    iput v1, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 462
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    .line 482
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoSceneUI;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    goto :goto_0

    .line 464
    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 465
    iput v1, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 466
    iput v3, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1

    .line 468
    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 469
    iput v1, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 470
    iput v2, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1

    .line 472
    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 473
    const/16 v0, 0x97

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 474
    iput v2, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1

    .line 478
    :cond_6
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    .line 479
    iput v3, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    goto :goto_1
.end method

.method private setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 444
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 445
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 446
    iget v1, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_TOP:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 447
    iget v1, p0, Lcom/android/camera/component/AutoSceneUI;->MARGIN_RIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 448
    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private showIcon()V
    .locals 3

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_canShow:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/AutoSceneUI;->showUI(Landroid/view/View;ZZ)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->hideIcon()V

    goto :goto_0
.end method

.method private updateIcon()V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->hasDetected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 388
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsMacro:Z

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneImage:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->updateAutoScene_ds(I)V

    .line 401
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->showIcon()V

    goto :goto_0

    .line 392
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsLowLight:Z

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneImage:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->updateAutoScene_ds(I)V

    goto :goto_1

    .line 396
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsPortrait:Z

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneImage:Landroid/widget/ImageView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->updateAutoScene_ds(I)V

    goto :goto_1

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->updateAutoScene_ds(I)V

    .line 405
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->hideIcon()V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 165
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->updateIcon()V

    .line 166
    return-void

    .line 128
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsLowLight:Z

    goto :goto_0

    .line 134
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsLowLight:Z

    goto :goto_0

    .line 140
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsMacro:Z

    goto :goto_0

    .line 146
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsMacro:Z

    goto :goto_0

    .line 152
    :pswitch_5
    iput-boolean v2, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z

    goto :goto_0

    .line 158
    :pswitch_6
    iput-boolean v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "AutoScene Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/AutoSceneController;

    iput-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/android/camera/component/AutoSceneController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/AutoSceneController;->link(Lcom/android/camera/component/AutoSceneUI;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, baseLayout:Landroid/view/View;
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 104
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneImage:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 110
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/camera/component/AutoSceneUI;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    .line 113
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneUI;->registerListeners()V

    .line 115
    return-void
.end method

.method public resetSceneStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 587
    iput-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsLowLight:Z

    .line 588
    iput-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsMacro:Z

    .line 589
    iput-boolean v0, p0, Lcom/android/camera/component/AutoSceneUI;->m_IsPortrait:Z

    .line 590
    return-void
.end method

.method public showAlphaAnimation(Landroid/view/View;FFIII)Landroid/view/animation/AlphaAnimation;
    .locals 3
    .parameter "view"
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "offset"
    .parameter "duration"
    .parameter "orientation"

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 552
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 553
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 554
    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 555
    new-instance v1, Lcom/android/camera/component/AutoSceneUI$17;

    invoke-direct {v1, p0, p1, p6}, Lcom/android/camera/component/AutoSceneUI$17;-><init>(Lcom/android/camera/component/AutoSceneUI;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 572
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 573
    return-object v0
.end method

.method public updateOrientation(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "orientation"

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    check-cast p1, Lcom/android/camera/rotate/RotateRelativeLayout;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 582
    :cond_0
    return-void
.end method
