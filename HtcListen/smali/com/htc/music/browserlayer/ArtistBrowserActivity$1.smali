.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ArtistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

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

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showSpinner(Z)V

    .line 251
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    :cond_1
    :goto_1
    return-void

    .line 235
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showSpinner(Z)V

    goto :goto_0

    .line 238
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->removeDialog(I)V

    .line 243
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->removeDialog(I)V

    .line 244
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->removeDialog(I)V

    .line 245
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 246
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->finish()V

    goto :goto_1
.end method
