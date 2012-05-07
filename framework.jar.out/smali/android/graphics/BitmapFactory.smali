.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final EXTERNALDIR:Ljava/lang/String;

.field private static final REMOVABLEDIR:Ljava/lang/String;

.field static enable_restorable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/BitmapFactory;->enable_restorable:Z

    .line 872
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapFactory;->REMOVABLEDIR:Ljava/lang/String;

    .line 873
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapFactory;->EXTERNALDIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static HadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "pathName"
    .parameter "chunkTag"

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 394
    .local v0, bRes:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 395
    :cond_0
    const-string v2, "BitmapFactory"

    const-string v3, "Wrong chunk"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v2, 0x0

    .line 405
    :goto_0
    return v2

    .line 400
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->nativeHadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v2, v0

    .line 405
    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "BitmapFactory"

    const-string v3, "decode native Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createBitmap_NativeAlloc(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v1, p2, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->nativeCreateBitmap_NativeAlloc(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 431
    :cond_0
    return-object v0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 667
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 647
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 648
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 650
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 651
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 652
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :cond_2
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pathName"

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "pathName"
    .parameter "opts"

    .prologue
    const/4 v3, 0x0

    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    sget-boolean v2, Landroid/graphics/BitmapFactory;->enable_restorable:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->isStorageUnmountable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    if-nez p1, :cond_2

    .line 365
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local p1
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    :try_start_1
    #setter for: Landroid/graphics/BitmapFactory$Options;->isRestorable:Z
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory$Options;->access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    .line 373
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local p1
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, v2, p1}, Landroid/graphics/BitmapFactory;->nativeDecodeFile(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 379
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRestorable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->setRestoreInfo(Ljava/lang/String;)V

    .line 382
    :cond_1
    invoke-static {v0, v3, p1}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    return-object v0

    .line 368
    :cond_2
    :try_start_3
    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    if-nez v2, :cond_0

    .line 369
    const/4 v2, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isRestorable:Z
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory$Options;->access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v2

    goto :goto_1

    .end local p1
    .restart local v1       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    move-object p1, v1

    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local p1
    goto :goto_1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 809
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 811
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 812
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 818
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 816
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 818
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 821
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v3

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v2

    .line 821
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 820
    :goto_1
    throw v2

    .line 822
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static decodeFileUserData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .parameter "pathName"
    .parameter "chunkTag"

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, resultData:[B
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 413
    :cond_0
    const-string v2, "BitmapFactory"

    const-string v3, "Wrong chunk"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v2, 0x0

    .line 423
    :goto_0
    return-object v2

    .line 418
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->nativeDecodeFileWithUserData(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 423
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BitmapFactory"

    const-string v3, "decode native Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"
    .parameter "id"

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 549
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 550
    .local v7, file:Ljava/lang/String;
    const/4 v8, 0x0

    .line 553
    .local v8, folder:Ljava/lang/String;
    iget-object v11, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v11

    .line 554
    :try_start_0
    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    const/4 v12, 0x1

    invoke-virtual {p0, p1, v10, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 556
    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget-object v10, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v10, :cond_5

    .line 557
    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget-object v10, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 564
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    iget-object v12, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget v12, v12, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v10, v12}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v8

    .line 565
    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v10, Landroid/util/TypedValue;->assetCookie:I

    .line 567
    .local v4, cookie:I
    if-nez p2, :cond_0

    .line 568
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p2
    .local v9, opts:Landroid/graphics/BitmapFactory$Options;
    move-object p2, v9

    .line 571
    .end local v9           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local p2
    :cond_0
    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v10, :cond_1

    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-eqz v10, :cond_1

    .line 572
    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget v5, v10, Landroid/util/TypedValue;->density:I

    .line 573
    .local v5, density:I
    if-nez v5, :cond_6

    .line 574
    const/16 v10, 0xa0

    iput v10, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 579
    .end local v5           #density:I
    :cond_1
    :goto_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v10, :cond_2

    if-eqz p0, :cond_2

    .line 582
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v10, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 585
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 586
    .local v1, assetManager:Landroid/content/res/AssetManager;
    const/4 v0, 0x0

    .line 588
    .local v0, asset:I
    :try_start_1
    invoke-virtual {v1, v4, v7}, Landroid/content/res/AssetManager;->openNativeNonAsset(ILjava/lang/String;)I

    move-result v0

    .line 589
    invoke-virtual {p0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 590
    const/4 v10, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isPreloading:Z
    invoke-static {p2, v10}, Landroid/graphics/BitmapFactory$Options;->access$102(Landroid/graphics/BitmapFactory$Options;Z)Z

    .line 595
    :cond_3
    :goto_1
    const/4 v10, 0x0

    invoke-static {v0, v10, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 596
    if-eqz v2, :cond_4

    .line 597
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/graphics/Bitmap;->setRestoreInfo(Ljava/lang/String;)V

    .line 599
    :cond_4
    const/4 v10, 0x0

    invoke-static {v2, v10, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 610
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->closeNativeNonAsset(I)V

    .line 614
    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    iget-object v10, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    .line 615
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Problem decoding into existing bitmap"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 560
    .end local v0           #asset:I
    .end local v1           #assetManager:Landroid/content/res/AssetManager;
    .end local v4           #cookie:I
    :cond_5
    :try_start_2
    const-string v10, "BitmapFactory"

    const-string/jumbo v12, "res.mTmpValue.string is null, return null bitmap"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    monitor-exit v11

    move-object v3, v2

    .line 618
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .local v3, bm:Landroid/graphics/Bitmap;
    :goto_3
    return-object v3

    .line 575
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v4       #cookie:I
    .restart local v5       #density:I
    :cond_6
    const v10, 0xffff

    if-eq v5, v10, :cond_1

    .line 576
    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    .line 579
    .end local v4           #cookie:I
    .end local v5           #density:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 591
    .restart local v0       #asset:I
    .restart local v1       #assetManager:Landroid/content/res/AssetManager;
    .restart local v4       #cookie:I
    :cond_7
    :try_start_3
    sget-boolean v10, Landroid/graphics/BitmapFactory;->enable_restorable:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v10, :cond_3

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, p2, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    if-nez v10, :cond_3

    .line 592
    const/4 v10, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isRestorable:Z
    invoke-static {p2, v10}, Landroid/graphics/BitmapFactory$Options;->access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 607
    :catch_0
    move-exception v6

    .line 608
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "BitmapFactory"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 610
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->closeNativeNonAsset(I)V

    throw v10

    :cond_8
    move-object v3, v2

    .line 618
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    .line 334
    if-nez p4, :cond_0

    .line 335
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 338
    .restart local p4
    :cond_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 339
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 340
    .local v0, density:I
    if-nez v0, :cond_3

    .line 341
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 347
    .end local v0           #density:I
    :cond_1
    :goto_0
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_2

    if-eqz p0, :cond_2

    .line 348
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 351
    :cond_2
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 342
    .restart local v0       #density:I
    :cond_3
    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 343
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 791
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v4, 0x4000

    .line 691
    if-nez p0, :cond_0

    .line 692
    const/4 v3, 0x0

    .line 729
    .end local p0
    :goto_0
    return-object v3

    .line 697
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 698
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v1, is:Ljava/io/InputStream;
    move-object p0, v1

    .line 704
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_1
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 708
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_2

    .line 709
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v3

    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 721
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 722
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_2
    const/4 v2, 0x0

    .line 717
    .local v2, tempStorage:[B
    if-eqz p2, :cond_3

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 718
    :cond_3
    if-nez v2, :cond_4

    new-array v2, v4, [B

    .line 719
    :cond_4
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 729
    .end local v2           #tempStorage:[B
    .end local p0
    :cond_5
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x3f00

    .line 739
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPurgeable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRestorable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-object p0

    .line 745
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 749
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 750
    .local v0, density:I
    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 755
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 756
    .local v5, targetDensity:I
    if-eqz v5, :cond_0

    if-eq v0, v5, :cond_0

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v7, :cond_0

    .line 760
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 761
    .local v2, np:[B
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v6

    .line 762
    .local v1, isNinePatch:Z
    :goto_1
    iget-boolean v7, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v7, :cond_2

    if-eqz v1, :cond_0

    .line 763
    :cond_2
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 765
    .local v4, scale:F
    move-object v3, p0

    .line 766
    .local v3, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 768
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 770
    if-eqz v1, :cond_3

    .line 771
    invoke-static {v2, v4, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v2

    .line 772
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 774
    :cond_3
    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    .line 761
    .end local v1           #isNinePatch:Z
    .end local v3           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isStorageUnmountable(Ljava/lang/String;)Z
    .locals 6
    .parameter "filepath"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 863
    if-eqz p0, :cond_1

    .line 864
    sget-object v3, Landroid/graphics/BitmapFactory;->REMOVABLEDIR:Ljava/lang/String;

    sget-object v0, Landroid/graphics/BitmapFactory;->REMOVABLEDIR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Landroid/graphics/BitmapFactory;->EXTERNALDIR:Ljava/lang/String;

    sget-object v0, Landroid/graphics/BitmapFactory;->EXTERNALDIR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static native nativeCreateBitmap_NativeAlloc(III)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFile(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileWithUserData(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeHadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method

.method private static native nativeSetDefaultConfig(I)V
.end method

.method public static setDefaultConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 854
    if-nez p0, :cond_0

    .line 857
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 859
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->nativeSetDefaultConfig(I)V

    .line 860
    return-void
.end method
