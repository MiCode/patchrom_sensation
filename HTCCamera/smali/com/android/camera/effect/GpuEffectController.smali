.class public final Lcom/android/camera/effect/GpuEffectController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "GpuEffectController.java"


# static fields
.field public static final MSG_CLEAR_EFFECT:I = 0x3

.field public static final MSG_SET_EFFECT:I = 0x1

.field public static final MSG_SET_EFFECT_PARAMETERS:I = 0x2

.field public static final NAME:Ljava/lang/String; = "GPU Effect Controller"

.field private static final m_NoneEffectInfo:Lcom/android/camera/effect/GpuEffectInfo;


# instance fields
.field private final m_PreviewStartingEventHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v7, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v8, "0_bypass"

    const/4 v0, 0x2

    new-array v9, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v2

    const/4 v10, 0x1

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    sput-object v7, Lcom/android/camera/effect/GpuEffectController;->m_NoneEffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 37
    const-string v0, "GPU Effect Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 134
    new-instance v0, Lcom/android/camera/effect/GpuEffectController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/GpuEffectController$1;-><init>(Lcom/android/camera/effect/GpuEffectController;)V

    iput-object v0, p0, Lcom/android/camera/effect/GpuEffectController;->m_PreviewStartingEventHandler:Lcom/android/camera/IEventHandler;

    .line 38
    return-void
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method private setEffect(Lcom/android/camera/effect/GpuEffectInfo;)V
    .locals 5
    .parameter "effectInfo"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 89
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_1

    .line 91
    iget-object v3, p1, Lcom/android/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 92
    iget-object v2, p1, Lcom/android/camera/effect/GpuEffectInfo;->parameters:[Lcom/android/camera/effect/GpuEffectParameters;

    .line 93
    .local v2, params:[Lcom/android/camera/effect/GpuEffectParameters;
    if-eqz v2, :cond_0

    .line 95
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 96
    aget-object v3, v2, v1

    invoke-direct {p0, v0, v3}, Lcom/android/camera/effect/GpuEffectController;->setEffectParameters(Lcom/android/camera/CameraController;Lcom/android/camera/effect/GpuEffectParameters;)V

    .line 95
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 98
    .end local v1           #i:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 102
    .end local v2           #params:[Lcom/android/camera/effect/GpuEffectParameters;
    :goto_1
    return-void

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "No camera controller in setEffect()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setEffectParameters(Lcom/android/camera/CameraController;Lcom/android/camera/effect/GpuEffectParameters;)V
    .locals 7
    .parameter "controller"
    .parameter "params"

    .prologue
    .line 120
    iget-object v1, p2, Lcom/android/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iget v2, p2, Lcom/android/camera/effect/GpuEffectParameters;->n0:I

    iget v3, p2, Lcom/android/camera/effect/GpuEffectParameters;->n1:I

    iget v4, p2, Lcom/android/camera/effect/GpuEffectParameters;->n2:I

    iget v5, p2, Lcom/android/camera/effect/GpuEffectParameters;->n3:I

    iget-boolean v6, p2, Lcom/android/camera/effect/GpuEffectParameters;->enabled:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 121
    return-void
.end method

.method private setEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 110
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/GpuEffectController;->setEffectParameters(Lcom/android/camera/CameraController;Lcom/android/camera/effect/GpuEffectParameters;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No camera controller in setEffectParameters()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearEffect()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectController;->threadAccessCheck()V

    .line 46
    sget-object v0, Lcom/android/camera/effect/GpuEffectController;->m_NoneEffectInfo:Lcom/android/camera/effect/GpuEffectInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/effect/GpuEffectController;->setEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 47
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 73
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectController;->clearEffect()V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/GpuEffectInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/effect/GpuEffectController;->setEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/GpuEffectParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/effect/GpuEffectController;->setEffectParameters(Lcom/android/camera/effect/GpuEffectParameters;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/effect/GpuEffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 130
    .local v0, eventManager:Lcom/android/camera/EventManager;
    const-string v1, "Preview.Starting"

    iget-object v2, p0, Lcom/android/camera/effect/GpuEffectController;->m_PreviewStartingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 132
    return-void
.end method
