.class public Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;
.super Landroid/content/BroadcastReceiver;
.source "RotateHtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/RotateHtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTC_IMERecever"
.end annotation


# instance fields
.field imeHeight:I

.field final synthetic this$0:Lcom/htc/music/widget/RotateHtcAlertDialog;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/RotateHtcAlertDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/music/widget/RotateHtcAlertDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 251
    const/16 v0, 0xe0

    iput v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;->imeHeight:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 257
    const-string v8, "FIX_DIALOG_HEIGHT"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 258
    .local v0, FixedHeight:Z
    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const-string v8, "SIP_VISIBLE"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 262
    .local v6, sipVisible:Z
    const-string v8, "SIP_HEIGHT"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 263
    .local v5, sipHeight:I
    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 264
    .local v4, screenHeight:I
    sub-int v8, v4, v5

    add-int/lit8 v2, v8, -0x5

    .line 265
    .local v2, adjustedHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v1, v8, Landroid/content/res/Configuration;->orientation:I

    .line 267
    .local v1, Orientation:I
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/music/widget/RotateHtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/music/widget/RotateHtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 269
    .local v7, win:Landroid/view/Window;
    const-string v8, "[RotateHtcAlertDialog]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APD sipVisible = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adjustedHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Orientation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-eqz v6, :cond_2

    :try_start_0
    iget v8, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;->imeHeight:I

    if-lt v2, v8, :cond_2

    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    .line 274
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/music/widget/RotateHtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/music/widget/RotateHtcAlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 276
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-le v8, v2, :cond_0

    .line 277
    const/4 v8, -0x1

    invoke-virtual {v7, v8, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v3

    .line 288
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 279
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x2

    if-eq v1, v8, :cond_3

    .line 280
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/music/widget/RotateHtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/music/widget/RotateHtcAlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 281
    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_0

    .line 283
    :cond_3
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/music/widget/RotateHtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/music/widget/RotateHtcAlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
