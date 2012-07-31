.class public abstract Lcom/htc/album/modules/collection/CollectionManager;
.super Ljava/lang/Object;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/htc/album/modules/collection/Collection;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static CANCEL_LOADING:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static SMART_COLLECTION_LIST:[Ljava/lang/String;

.field public static SOURCE_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    const-class v0, Lcom/htc/album/modules/collection/CollectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/CollectionManager;->LOG_TAG:Ljava/lang/String;

    .line 32
    sput-boolean v2, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.htc.HTCAlbum.ALL_3DS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc.HTCAlbum.ALL_PHOTOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.htc.HTCAlbum.ALL_VIDEOS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.htc.HTCAlbum.BURST_SHOTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.htc.HTCAlbum.SNAPBOOTH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.htc.TMO.FAVORITES"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.htc.HTCAlbum.MY_FAVORITES"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.htc.HTCAlbum.MY_INKS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.htc.HTCAlbum.SCRIBBLES"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/CollectionManager;->SMART_COLLECTION_LIST:[Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    sput v0, Lcom/htc/album/modules/collection/CollectionManager;->SOURCE_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addItemToCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "sourceType"
    .parameter "collectionType"
    .parameter "bucketId"
    .parameter "displayName"
    .parameter "itemPath"
    .parameter "itemTime"
    .parameter "mimeType"
    .parameter "degree"
    .parameter "fileSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    .local p1, collections:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;TC;>;"
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/Collection;

    .line 361
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;,"TC;"
    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/htc/album/modules/collection/CollectionManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 364
    invoke-virtual {p1, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v1, p3

    move-object/from16 v2, p7

    move-wide/from16 v3, p8

    move-object/from16 v5, p10

    move/from16 v6, p11

    move-wide/from16 v7, p12

    .line 367
    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/modules/collection/Collection;->updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJ)V

    .line 368
    return-void
.end method

.method private addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V
    .locals 14
    .parameter
    .parameter "context"
    .parameter "sourceType"
    .parameter "collectionType"
    .parameter "itemPath"
    .parameter "itemTime"
    .parameter "mimeType"
    .parameter "degree"
    .parameter "fileSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    .local p1, collections:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;TC;>;"
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p4

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-direct/range {v0 .. v13}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 353
    return-void
.end method

.method private doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;)",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    .local p1, inputCL:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;TC;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v2, finalCL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TC;>;"
    sget-object v0, Lcom/htc/album/modules/collection/CollectionManager;->SMART_COLLECTION_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 376
    .local v5, smartCL:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/collection/Collection;

    .line 377
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;,"TC;"
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    .end local v1           #collection:Lcom/htc/album/modules/collection/Collection;,"TC;"
    .end local v5           #smartCL:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v6, tempArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TC;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 387
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    return-object v2
.end method

