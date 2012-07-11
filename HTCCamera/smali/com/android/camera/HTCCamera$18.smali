.class Lcom/android/camera/HTCCamera$18;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;


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
    .line 3894
    iput-object p1, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 4

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    .line 3897
    const-string v0, "HTCCamera"

    const-string v1, "Panel is opened"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3899
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3900
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3902
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    .line 3906
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->checkFaceDetection()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)V

    .line 3907
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3908
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 3910
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3911
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 3914
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setDescendantFocusability(I)V

    .line 3921
    return-void
.end method
