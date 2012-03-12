.class Lcom/android/camera/HTCCamera$15;
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
    .line 3648
    iput-object p1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const v5, 0x7f080101

    const/4 v3, 0x1

    .line 3653
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    iget v1, v1, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_0

    .line 3654
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 3655
    const-string v1, "HTCCamera"

    const-string v2, "press settings button when focusing, cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3656
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3657
    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - press settings button and cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 3666
    :cond_0
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 3693
    :cond_1
    :goto_0
    return-void

    .line 3660
    :cond_2
    const-string v1, "HTCCamera"

    const-string v2, "press settings button when focusing, but device can\'t cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3669
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    iget-boolean v1, v1, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    if-eqz v1, :cond_4

    .line 3670
    const-string v1, "HTCCamera"

    const-string v2, "SceneQualityMenuOpen failed, mMenuIsOpening is true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3673
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    iput-boolean v3, v1, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    .line 3676
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 3677
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_SceneListView:Lcom/android/camera/widget/SceneListView;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$11500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SceneListView;

    move-result-object v1

    if-nez v1, :cond_5

    .line 3678
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    new-instance v2, Lcom/android/camera/widget/SceneListView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$11600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/widget/SceneListView;-><init>(Landroid/content/Context;Lcom/android/camera/effect/EffectList;)V

    #setter for: Lcom/android/camera/HTCCamera;->m_SceneListView:Lcom/android/camera/widget/SceneListView;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$11502(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/widget/SceneListView;

    .line 3680
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3681
    .local v0, item:Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_SceneListView:Lcom/android/camera/widget/SceneListView;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$11500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SceneListView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    .line 3689
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3690
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    const v3, 0x7f0a0003

    const v4, 0x7f02015c

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3684
    .end local v0           #item:Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3685
    .restart local v0       #item:Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$15;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->getResView()Lcom/android/camera/widget/ResolutionView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1
.end method
