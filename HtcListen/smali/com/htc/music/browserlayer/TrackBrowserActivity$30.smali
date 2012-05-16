.class Lcom/htc/music/browserlayer/TrackBrowserActivity$30;
.super Landroid/content/BroadcastReceiver;
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
    .line 5708
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5711
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5712
    .local v1, action:Ljava/lang/String;
    const-string v13, "[PluginNowPlayingListActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mPluginListener...action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5714
    const-string v13, "com.htc.music.artpathupdated"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5717
    const-string v13, "position"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 5718
    .local v8, pos:I
    const-string v13, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5719
    .local v2, albumArtPath:Ljava/lang/String;
    const-string v13, "[PluginNowPlayingListActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@@ OS_ART_PATH_UPDATED... pos = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", list length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", albumArtPath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5722
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    if-ltz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_0

    .line 5723
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 5724
    .local v7, listItem:Landroid/content/ContentValues;
    const-string v13, "albumartpath"

    invoke-virtual {v7, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5728
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5846
    .end local v2           #albumArtPath:Ljava/lang/String;
    .end local v7           #listItem:Landroid/content/ContentValues;
    .end local v8           #pos:I
    :cond_0
    :goto_0
    return-void

    .line 5731
    :cond_1
    const-string v13, "com.htc.music.nowplayingqueueupdated"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 5732
    const-string v13, "values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    .line 5733
    .local v12, tmpContentVals:[Landroid/os/Parcelable;
    const-string v13, "start"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 5734
    .local v11, start:I
    const-string v13, "end"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 5735
    .local v5, end:I
    const-string v13, "[PluginNowPlayingListActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@@ mPluginListener... start = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", end = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mIsQueueChanged = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z
    invoke-static {v15}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 5741
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    sub-int v13, v5, v11

    add-int/lit8 v13, v13, 0x1

    if-ge v6, v13, :cond_2

    .line 5743
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v14

    aget-object v13, v12, v6

    check-cast v13, Landroid/content/ContentValues;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5741
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5747
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5757
    :try_start_0
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v9

    .line 5759
    .local v9, queueSize:I
    add-int/lit8 v13, v9, -0x1

    if-ne v5, v13, :cond_3

    .line 5760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initListPos()V

    .line 5761
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5766
    .end local v9           #queueSize:I
    :catch_0
    move-exception v4

    .line 5768
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5764
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v9       #queueSize:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5772
    .end local v6           #i:I
    .end local v9           #queueSize:I
    :cond_4
    if-nez v11, :cond_5

    .line 5773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 5775
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    sub-int v13, v5, v11

    add-int/lit8 v13, v13, 0x1

    if-ge v6, v13, :cond_6

    .line 5777
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v14

    aget-object v13, v12, v6

    check-cast v13, Landroid/content/ContentValues;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5775
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5781
    :cond_6
    :try_start_2
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v9

    .line 5783
    .restart local v9       #queueSize:I
    add-int/lit8 v13, v9, -0x1

    if-ne v5, v13, :cond_7

    .line 5784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    .line 5785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 5786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 5792
    .end local v9           #queueSize:I
    :catch_1
    move-exception v4

    .line 5793
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5790
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v9       #queueSize:I
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 5799
    .end local v5           #end:I
    .end local v6           #i:I
    .end local v9           #queueSize:I
    .end local v11           #start:I
    .end local v12           #tmpContentVals:[Landroid/os/Parcelable;
    :cond_8
    const-string v13, "com.htc.music.trackdetailsupdated"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 5801
    const-string v13, "position"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 5802
    .local v10, responsePos:I
    if-ltz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_0

    .line 5804
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v13

    if-ne v10, v13, :cond_9

    .line 5805
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const-string v13, "values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;
    invoke-static {v14, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6202(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 5807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 5808
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;
    invoke-static {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6302(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 5809
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const-string v14, "com.htc.music.newproperty"

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->notifyProperty(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6400(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5812
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x0

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;
    invoke-static {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6202(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    goto/16 :goto_0

    .line 5814
    .end local v10           #responsePos:I
    :cond_a
    const-string v13, "com.htc.music.queuechanged"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 5815
    const-string v13, "[PluginNowPlayingListActivity]"

    const-string v14, "@@ QUEUE_CHANGED... "

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5816
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x1

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z
    invoke-static {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6002(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z

    .line 5818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 5820
    :try_start_4
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    .line 5821
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V

    .line 5822
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v14, 0x12c

    invoke-interface {v13, v14}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5826
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    goto/16 :goto_0

    .line 5823
    :catch_2
    move-exception v4

    .line 5824
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 5827
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_b
    const-string v13, "com.htc.music.metachanged"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 5828
    const/4 v3, -0x1

    .line 5830
    .local v3, curPos:I
    :try_start_5
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v3

    .line 5831
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 5832
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13, v3}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v3

    .line 5837
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v13

    if-eq v13, v3, :cond_d

    .line 5839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I
    invoke-static {v13, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5702(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)I

    .line 5840
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 5843
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    goto/16 :goto_0

    .line 5834
    :catch_3
    move-exception v4

    .line 5835
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method
