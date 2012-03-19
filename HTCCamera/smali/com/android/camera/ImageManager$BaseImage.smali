.class abstract Lcom/android/camera/ImageManager$BaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImage"
.end annotation


# instance fields
.field protected mContainer:Lcom/android/camera/ImageManager$BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursorRow:I

.field protected mExifData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:J

.field protected mMiniThumbMagic:J

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p6, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 213
    iput-wide p2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    .line 214
    iput-wide p4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 215
    iput-object p7, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    .line 216
    iput p8, p0, Lcom/android/camera/ImageManager$BaseImage;->mCursorRow:I

    .line 217
    return-void
.end method

.method private makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "targetWidthOrHeight"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 690
    const/4 v1, 0x0

    .line 692
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 693
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 698
    if-eqz v1, :cond_0

    .line 699
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 702
    :cond_0
    :goto_0
    return-object v2

    .line 694
    :catch_0
    move-exception v0

    .line 698
    .local v0, ex:Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 699
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 701
    :catch_1
    move-exception v3

    goto :goto_0

    .line 697
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 698
    if-eqz v1, :cond_1

    .line 699
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 702
    :cond_1
    :goto_1
    throw v2

    .line 701
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public commitChanges()V
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 223
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "ImageManager"

    const-string v2, "HoneyComb Porting check point"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "ImageManager"

    const-string v2, "commitChanges error due to HoneyComb porting"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 231
    :cond_0
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;Lcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
    .locals 6
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"
    .parameter "callback"

    .prologue
    .line 316
    new-instance v0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;-><init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;)V

    return-object v0
.end method

