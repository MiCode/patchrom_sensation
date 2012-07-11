.class Lcom/android/camera/component/PanoramaController$6$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$6;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaController$6;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$6;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$6$1;->val$jpegData:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->val$cameraController:Lcom/android/camera/CameraController;

    const-string v3, "panorama-mode"

    const-string v4, "not-in-progress"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    new-instance v0, Lcom/android/camera/component/PanoramaController$6$1$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaController$6$1$1;-><init>(Lcom/android/camera/component/PanoramaController$6$1;)V

    .line 1265
    .local v0, callback:Lcom/android/camera/CameraThread$StorePictureCallback;
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v3, v2, Lcom/android/camera/component/PanoramaController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/component/PanoramaController$6$1;->val$jpegData:[B

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->access$900()Lcom/android/camera/DCFInfo;

    move-result-object v2

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    .line 1266
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->endTakePicture()V

    .line 1269
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1270
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v3, v3, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 1275
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1277
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 1278
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->startPreview(I)V

    .line 1281
    .end local v1           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_0
    return-void

    .line 1265
    :cond_1
    sget-object v2, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    goto :goto_0

    .line 1272
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v2, v2, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$5600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No UI to notify STITCH_COMPLETED"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
