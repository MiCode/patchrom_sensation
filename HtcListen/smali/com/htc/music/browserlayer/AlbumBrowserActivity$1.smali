.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showSpinner(Z)V

    .line 308
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$200(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    :cond_1
    :goto_1
    return-void

    .line 291
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showSpinner(Z)V

    goto :goto_0

    .line 294
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->removeDialog(I)V

    .line 299
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->removeDialog(I)V

    .line 300
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->removeDialog(I)V

    .line 302
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 303
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->finish()V

    goto :goto_1
.end method
