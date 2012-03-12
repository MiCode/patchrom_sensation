.class public Lcom/android/camera/component/TemplateUIComponent;
.super Lcom/android/camera/component/UIComponent;
.source "TemplateUIComponent.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 23
    const-string v0, "My Component"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 67
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    .line 93
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 96
    return-void
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 113
    return-void
.end method
