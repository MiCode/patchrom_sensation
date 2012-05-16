.class Lcom/htc/music/browserlayer/TrackBrowserActivity$28;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5287
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 5290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x122

    cmp-long v6, v8, v10

    if-lez v6, :cond_0

    .line 5291
    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v7

    :goto_0
    iput-object v6, v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 5293
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5294
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v6, v7, v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5295
    .local v2, cursor:Landroid/database/Cursor;
    instance-of v6, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_2

    .line 5296
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v6, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 5336
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    return-void

    .line 5291
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5298
    .restart local v2       #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v6, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 5299
    .local v0, c:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v6, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 5304
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z
    invoke-static {v6, v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4702(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z

    .line 5305
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 5307
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v6, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 5309
    const/4 v4, 0x0

    .line 5310
    .local v4, listItem:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 5311
    .local v5, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 5313
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 5315
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #listItem:Landroid/content/ContentValues;
    check-cast v4, Landroid/content/ContentValues;

    .line 5317
    .restart local v4       #listItem:Landroid/content/ContentValues;
    if-eqz v4, :cond_5

    .line 5318
    const-string v6, "title"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5319
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5320
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5321
    add-int/lit8 v1, v1, 0x1

    .line 5313
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5325
    :cond_5
    const-string v6, "[PluginNowPlayingListActivity]"

    const-string v7, "mDelaySearchHandler()...listItem is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5329
    :cond_6
    const-string v6, "[PluginNowPlayingListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after filter, count =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFilterPosToOldPosTable size => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5332
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #listItem:Landroid/content/ContentValues;
    .end local v5           #title:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
