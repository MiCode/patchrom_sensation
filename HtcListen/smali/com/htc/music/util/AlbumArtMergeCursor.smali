.class public Lcom/htc/music/util/AlbumArtMergeCursor;
.super Landroid/database/AbstractCursor;
.source "AlbumArtMergeCursor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "[AlbumArtMergeCursor]"


# instance fields
.field private mAlbumIdPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDlAlbumKeyColumn:I

.field private mDlArtPathColumn:I

.field private mDlColumnCount:I

.field private mDlCursor:Landroid/database/Cursor;

.field private mMdAlbumKeyColumn:I

.field private mMdArtPathColumn:I

.field private mMdColumnCount:I

.field private mMdCursor:Landroid/database/Cursor;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mSortByAlbum:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    .locals 7
    .parameter "mediaCursor"
    .parameter "albumArtCursor"
    .parameter "sortByAlbum"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 75
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 24
    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    .line 27
    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    .line 30
    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    .line 33
    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    .line 36
    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdArtPathColumn:I

    .line 39
    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlArtPathColumn:I

    .line 42
    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    .line 45
    iput v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    .line 48
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    .line 51
    iput-boolean v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    .line 53
    new-instance v4, Lcom/htc/music/util/AlbumArtMergeCursor$1;

    invoke-direct {v4, p0}, Lcom/htc/music/util/AlbumArtMergeCursor$1;-><init>(Lcom/htc/music/util/AlbumArtMergeCursor;)V

    iput-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    const-string v4, "[AlbumArtMergeCursor]"

    const-string v5, "Arguments are null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 82
    .local v1, millis:J
    iput-object p1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    .line 83
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    .line 84
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v5, "album_art"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdArtPathColumn:I

    .line 85
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v5, "album_key"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    .line 87
    iput-object p2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    .line 88
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    .line 89
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v5, "dl_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlArtPathColumn:I

    .line 90
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v5, "dl_album_key"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    .line 92
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    iget-boolean v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v4, :cond_4

    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, position:I
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    :cond_2
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v6, "dl_album_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 101
    .local v0, albumId:I
    if-gez v0, :cond_5

    .line 107
    :goto_1
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    .end local v0           #albumId:I
    :cond_3
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 112
    .end local v3           #position:I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 113
    const-string v4, "[AlbumArtMergeCursor]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to init AlbumArtMergeCursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .restart local v0       #albumId:I
    .restart local v3       #position:I
    :cond_5
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/music/util/AlbumArtMergeCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/music/util/AlbumArtMergeCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 418
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 443
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 444
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 215
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v4, :cond_2

    .line 216
    :cond_0
    const-string v4, "[AlbumArtMergeCursor]"

    const-string v5, "Cursors are null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    .line 232
    :cond_1
    return-object v1

    .line 220
    :cond_2
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, mediaColumnNames:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, albumArtColumnNames:[Ljava/lang/String;
    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v5, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v4, v5

    new-array v1, v4, [Ljava/lang/String;

    .line 224
    .local v1, columnNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    if-ge v2, v4, :cond_3

    .line 225
    aget-object v4, v3, v2

    aput-object v4, v1, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    if-ge v2, v4, :cond_1

    .line 229
    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/2addr v4, v2

    aget-object v5, v0, v2

    aput-object v5, v1, v4

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 4
    .parameter "column"

    .prologue
    const-wide/16 v0, 0x0

    .line 368
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 369
    :cond_0
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "Cursors are null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_0
    return-wide v0

    .line 373
    :cond_1
    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    .line 374
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "getDouble illegal argument"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0

    .line 380
    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0

    .line 383
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x0

    .line 346
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 347
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return v0

    .line 351
    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 352
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getFloat illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0

    .line 358
    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0

    .line 361
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x0

    .line 302
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 303
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return v0

    .line 307
    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 308
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getInt illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 314
    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 317
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 4
    .parameter "column"

    .prologue
    const-wide/16 v0, 0x0

    .line 324
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 325
    :cond_0
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "Cursors are null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-wide v0

    .line 329
    :cond_1
    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    .line 330
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "getLong illegal argument"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 336
    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 339
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x0

    .line 280
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 281
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    return v0

    .line 285
    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 286
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "getShort illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0

    .line 292
    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0

    .line 295
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    .line 238
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 239
    :cond_0
    const-string v3, "[AlbumArtMergeCursor]"

    const-string v4, "Cursors are null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    :goto_0
    return-object v1

    .line 243
    :cond_2
    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_3

    .line 244
    const-string v3, "[AlbumArtMergeCursor]"

    const-string v4, "getString illegal argument"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_3
    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    if-ge p1, v3, :cond_8

    .line 248
    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdArtPathColumn:I

    if-ne p1, v3, :cond_7

    .line 249
    const/4 v1, 0x0

    .line 251
    .local v1, downloadPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    const-string v1, ""

    .line 256
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_4
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlArtPathColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_5
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdAlbumKeyColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, oriAlbumKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlAlbumKeyColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, dlAlbumKey:Ljava/lang/String;
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    :cond_6
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 268
    .end local v0           #dlAlbumKey:Ljava/lang/String;
    .end local v1           #downloadPath:Ljava/lang/String;
    .end local v2           #oriAlbumKey:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_8
    iget v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v4, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_9

    .line 271
    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 422
    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 423
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1
    :goto_0
    return v0

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x1

    .line 390
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 391
    :cond_0
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "Cursors are null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return v0

    .line 395
    :cond_1
    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    .line 396
    const-string v1, "[AlbumArtMergeCursor]"

    const-string v2, "isNull illegal argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_2
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0

    .line 402
    :cond_3
    iget v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdColumnCount:I

    iget v1, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0

    .line 405
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 11
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 128
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-nez v9, :cond_2

    .line 129
    :cond_0
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "Cursors are null"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 209
    :cond_1
    :goto_0
    return v6

    .line 133
    :cond_2
    if-eq p1, p2, :cond_1

    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, result:Z
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    .line 140
    if-nez v5, :cond_3

    .line 141
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 142
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mOriCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 143
    goto :goto_0

    .line 146
    :cond_3
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v10, "album_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, oriIdIndex:I
    if-ne v3, v8, :cond_4

    .line 148
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 150
    :cond_4
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v10, "dl_album_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, dlIdIndex:I
    if-eq v3, v8, :cond_5

    if-ne v1, v8, :cond_6

    .line 153
    :cond_5
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 154
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 155
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove cannot find column index of album id"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 156
    goto :goto_0

    .line 159
    :cond_6
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 160
    .local v2, mediaAlbumId:I
    if-gez v2, :cond_7

    .line 161
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 162
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove album id invalid"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 164
    goto :goto_0

    .line 167
    :cond_7
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    move v0, v8

    .line 169
    .local v0, albumArtAlbumId:I
    :goto_1
    if-eq v2, v0, :cond_1

    .line 173
    iget-boolean v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v9, :cond_a

    .line 174
    iget-object v7, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 175
    .local v4, position:Ljava/lang/Integer;
    if-nez v4, :cond_9

    .line 177
    iget-object v7, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 167
    .end local v0           #albumArtAlbumId:I
    .end local v4           #position:Ljava/lang/Integer;
    :cond_8
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_1

    .line 182
    .restart local v0       #albumArtAlbumId:I
    .restart local v4       #position:Ljava/lang/Integer;
    :cond_9
    iget-object v7, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 184
    .end local v4           #position:Ljava/lang/Integer;
    :cond_a
    if-ge p1, p2, :cond_d

    .line 186
    :cond_b
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 187
    if-nez v5, :cond_c

    .line 188
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 189
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 190
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mDlCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 191
    goto/16 :goto_0

    .line 193
    :cond_c
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 194
    if-gt v2, v0, :cond_b

    goto/16 :goto_0

    .line 197
    :cond_d
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    .line 198
    if-nez v5, :cond_e

    .line 199
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 200
    iget-object v6, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 201
    const-string v6, "[AlbumArtMergeCursor]"

    const-string v8, "onMove mDlCursor.moveToPosition failed"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 202
    goto/16 :goto_0

    .line 204
    :cond_e
    iget-object v9, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 205
    if-lt v2, v0, :cond_d

    goto/16 :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 485
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 504
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 5

    .prologue
    .line 448
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "requery +"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 454
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 455
    iget-boolean v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mSortByAlbum:Z

    if-nez v2, :cond_3

    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, position:I
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 459
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const-string v4, "dl_album_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 462
    .local v0, albumId:I
    if-gez v0, :cond_4

    .line 468
    :goto_0
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    .end local v0           #albumId:I
    :cond_2
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 473
    .end local v1           #position:I
    :cond_3
    const-string v2, "[AlbumArtMergeCursor]"

    const-string v3, "requery -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v2, 0x1

    return v2

    .line 465
    .restart local v0       #albumId:I
    .restart local v1       #position:I
    :cond_4
    iget-object v2, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 494
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mMdCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtMergeCursor;->mDlCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 514
    :cond_1
    return-void
.end method
