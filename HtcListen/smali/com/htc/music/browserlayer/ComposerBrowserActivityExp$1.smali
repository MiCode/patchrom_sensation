.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;
.super Landroid/content/BroadcastReceiver;
.source "ComposerBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showSpinner(Z)V

    .line 350
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    :cond_1
    :goto_1
    return-void

    .line 326
    :cond_2
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->isAsyncQuerying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v3, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0

    .line 330
    :cond_3
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    const-string v3, "[ComposerBrowserActivityExp]"

    const-string v4, "ACTION_MEDIA_UNMOUNTED"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, data:Landroid/net/Uri;
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 342
    const-string v3, "[ComposerBrowserActivityExp]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive another storage unmount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->hideHtcContextMenu()V
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    .line 346
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 347
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 348
    :cond_5
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    goto/16 :goto_0
.end method
