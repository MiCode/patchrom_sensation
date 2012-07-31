.class abstract Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/sunny2/IMediaData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EmptyIImageImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 268
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthOrHeight"

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1
    .parameter "targetWidthOrHeight"

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 297
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 317
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 327
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 357
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaContentType()I
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDateModified()J
    .locals 2

    .prologue
    .line 597
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDateTaken()J
    .locals 2

    .prologue
    .line 602
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDegreesRotated()I
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaHeight()I
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSize()J
    .locals 2

    .prologue
    .line 592
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaSourceType()I
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaWidth()I
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 417
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 477
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 392
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaCorrupt()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaDrm()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaPlayable()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public isMediaVideo()Z
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public resetFileCorrupted()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 443
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 448
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 453
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 458
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method
