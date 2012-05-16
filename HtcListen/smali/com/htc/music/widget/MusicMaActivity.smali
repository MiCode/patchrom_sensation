.class public Lcom/htc/music/widget/MusicMaActivity;
.super Landroid/app/Activity;
.source "MusicMaActivity.java"


# static fields
.field public static final START_NEW_ACTIVITY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "[MusicMaActivity]"


# instance fields
.field protected mActivityPaused:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mEnableRightBtn:I

.field protected mEnableSearch:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    .line 26
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityPaused:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 381
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected disableCategoryDropDown()V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 373
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 374
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/music/widget/IMusicTabActivityInterface;->disableCategoryDropDown()V

    goto :goto_0
.end method

.method public disableSearch()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 385
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 394
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 402
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 409
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 397
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->onSearchRequested()Z

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 403
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public enableSearch()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 389
    return-void
.end method

.method public findRootParent()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 138
    .local v0, rootParent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 146
    .end local p0
    :goto_0
    return-object p0

    .line 140
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 141
    .local v1, temp:Landroid/app/Activity;
    :goto_1
    if-eqz v1, :cond_1

    .line 142
    move-object v0, v1

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 146
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, rootParent:Landroid/app/Activity;
    if-eq p0, v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 58
    const-string v0, "[MusicMaActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive onConfigurationChanged, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 67
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    .line 54
    :cond_0
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityPaused:Z

    .line 87
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->closeOptionsMenu()V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 74
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 78
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityPaused:Z

    .line 79
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->setCategoryRightBtn(Z)V

    .line 82
    return-void

    .line 79
    :cond_1
    iget v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 94
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method protected resetBackground()V
    .locals 5

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 36
    .local v1, resId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 38
    if-lez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 42
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #resId:I
    :cond_0
    return-void
.end method

.method protected setCategoryLeftBtnVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 358
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 359
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryLeftBtnVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 7
    .parameter "setEnable"

    .prologue
    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 109
    :cond_0
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 111
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    const-string v5, "[MusicMaActivity]"

    const-string v6, "activity is paused, do not set category right button status"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    .line 117
    .local v2, parent:Landroid/app/Activity;
    instance-of v5, v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 118
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 120
    .local v1, multiParent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    const/4 v4, 0x3

    .line 121
    .local v4, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 123
    const-string v5, "InnerActivityType"

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 126
    :cond_3
    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    .line 127
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreRightBtn()V

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setOnlineSearchRightBtn()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Enable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 330
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 331
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Enable(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 318
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 319
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2OnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 342
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Visible(Z)V
    .locals 3
    .parameter "setVisibile"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 306
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Visible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 279
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 280
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 291
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 228
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 179
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 181
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 188
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 190
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 192
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 193
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 194
    :cond_1
    if-ne v5, p2, :cond_3

    .line 195
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 198
    :cond_2
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 209
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 440
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 441
    return-void
.end method

.method public startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    const/4 v4, 0x3

    .line 417
    const-string v2, "[MusicMaActivity]"

    const-string v3, "musicMaActivity startSearch...."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-nez v2, :cond_0

    .line 435
    :goto_0
    return-void

    .line 420
    :cond_0
    const/4 v1, 0x0

    .line 421
    .local v1, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 422
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 423
    const-string v2, "InnerActivityType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 426
    :cond_1
    if-eq v4, v1, :cond_2

    const/4 v2, 0x1

    if-ne v2, v1, :cond_4

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startLocalSearch()V

    .line 434
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 429
    :cond_4
    const/4 v2, 0x5

    if-eq v2, v1, :cond_5

    const/4 v2, 0x4

    if-ne v2, v1, :cond_3

    .line 431
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startOnlineSearchPage()V

    goto :goto_1
.end method