.method abstract compressionType()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 326
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 323
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/android/camera/ImageManager$Image;

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/android/camera/ImageManager$Image;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 334
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-wide v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, url:Landroid/net/Uri;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCreateBitmap for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-nez v1, :cond_1

    .line 337
    const/4 v0, 0x0

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    .line 340
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .locals 6
    .parameter "targetWidthHeight"

    .prologue
    const/4 v3, 0x0

    .line 394
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 395
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    new-instance v2, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;-><init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 396
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/FileNotFoundException;
    move-object v2, v3

    .line 397
    goto :goto_0

    .line 398
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    move-object v2, v3

    .line 399
    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 405
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    :goto_0
    return-object v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lcom/android/camera/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 434
    :goto_0
    return-wide v1

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 432
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 434
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getDegreesRotated()I
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 10

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    if-gez v0, :cond_3

    .line 484
    const/4 v6, 0x0

    .line 486
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 491
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 493
    .local v9, str:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    const/4 v6, 0x0

    .line 502
    if-eqz v6, :cond_0

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 504
    const/4 v6, 0x0

    .line 515
    .end local v9           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 497
    :cond_1
    :try_start_1
    const-string v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 502
    if-eqz v6, :cond_0

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 504
    const/4 v6, 0x0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v8

    .line 500
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    if-eqz v6, :cond_0

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 504
    const/4 v6, 0x0

    goto :goto_0

    .line 502
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 504
    const/4 v6, 0x0

    :cond_2
    throw v0

    .line 508
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v7, 0x0

    .line 509
    .local v7, description:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 510
    .restart local v6       #c:Landroid/database/Cursor;
    monitor-enter v6

    .line 511
    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 514
    :cond_4
    monitor-exit v6

    move-object v9, v7

    .line 515
    goto :goto_0

    .line 514
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    if-gez v0, :cond_4

    .line 573
    const/4 v6, 0x0

    .line 575
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 580
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 582
    .local v8, str:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    const/4 v6, 0x0

    .line 591
    if-eqz v6, :cond_0

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 593
    const/4 v6, 0x0

    .line 607
    .end local v8           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 591
    :cond_1
    if-eqz v6, :cond_2

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 593
    const/4 v6, 0x0

    .line 607
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 591
    if-eqz v6, :cond_2

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 593
    const/4 v6, 0x0

    goto :goto_1

    .line 591
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 593
    const/4 v6, 0x0

    :cond_3
    throw v0

    .line 597
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    const/4 v7, 0x0

    .line 598
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 599
    .restart local v6       #c:Landroid/database/Cursor;
    monitor-enter v6

    .line 600
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 601
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 603
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 604
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move-object v8, v7

    .line 605
    goto :goto_0

    .line 603
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getHeight()I
    .locals 6

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 650
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 651
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 652
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 653
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 654
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 655
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    if-eqz v1, :cond_0

    .line 661
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 664
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 660
    if-eqz v1, :cond_0

    .line 661
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 663
    :catch_1
    move-exception v5

    goto :goto_0

    .line 659
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 660
    if-eqz v1, :cond_1

    .line 661
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 664
    :cond_1
    :goto_1
    throw v4

    .line 663
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public getIsPrivate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    if-gez v3, :cond_0

    .line 531
    :goto_0
    return v2

    .line 524
    :cond_0
    const/4 v1, 0x0

    .line 525
    .local v1, isPrivate:Z
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 526
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 530
    :cond_1
    :goto_1
    monitor-exit v0

    move v2, v1

    .line 531
    goto :goto_0

    :cond_2
    move v1, v2

    .line 528
    goto :goto_1

    .line 530
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLatitude()D
    .locals 3

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 539
    :goto_0
    return-wide v1

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 537
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 539
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLongitude()D
    .locals 3

    .prologue
    .line 544
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 548
    :goto_0
    return-wide v1

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 546
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 548
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 10

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    if-gez v0, :cond_3

    .line 444
    const/4 v6, 0x0

    .line 446
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 451
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, str:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    const/4 v6, 0x0

    .line 462
    if-eqz v6, :cond_0

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 464
    const/4 v6, 0x0

    .line 475
    .end local v9           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 457
    :cond_1
    :try_start_1
    const-string v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    if-eqz v6, :cond_0

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 464
    const/4 v6, 0x0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v7

    .line 460
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    if-eqz v6, :cond_0

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 464
    const/4 v6, 0x0

    goto :goto_0

    .line 462
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 464
    const/4 v6, 0x0

    :cond_2
    throw v0

    .line 468
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v8, 0x0

    .line 469
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 470
    .restart local v6       #c:Landroid/database/Cursor;
    monitor-enter v6

    .line 471
    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 474
    :cond_4
    monitor-exit v6

    move-object v9, v8

    .line 475
    goto :goto_0

    .line 474
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mCursorRow:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 558
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .end local v1           #name:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 564
    .restart local v1       #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 565
    :cond_1
    iget-wide v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 6

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 629
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 630
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 631
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 632
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 633
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 634
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    if-eqz v1, :cond_0

    .line 640
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 643
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 639
    if-eqz v1, :cond_0

    .line 640
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 642
    :catch_1
    move-exception v5

    goto :goto_0

    .line 638
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 639
    if-eqz v1, :cond_1

    .line 640
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 643
    :cond_1
    :goto_1
    throw v4

    .line 642
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public hasLatLong()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 669
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    if-gez v2, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 671
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 672
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 673
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    goto :goto_0

    .line 674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 681
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 750
    :try_start_0
    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    .line 751
    .local v1, id:J
    iget-wide v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 752
    .local v4, dbMagic:J
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_0

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v10

    invoke-virtual {v0, p0, v3, v10}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 754
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after computing thumbnail dbMagic is "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_1
    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :try_start_1
    iget-wide v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 759
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/android/camera/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v7

    .line 760
    .local v7, data:[B
    if-nez v7, :cond_2

    .line 761
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v11

    invoke-virtual {v0, p0, v3, v11}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 762
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/android/camera/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v7

    .line 764
    :cond_2
    if-nez v7, :cond_3

    .line 765
    const-string v0, "ImageManager"

    const-string v3, "unable to get miniThumbBitmap, data is null"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_3
    if-eqz v7, :cond_5

    .line 768
    const/4 v0, 0x0

    array-length v3, v7

    invoke-static {v7, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 769
    .local v6, b:Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 770
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t decode byte array for mini thumb, length was "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v11, v7

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_4
    monitor-exit v10

    .line 778
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v7           #data:[B
    :goto_0
    return-object v6

    .line 774
    .restart local v1       #id:J
    .restart local v4       #dbMagic:J
    .restart local v7       #data:[B
    :cond_5
    monitor-exit v10

    move-object v6, v9

    .line 775
    goto :goto_0

    .line 774
    .end local v7           #data:[B
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 776
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    :catch_0
    move-exception v8

    .line 777
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "ImageManager"

    const-string v3, "miniThumbBitmap got exception"

    invoke-static {v0, v3, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v9

    .line 778
    goto :goto_0
.end method

.method public onRemove()V
    .locals 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    return-void
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 788
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 7
    .parameter "id"

    .prologue
    .line 835
    const/4 v6, 0x0

    .line 837
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "picasa_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 842
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storing picasaid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v0, "ImageManager"

    const-string v1, "HoneyComb porting check point"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v0, "ImageManager"

    const-string v1, "updateString and commitUpdates error due to HoneyComb porting"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated image with picasa id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :cond_0
    if-eqz v6, :cond_1

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 857
    const/4 v6, 0x0

    .line 860
    :cond_1
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 855
    if-eqz v6, :cond_1

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 857
    const/4 v6, 0x0

    goto :goto_0

    .line 855
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 857
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 868
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumb"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 869
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
