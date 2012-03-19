.class Lcom/android/camera/HTCCamera$12;
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
    .line 3488
    iput-object p1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 3491
    invoke-static {}, Lcom/android/camera/component/HwCameraSwitchButton;->hasButton()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3493
    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-boolean v2, v2, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    if-eqz v2, :cond_1

    .line 3494
    const-string v1, "HTCCamera"

    const-string v2, "SwitchMenuOpen failed, mMenuIsOpening is true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    :cond_0
    :goto_0
    return-void

    .line 3497
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iput-boolean v1, v2, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    .line 3500
    iget-object v1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080102

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3502
    .local v0, item:Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$11300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SwitchItemListView;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3503
    iget-object v1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    new-instance v2, Lcom/android/camera/widget/SwitchItemListView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {v2, v3}, Lcom/android/camera/widget/SwitchItemListView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$11302(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView;

    .line 3505
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$11300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SwitchItemListView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    .line 3508
    iget-object v1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3509
    iget-object v1, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    const v3, 0x7f0a0003

    const v4, 0x7f02015c

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3514
    .end local v0           #item:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 3518
    iget-object v2, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera$12;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
