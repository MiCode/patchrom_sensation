.class public final Lcom/android/camera/component/HdrUI;
.super Lcom/android/camera/component/UIComponent;
.source "HdrUI.java"


# static fields
.field public static final MSG_PHOTO_PROCESSED:I = 0x2

.field public static final MSG_PROCESSING_PHOTO:I = 0x1

.field public static final NAME:Ljava/lang/String; = "HDR UI"


# instance fields
.field private final m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_HdrController:Lcom/android/camera/component/HdrController;

.field private m_Indicator:Lcom/android/camera/rotate/RotateImageView;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorTopPaddingView:Landroid/view/View;

.field private m_IsCaptureUINeeded:Z

.field private m_IsCaptureUIOpen:Z

.field private m_IsModeEntered:Z

.field private final m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 115
    const-string v0, "HDR UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 57
    new-instance v0, Lcom/android/camera/component/HdrUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$1;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    .line 70
    new-instance v0, Lcom/android/camera/component/HdrUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$2;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 92
    new-instance v0, Lcom/android/camera/component/HdrUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$3;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    .line 100
    new-instance v0, Lcom/android/camera/component/HdrUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HdrUI$4;-><init>(Lcom/android/camera/component/HdrUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HdrUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HdrUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HdrUI;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/HdrUI;->showIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HdrUI;)Lcom/android/camera/rotate/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HdrUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/component/HdrUI;->updateIndicatorOrientation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/HdrUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/component/HdrUI;->updateIndicatorLocation(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    return-void
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/android/camera/component/HdrUI;->showIndicator(ZZ)V

    .line 131
    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUINeeded:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 419
    invoke-static {p0}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private onPhotoProcessed(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "previewImage"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrUI;->showProcessingDialog(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    .line 248
    return-void
.end method

.method private onPhotoProcessing()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HdrUI;->showProcessingDialog(Z)V

    .line 256
    return-void
.end method

.method private openCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 264
    iget-boolean v2, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    if-nez v2, :cond_0

    .line 270
    iput-boolean v3, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUINeeded:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 272
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    .line 277
    .local v1, currentOrientation:I
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    .line 281
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isEffectPanelOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 282
    invoke-direct {p0, v3, v3}, Lcom/android/camera/component/HdrUI;->showIndicator(ZZ)V

    .line 285
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 295
    .local v0, eventManager:Lcom/android/camera/EventManager;
    if-nez v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/HdrUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$5;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 311
    const-string v1, "CaptureUI.Open"

    new-instance v2, Lcom/android/camera/component/HdrUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$6;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 320
    const-string v1, "EffectPanel.Closed"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 323
    const-string v1, "EffectPanel.Opening"

    new-instance v2, Lcom/android/camera/component/HdrUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrUI$7;-><init>(Lcom/android/camera/component/HdrUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 332
    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 335
    const-string v1, "CameraActivity.RotateChanged"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 338
    const-string v1, "SelfTimer.Changed"

    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method private showIndicator(ZZ)V
    .locals 1
    .parameter "visible"
    .parameter "animation"

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/HdrUI;->updateIndicatorLocation(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/HdrUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateIndicatorLocation(Z)V
    .locals 4
    .parameter "isSelfTimerOn"

    .prologue
    .line 367
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 373
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    .line 374
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 375
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b0085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 379
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b0084

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_1

    .line 379
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateIndicatorOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_0

    .line 412
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 394
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 395
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 397
    :cond_1
    const v2, 0x7f0b0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 398
    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 405
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 408
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/HdrUI;->updateIndicatorLocation(Z)V

    .line 411
    iget-object v2, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    goto :goto_0

    .line 402
    :cond_2
    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 403
    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1
.end method


# virtual methods
.method public enterHdrMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter HDR mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 149
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 152
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->openCaptureUI()V

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 156
    return-void
.end method

.method public exitHdrMode()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit HDR mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->closeCaptureUI()V

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 178
    iget-object v0, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HdrUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 201
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/HdrUI;->onPhotoProcessed(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->onPhotoProcessing()V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "HDR Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HdrController;

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_HdrController:Lcom/android/camera/component/HdrController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/HdrController;->link(Lcom/android/camera/component/HdrUI;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, baseLayout:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 221
    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    .line 223
    iget-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/HdrUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrUI;->registerListeners()V

    .line 228
    return-void
.end method

.method public isHdrModeEntered()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method
