.class public final Lcom/android/camera/effect/DepthOfFieldEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "DepthOfFieldEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# static fields
.field private static final DEFAULT_RADIUS:I


# instance fields
.field private m_Center:Landroid/graphics/Point;

.field private m_Radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 11
    .parameter "cameraActivity"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 25
    const-string v7, "depth"

    new-instance v8, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v9, "2_dof"

    const/4 v0, 0x2

    new-array v10, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/16 v2, 0x64

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v3

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v5, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v6

    invoke-direct {v8, v9, v10}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 17
    new-instance v0, Landroid/graphics/Point;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    .line 18
    sget v0, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    .line 29
    return-void
.end method

.method private updateParameters(Lcom/android/camera/effect/GpuEffectController;)V
    .locals 10
    .parameter "controller"

    .prologue
    const/4 v9, 0x0

    .line 99
    invoke-virtual {p1}, Lcom/android/camera/effect/GpuEffectController;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    iget-object v2, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-static {v7, v8, v9, v9, v0}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "nextEffect"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 38
    sget v0, Lcom/android/camera/effect/DepthOfFieldEffect;->DEFAULT_RADIUS:I

    iput v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    .line 39
    invoke-super {p0, p1}, Lcom/android/camera/effect/GpuEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 40
    return-void
.end method

.method public getCenter()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    return v0
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 4
    .parameter "center"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/effect/DepthOfFieldEffect;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v0

    .line 66
    .local v0, controller:Lcom/android/camera/effect/GpuEffectController;
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 69
    invoke-direct {p0, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->updateParameters(Lcom/android/camera/effect/GpuEffectController;)V

    .line 74
    .end local v0           #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0       #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No GPU effect controller to change center"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRadius(I)V
    .locals 3
    .parameter "radius"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/effect/DepthOfFieldEffect;->getGpuEffectController()Lcom/android/camera/effect/GpuEffectController;

    move-result-object v0

    .line 84
    .local v0, controller:Lcom/android/camera/effect/GpuEffectController;
    if-eqz v0, :cond_1

    .line 86
    iput p1, p0, Lcom/android/camera/effect/DepthOfFieldEffect;->m_Radius:I

    .line 87
    invoke-direct {p0, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->updateParameters(Lcom/android/camera/effect/GpuEffectController;)V

    .line 92
    .end local v0           #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v0       #controller:Lcom/android/camera/effect/GpuEffectController;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No GPU effect controller to change radius"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
