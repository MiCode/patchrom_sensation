.class Lcom/android/camera/HTCCamera$14;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 3624
    iput-object p1, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    .line 3629
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_0

    .line 3630
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3631
    const-string v0, "HTCCamera"

    const-string v1, "press settings button when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3632
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3633
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - press settings button and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3634
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 3642
    :cond_0
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 3648
    :goto_0
    return-void

    .line 3636
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "press settings button when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3646
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$14;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->togglePanelState()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11400(Lcom/android/camera/HTCCamera;)V

    goto :goto_0
.end method
