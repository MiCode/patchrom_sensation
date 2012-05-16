.class Lcom/htc/music/MiniPlayer$NonUIHandler;
.super Landroid/os/Handler;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/MiniPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 945
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    .line 946
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 947
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 950
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 952
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 953
    .local v1, albumArtPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 954
    const/4 v13, 0x1

    .line 956
    .local v13, sampleSize:I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 957
    .local v3, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v14, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 958
    const/4 v14, 0x0

    iput-boolean v14, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 959
    const/4 v14, 0x1

    iput v14, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 960
    const/4 v14, 0x1

    iput-boolean v14, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 961
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 962
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v10, v14, 0x1

    .line 963
    .local v10, nextWidth:I
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v9, v14, 0x1

    .line 964
    .local v9, nextHeight:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I
    invoke-static {v14}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)I

    move-result v14

    if-le v10, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I
    invoke-static {v14}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)I

    move-result v14

    if-le v9, v14, :cond_1

    .line 965
    shl-int/lit8 v13, v13, 0x1

    .line 966
    shr-int/lit8 v10, v10, 0x1

    .line 967
    shr-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 970
    :cond_1
    iput v13, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 971
    const/4 v14, 0x0

    iput-boolean v14, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 972
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 975
    .local v2, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/htc/music/MiniPlayer;->access$400(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 976
    .local v8, msgUI:Landroid/os/Message;
    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 978
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 979
    .local v4, data:Landroid/os/Bundle;
    const-string v14, "DECODED_BITMAP"

    invoke-virtual {v4, v14, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 980
    invoke-virtual {v8, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/htc/music/MiniPlayer;->access$400(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 992
    .end local v1           #albumArtPath:Ljava/lang/String;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #data:Landroid/os/Bundle;
    .end local v8           #msgUI:Landroid/os/Message;
    .end local v9           #nextHeight:I
    .end local v10           #nextWidth:I
    .end local v13           #sampleSize:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v14, :cond_0

    .line 994
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 995
    :catch_0
    move-exception v5

    .line 996
    .local v5, ex:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1002
    .end local v5           #ex:Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v14, :cond_0

    .line 1004
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->prev()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1005
    :catch_1
    move-exception v5

    .line 1006
    .restart local v5       #ex:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1012
    .end local v5           #ex:Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v14, :cond_0

    .line 1013
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v14, :cond_0

    .line 1016
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1020
    const/4 v11, 0x0

    .line 1021
    .local v11, pos:I
    const/4 v7, 0x0

    .line 1023
    .local v7, list:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v12

    .line 1025
    .local v12, queueSize:I
    if-gtz v12, :cond_3

    .line 1026
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v7

    .line 1027
    const/4 v11, 0x0

    .line 1033
    :goto_2
    if-eqz v7, :cond_2

    array-length v14, v7

    if-gtz v14, :cond_4

    .line 1034
    :cond_2
    const-string v14, "[MiniPlayer]"

    const-string v15, "RELOAD_QUEUE: list is null or length <= 0"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1045
    .end local v7           #list:[I
    .end local v11           #pos:I
    .end local v12           #queueSize:I
    :catch_2
    move-exception v5

    .line 1046
    .restart local v5       #ex:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1051
    .end local v5           #ex:Landroid/os/RemoteException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v14, :cond_0

    .line 1052
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.htc.music.queuechanged"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v6, intent:Landroid/content/Intent;
    const-string v14, "[MiniPlayer]"

    const-string v15, "send QUEUE_CHANGED since reload queue!!"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {v14, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1029
    .end local v6           #intent:Landroid/content/Intent;
    .restart local v7       #list:[I
    .restart local v11       #pos:I
    .restart local v12       #queueSize:I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v11

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v7

    goto :goto_2

    .line 1037
    :cond_4
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    if-le v11, v14, :cond_5

    .line 1038
    const-string v14, "[MiniPlayer]"

    const-string v15, "RELOAD_QUEUE: pos > list.length - 1"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1047
    .end local v7           #list:[I
    .end local v11           #pos:I
    .end local v12           #queueSize:I
    :catch_3
    move-exception v5

    .line 1048
    .local v5, ex:Ljava/lang/Exception;
    const-string v14, "[MiniPlayer]"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1042
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v7       #list:[I
    .restart local v11       #pos:I
    .restart local v12       #queueSize:I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v14, v14, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/htc/music/NpCategory;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {v14, v7, v11, v15}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
