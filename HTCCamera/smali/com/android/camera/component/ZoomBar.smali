.class public final Lcom/android/camera/component/ZoomBar;
.super Lcom/android/camera/component/UIComponent;
.source "ZoomBar.java"


# static fields
.field private static final MSG_CHANGE_ZOOM:I = 0x1

.field private static final MSG_SHOW_ZOOM_BAR:I = 0x2


# instance fields
.field private final m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

.field private m_IsUpdatingZoom:Z

.field private final m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_StopRecordingEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ZoomBar:Landroid/widget/SeekBar;

.field private m_ZoomBarContainer:Landroid/view/View;

.field private m_ZoomInView:Landroid/view/View;

.field private final m_ZoomLockChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ZoomOutView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 112
    const-string v0, "Zoom Bar"

    const/4 v1, 0x1

    const v2, 0x7f08004a

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 45
    new-instance v0, Lcom/android/camera/component/ZoomBar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$1;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    .line 52
    new-instance v0, Lcom/android/camera/component/ZoomBar$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$2;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    .line 72
    new-instance v0, Lcom/android/camera/component/ZoomBar$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$3;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 81
    new-instance v0, Lcom/android/camera/component/ZoomBar$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$4;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    .line 88
    new-instance v0, Lcom/android/camera/component/ZoomBar$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$5;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_StopRecordingEventHandler:Lcom/android/camera/IEventHandler;

    .line 95
    new-instance v0, Lcom/android/camera/component/ZoomBar$6;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ZoomBar$6;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomLockChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ZoomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->hideZoomBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/ZoomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ZoomBar;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/ZoomBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutView:Landroid/view/View;

    return-object v0
.end method

.method private cancelAutoFocus()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 121
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 133
    :goto_0
    :pswitch_0
    return v1

    .line 126
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->unblockCaptureUI()V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 131
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideZoomBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    .line 182
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    .line 183
    return-void
.end method

.method private showZoomBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 281
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 284
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-gtz v2, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isZoomLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    .line 307
    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    .line 308
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    goto :goto_0
.end method

.method private syncFromCurrentZoom()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    .line 319
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    sget v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 170
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 150
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isCaptureUIOpen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->isCaptureUIBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 166
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 192
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, baseLayout:Landroid/view/View;
    const v3, 0x7f0801ae

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    .line 197
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    .line 198
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInView:Landroid/view/View;

    .line 199
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutView:Landroid/view/View;

    .line 202
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v4, 0x7f0801b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 203
    .local v2, zoomBarReceiver:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 204
    new-instance v3, Lcom/android/camera/component/ZoomBar$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ZoomBar$7;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 219
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMaximumZoom()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 221
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/camera/component/ZoomBar$8;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ZoomBar$8;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    .line 251
    .local v1, eventManager:Lcom/android/camera/EventManager;
    const-string v3, "CaptureUI.Closed"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 252
    const-string v3, "CaptureUI.Open"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 253
    const-string v3, "Key.Down"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 254
    const-string v3, "Menu.Closed"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 255
    const-string v3, "Menu.Opening"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 256
    const-string v3, "CameraActivity.PreviewStarted"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ShowZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 257
    const-string v3, "Recording.TimeChanged"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_RecordingTimeChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 258
    const-string v3, "Camera.Restart"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 259
    const-string v3, "CameraActivity.RotateChanged"

    new-instance v4, Lcom/android/camera/component/ZoomBar$9;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ZoomBar$9;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 269
    const-string v3, "Mode.Switched"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_HideZoomBarEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 270
    const-string v3, "Recording.Stopping"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_StopRecordingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 271
    const-string v3, "Zoom.LockedStateChanged"

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomLockChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 272
    return-void
.end method
