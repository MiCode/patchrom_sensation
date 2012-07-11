.class Lcom/android/camera/HTCCamera$19;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;


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
    .line 3924
    iput-object p1, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3927
    const-string v0, "HTCCamera"

    const-string v1, "Panel is closed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Menu.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 3932
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3933
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3935
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3936
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    .line 3941
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3942
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, v1, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3944
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->checkFaceDetection()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)V

    .line 3945
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3946
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    .line 3948
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3949
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 3951
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3952
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3953
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    .line 3962
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3963
    return-void

    .line 3938
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera$19;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    goto :goto_0
.end method
