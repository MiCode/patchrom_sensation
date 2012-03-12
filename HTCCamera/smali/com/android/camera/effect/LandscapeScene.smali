.class public final Lcom/android/camera/effect/LandscapeScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "LandscapeScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 11
    const-string v0, "landscape"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 12
    return-void
.end method
