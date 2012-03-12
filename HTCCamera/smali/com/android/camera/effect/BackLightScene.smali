.class public final Lcom/android/camera/effect/BackLightScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "BackLightScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 9
    const-string v0, "backlight"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 10
    return-void
.end method
