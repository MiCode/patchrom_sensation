.class public Lcom/htc/music/widget/RotateHtcAlertDialog;
.super Landroid/app/Dialog;
.source "RotateHtcAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;,
        Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;,
        Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[RotateHtcAlertDialog]"


# instance fields
.field private mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

.field private mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

.field private mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

.field private mRigistered:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    .line 83
    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mRigistered:Z

    .line 88
    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 90
    new-instance v0, Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/music/widget/RotateHtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    .line 91
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    .line 83
    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mRigistered:Z

    .line 96
    new-instance v0, Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/music/widget/RotateHtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    .line 97
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    .line 83
    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mRigistered:Z

    .line 102
    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setCancelable(Z)V

    .line 105
    invoke-virtual {p0, p3}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 106
    new-instance v0, Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/music/widget/RotateHtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/RotateHtcAlertDialog;)Lcom/htc/music/widget/RotateHtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    return-object v0
.end method

.method private deinitSensor()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "[RotateHtcAlertDialog]"

    const-string v1, "deinitSensor"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->disable()V

    .line 167
    :cond_0
    return-void
.end method

.method private getApplicationContextSafely()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1110
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1112
    .local v0, apContext:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1115
    .end local v0           #apContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v1

    .restart local v0       #apContext:Landroid/content/Context;
    :cond_1
    move-object v1, v0

    .line 1112
    goto :goto_0
.end method

.method private initSensor()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    if-nez v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    invoke-direct {v1, v0, p0}, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mOrientationListener:Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/htc/music/widget/RotateHtcAlertDialog$MyOrientationEventListener;->enable()V

    .line 159
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0}, Lcom/htc/music/widget/RotateHtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 471
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 473
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v4}, Lcom/htc/music/widget/RotateHtcAlertController;->installContent()V

    .line 478
    const/4 v0, 0x1

    .line 479
    .local v0, Orientation:I
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v1

    .line 480
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 484
    :cond_0
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 487
    .local v3, theWindow:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 488
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 489
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 490
    const-string v4, "AlertDialog"

    const-string v5, "[onCreate] auto launch SIP."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #theWindow:Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 207
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "HTC_IME_CURRENT_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    invoke-direct {v2, p0}, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;-><init>(Lcom/htc/music/widget/RotateHtcAlertDialog;)V

    iput-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    .line 210
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 212
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->initSensor()V

    .line 224
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 229
    const-string v1, "[RotateHtcAlertDialog]"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    if-eqz v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 234
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mIMEStateRecv:Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;

    .line 240
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->deinitSensor()V

    .line 247
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/music/widget/RotateHtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 383
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/music/widget/RotateHtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 369
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 424
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 392
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 437
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 401
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 449
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 450
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 410
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setIcon(I)V

    .line 459
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 463
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setInverseBackgroundForced(Z)V

    .line 467
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setOrientation(I)V

    .line 1123
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController;->setView(Landroid/view/View;)V

    .line 340
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/music/widget/RotateHtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 355
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1127
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1128
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;

    invoke-virtual {v0}, Lcom/htc/music/widget/RotateHtcAlertController;->updateOrientation()V

    .line 1129
    return-void
.end method
