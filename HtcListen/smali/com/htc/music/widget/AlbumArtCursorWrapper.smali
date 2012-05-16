.class public Lcom/htc/music/widget/AlbumArtCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "AlbumArtCursorWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[AlbumArtCursorWrapper]"


# instance fields
.field mAlbumArtCursor:Landroid/database/Cursor;

.field mArtCursor:Landroid/database/Cursor;

.field private mColumns:[Ljava/lang/String;

.field mMagicColumnIdx:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"
    .parameter "art"
    .parameter "artCursor"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mColumns:[Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    .line 38
    iput-object p3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    .line 39
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mMagicColumnIdx:I

    .line 40
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[AlbumArtCursorWrapper]Bad! the size of two cursor is not the same"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return-void
.end method

.method private regenAlbumCol()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 175
    invoke-super {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v7

    .line 176
    .local v7, oldPosition:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v2, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    .line 178
    .local v4, artCursor:Landroid/database/Cursor;
    new-array v5, v13, [Ljava/lang/String;

    const-string v9, "_id"

    aput-object v9, v5, v11

    const-string v9, "album_art"

    aput-object v9, v5, v12

    .line 182
    .local v5, cols:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 183
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_0

    .line 185
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToFirst()Z

    .line 194
    :goto_1
    invoke-super {p0}, Landroid/database/CursorWrapper;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_1

    .line 195
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v8, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v9, "album_id"

    invoke-super {p0, v9}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, albumIdx:I
    invoke-super {p0, v11}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    .line 198
    .local v6, id:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-super {p0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    goto :goto_1

    .line 204
    .end local v3           #albumIdx:I
    .end local v6           #id:I
    .end local v8           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    new-instance v1, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v1, v5, v0}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 205
    .local v1, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    iget-object v9, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_2

    .line 206
    iget-object v9, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    .line 209
    :cond_2
    iput-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    .line 210
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v9

    invoke-virtual {v1}, Lcom/htc/music/util/ArrayListCursor;->getCount()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 211
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "[AlbumArtCursorWrapper]Bad! the size of two cursor is not the same in regenAlbumCol"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 215
    :cond_3
    invoke-super {p0, v7}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 216
    iget-object v9, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 217
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 103
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 108
    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 109
    invoke-super {p0}, Landroid/database/CursorWrapper;->deactivate()V

    .line 110
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/database/CursorWrapper;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    const-string v0, "album_art"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mMagicColumnIdx:I

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-string v0, "album_art"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mMagicColumnIdx:I

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "album_art"

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    iget-object v3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mColumns:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mColumns:[Ljava/lang/String;

    array-length v3, v3

    if-gtz v3, :cond_2

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->getColumnCount()I

    move-result v2

    .line 49
    .local v2, superColumnCount:I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mColumns:[Ljava/lang/String;

    .line 50
    invoke-super {p0}, Landroid/database/CursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, oriColumns:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 52
    iget-object v3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mColumns:[Ljava/lang/String;

    aget-object v4, v1, v0

    aput-object v4, v3, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mColumns:[Ljava/lang/String;

    const-string v4, "album_art"

    aput-object v4, v3, v2

    .line 57
    .end local v0           #i:I
    .end local v1           #oriColumns:[Ljava/lang/String;
    .end local v2           #superColumnCount:I
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mColumns:[Ljava/lang/String;

    return-object v3
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_0

    .line 63
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 130
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/htc/music/widget/AlbumArtCursorWrapper;->regenAlbumCol()V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->move(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToFirst()Z
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/htc/music/widget/AlbumArtCursorWrapper;->regenAlbumCol()V

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToLast()Z
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/htc/music/widget/AlbumArtCursorWrapper;->regenAlbumCol()V

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToNext()Z
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/htc/music/widget/AlbumArtCursorWrapper;->regenAlbumCol()V

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 138
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/htc/music/widget/AlbumArtCursorWrapper;->regenAlbumCol()V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    .line 141
    .local v0, result:Z
    iget-object v2, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 142
    .local v1, result2:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 143
    :cond_1
    const-string v2, "[AlbumArtCursorWrapper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " super.moveToPosition("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAlbumArtCursor.moveToPosition(position) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/htc/music/widget/AlbumArtCursorWrapper;->regenAlbumCol()V

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mAlbumArtCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    return-void
.end method

.method public requery()Z
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/database/CursorWrapper;->requery()Z

    move-result v0

    .line 169
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/widget/AlbumArtCursorWrapper;->regenAlbumCol()V

    .line 171
    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 226
    iget-object v0, p0, Lcom/htc/music/widget/AlbumArtCursorWrapper;->mArtCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 227
    return-void
.end method
