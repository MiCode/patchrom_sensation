.class Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "AlbumArtGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AlbumArtGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerQueryHandler"
.end annotation


# instance fields
.field private mImageDecodeListener:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImageDecoder:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/music/util/AsyncImageDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder;)V
    .locals 2
    .parameter "res"
    .parameter "isEnhancerExist"
    .parameter "imageDecodeListener"
    .parameter "imageDecoder"

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 107
    iput-object v1, p0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->mImageDecodeListener:Ljava/lang/ref/SoftReference;

    .line 108
    iput-object v1, p0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->mImageDecoder:Ljava/lang/ref/SoftReference;

    .line 116
    if-nez p3, :cond_0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "imageDecodeListener can\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p4, :cond_1

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "imageDecoder can\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->mImageDecodeListener:Ljava/lang/ref/SoftReference;

    .line 125
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->mImageDecoder:Ljava/lang/ref/SoftReference;

    .line 126
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 130
    const-string v2, "[AlbumArtSqlHandler]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete, token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->mImageDecodeListener:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 133
    .local v1, listener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->mImageDecoder:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/util/AsyncImageDecoder;

    .line 134
    .local v10, imageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    if-eqz v1, :cond_0

    if-nez v10, :cond_2

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    .line 136
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    if-nez p3, :cond_3

    .line 142
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v2, 0x1

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v2

    move/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 148
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    const-string v2, "album_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 150
    .local v12, indexAlbumId:I
    const-string v2, "album_art"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 151
    .local v11, indexAlbumArtId:I
    const-string v2, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 152
    .local v13, indexAlbumName:I
    const/4 v2, -0x1

    if-eq v2, v12, :cond_4

    const/4 v2, -0x1

    if-eq v2, v11, :cond_4

    const/4 v2, -0x1

    if-ne v2, v13, :cond_5

    .line 153
    :cond_4
    const-string v2, "[AlbumArtSqlHandler]"

    const-string v3, "indexAlbumId == -1 || indexAlbumArtId == -1!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 155
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v2, 0x1

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v2

    move/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_5
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, albumName:Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 164
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v2, 0x1

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v2

    move/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 168
    :cond_7
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, albumArtPath:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 170
    .local v8, albumId:I
    const-string v2, "[AlbumArtSqlHandler]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete, albumId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "[AlbumArtSqlHandler]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete, albumArtPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 175
    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move/from16 v0, p1

    invoke-virtual {v10, v0, v8, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->add(III[Ljava/lang/Object;)V

    .line 183
    .end local v7           #albumArtPath:Ljava/lang/String;
    .end local v8           #albumId:I
    .end local v9           #albumName:Ljava/lang/String;
    .end local v11           #indexAlbumArtId:I
    .end local v12           #indexAlbumId:I
    .end local v13           #indexAlbumName:I
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 177
    .restart local v7       #albumArtPath:Ljava/lang/String;
    .restart local v8       #albumId:I
    .restart local v9       #albumName:Ljava/lang/String;
    .restart local v11       #indexAlbumArtId:I
    .restart local v12       #indexAlbumId:I
    .restart local v13       #indexAlbumName:I
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move/from16 v0, p1

    invoke-virtual {v10, v0, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    .end local v7           #albumArtPath:Ljava/lang/String;
    .end local v8           #albumId:I
    .end local v9           #albumName:Ljava/lang/String;
    .end local v11           #indexAlbumArtId:I
    .end local v12           #indexAlbumId:I
    .end local v13           #indexAlbumName:I
    :cond_a
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v2, 0x1

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v2

    move/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto :goto_1
.end method
