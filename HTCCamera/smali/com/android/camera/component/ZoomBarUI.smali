.class public Lcom/android/camera/component/ZoomBarUI;
.super Lcom/android/camera/component/UIComponent;
.source "ZoomBarUI.java"


# static fields
.field public static final MSG_HIDE_ZOOMBAR:I = 0x3

.field public static final MSG_SHOW_ZOOMBAR_FOCUS:I = 0x1

.field public static final MSG_SHOW_ZOOMBAR_PROGRESS_CHANGE:I = 0x2

.field public static final NAME:Ljava/lang/String; = "ZoomBar UI"


# instance fields
.field private final MANAUL_FOCUS_FADEOUT_TIME:I

.field private final PROGRESS_CHANGE_FADEOUT_TIME:I

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private final m_HideEventHandler:Lcom/android/camera/IEventHandler;

.field private m_IsRecording:Z

.field private final m_ShowHideEventHandler:Lcom/android/camera/IEventHandler;

.field private m_UIOpen:Z

.field private m_ZoomBackground:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ZoomBarController:Lcom/android/camera/component/ZoomBarController;

.field private final m_ZoomChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ZoomIn:Landroid/widget/RelativeLayout;

.field private m_ZoomLayout:Landroid/widget/RelativeLayout;

.field private m_ZoomOut:Landroid/widget/RelativeLayout;

.field private m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;

