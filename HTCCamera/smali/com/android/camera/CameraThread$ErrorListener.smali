.class final Lcom/android/camera/CameraThread$ErrorListener;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 4516
    iput-object p1, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4516
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 4519
    const/16 v0, 0x3d0

    if-ne p2, v0, :cond_0

    .line 4520
    const-string v0, "CameraThread"

    const-string v1, "*********** MediaRecorder.CAMERA_STEREO_PROHIBIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    .line 4522
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    .line 4523
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4524
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4525
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x52

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4526
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "PowerRecWarning.Received"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 4532
    :goto_0
    return-void

    .line 4530
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "*********** Other Errors"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
