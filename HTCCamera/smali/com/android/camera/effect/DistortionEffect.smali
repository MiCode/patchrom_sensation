.class public final Lcom/android/camera/effect/DistortionEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "DistortionEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# instance fields
.field private m_Center:Landroid/graphics/Point;

.field private m_Distortion:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 12
    .parameter "cameraActivity"

    .prologue
    .line 24
    const-string v7, "distortion"

    new-instance v8, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v9, "3_distortion"

    const/4 v0, 0x2

    new-array v10, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    const/4 v11, 0x0

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x1

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    invoke-direct {v8, v9, v10}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 16
    new-instance v0, Landroid/graphics/Point;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/Point;

    .line 28
    return-void
.end method


# virtual methods
.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "nextEffect"

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Point;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/Point;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Distortion:I

    .line 38
    invoke-super {p0, p1}, Lcom/android/camera/effect/GpuEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 39
    return-void
.end method

.method public getCenter()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/Point;

    return-object v0
.end method

.method public getDistortion()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/camera/effect/DistortionEffect;->m_Distortion:I

    return v0
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 10
    .parameter "center"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/effect/DistortionEffect;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v7

    .line 65
    .local v7, controller:Lcom/android/camera/effect/GpuEffectController;
    if-eqz v7, :cond_1

    .line 67
    iput-object p1, p0, Lcom/android/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/Point;

    .line 68
    invoke-virtual {v7}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v6, 0x1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-static {v8, v9, v4, v4, v0}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 77
    .end local v7           #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v7       #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No GPU effect controller to change center point"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDistortion(I)V
    .locals 10
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/effect/DistortionEffect;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v7

    .line 87
    .local v7, controller:Lcom/android/camera/effect/GpuEffectController;
    if-eqz v7, :cond_1

    .line 89
    iput p1, p0, Lcom/android/camera/effect/DistortionEffect;->m_Distortion:I

    .line 90
    invoke-virtual {v7}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v6, 0x1

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-static {v8, v9, v3, v3, v0}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 99
    .end local v7           #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v7       #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No GPU effect controller to change distortion"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
