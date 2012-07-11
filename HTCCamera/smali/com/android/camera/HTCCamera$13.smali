.class Lcom/android/camera/HTCCamera$13;
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
    .line 3595
    iput-object p1, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 3599
    iget-object v0, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v3, :cond_0

    .line 3600
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3601
    const-string v0, "HTCCamera"

    const-string v1, "press effect button when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3602
    iget-object v0, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3603
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - press effect button and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 3612
    :cond_0
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 3617
    :goto_0
    return-void

    .line 3606
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "press effect button when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3616
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$13;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/UIRequestEvent;

    const-string v2, "Request.ToggleEffectPanel"

    invoke-direct {v1, v2, v3}, Lcom/android/camera/UIRequestEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0
.end method
