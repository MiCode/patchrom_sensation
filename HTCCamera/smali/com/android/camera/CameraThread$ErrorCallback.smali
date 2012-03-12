.class final Lcom/android/camera/CameraThread$ErrorCallback;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 4288
    iput-object p1, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4288
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 4292
    const-string v0, "CameraThread"

    const-string v1, "got ErrorCallback !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 4294
    const-string v0, "CameraThread"

    const-string v1, "error = Camera.CAMERA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "got ErrorCallback - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v0, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 4312
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4313
    const-string v0, "CameraThread"

    const-string v1, "got ErrorCallback, Camera app finished"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4314
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 4316
    :cond_0
    :goto_1
    return-void

    .line 4295
    :cond_1
    const/16 v0, 0x3d0

    if-ne p1, v0, :cond_2

    .line 4296
    const-string v0, "CameraThread"

    const-string v1, "error = Camera.CAMERA_STEREO_PROHIBIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4297
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v0, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 4298
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v0, v2}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    .line 4299
    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 4301
    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "PowerWarning.Received"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 4303
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 4304
    const-string v0, "CameraThread"

    const-string v1, "error = Camera.CAMERA_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4306
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "unknown error"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
