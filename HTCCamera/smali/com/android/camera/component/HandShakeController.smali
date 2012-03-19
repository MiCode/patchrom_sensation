.class public Lcom/android/camera/component/HandShakeController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "HandShakeController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Handshake Controller"


# instance fields
.field private m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 33
    const-string v0, "Handshake Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HandShakeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HandShakeController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeController;->sendLeaveLowLight()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HandShakeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HandShakeController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeController;->sendEnterLowLight()V

    return-void
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method private sendEnterLowLight()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HandShakeController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 106
    :cond_0
    return-void
.end method

.method private sendLeaveLowLight()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HandShakeController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 50
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    .line 51
    .local v1, eventManager:Lcom/android/camera/EventManager;
    const-string v2, "HTCCallback.LowLightChanged"

    new-instance v3, Lcom/android/camera/component/HandShakeController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/HandShakeController$1;-><init>(Lcom/android/camera/component/HandShakeController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 86
    return-void
.end method

.method link(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    .line 94
    return-void
.end method