.method private loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;)V
    .locals 48
    .parameter "context"
    .parameter
    .parameter "sourceType"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TC;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    .local p2, collectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;TC;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 94
    :cond_0
    sget-object v3, Lcom/htc/album/modules/collection/CollectionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadCollectionFromSource] Error, context = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", collectionList = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-object v3, Lcom/htc/album/modules/collection/CollectionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadCollectionFromSource] query ++, source = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 104
    .local v46, startTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 106
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p3 .. p4}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, where:Ljava/lang/String;
    const/16 v32, 0x0

    .line 111
    .local v32, cursor:Landroid/database/Cursor;
    sparse-switch p3, :sswitch_data_0

    .line 143
    :try_start_0
    sget-object v3, Lcom/htc/album/modules/collection/CollectionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[localCollectionFromSource] Unsupported source type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v35

    .line 150
    .local v35, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/album/modules/collection/CollectionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[localCollectionFromSource] Exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz v32, :cond_2

    .line 152
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_2
    const/16 v32, 0x0

    .line 156
    .end local v35           #ex:Ljava/lang/Exception;
    :goto_1
    if-nez v32, :cond_3

    .line 158
    sget-object v3, Lcom/htc/album/modules/collection/CollectionManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[loadCollectionFromSource] null cursor"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date_modified ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 118
    goto :goto_1

    .line 122
    :sswitch_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date_modified ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 125
    goto :goto_1

    .line 129
    :sswitch_2
    sget-object v3, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/album/modules/collection/Collection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date_modified ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 132
    goto :goto_1

    .line 136
    :sswitch_3
    sget-object v3, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/album/modules/collection/Collection;->SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date_modified ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v32

    .line 139
    goto :goto_1

    .line 162
    :cond_3
    :goto_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_25

    sget-boolean v3, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    if-nez v3, :cond_25

    .line 165
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, filePath:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 169
    .local v23, bucketId:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 171
    .local v24, folderName:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 173
    .local v12, time:J
    const/4 v3, 0x6

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 175
    .local v14, mimeType:Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 176
    .local v15, degree:I
    const-wide/16 v16, 0x0

    .line 181
    .local v16, fileSize:J
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 182
    const/16 v3, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 184
    :cond_4
    const/16 v3, 0x10

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 185
    const/16 v3, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 191
    :cond_5
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-gtz v3, :cond_6

    .line 194
    const/4 v3, 0x5

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 197
    :cond_6
    const/4 v3, 0x4

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    const/16 v43, 0x1

    .line 199
    .local v43, isFavorite:Z
    :goto_3
    if-eqz v43, :cond_7

    .line 201
    const-string v10, "com.htc.HTCAlbum.MY_FAVORITES"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 205
    :cond_7
    const/16 v3, 0xe

    move/from16 v0, p3

    if-eq v0, v3, :cond_8

    const/16 v3, 0xe0

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    .line 208
    :cond_8
    const-wide v12, 0x7fffffffffffffffL

    .line 209
    const/16 v3, 0xe

    move/from16 v0, p3

    if-ne v0, v3, :cond_b

    .line 211
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 220
    :cond_9
    :goto_4
    const-string v10, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    goto/16 :goto_2

    .line 197
    .end local v43           #isFavorite:Z
    :cond_a
    const/16 v43, 0x0

    goto :goto_3

    .line 214
    .restart local v43       #isFavorite:Z
    :cond_b
    const/16 v3, 0xe0

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 216
    const-string v10, "com.htc.HTCAlbum.ALL_VIDEOS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    goto :goto_4

    .line 226
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_19

    .line 228
    const-string v10, "com.htc.HTCAlbum.ALL_PHOTOS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 237
    :cond_d
    :goto_5
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v45

    .line 239
    .local v45, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_e
    const/16 v38, 0x1

    .line 242
    .local v38, inCameraShots:Z
    :goto_6
    if-eqz v38, :cond_12

    .line 244
    const/16 v41, 0x0

    .line 245
    .local v41, inSnapbooth:Z
    const/16 v39, 0x0

    .line 246
    .local v39, inPanorama:Z
    const/16 v37, 0x0

    .line 248
    .local v37, inBurst:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportSnapbooth()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 250
    if-eqz v38, :cond_1b

    const-string v3, "booth"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v41, 0x1

    .line 253
    :cond_f
    :goto_7
    if-nez v41, :cond_10

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportPanorama()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 255
    if-eqz v38, :cond_1c

    const-string v3, "panor"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v39, 0x1

    .line 258
    :cond_10
    :goto_8
    if-nez v41, :cond_11

    if-nez v39, :cond_11

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportBurstShots()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 260
    if-eqz v38, :cond_1d

    const-string v3, "burst"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v37, 0x1

    .line 263
    :cond_11
    :goto_9
    if-eqz v41, :cond_1e

    .line 265
    const-string v10, "com.htc.HTCAlbum.SNAPBOOTH"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 285
    .end local v37           #inBurst:Z
    .end local v39           #inPanorama:Z
    .end local v41           #inSnapbooth:Z
    :cond_12
    :goto_a
    const/16 v44, 0x0

    .line 286
    .local v44, isInked:Z
    const/16 v40, 0x0

    .line 287
    .local v40, inScribbles:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportPenPaint()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 289
    const/4 v3, 0x4

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_21

    const/16 v44, 0x1

    .line 290
    :goto_b
    if-eqz v44, :cond_13

    .line 292
    const-string v10, "com.htc.HTCAlbum.MY_INKS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 296
    :cond_13
    if-nez v38, :cond_22

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageScribblesPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageScribblesPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_14
    const/16 v40, 0x1

    .line 299
    :goto_c
    if-eqz v40, :cond_15

    .line 301
    const-string v10, "com.htc.HTCAlbum.SCRIBBLES"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 306
    :cond_15
    const/16 v42, 0x0

    .line 307
    .local v42, is3dContent:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 309
    const-string v3, "image/jps"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "image/mpo"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "video/mp4-3d"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_16
    const/16 v42, 0x1

    .line 313
    :goto_d
    if-eqz v42, :cond_17

    .line 315
    const-string v10, "com.htc.HTCAlbum.ALL_3DS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 320
    :cond_17
    if-nez v38, :cond_24

    if-nez v40, :cond_24

    invoke-static/range {v45 .. v45}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnAllDownloads(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/16 v36, 0x1

    .line 322
    .local v36, inAllDownloads:Z
    :goto_e
    if-eqz v36, :cond_18

    .line 324
    const-string v10, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    .line 328
    :cond_18
    if-nez v38, :cond_3

    if-nez v36, :cond_3

    if-nez v40, :cond_3

    .line 330
    const-string v22, "com.htc.HTCAlbum.LOCAL_FOLDER"

    move-object/from16 v18, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p1

    move/from16 v21, p3

    move-object/from16 v25, v11

    move-wide/from16 v26, v12

    move-object/from16 v28, v14

    move/from16 v29, v15

    move-wide/from16 v30, v16

    invoke-direct/range {v18 .. v31}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    goto/16 :goto_2

    .line 231
    .end local v36           #inAllDownloads:Z
    .end local v38           #inCameraShots:Z
    .end local v40           #inScribbles:Z
    .end local v42           #is3dContent:Z
    .end local v44           #isInked:Z
    .end local v45           #path:Ljava/lang/String;
    :cond_19
    const/16 v3, 0x10

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 233
    const-string v10, "com.htc.HTCAlbum.ALL_VIDEOS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    goto/16 :goto_5

    .line 239
    .restart local v45       #path:Ljava/lang/String;
    :cond_1a
    const/16 v38, 0x0

    goto/16 :goto_6

    .line 250
    .restart local v37       #inBurst:Z
    .restart local v38       #inCameraShots:Z
    .restart local v39       #inPanorama:Z
    .restart local v41       #inSnapbooth:Z
    :cond_1b
    const/16 v41, 0x0

    goto/16 :goto_7

    .line 255
    :cond_1c
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 260
    :cond_1d
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 268
    :cond_1e
    if-eqz v39, :cond_1f

    .line 270
    const-string v10, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    goto/16 :goto_a

    .line 273
    :cond_1f
    if-eqz v37, :cond_20

    .line 275
    const-string v10, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    goto/16 :goto_a

    .line 280
    :cond_20
    const-string v10, "com.htc.HTCAlbum.CAMERA_SHOTS"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v6 .. v17}, Lcom/htc/album/modules/collection/CollectionManager;->addItemToSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    goto/16 :goto_a

    .line 289
    .end local v37           #inBurst:Z
    .end local v39           #inPanorama:Z
    .end local v41           #inSnapbooth:Z
    .restart local v40       #inScribbles:Z
    .restart local v44       #isInked:Z
    :cond_21
    const/16 v44, 0x0

    goto/16 :goto_b

    .line 296
    :cond_22
    const/16 v40, 0x0

    goto/16 :goto_c

    .line 309
    .restart local v42       #is3dContent:Z
    :cond_23
    const/16 v42, 0x0

    goto/16 :goto_d

    .line 320
    :cond_24
    const/16 v36, 0x0

    goto/16 :goto_e

    .line 337
    .end local v11           #filePath:Ljava/lang/String;
    .end local v12           #time:J
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v15           #degree:I
    .end local v16           #fileSize:J
    .end local v23           #bucketId:Ljava/lang/String;
    .end local v24           #folderName:Ljava/lang/String;
    .end local v38           #inCameraShots:Z
    .end local v40           #inScribbles:Z
    .end local v42           #is3dContent:Z
    .end local v43           #isFavorite:Z
    .end local v44           #isInked:Z
    .end local v45           #path:Ljava/lang/String;
    :cond_25
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v33, v3, v46

    .line 340
    .local v33, endTime:J
    sget-object v3, Lcom/htc/album/modules/collection/CollectionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadCollectionFromSource] query --, total "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " collections, time used "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v33

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0xe0 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected abstract doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/modules/collection/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method

