.class Lcom/android/camera/HTCCamera$27;
.super Landroid/content/BroadcastReceiver;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
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
    .line 6215
    iput-object p1, p0, Lcom/android/camera/HTCCamera$27;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6220
    .local v0, action:Ljava/lang/String;
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "################ mKeyguardReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6221
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6222
    const-string v1, "HTCCamera"

    const-string v2, "################ unlock screen !!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6223
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$12600()Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 6224
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$12602(Z)Z

    .line 6227
    iget-object v1, p0, Lcom/android/camera/HTCCamera$27;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$27;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v1, v5, :cond_0

    .line 6228
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$12700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6229
    iget-object v1, p0, Lcom/android/camera/HTCCamera$27;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    const-string v3, "torch"

    invoke-static {v1, v2, v4, v4, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 6233
    :cond_0
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$12800()Z

    move-result v1

    if-ne v1, v5, :cond_1

    .line 6236
    const-string v1, "HTCCamera"

    const-string v2, "unlock screen - can show UI"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6239
    iget-object v1, p0, Lcom/android/camera/HTCCamera$27;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIdle:Z
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$12900(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6240
    iget-object v1, p0, Lcom/android/camera/HTCCamera$27;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 6244
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    .line 6247
    :cond_2
    return-void

    .line 6242
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera$27;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_0
.end method
