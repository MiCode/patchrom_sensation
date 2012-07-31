.class public Lcom/htc/opensense2/album/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageUtils$Size;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final offset:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final reflection:I = 0x0

.field private static final reflectionGap:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final startAlpha:F = 0.0f

.field public static final tag:Ljava/lang/String; = "ImageUtils"

.field private static useScaledResize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/album/util/ImageUtils;->useScaledResize:Z

    .line 35
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_REFLECTION:I

    sput v0, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    .line 37
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->START_ALPHA_REFLECTION:I

    int-to-float v0, v0

    sput v0, Lcom/htc/opensense2/album/util/ImageUtils;->startAlpha:F

    .line 38
    sget v0, Lcom/htc/opensense2/album/util/ImageUtils;->startAlpha:F

    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/htc/opensense2/album/util/ImageUtils;->offset:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static CropForExtraWidth(Landroid/graphics/Bitmap;[II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "source"
    .parameter "targetSize"
    .parameter "maxWidth"

    .prologue
    const/4 v5, 0x0

    .line 322
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    aget v3, p1, v5

    if-ge v3, p2, :cond_2

    :cond_0
    move-object v0, p0

    .line 332
    :cond_1
    :goto_0
    return-object v0

    .line 324
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aget v4, p1, v5

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 326
    .local v1, ratio:F
    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 328
    .local v2, targetW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p0, v3, v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    .local v0, newBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static declared-synchronized addIImageReflection(Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "image"
    .parameter "bitmap"
    .parameter "bkgColor"

    .prologue
    .line 602
    const-class v3, Lcom/htc/opensense2/album/util/ImageUtils;

    monitor-enter v3

    :try_start_0
    instance-of v2, p0, Lcom/htc/opensense2/album/util/ImageManager$Image;

    if-eqz v2, :cond_0

    .line 603
    check-cast p0, Lcom/htc/opensense2/album/util/ImageManager$Image;

    .end local p0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image;->getDegreesRotated()I

    move-result v0

    .line 604
    .local v0, degrees:I
    invoke-static {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 607
    .end local v0           #degrees:I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    invoke-static {v2, v4, v5}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v1

    .line 608
    .local v1, newSize:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v2, v4, :cond_1

    .line 609
    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    invoke-static {p1, v1, v2}, Lcom/htc/opensense2/album/util/ImageUtils;->CropForExtraWidth(Landroid/graphics/Bitmap;[II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 610
    const/4 v2, 0x0

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v4, v1, v2

    .line 613
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {p1, v2, v4}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 615
    invoke-static {p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 617
    monitor-exit v3

    return-object p1

    .line 602
    .end local v1           #newSize:[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "srcBitmap"
    .parameter "bkgColor"

    .prologue
    .line 336
    const-class v18, Lcom/htc/opensense2/album/util/ImageUtils;

    monitor-enter v18

    if-nez p0, :cond_0

    .line 337
    const/4 v14, 0x0

    .line 373
    :goto_0
    monitor-exit v18

    return-object v14

    .line 339
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 340
    .local v4, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 341
    .local v11, h:I
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 343
    .local v14, outBitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 344
    .local v10, canvas:Landroid/graphics/Canvas;
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 345
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    mul-int/2addr v1, v4

    new-array v2, v1, [I

    .line 348
    .local v2, original:[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    sub-int v6, v11, v1

    sget v8, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 350
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    mul-int/2addr v1, v4

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 352
    .local v16, refl:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    if-ge v12, v1, :cond_2

    .line 353
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->startAlpha:F

    sget v3, Lcom/htc/opensense2/album/util/ImageUtils;->offset:F

    int-to-float v5, v12

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-int v9, v1

    .line 354
    .local v9, alpha:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    if-ge v13, v4, :cond_1

    .line 355
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    sub-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v4

    add-int/2addr v1, v13

    aget v17, v2, v1

    .line 356
    .local v17, srcpix:I
    mul-int v1, v12, v4

    add-int/2addr v1, v13

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v9, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v16, v1

    .line 354
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 352
    .end local v17           #srcpix:I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 364
    .end local v9           #alpha:I
    .end local v13           #j:I
    :cond_2
    sget v1, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 365
    .local v15, recBmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    add-int/lit8 v3, v11, 0x1

    int-to-float v3, v3

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v10, v15, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    const/16 p0, 0x0

    .line 370
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    const/4 v15, 0x0

    .line 373
    goto/16 :goto_0

    .line 336
    .end local v2           #original:[I
    .end local v4           #w:I
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v11           #h:I
    .end local v12           #i:I
    .end local v14           #outBitmap:Landroid/graphics/Bitmap;
    .end local v15           #recBmp:Landroid/graphics/Bitmap;
    .end local v16           #refl:[I
    :catchall_0
    move-exception v1

    monitor-exit v18

    throw v1
.end method

.method public static calculateFitPhotoSize(Lcom/htc/opensense2/album/util/ImageUtils$Size;IIII)V
    .locals 7
    .parameter "size"
    .parameter "width"
    .parameter "height"
    .parameter "screenW"
    .parameter "screenH"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    if-nez v5, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    move v4, p3

    .line 58
    .local v4, targetW:I
    move v3, p4

    .line 60
    .local v3, targetH:I
    if-ge p1, p3, :cond_2

    if-ge p2, p4, :cond_2

    .line 62
    move v4, p1

    .line 63
    move v3, p2

    .line 66
    :cond_2
    int-to-float v5, v4

    iget v6, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 67
    .local v1, rx:F
    int-to-float v5, v3

    iget v6, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 68
    .local v2, ry:F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 70
    .local v0, ratio:F
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 71
    iget v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    goto :goto_0
.end method

.method public static calculateFitSize(Lcom/htc/opensense2/album/util/ImageUtils$Size;II)V
    .locals 5
    .parameter "size"
    .parameter "targetW"
    .parameter "targetH"

    .prologue
    .line 76
    if-eqz p0, :cond_0

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    if-nez v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 79
    .local v1, rx:F
    int-to-float v3, p2

    iget v4, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 80
    .local v2, ry:F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 82
    .local v0, ratio:F
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 83
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    goto :goto_0
.end method

.method public static countGridSampleValue(IIII)I
    .locals 5
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 243
    const/4 v0, 0x1

    .line 245
    .local v0, sample:I
    if-ge p0, p2, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v1, 0x1

    .line 253
    :goto_0
    return v1

    .line 247
    :cond_0
    div-int v1, p0, p2

    div-int v2, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_1

    .line 248
    const/4 v0, 0x1

    .line 250
    :cond_1
    mul-int v1, p0, p1

    mul-int v2, v0, v0

    div-int/2addr v1, v2

    const v2, 0x4b000

    if-le v1, v2, :cond_2

    .line 251
    mul-int v1, p0, p1

    int-to-double v1, v1

    const-wide v3, 0x4112c00000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    :cond_2
    move v1, v0

    .line 253
    goto :goto_0
.end method

.method public static countNewSize(III)[I
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "maxHeight"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 311
    .local v0, ans:[I
    aput v3, v0, v2

    .line 312
    if-eqz p1, :cond_0

    .line 313
    mul-int v1, p0, p2

    div-int/2addr v1, p1

    aput v1, v0, v2

    .line 315
    :cond_0
    aget v1, v0, v2

    if-gtz v1, :cond_1

    .line 316
    aput v3, v0, v2

    .line 317
    :cond_1
    aput p2, v0, v3

    .line 318
    return-object v0
.end method

.method public static countNewSize(IIII)[I
    .locals 4
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 89
    if-lt p0, p2, :cond_0

    if-ge p1, p3, :cond_1

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    .line 92
    :cond_1
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 94
    .local v0, ratio:F
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    int-to-float v3, p0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public static countSampleValue(IIII)I
    .locals 2
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 161
    const/4 v0, 0x1

    .line 163
    .local v0, sample:I
    :goto_0
    shr-int/lit8 v1, p0, 0x1

    if-gt v1, p2, :cond_0

    shr-int/lit8 v1, p1, 0x1

    if-le v1, p3, :cond_1

    .line 164
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 165
    shr-int/lit8 p0, p0, 0x1

    .line 166
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return v0
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 557
    if-nez p0, :cond_1

    .line 558
    const/4 p0, 0x0

    .line 584
    .local v1, height:I
    .local v4, width:I
    :cond_0
    :goto_0
    return-object p0

    .line 561
    .end local v1           #height:I
    .end local v4           #width:I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 562
    .restart local v4       #width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 564
    .restart local v1       #height:I
    if-eq v4, v1, :cond_0

    .line 567
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 568
    .local v3, newMinSide:I
    sub-int v7, v4, v3

    div-int/lit8 v5, v7, 0x2

    .line 569
    .local v5, xMargin:I
    sub-int v7, v1, v3

    div-int/lit8 v6, v7, 0x2

    .line 570
    .local v6, yMargin:I
    const/4 v2, 0x0

    .line 572
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v5, v6, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 579
    :goto_1
    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    .line 580
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    move-object p0, v2

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "original"
    .parameter "targetSize"

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 119
    :goto_0
    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 102
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 105
    .local v1, height:I
    if-ge v5, p1, :cond_1

    move v4, v5

    .line 106
    .local v4, targetWidth:I
    :goto_1
    if-ge v1, p1, :cond_2

    move v3, v1

    .line 108
    .local v3, targetHeight:I
    :goto_2
    sub-int v8, v5, v4

    div-int/lit8 v6, v8, 0x2

    .line 109
    .local v6, xMargin:I
    sub-int v8, v1, v3

    div-int/lit8 v7, v8, 0x2

    .line 110
    .local v7, yMargin:I
    const/4 v2, 0x0

    .line 112
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v6, v7, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    .end local v3           #targetHeight:I
    .end local v4           #targetWidth:I
    .end local v6           #xMargin:I
    .end local v7           #yMargin:I
    :cond_1
    move v4, p1

    .line 105
    goto :goto_1

    .restart local v4       #targetWidth:I
    :cond_2
    move v3, p1

    .line 106
    goto :goto_2

    .line 114
    .restart local v2       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #targetHeight:I
    .restart local v6       #xMargin:I
    .restart local v7       #yMargin:I
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cropVideo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "targetSize"

    .prologue
    const-wide v8, 0x3ff199999999999aL

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 200
    .local v1, W:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 202
    .local v0, H:I
    if-lt v1, p1, :cond_0

    if-ge v0, p1, :cond_1

    .line 204
    :cond_0
    if-ge v1, v0, :cond_2

    .line 205
    move v3, p1

    .line 206
    .local v3, newW:I
    mul-int v6, p1, v0

    div-int v2, v6, v1

    .line 212
    .local v2, newH:I
    :goto_0
    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 213
    int-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 214
    invoke-static {p0, v1, v0}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 217
    .end local v2           #newH:I
    .end local v3           #newW:I
    :cond_1
    sub-int v6, v1, p1

    div-int/lit8 v4, v6, 0x2

    .line 218
    .local v4, x:I
    sub-int v6, v0, p1

    div-int/lit8 v5, v6, 0x2

    .line 220
    .local v5, y:I
    invoke-static {p0, v4, v5, p1, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 209
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    move v2, p1

    .line 210
    .restart local v2       #newH:I
    mul-int v6, p1, v1

    div-int v3, v6, v0

    .restart local v3       #newW:I
    goto :goto_0
.end method

.method public static decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 621
    if-nez p0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-object v4

    .line 623
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 628
    .local v1, data:[B
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 629
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 632
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 633
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 638
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 631
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static filmstripBitmap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "image"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 382
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v4, v0

    .line 453
    :cond_1
    return-object v4

    .line 386
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :cond_3
    if-nez p2, :cond_4

    .line 395
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 397
    .restart local p2
    :cond_4
    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v6, :cond_1

    .line 399
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 400
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 401
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 403
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v6, v7, :cond_1

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v6, v7, :cond_1

    iget-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v6, :cond_1

    .line 405
    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 407
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    div-int v3, v4, v6

    .line 408
    .local v3, sample:I
    if-nez v3, :cond_5

    const/4 v3, 0x1

    .line 409
    :cond_5
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v6

    mul-int v6, v3, v3

    div-int/2addr v4, v6

    const v6, 0x4b000

    if-le v4, v6, :cond_7

    .line 410
    .local v2, isExtraWidth:Z
    :goto_1
    if-eqz v2, :cond_6

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v6

    int-to-double v6, v4

    const-wide v8, 0x4112c00000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .end local v3           #sample:I
    :cond_6
    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 414
    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 415
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    if-nez v0, :cond_0

    .line 419
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .end local v2           #isExtraWidth:Z
    .restart local v3       #sample:I
    :cond_7
    move v2, v5

    .line 409
    goto :goto_1
.end method

.method public static getDefaultFilmstripBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "image"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v10, 0xbf

    const/4 v9, 0x1

    .line 281
    const/4 v6, 0x0

    .line 283
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 305
    :goto_0
    return-object v1

    .line 284
    :cond_0
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    new-array v8, v4, [I

    .line 286
    .local v8, size:[I
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 287
    .local v7, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 288
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 289
    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    invoke-static {v2, v3, v4}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v8

    .line 290
    aget v2, v8, v11

    aget v3, v8, v9

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 291
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 292
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 293
    .local v5, p:Landroid/graphics/Paint;
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    aget v2, v8, v11

    int-to-float v3, v2

    aget v2, v8, v9

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v7           #opts:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    move-object v1, v6

    .line 305
    goto :goto_0

    .line 297
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v5           #p:Landroid/graphics/Paint;
    .end local v8           #size:[I
    :cond_1
    new-array v8, v4, [I

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    aput v2, v8, v11

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/htc/opensense2/album/util/ImageUtils;->reflection:I

    add-int/2addr v2, v3

    aput v2, v8, v9

    .line 298
    .restart local v8       #size:[I
    aget v2, v8, v11

    aget v3, v8, v9

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 299
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .restart local v0       #c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 301
    .restart local v5       #p:Landroid/graphics/Paint;
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    aget v2, v8, v11

    int-to-float v3, v2

    aget v2, v8, v9

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getExifThumbnailBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/util/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v8

    .line 174
    .local v8, bytes:[B
    const/4 v0, 0x0

    .line 175
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 176
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v9

    .line 177
    .local v9, degrees:I
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 179
    array-length v2, v8

    invoke-static {v8, v1, v2, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    if-eqz v9, :cond_0

    .line 183
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 185
    .local v3, exifw:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 186
    .local v4, exifh:I
    int-to-float v2, v9

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v5, v2, v6, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 187
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 188
    .local v7, b2:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    const/4 v0, 0x0

    .line 190
    move-object v0, v7

    .line 195
    .end local v3           #exifw:I
    .end local v4           #exifh:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    .end local v9           #degrees:I
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method public static getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 676
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    const/4 v0, 0x0

    .line 679
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "path"

    .prologue
    .line 643
    new-instance v2, Landroid/webkit/GIFImageParser;

    invoke-direct {v2}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 644
    .local v2, gifParser:Landroid/webkit/GIFImageParser;
    const/4 v4, 0x0

    .line 645
    .local v4, success:Z
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 647
    invoke-virtual {v2, p1}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 648
    const/4 v4, 0x1

    .line 671
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v6

    :goto_1
    return v6

    .line 653
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 654
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 655
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageUtils;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 656
    .local v0, bitmapData:[B
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v2, v0}, Landroid/webkit/GIFImageParser;->setRawData([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 659
    const/4 v4, 0x1

    goto :goto_0

    .line 661
    .end local v0           #bitmapData:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 663
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 664
    const/4 v4, 0x0

    .line 668
    goto :goto_0

    .line 665
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 666
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 667
    const/4 v4, 0x0

    goto :goto_0

    .line 671
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getOriginalSize(Ljava/lang/String;)[I
    .locals 6
    .parameter "imagePath"

    .prologue
    const/4 v5, 0x2

    .line 231
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 234
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getOriginalSize] Unable to get size from file, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static loadBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imagePath"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 133
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageUtils;->countSampleValue(IIII)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 136
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 137
    .local v1, afterSampleWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 138
    .local v0, afterSampleHeight:I
    if-ne v1, p3, :cond_0

    if-eq v0, p4, :cond_1

    .line 139
    :cond_0
    sget-boolean v5, Lcom/htc/opensense2/album/util/ImageUtils;->useScaledResize:Z

    if-eqz v5, :cond_2

    .line 140
    invoke-static {v2, p3, p4}, Lcom/htc/opensense2/album/util/ImageUtils;->scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    .end local v0           #afterSampleHeight:I
    .end local v1           #afterSampleWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    return-object v2

    .line 142
    .restart local v0       #afterSampleHeight:I
    .restart local v1       #afterSampleWidth:I
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {v2, v1, v0, p3, p4}, Lcom/htc/opensense2/album/util/ImageUtils;->matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 146
    .end local v0           #afterSampleHeight:I
    .end local v1           #afterSampleWidth:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 147
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "ImageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[loadBitmap] Unable to load bitmap, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadSquareBitmap(Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "source"
    .parameter "outputSize"
    .parameter "options"

    .prologue
    .line 458
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    invoke-static {v0, p1, v1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "imagePath"
    .parameter "outputSize"
    .parameter "isVideo"
    .parameter "options"

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 465
    .local v1, bitmap:Landroid/graphics/Bitmap;
    move-object v4, p0

    .line 467
    .local v4, filePath:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 469
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 472
    .local v5, mmr:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 473
    const-wide/16 v11, -0x1

    invoke-virtual {v5, v11, v12}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 479
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 482
    if-nez v1, :cond_1

    .line 483
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to decode video file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v11, 0x0

    .line 552
    .end local v5           #mmr:Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-object v11

    .line 474
    .restart local v5       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v3

    .line 475
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to decode video file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    const/4 v11, 0x0

    .line 479
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v11

    .line 489
    .end local v5           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_0
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v2

    .line 490
    .local v2, data:[B
    if-eqz v2, :cond_3

    .line 492
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 493
    .local v8, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x0

    iput-boolean v11, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 494
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v12, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 502
    .end local v2           #data:[B
    .end local v8           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    const/4 v11, 0x2

    new-array v9, v11, [I

    fill-array-data v9, :array_0

    .line 503
    .local v9, originalSize:[I
    if-nez v1, :cond_4

    .line 505
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageUtils;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v9

    .line 513
    :goto_2
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_2

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_5

    .line 514
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 498
    .end local v9           #originalSize:[I
    .restart local v2       #data:[B
    :cond_3
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][ImageUtils][loadSquareBitmap]: no exif: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 509
    .end local v2           #data:[B
    .restart local v9       #originalSize:[I
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    aput v12, v9, v11

    .line 510
    const/4 v11, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    aput v12, v9, v11

    goto :goto_2

    .line 517
    :cond_5
    if-nez v1, :cond_8

    .line 519
    if-nez p3, :cond_6

    .line 520
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 522
    .restart local p3
    :cond_6
    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 524
    :cond_7
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-static {v11, v12, p1, p1}, Lcom/htc/opensense2/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 525
    const/4 v11, 0x0

    move-object/from16 v0, p3

    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 528
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 536
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    .line 537
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 530
    :catch_1
    move-exception v3

    .line 532
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][ImageUtils][loadSquareBitmap]: OutOfMemoryError: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 541
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :cond_9
    int-to-float v11, p1

    const/4 v12, 0x0

    aget v12, v9, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    int-to-float v12, p1

    const/4 v13, 0x1

    aget v13, v9, v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 542
    .local v10, ratio:F
    const/4 v11, 0x0

    aget v11, v9, v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 543
    .local v7, newWidth:I
    const/4 v11, 0x1

    aget v11, v9, v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 544
    .local v6, newHeight:I
    invoke-static {v1, v7, v6}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 546
    if-nez v1, :cond_a

    .line 547
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 550
    :cond_a
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v11, v1

    .line 552
    goto/16 :goto_0

    .line 502
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static matrixResize(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "originalWidth"
    .parameter "orginalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v1, 0x0

    .line 595
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 596
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p3

    int-to-float v2, p1

    div-float/2addr v0, v2

    int-to-float v2, p4

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 597
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 257
    if-nez p0, :cond_1

    const/4 v9, 0x0

    .line 277
    :cond_0
    :goto_0
    return-object v9

    .line 260
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 261
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 262
    .local v3, originalWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 263
    .local v4, orginalHeight:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 264
    const/4 v9, 0x0

    .line 265
    .local v9, output:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 267
    .local v7, count:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 269
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 274
    :goto_1
    if-nez v9, :cond_3

    const/4 v0, 0x3

    if-le v7, v0, :cond_2

    .line 275
    :cond_3
    invoke-virtual {p0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 270
    :catch_0
    move-exception v8

    .line 272
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method private static scaledResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
