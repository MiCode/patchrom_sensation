.class final Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
.super Landroid/os/Handler;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    .line 249
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 255
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<< NonUIHandler >>, msg.what = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 258
    .local v12, data:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$300(Lcom/htc/music/DMPMusicPlaybackService;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->prev()V

    goto :goto_0

    .line 267
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$300(Lcom/htc/music/DMPMusicPlaybackService;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->next(Z)V

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v22, "uriPath"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 273
    .local v21, uriPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v21           #uriPath:Ljava/lang/String;
    :pswitch_3
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "#### case MSG_REQUEST_ALBUMART: mIsAlbumArtGetting = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    .line 282
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v7, cv:Landroid/content/ContentValues;
    const-string v22, "shuffle"

    const-string v23, "shuffle"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v22, "position"

    const-string v23, "position"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v22, "server"

    const-string v23, "server"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v22, "content"

    const-string v23, "content"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 298
    .restart local v7       #cv:Landroid/content/ContentValues;
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 299
    .local v11, cvShufflemode:Ljava/lang/Integer;
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 300
    .local v9, cvPosition:Ljava/lang/Integer;
    const/16 v20, 0x0

    .line 301
    .local v20, serverID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 303
    .local v6, contentID:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 304
    const-string v22, "shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 305
    const-string v22, "position"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 306
    const-string v22, "server"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 307
    const-string v22, "content"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    :cond_2
    if-eqz v11, :cond_9

    if-eqz v9, :cond_9

    if-eqz v20, :cond_9

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 312
    const/16 v18, 0x1

    .line 314
    .local v18, isNeedToQuery:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 315
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "<<<<<<<<<<<<<< There is this content in hashtable...Check the file exists or not...>>>>>>>>>>>>>>>>"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, albumArtFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, albumArtFile:Ljava/io/File;
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<> path => "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 321
    const/16 v18, 0x0

    .line 322
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "<<< Don\'t query again...>>>"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v4           #albumArtFile:Ljava/io/File;
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v18, :cond_8

    .line 336
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v22

    const/16 v23, 0x2afc

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 325
    .restart local v4       #albumArtFile:Ljava/io/File;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const/16 v18, 0x1

    .line 327
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "<<< There is no File...Need to query...>>>"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 343
    .end local v4           #albumArtFile:Ljava/io/File;
    :cond_5
    :try_start_1
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "case MSG_REQUEST_ALBUMART: shuffle on, mNotify is null...contentID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", albumArtFilePath: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 354
    :catch_0
    move-exception v14

    .line 356
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 347
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 351
    :cond_7
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "case MSG_REQUEST_ALBUMART: shuffle off, mNotify is null...contentID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", albumArtFilePath: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 367
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 369
    :catch_1
    move-exception v14

    .line 371
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 376
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v18           #isNeedToQuery:Z
    :cond_9
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "case MSG_REQUEST_ALBUMART: current cv is incorrect. remove it and try next one."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v22

    const/16 v23, 0x2afc

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 385
    .end local v6           #contentID:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #cvPosition:Ljava/lang/Integer;
    .end local v11           #cvShufflemode:Ljava/lang/Integer;
    .end local v20           #serverID:Ljava/lang/String;
    :cond_a
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "case MSG_REQUEST_ALBUMART: No album art request..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_b
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "#### case MSG_REQUEST_ALBUMART: Getting some album art now....ignore this time request..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :pswitch_4
    const-string v22, "adn_server"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 398
    .restart local v20       #serverID:Ljava/lang/String;
    const-string v22, "adn_content"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 399
    .restart local v6       #contentID:Ljava/lang/String;
    const-string v22, "adn_filepath"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 401
    .local v15, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 402
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "something wrong, this arraylist should not be empty at this moment."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 407
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-nez v7, :cond_d

    .line 408
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "something wrong, this content value should not be null at this moment."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :cond_d
    const-string v22, "shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 413
    .local v11, cvShufflemode:I
    const-string v22, "position"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 414
    .local v9, cvPosition:I
    const-string v22, "content"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, cvContentID:Ljava/lang/String;
    const-string v22, "server"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 417
    .local v10, cvServerID:Ljava/lang/String;
    if-eqz v10, :cond_e

    if-eqz v8, :cond_e

    if-ltz v9, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_e

    if-eqz v11, :cond_f

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_f

    .line 421
    :cond_e
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "something wrong, CV is incorrect."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :cond_f
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v22

    const/16 v23, 0x2afc

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 432
    if-nez v15, :cond_10

    .line 433
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "## case MSG_HANDLE_ALBUMART: filePath from middlelayer is null!!!!!!!!!!"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_10
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0, v15}, Lcom/htc/music/DMPMusicPlaybackService;->access$1200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 442
    .local v3, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_13

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v13

    .line 446
    .local v13, dlnapath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->access$1300(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->access$1400(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    .line 449
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 451
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1500(Lcom/htc/music/DMPMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_11

    .line 458
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    const-string v23, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 478
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 479
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 461
    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    const-string v23, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 464
    :catch_2
    move-exception v14

    .line 466
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 467
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v14

    .line 469
    .local v14, e:Ljava/lang/NullPointerException;
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "case MSG_HANDLE_ALBUMART: NullPointerException... mNotify => "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v14}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 474
    .end local v14           #e:Ljava/lang/NullPointerException;
    :cond_12
    const-string v22, "[DMPMusicPlaybackService]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handle Album Art...fail to save file to SD card...filePath = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 480
    :catch_4
    move-exception v14

    .line 482
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 486
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    .end local v13           #dlnapath:Ljava/lang/String;
    .end local v14           #e:Ljava/io/IOException;
    :cond_13
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "Handle Album Art...afDescriptor is null or length is 0..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    .end local v3           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .end local v16           #filename:Ljava/lang/String;
    :cond_14
    const-string v22, "[DMPMusicPlaybackService]"

    const-string v23, "Handle Album Art...Incorrect Server/content..."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    .end local v6           #contentID:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #cvContentID:Ljava/lang/String;
    .end local v9           #cvPosition:I
    .end local v10           #cvServerID:Ljava/lang/String;
    .end local v11           #cvShufflemode:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v20           #serverID:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    goto/16 :goto_0

    .line 504
    :pswitch_6
    const-string v22, "interval"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 506
    .local v17, interval:I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->getNowplayingQueue(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 507
    :catch_5
    move-exception v14

    .line 509
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 515
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v17           #interval:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 519
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v22

    if-eqz v22, :cond_15

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->release()V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v22 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$202(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    .line 523
    :cond_15
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->getLooper()Landroid/os/Looper;

    move-result-object v19

    .line 525
    .local v19, looper:Landroid/os/Looper;
    if-eqz v19, :cond_0

    .line 526
    invoke-virtual/range {v19 .. v19}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
