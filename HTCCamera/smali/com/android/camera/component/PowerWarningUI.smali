.class public Lcom/android/camera/component/PowerWarningUI;
.super Lcom/android/camera/component/UIComponent;
.source "PowerWarningUI.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PowerWarning UI"

.field public static final POWER_REC_WARNING:I = 0x2

.field public static final POWER_WARNING:I = 0x1


# instance fields
.field private m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_HTCCamera:Lcom/android/camera/HTCCamera;

.field private m_IsLowPower:Z

.field private m_IsShown:Z

.field private m_PowerWarningBase:Landroid/view/View;

.field private m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v0, "PowerWarning UI"

    const/4 v1, 0x1

    const v2, 0x7f08006b

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 44
    iput-boolean v3, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    .line 45
    iput-boolean v3, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PowerWarningUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PowerWarningUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->resetPowerWarningSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/PowerWarningUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    return-void
.end method

.method private hideLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/PowerWarningUI;->showUI(Landroid/view/View;ZZ)V

    .line 238
    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    .line 241
    :cond_0
    return-void
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 151
    .local v0, eventManager:Lcom/android/camera/EventManager;
    if-nez v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v1, "Key.Down"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$2;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 170
    const-string v1, "CameraActivity.PreviewStarted"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$3;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 180
    const-string v1, "CameraActivity.Pausing"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$4;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 189
    const-string v1, "CameraActivity.Resuming"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$5;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method private resetPowerWarningSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 245
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->hideLayout()V

    .line 254
    return-void
.end method

.method private showLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/component/PowerWarningUI;->showUI(Landroid/view/View;ZZ)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 232
    iput-boolean v2, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    .line 234
    :cond_0
    return-void
.end method

.method private updateWarningLayout(Z)V
    .locals 2
    .parameter "isRec"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "m_HTCCamera == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "m_CameraThread == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-boolean v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    if-eqz v0, :cond_0

    .line 215
    iget-boolean v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, p1}, Lcom/android/camera/HTCCamera;->powerWarningOn(Z)V

    .line 217
    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->showLayout()V

    goto :goto_0

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->hideLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isBlockPowerWarning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "HTCCamera.isBlockPowerWarning = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 123
    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 124
    invoke-direct {p0, v1}, Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v1, "PowerWarning Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PowerWarningController;

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/PowerWarningController;->link(Lcom/android/camera/component/PowerWarningUI;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 76
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v1, Lcom/android/camera/component/PowerWarningUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/PowerWarningUI$1;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 90
    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->registerListeners()V

    .line 92
    return-void
.end method
