.class Lcom/android/camera/HTCCamera$23;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 4173
    iput-object p1, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "mv"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x42

    .line 4177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 4178
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 4179
    .local v1, y:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 4181
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    .line 4182
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4211
    :cond_1
    :goto_0
    return v6

    .line 4187
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 4190
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v2, v4}, Lcom/android/camera/HTCCamera;->access$9202(Lcom/android/camera/HTCCamera;Z)Z

    .line 4191
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4192
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 4194
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v2, v6, v3}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    goto :goto_0

    .line 4198
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4201
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4203
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    .line 4205
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_3

    .line 4206
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    goto :goto_0

    .line 4208
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera$23;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$9300(Lcom/android/camera/HTCCamera;)V

    goto :goto_0

    .line 4187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