.field private m_menuIsOpen:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    const-string v0, "ZoomBar UI"

    const v1, 0x7f080060

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 55
    iput-boolean v3, p0, Lcom/android/camera/component/ZoomBarUI;->m_UIOpen:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_menuIsOpen:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_IsRecording:Z

    .line 59
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/camera/component/ZoomBarUI;->MANAUL_FOCUS_FADEOUT_TIME:I

    .line 60
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/camera/component/ZoomBarUI;->PROGRESS_CHANGE_FADEOUT_TIME:I

    .line 65
    new-instance v0, Lcom/android/camera/component/ZoomBarUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBarUI$1;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    .line 72
    new-instance v0, Lcom/android/camera/component/ZoomBarUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBarUI$2;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ShowHideEventHandler:Lcom/android/camera/IEventHandler;

    .line 80
    new-instance v0, Lcom/android/camera/component/ZoomBarUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBarUI$3;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ZoomBarUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/ZoomBarUI;->showZoombar(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/component/ZoomBarUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/camera/component/ZoomBarUI;->m_menuIsOpen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ZoomBarUI;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/CameraThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ZoomBarUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ZoomBarUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ZoomBarUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ZoomBarUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBarUI;->updateZoomBarVisible()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/component/ZoomBarUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/camera/component/ZoomBarUI;->m_UIOpen:Z

    return p1
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 251
    .local v0, eventManager:Lcom/android/camera/EventManager;
    const-string v1, "CameraActivity.PreviewStarted"

    new-instance v2, Lcom/android/camera/component/ZoomBarUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBarUI$6;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 263
    const-string v1, "Camera.Restart"

    iget-object v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 266
    const-string v1, "3DMode.Switched"

    iget-object v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 269
    const-string v1, "Mode.Switched"

    iget-object v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 272
    const-string v1, "CaptureUI.Open"

    new-instance v2, Lcom/android/camera/component/ZoomBarUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBarUI$7;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 280
    const-string v1, "CaptureUI.Unblock"

    new-instance v2, Lcom/android/camera/component/ZoomBarUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBarUI$8;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 288
    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/ZoomBarUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBarUI$9;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 297
    const-string v1, "Menu.Opening"

    new-instance v2, Lcom/android/camera/component/ZoomBarUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBarUI$10;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 308
    const-string v1, "Menu.Closed"

    new-instance v2, Lcom/android/camera/component/ZoomBarUI$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBarUI$11;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 319
    const-string v1, "Key.Down"

    new-instance v2, Lcom/android/camera/component/ZoomBarUI$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBarUI$12;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 359
    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 361
    const-string v1, "ActionScreen.Open"

    iget-object v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 367
    const-string v1, "SecondLayout.Closed"

    iget-object v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 370
    const-string v1, "Zoom.Changed"

    iget-object v2, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 374
    return-void
.end method

.method private showZoombar(Z)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 434
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x12c

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateZoomBarLayout(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 381
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x46

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 385
    const/16 v1, 0x22b

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    const/4 v1, 0x3

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 387
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 390
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBackground:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBackground:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 395
    const/16 v1, 0x1e

    const/16 v2, 0x93

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 396
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBackground:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBackground:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 399
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomIn:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomIn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 402
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x20b

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 403
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomIn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomOut:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomOut:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 408
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 409
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomOut:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private updateZoomBarVisible()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->canShowZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ZoomBarUI;->updateZoomBarLayout(I)V

    goto :goto_0
.end method


# virtual methods
.method public canShowZoom()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 461
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 481
    :goto_0
    return v0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_menuIsOpen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isZoomLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/component/ZoomBarUI;->m_UIOpen:Z

    if-nez v1, :cond_2

    .line 472
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/component/ZoomBarUI;->hideZoomBar(Z)V

    goto :goto_0

    .line 476
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/camera/component/ZoomBarUI;->hideZoomBar(Z)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->canShowZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, v2}, Lcom/android/camera/component/ZoomBarUI;->showZoombar(Z)V

    .line 110
    invoke-virtual {p0, p0, v1}, Lcom/android/camera/component/ZoomBarUI;->removeMessages(Lcom/android/camera/component/Component;I)V

    .line 111
    const/16 v0, 0xbb8

    invoke-virtual {p0, p0, v1, v0}, Lcom/android/camera/component/ZoomBarUI;->sendMessage(Lcom/android/camera/component/Component;II)Z

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->canShowZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, v2}, Lcom/android/camera/component/ZoomBarUI;->showZoombar(Z)V

    .line 120
    invoke-virtual {p0, p0, v1}, Lcom/android/camera/component/ZoomBarUI;->removeMessages(Lcom/android/camera/component/Component;I)V

    .line 121
    const/16 v0, 0x1388

    invoke-virtual {p0, p0, v1, v0}, Lcom/android/camera/component/ZoomBarUI;->sendMessage(Lcom/android/camera/component/Component;II)Z

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/camera/component/ZoomBarUI;->hideZoomBar(Z)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideZoomBar(Z)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 452
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 147
    :goto_0
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBarController:Lcom/android/camera/component/ZoomBarController;

    if-nez v4, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    const-string v5, "ZoomBar Controller"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v4

    check-cast v4, Lcom/android/camera/component/ZoomBarController;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBarController:Lcom/android/camera/component/ZoomBarController;

    goto :goto_0

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBarController:Lcom/android/camera/component/ZoomBarController;

    invoke-virtual {v4, p0}, Lcom/android/camera/component/ZoomBarController;->link(Lcom/android/camera/component/ZoomBarUI;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, baseLayout:Landroid/view/View;
    const v4, 0x7f0801b6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;

    .line 157
    const v4, 0x7f0801b8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 158
    const v4, 0x7f0801bb

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomIn:Landroid/widget/RelativeLayout;

    .line 159
    const v4, 0x7f0801b9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomOut:Landroid/widget/RelativeLayout;

    .line 160
    const v4, 0x7f0801ba

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ZoomBar_ds;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;

    .line 161
    const v4, 0x7f0801b7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomBackground:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 163
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;

    new-instance v5, Lcom/android/camera/component/ZoomBarUI$4;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBarUI$4;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/widget/ZoomBar_ds;->setOnPositionChangeListner(Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;)V

    .line 189
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/widget/ZoomBar_ds;->setFocusable(Z)V

    .line 194
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_ZoomContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v5, Lcom/android/camera/component/ZoomBarUI$5;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBarUI$5;-><init>(Lcom/android/camera/component/ZoomBarUI;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMinimumZoom()I

    move-result v2

    .line 230
    .local v2, min:I
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMaximumZoom()I

    move-result v1

    .line 232
    .local v1, max:I
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;

    invoke-virtual {v4, v2, v1}, Lcom/android/camera/widget/ZoomBar_ds;->setMinMax(II)Z

    .line 234
    sget v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    .line 235
    .local v3, value:I
    iget-object v4, p0, Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;

    invoke-virtual {v4, v3}, Lcom/android/camera/widget/ZoomBar_ds;->setPosition(I)Z

    .line 237
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBarUI;->registerListeners()V

    .line 238
    return-void
.end method

.method public isInteractiveEffect()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isEffectControlVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public sendShowZoomFocusMessage()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, p0, v0}, Lcom/android/camera/component/ZoomBarUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 516
    return-void
.end method

.method public sendShowZoomProgressMessage()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x2

    invoke-virtual {p0, p0, v0}, Lcom/android/camera/component/ZoomBarUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 513
    return-void
.end method
