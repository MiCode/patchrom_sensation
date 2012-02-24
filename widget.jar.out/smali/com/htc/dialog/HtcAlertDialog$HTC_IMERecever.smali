.class public Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;
.super Landroid/content/BroadcastReceiver;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTC_IMERecever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertDialog;


# direct methods
.method public constructor <init>(Lcom/htc/dialog/HtcAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/dialog/HtcAlertDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 260
    const-string v7, "SIP_VISIBLE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 262
    .local v5, sipVisible:Z
    const/4 v4, -0x1

    .line 263
    .local v4, sipHeight:I
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 264
    .local v3, screenHeight:I
    sub-int v7, v3, v4

    add-int/lit8 v1, v7, -0x5

    .line 265
    .local v1, adjustedHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v0, v7, Landroid/content/res/Configuration;->orientation:I

    .line 267
    .local v0, Orientation:I
    iget-object v7, p0, Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 269
    .local v6, win:Landroid/view/Window;
    const-string v7, "HtcAlertDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APD sipVisible = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "adjustedHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Orientation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz v5, :cond_1

    const/16 v7, 0x8a

    if-lt v1, v7, :cond_1

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    .line 274
    :try_start_0
    iget-object v7, p0, Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/dialog/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 276
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-le v7, v1, :cond_0

    .line 277
    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Landroid/view/Window;->setLayout(II)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v7, p0, Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/dialog/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 290
    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
