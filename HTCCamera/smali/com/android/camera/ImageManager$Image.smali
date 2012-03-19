.class Lcom/android/camera/ImageManager$Image;
.super Lcom/android/camera/ImageManager$BaseImage;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Image"
.end annotation


# instance fields
.field mRotation:I

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "rotation"

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/android/camera/ImageManager$Image;->this$0:Lcom/android/camera/ImageManager;

    .line 2132
    invoke-direct/range {p0 .. p8}, Lcom/android/camera/ImageManager$BaseImage;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V

    .line 2133
    iput p9, p0, Lcom/android/camera/ImageManager$Image;->mRotation:I

    .line 2134
    return-void
.end method

.method private setExifRotation(I)V
    .locals 8
    .parameter "degrees"

    .prologue
    .line 2433
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2435
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2436
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$BaseImageList;->indexData()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2437
    .local v3, filePath:Ljava/lang/String;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2438
    :try_start_2
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2439
    :try_start_3
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 2440
    .local v2, exif:Landroid/media/ExifInterface;
    if-gez p1, :cond_0

    .line 2441
    add-int/lit16 p1, p1, 0x168

    .line 2443
    :cond_0
    const/4 v4, 0x1

    .line 2444
    .local v4, orientation:I
    sparse-switch p1, :sswitch_data_0

    .line 2459
    :goto_0
    const-string v5, "Orientation"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 2468
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2472
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #orientation:I
    :goto_1
    return-void

    .line 2437
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2469
    .end local v0           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 2470
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to save exif data with new orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2446
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v4       #orientation:I
    :sswitch_0
    const/4 v4, 0x1

    .line 2447
    goto :goto_0

    .line 2449
    :sswitch_1
    const/4 v4, 0x6

    .line 2450
    goto :goto_0

    .line 2452
    :sswitch_2
    const/4 v4, 0x3

    .line 2453
    goto :goto_0

    .line 2455
    :sswitch_3
    const/16 v4, 0x8

    goto :goto_0

    .line 2468
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v4           #orientation:I
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2444
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    .line 2190
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2191
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    :goto_0
    return-void

    .line 2193
    :cond_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExifTag where the key already was there: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    .prologue
    .line 2169
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2171
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2178
    :goto_0
    return-object v1

    .line 2173
    :cond_0
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2174
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 2175
    :cond_1
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2176
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 2178
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2137
    const/4 v2, 0x0

    .line 2138
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2139
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 2140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2141
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ImageManager$ImageList;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$ImageList;->indexData()I

    move-result v1

    .line 2142
    .local v1, column:I
    if-ltz v1, :cond_0

    .line 2143
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2145
    .end local v1           #column:I
    :cond_0
    monitor-exit v0

    .line 2146
    return-object v2

    .line 2145
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected getDegreesRotated()I
    .locals 1

    .prologue
    .line 2150
    iget v0, p0, Lcom/android/camera/ImageManager$Image;->mRotation:I

    return v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 2
    .parameter "tag"

    .prologue
    .line 2203
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2204
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2205
    .local v0, tagValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2206
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2209
    .end local v0           #tagValue:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 2218
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 2

    .prologue
    .line 2213
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 2214
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    return-void
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;Lcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
    .locals 6
    .parameter "image"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "newFile"
    .parameter "cursor"
    .parameter "callback"

    .prologue
    .line 2428
    new-instance v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;-><init>(Lcom/android/camera/ImageManager$Image;Landroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 2498
    const/4 v8, 0x0

    .line 2499
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 2500
    .local v9, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v2, v2, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    .line 2502
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v2, v2, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "image_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image;->fullSizeImageId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2508
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v3, v2, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v2, Lcom/android/camera/ImageManager$ImageList;

    iget v2, v2, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v14

    .line 2512
    .local v14, thumbUri:Landroid/net/Uri;
    :try_start_1
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2513
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2514
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, v14, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 2516
    .local v13, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 2517
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2531
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v14           #thumbUri:Landroid/net/Uri;
    :goto_0
    if-eqz v9, :cond_0

    .line 2532
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2533
    const/4 v9, 0x0

    .line 2538
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 2539
    const/16 v2, 0x140

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ImageManager$Image;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2540
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no thumbnail found... storing new one for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image;->fullSizeImageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image;->fullSizeImageId()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2545
    :cond_1
    if-eqz v1, :cond_2

    .line 2546
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image;->getDegreesRotated()I

    move-result v10

    .line 2547
    .local v10, degrees:I
    if-eqz v10, :cond_2

    .line 2548
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 2549
    .local v6, m:Landroid/graphics/Matrix;
    int-to-float v2, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2550
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v10           #degrees:I
    :cond_2
    move-object v2, v1

    .line 2556
    :cond_3
    :goto_2
    return-object v2

    .line 2518
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #thumbUri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    move-object v1, v8

    .line 2519
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .local v11, ex:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t open thumbnail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2527
    .end local v11           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    .line 2529
    .end local v14           #thumbUri:Landroid/net/Uri;
    .local v11, ex:Ljava/lang/Exception;
    :goto_4
    const/4 v2, 0x0

    .line 2531
    if-eqz v9, :cond_3

    .line 2532
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2533
    const/4 v9, 0x0

    goto :goto_2

    .line 2520
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #thumbUri:Landroid/net/Uri;
    :catch_2
    move-exception v11

    move-object v1, v8

    .line 2521
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .local v11, ex:Ljava/io/IOException;
    :goto_5
    :try_start_4
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t open thumbnail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2531
    .end local v11           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .end local v14           #thumbUri:Landroid/net/Uri;
    :goto_6
    if-eqz v9, :cond_4

    .line 2532
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2533
    const/4 v9, 0x0

    :cond_4
    throw v2

    .line 2522
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #thumbUri:Landroid/net/Uri;
    :catch_3
    move-exception v11

    move-object v1, v8

    .line 2524
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .local v11, ex:Ljava/lang/NullPointerException;
    :goto_7
    :try_start_5
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t open thumbnail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 2531
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #ex:Ljava/lang/NullPointerException;
    .end local v14           #thumbUri:Landroid/net/Uri;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    move-object v1, v8

    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_6

    .line 2527
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v11

    move-object v1, v8

    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_4

    .line 2522
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #pfdInput:Landroid/os/ParcelFileDescriptor;
    .restart local v14       #thumbUri:Landroid/net/Uri;
    :catch_5
    move-exception v11

    goto :goto_7

    .line 2520
    :catch_6
    move-exception v11

    goto :goto_5

    .line 2518
    :catch_7
    move-exception v11

    goto/16 :goto_3

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v14           #thumbUri:Landroid/net/Uri;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    move-object v1, v8

    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    move-object v1, v8

    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1
.end method
