.class public final Lcom/android/camera/effect/LowlightScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "LowlightScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 14
    const-string v0, "night"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 15
    return-void
.end method


# virtual methods
.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
