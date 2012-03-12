.class public Lcom/android/camera/effect/NoneEffect;
.super Lcom/android/camera/effect/ColorEffectBase;
.source "NoneEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IEffect;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 16
    const-string v0, "none"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
