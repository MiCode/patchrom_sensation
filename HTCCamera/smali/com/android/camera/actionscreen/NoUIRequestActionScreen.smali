.class public Lcom/android/camera/actionscreen/NoUIRequestActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "NoUIRequestActionScreen.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "No UI Request Action Screen"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 21
    const-string v0, "No UI Request Action Screen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected closeActionScreen(Z)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->completeCloseActionScreen()V

    .line 30
    :cond_0
    return-void
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media saved"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    instance-of v0, p1, Lcom/android/camera/MediaSaveFailedEvent;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media save failed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->returnRequestedMedia()V

    .line 60
    return-void
.end method

.method protected openActionScreen()V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->returnRequestedMedia()V

    .line 37
    :cond_0
    return-void
.end method

.method protected prepareActionScreen()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
