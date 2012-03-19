.class public abstract Lcom/android/camera/component/UIComponent;
.super Lcom/android/camera/component/Component;
.source "UIComponent.java"


# static fields
.field public static final UI_FADE_IN_DURATION:I = 0x190

.field public static final UI_FADE_OUT_DURATION:I = 0x190

.field public static final UI_ROTATE_DURATION:I = 0x190


# instance fields
.field private m_BaseLayout:Landroid/view/View;

.field private m_BaseLayoutID:I

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_ContentLayout:Landroid/view/View;

.field private m_ContentLayoutID:I

.field private m_InflateViewAutomatically:Z

.field private m_IsContentLayoutPrepared:Z

.field private m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
    .locals 6
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "baseLayoutId"

    .prologue
    .line 48
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
    .locals 2
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "baseLayoutId"
    .parameter "contentLayoutId"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/UIComponent;->m_InflateViewAutomatically:Z

    .line 56
    if-nez p3, :cond_0

    .line 58
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cameraActivity\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p3, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 64
    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIComponent;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 65
    iput p4, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayoutID:I

    .line 66
    iput p5, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayoutID:I

    .line 69
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No camera thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method protected final autoInflateView(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/camera/component/UIComponent;->m_InflateViewAutomatically:Z

    .line 82
    return-void
.end method

.method protected final collapseContentLayout()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/UIComponent;->m_IsContentLayoutPrepared:Z

    goto :goto_0
.end method

.method protected final getBaseLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayoutID:I

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget v1, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayoutID:I

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayoutID:I

    return v0
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/camera/component/Component;->initializeOverride()V

    .line 148
    iget-boolean v0, p0, Lcom/android/camera/component/UIComponent;->m_InflateViewAutomatically:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getBaseLayout()Landroid/view/View;

    .line 150
    :cond_0
    return-void
.end method

.method protected final isCameraThreadRunning()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isCameraThreadRunning()Z

    move-result v0

    return v0
.end method

.method protected final isCaptureUIBlocked()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v0

    return v0
.end method

.method protected final prepareContentLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-boolean v4, p0, Lcom/android/camera/component/UIComponent;->m_IsContentLayoutPrepared:Z

    if-eqz v4, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    .line 200
    :cond_0
    :goto_0
    return-object v3

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getContentLayoutID()I

    move-result v1

    .line 177
    .local v1, layoutID:I
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getBaseLayout()Landroid/view/View;

    .line 182
    iget-object v4, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    .line 184
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Base layout must be a ViewGroup"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 189
    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    if-nez v4, :cond_3

    .line 191
    iget-object v4, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    .line 192
    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 193
    .local v0, baseLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0           #baseLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 199
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/component/UIComponent;->m_IsContentLayoutPrepared:Z

    .line 200
    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    goto :goto_0
.end method

.method protected final setTouchDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "delegateView"
    .parameter "target"

    .prologue
    .line 209
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 215
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method protected final showProcessingDialog(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    const v0, 0x7f0a0047

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/component/UIComponent;->showProcessingDialog(ZI)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/component/UIComponent;->showProcessingDialog(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final showProcessingDialog(ZI)V
    .locals 1
    .parameter "visible"
    .parameter "messageId"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/component/UIComponent;->showProcessingDialog(ZLjava/lang/String;)V

    .line 231
    return-void
.end method

.method protected final showProcessingDialog(ZLjava/lang/String;)V
    .locals 7
    .parameter "visible"
    .parameter "message"

    .prologue
    const/16 v6, 0x12c

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 234
    if-eqz p1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 244
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, dialog:Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    .line 246
    check-cast v0, Landroid/view/ViewStub;

    .end local v0           #dialog:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f08015d

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 254
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->bringToFront()V

    .line 256
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {v1, v4, v5, v3, v6}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {v1, v5, v4, v3, v6}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    goto :goto_0
.end method

.method protected showUI(Landroid/view/View;ZZ)V
    .locals 1
    .parameter "view"
    .parameter "visible"
    .parameter "animation"

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/UIComponent;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method protected showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 6
    .parameter "view"
    .parameter "visible"
    .parameter "animation"
    .parameter "completionCallback"

    .prologue
    const/16 v5, 0x190

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->threadAccessCheck()V

    .line 281
    if-nez p1, :cond_0

    .line 283
    const-string v1, "view"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'view\' is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    if-eqz p2, :cond_3

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    if-eqz p3, :cond_2

    .line 295
    invoke-static {p1, v3, v4, v2, v5}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 296
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz p4, :cond_1

    .line 298
    new-instance v1, Lcom/android/camera/component/UIComponent$1;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/component/UIComponent$1;-><init>(Lcom/android/camera/component/UIComponent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 354
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 316
    if-eqz p4, :cond_1

    .line 317
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 325
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    if-eqz p3, :cond_4

    .line 328
    invoke-static {p1, v4, v3, v2, v5}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 329
    .restart local v0       #ani:Landroid/view/animation/Animation;
    if-eqz p4, :cond_1

    .line 331
    new-instance v1, Lcom/android/camera/component/UIComponent$2;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/component/UIComponent$2;-><init>(Lcom/android/camera/component/UIComponent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 348
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 349
    if-eqz p4, :cond_1

    .line 350
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
