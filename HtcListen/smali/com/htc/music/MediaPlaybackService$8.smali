.class Lcom/htc/music/MediaPlaybackService$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x12

    const/16 v5, 0xf

    const/16 v4, 0xd

    .line 2425
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2429
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2430
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v1, v7}, Lcom/htc/music/MediaPlaybackService;->access$4600(Lcom/htc/music/MediaPlaybackService;Z)V

    .line 2431
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z
    invoke-static {v1, v7}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2432
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2437
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2438
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2439
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2442
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 2470
    :cond_1
    :goto_0
    return-void

    .line 2443
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2444
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2445
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 2447
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5108(Lcom/htc/music/MediaPlaybackService;)I

    .line 2448
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mCardId:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5202(Lcom/htc/music/MediaPlaybackService;I)I

    .line 2449
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2450
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2451
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2453
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2454
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2456
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2457
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MEDIA_SCANNER_FINISHED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorage(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2459
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "ACTION_MEDIA_SCANNER_FINISHED: reloadQueue"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2461
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2462
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2463
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2464
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2465
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2467
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-wide/16 v2, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V
    invoke-static {v1, v7, v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$5300(Lcom/htc/music/MediaPlaybackService;IJ)V

    goto/16 :goto_0
.end method
