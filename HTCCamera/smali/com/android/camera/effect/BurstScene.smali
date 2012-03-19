.class public Lcom/android/camera/effect/BurstScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "BurstScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_BurstUI:Lcom/android/camera/component/BurstUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 21
    const-string v0, "burst"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 22
    return-void
.end method

.method public static isSupportedInCurrentDevice(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/camera/component/BurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/BurstScene;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/BurstScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    const-string v2, "Burst UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstUI;

    iput-object v0, p0, Lcom/android/camera/effect/BurstScene;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/BurstScene;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "prevEffect"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/effect/BurstScene;->linkToComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to burst UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/BurstScene;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->enterBurstMode()V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/effect/BurstScene;->linkToComponents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to burst UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/BurstScene;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->exitBurstMode()V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x11

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 2
    .parameter "prevEffect"
    .parameter "flags"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/SceneEffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 99
    if-eq p1, p0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/camera/effect/BurstScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v1, p0, Lcom/android/camera/effect/BurstScene;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/component/BurstUI;->prepareEnteringBurstMode(Z)V

    .line 106
    :cond_0
    :goto_1
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to burst UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 2
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/SceneEffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 118
    if-eq p1, p0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/camera/effect/BurstScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/camera/effect/BurstScene;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/component/BurstUI;->prepareExitingBurstMode(Z)V

    .line 125
    :cond_0
    :goto_1
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to burst UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
