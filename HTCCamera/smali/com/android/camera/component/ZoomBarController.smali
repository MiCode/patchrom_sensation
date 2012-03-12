.class public Lcom/android/camera/component/ZoomBarController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "ZoomBarController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ZoomBar Controller"


# instance fields
.field private m_ZoomBarUI:Lcom/android/camera/component/ZoomBarUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 33
    const-string v0, "ZoomBar Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ZoomBarController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBarController;->sendShowZoomBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/ZoomBarController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBarController;->sendHideZoomBar()V

    return-void
.end method

.method public static final isSupported()Z
    .locals 2

    .prologue
    .line 93
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendHideZoomBar()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarController;->m_ZoomBarUI:Lcom/android/camera/component/ZoomBarUI;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarController;->m_ZoomBarUI:Lcom/android/camera/component/ZoomBarUI;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ZoomBarController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 86
    :cond_0
    return-void
.end method

.method private sendShowZoomBar()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarController;->m_ZoomBarUI:Lcom/android/camera/component/ZoomBarUI;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarController;->m_ZoomBarUI:Lcom/android/camera/component/ZoomBarUI;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ZoomBarController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 82
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
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBarController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 49
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    .line 50
    .local v1, eventManager:Lcom/android/camera/EventManager;
    const-string v2, "Focus.Finished"

    new-instance v3, Lcom/android/camera/component/ZoomBarController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ZoomBarController$1;-><init>(Lcom/android/camera/component/ZoomBarController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 65
    return-void
.end method

.method link(Lcom/android/camera/component/ZoomBarUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/component/ZoomBarController;->m_ZoomBarUI:Lcom/android/camera/component/ZoomBarUI;

    .line 73
    return-void
.end method
