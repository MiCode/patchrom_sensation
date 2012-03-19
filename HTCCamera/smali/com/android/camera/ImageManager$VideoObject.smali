.class Lcom/android/camera/ImageManager$VideoObject;
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
    name = "VideoObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$VideoList;JI)V
    .locals 9
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "dateTaken"
    .parameter "row"

    .prologue
    .line 4277
    iput-object p1, p0, Lcom/android/camera/ImageManager$VideoObject;->this$0:Lcom/android/camera/ImageManager;

    .line 4278
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ImageManager$BaseImage;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V

    .line 4279
    return-void
.end method

.method private getStringEntry(I)Ljava/lang/String;
    .locals 3
    .parameter "entryName"

    .prologue
    .line 4343
    const/4 v1, 0x0

    .line 4344
    .local v1, entry:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4345
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 4346
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4347
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4349
    :cond_0
    monitor-exit v0

    .line 4350
    return-object v1

    .line 4349
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 4282
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 4287
    if-nez p1, :cond_1

    .line 4292
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 4289
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/android/camera/ImageManager$VideoObject;

    if-eqz v1, :cond_0

    .line 4292
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/android/camera/ImageManager$VideoObject;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "targetWidthHeight"

    .prologue
    const/4 v1, 0x0

    .line 4303
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/camera/ImageManager$VideoObject;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 4307
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 4315
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4319
    :goto_0
    return-object v1

    .line 4318
    :catch_0
    move-exception v0

    .line 4319
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 4327
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4331
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4296
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATA:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 5

    .prologue
    .line 4469
    const-wide/16 v2, 0x0

    .line 4470
    .local v2, value:J
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4471
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 4472
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4473
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$VideoList;->indexDateTaken()I

    move-result v1

    .line 4474
    .local v1, column:I
    if-ltz v1, :cond_0

    .line 4475
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4477
    .end local v1           #column:I
    :cond_0
    monitor-exit v0

    .line 4519
    return-wide v2

    .line 4477
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getHeight()I
    .locals 4

    .prologue
    .line 4376
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4377
    .local v0, mmr:Landroid/media/MediaMetadataRetriever;
    const/4 v1, 0x0

    .line 4379
    .local v1, value:I
    if-eqz v0, :cond_0

    .line 4381
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4384
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4387
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 4390
    :cond_0
    :goto_0
    return v1

    .line 4385
    :catch_0
    move-exception v2

    .line 4387
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method public getLANGUAGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4451
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4354
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TAGS:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 5

    .prologue
    .line 4455
    const-wide/16 v2, 0x0

    .line 4456
    .local v2, value:J
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4457
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 4458
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4459
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$VideoList;->indexTimeStamp()I

    move-result v1

    .line 4460
    .local v1, column:I
    if-ltz v1, :cond_0

    .line 4461
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4463
    .end local v1           #column:I
    :cond_0
    monitor-exit v0

    .line 4464
    return-wide v2

    .line 4463
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getWidth()I
    .locals 4

    .prologue
    .line 4358
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4359
    .local v0, mmr:Landroid/media/MediaMetadataRetriever;
    const/4 v1, 0x0

    .line 4361
    .local v1, value:I
    if-eqz v0, :cond_0

    .line 4363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4366
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4369
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 4372
    :cond_0
    :goto_0
    return v1

    .line 4367
    :catch_0
    move-exception v2

    .line 4369
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 4397
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 4405
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 4401
    const/4 v0, 0x1

    return v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4439
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4445
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
