.class public Lcom/android/camera/component/TemplateCameraThreadComponent;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "TemplateCameraThreadComponent.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 22
    const-string v0, "My Component"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->deinitializeOverride()V

    .line 62
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    .line 88
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 91
    return-void
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 108
    return-void
.end method
