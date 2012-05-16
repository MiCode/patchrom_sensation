.class public Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "HTCAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/HTCAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/HTCAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/HTCAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/widget/HTCAsyncQueryHandler;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    return-void
.end method

.method private joinAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"
    .parameter "resolver"

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 175
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 177
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 178
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 184
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 185
    const/4 p1, 0x0

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 194
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 195
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 201
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 202
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/widget/HTCAsyncQueryHandler;

    iget-object v1, v1, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 83
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;

    .line 87
    .local v6, args:Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;
    iget v13, p1, Landroid/os/Message;->what:I

    .line 88
    .local v13, token:I
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 90
    .local v10, event:I
    packed-switch v10, :pswitch_data_0

    .line 152
    :goto_1
    iget-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 153
    .local v12, reply:Landroid/os/Message;
    iput-object v6, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v12, Landroid/os/Message;->arg1:I

    .line 161
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 92
    .end local v12           #reply:Landroid/os/Message;
    :pswitch_0
    const/4 v7, 0x0

    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 94
    .local v8, cursorWithAlbumArt:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 98
    iget-object v1, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/music/widget/HTCAsyncQueryHandler;

    invoke-virtual {v1, v7, v6}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->setDebugTrace(Landroid/database/Cursor;Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;)V

    .line 102
    if-eqz v7, :cond_1

    .line 104
    invoke-direct {p0, v7, v0}, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;->joinAlbumArt(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 119
    :cond_1
    :goto_2
    iput-object v8, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 106
    :catch_0
    move-exception v9

    .line 108
    .local v9, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 110
    invoke-static {}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_2
    const-string v1, "[AsyncQuery]"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v8, 0x0

    goto :goto_2

    .line 123
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #cursorWithAlbumArt:Landroid/database/Cursor;
    .end local v9           #e:Ljava/lang/Exception;
    :pswitch_1
    const/4 v11, 0x0

    .line 133
    .local v11, iterator:Landroid/content/EntityIterator;
    iput-object v11, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 137
    .end local v11           #iterator:Landroid/content/EntityIterator;
    :pswitch_2
    iget-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 141
    :pswitch_3
    iget-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 146
    :pswitch_4
    iget-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