.method public getCollectionList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .parameter "requestedSources"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, tempList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;TC;>;"
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    .line 66
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;)V

    .line 69
    :cond_0
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_1

    .line 71
    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;)V

    .line 74
    :cond_1
    and-int/lit8 v2, p2, 0xe

    if-eqz v2, :cond_2

    .line 76
    const/16 v2, 0xe

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;)V

    .line 79
    :cond_2
    and-int/lit16 v2, p2, 0xe0

    if-eqz v2, :cond_3

    .line 81
    const/16 v2, 0xe0

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/htc/album/modules/collection/CollectionManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;)V

    .line 84
    :cond_3
    invoke-direct {p0, v1}, Lcom/htc/album/modules/collection/CollectionManager;->doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TC;>;"
    return-object v0
.end method

.method public getCollectionList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    sget v0, Lcom/htc/album/modules/collection/CollectionManager;->SOURCE_DEFAULT:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/album/modules/collection/CollectionManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public stopLoadData()V
    .locals 1

    .prologue
    .line 393
    .local p0, this:Lcom/htc/album/modules/collection/CollectionManager;,"Lcom/htc/album/modules/collection/CollectionManager<TC;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/album/modules/collection/CollectionManager;->CANCEL_LOADING:Z

    .line 394
    return-void
.end method
