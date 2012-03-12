.class public Lcom/android/camera/component/DOTIndicatorController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "DOTIndicatorController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "DOTIndicator Controller"


# instance fields
.field private m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 32
    const-string v0, "DOTIndicator Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/DOTIndicatorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorController;->sendLeaveLowLight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/DOTIndicatorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorController;->sendEnterLowLight()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/DOTIndicatorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorController;->sendLeaveSmile()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/DOTIndicatorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorController;->sendEnterSmile()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/DOTIndicatorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorController;->sendLeaveBlink()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/DOTIndicatorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorController;->sendEnterBlink()V

    return-void
.end method

.method public static final isSupported()Z
    .locals 2

    .prologue
    .line 136
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

.method private sendEnterBlink()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/DOTIndicatorController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 129
    :cond_0
    return-void
.end method

.method private sendEnterLowLight()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/DOTIndicatorController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 113
    :cond_0
    return-void
.end method

.method private sendEnterSmile()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/DOTIndicatorController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 121
    :cond_0
    return-void
.end method

.method private sendLeaveBlink()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/DOTIndicatorController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 125
    :cond_0
    return-void
.end method

.method private sendLeaveLowLight()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/DOTIndicatorController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 109
    :cond_0
    return-void
.end method

.method private sendLeaveSmile()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/DOTIndicatorController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/component/DOTIndicatorController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 49
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    .line 50
    .local v1, eventManager:Lcom/android/camera/EventManager;
    const-string v2, "HTCCallback.LowLightChanged"

    new-instance v3, Lcom/android/camera/component/DOTIndicatorController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/DOTIndicatorController$1;-><init>(Lcom/android/camera/component/DOTIndicatorController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 64
    const-string v2, "HTCCallback.SmileChanged"

    new-instance v3, Lcom/android/camera/component/DOTIndicatorController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/DOTIndicatorController$2;-><init>(Lcom/android/camera/component/DOTIndicatorController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 78
    const-string v2, "HTCCallback.BlinkChanged"

    new-instance v3, Lcom/android/camera/component/DOTIndicatorController$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/DOTIndicatorController$3;-><init>(Lcom/android/camera/component/DOTIndicatorController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 93
    return-void
.end method

.method link(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/component/DOTIndicatorController;->m_DOTIndicatorUI:Lcom/android/camera/component/DOTIndicatorUI;

    .line 101
    return-void
.end method
