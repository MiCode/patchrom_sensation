.class public final Lcom/htc/launcher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field public static sCollator:Ljava/text/Collator;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static sOrientation:I

.field private static final sPaint:Landroid/graphics/Paint;

.field private static s_nIconTextureHeight:I

.field private static s_nIconTextureWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 48
    const-class v0, Lcom/htc/launcher/Utilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/Utilities;->LOG_TAG:Ljava/lang/String;

    .line 49
    sput v1, Lcom/htc/launcher/Utilities;->sIconWidth:I

    .line 50
    sput v1, Lcom/htc/launcher/Utilities;->sIconHeight:I

    .line 51
    sput v1, Lcom/htc/launcher/Utilities;->s_nIconTextureWidth:I

    .line 52
    sput v1, Lcom/htc/launcher/Utilities;->s_nIconTextureHeight:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/launcher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/htc/launcher/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 59
    sput v1, Lcom/htc/launcher/Utilities;->sOrientation:I

    .line 64
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/Utilities;->sCollator:Ljava/text/Collator;

    .line 67
    sget-object v0, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 325
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 326
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 329
    return-object v0
.end method

.method static centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "context"

    .prologue
    const/high16 v8, 0x4000

    .line 72
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 73
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 75
    .local v0, bitmapHeight:I
    if-lt v1, p1, :cond_0

    if-ge v0, p2, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 78
    .local v4, color:I
    if-ge v1, p1, :cond_2

    move v6, p1

    :goto_0
    if-ge v0, p2, :cond_3

    move v5, p2

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 80
    .local v3, centered:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 82
    sub-int v5, p1, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-int v6, p2, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    move-object p0, v3

    .line 88
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #centered:Landroid/graphics/Bitmap;
    .end local v4           #color:I
    :cond_1
    return-object p0

    .restart local v4       #color:I
    :cond_2
    move v6, v1

    .line 78
    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bitmap"
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 271
    invoke-static {p1}, Lcom/htc/launcher/Utilities;->getIconWidthHeight(Landroid/content/Context;)V

    .line 273
    sget v8, Lcom/htc/launcher/Utilities;->sIconWidth:I

    .line 274
    .local v8, width:I
    sget v4, Lcom/htc/launcher/Utilities;->sIconHeight:I

    .line 276
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 277
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 279
    .local v0, bitmapHeight:I
    if-lez v8, :cond_4

    if-lez v4, :cond_4

    if-lt v8, v1, :cond_0

    if-ge v4, v0, :cond_4

    .line 280
    :cond_0
    int-to-float v9, v1

    int-to-float v10, v0

    div-float v6, v9, v10

    .line 282
    .local v6, ratio:F
    if-le v1, v0, :cond_2

    .line 283
    int-to-float v9, v8

    div-float/2addr v9, v6

    float-to-int v4, v9

    .line 288
    :cond_1
    :goto_0
    sget v9, Lcom/htc/launcher/Utilities;->sIconWidth:I

    if-ne v8, v9, :cond_3

    sget v9, Lcom/htc/launcher/Utilities;->sIconHeight:I

    if-ne v4, v9, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 290
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    sget v9, Lcom/htc/launcher/Utilities;->sIconWidth:I

    sget v10, Lcom/htc/launcher/Utilities;->sIconHeight:I

    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 291
    .local v7, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 292
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/htc/launcher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 293
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 295
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 296
    sget-object v9, Lcom/htc/launcher/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v10, Lcom/htc/launcher/Utilities;->sIconWidth:I

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x2

    sget v11, Lcom/htc/launcher/Utilities;->sIconHeight:I

    sub-int/2addr v11, v4

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v9, v10, v11, v8, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    sget-object v9, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 298
    sget-object v9, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v10, Lcom/htc/launcher/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 301
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    :goto_2
    return-object v7

    .line 284
    .restart local v6       #ratio:F
    :cond_2
    if-le v0, v1, :cond_1

    .line 285
    int-to-float v9, v4

    mul-float/2addr v9, v6

    float-to-int v8, v9

    goto :goto_0

    .line 288
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .end local v6           #ratio:F
    :cond_4
    move-object v7, p0

    .line 301
    goto :goto_2
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 382
    sget-object v16, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v16

    .line 383
    :try_start_0
    sget v15, Lcom/htc/launcher/Utilities;->sIconWidth:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 384
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 387
    :cond_0
    sget v13, Lcom/htc/launcher/Utilities;->sIconWidth:I

    .line 388
    .local v13, nWidth:I
    sget v6, Lcom/htc/launcher/Utilities;->sIconHeight:I

    .line 390
    .local v6, nHeight:I
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v15, :cond_4

    .line 391
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v14, v0

    .line 392
    .local v14, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v14, v13}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 393
    invoke-virtual {v14, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 402
    .end local v14           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 403
    .local v9, nSourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 405
    .local v8, nSourceHeight:I
    if-lez v9, :cond_3

    if-lez v8, :cond_3

    .line 407
    if-lt v13, v9, :cond_2

    if-ge v6, v8, :cond_6

    .line 409
    :cond_2
    int-to-float v15, v9

    int-to-float v0, v8

    move/from16 v17, v0

    div-float v5, v15, v17

    .line 410
    .local v5, fRatio:F
    if-le v9, v8, :cond_5

    .line 411
    int-to-float v15, v13

    div-float/2addr v15, v5

    float-to-int v6, v15

    .line 423
    .end local v5           #fRatio:F
    :cond_3
    :goto_1
    sget v11, Lcom/htc/launcher/Utilities;->s_nIconTextureWidth:I

    .line 424
    .local v11, nTextureWidth:I
    sget v10, Lcom/htc/launcher/Utilities;->s_nIconTextureHeight:I

    .line 426
    .local v10, nTextureHeight:I
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 428
    .local v2, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 429
    .local v4, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    sub-int v15, v11, v13

    div-int/lit8 v7, v15, 0x2

    .line 432
    .local v7, nLeft:I
    sub-int v15, v10, v6

    div-int/lit8 v12, v15, 0x2

    .line 434
    .local v12, nTop:I
    sget-object v15, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 435
    add-int v15, v7, v13

    add-int v17, v12, v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v12, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 437
    sget-object v15, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 438
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 440
    monitor-exit v16

    return-object v2

    .line 394
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v7           #nLeft:I
    .end local v8           #nSourceHeight:I
    .end local v9           #nSourceWidth:I
    .end local v10           #nTextureHeight:I
    .end local v11           #nTextureWidth:I
    .end local v12           #nTop:I
    :cond_4
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_1

    .line 396
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 397
    .local v3, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 398
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v15

    if-nez v15, :cond_1

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 441
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #nHeight:I
    .end local v13           #nWidth:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 412
    .restart local v5       #fRatio:F
    .restart local v6       #nHeight:I
    .restart local v8       #nSourceHeight:I
    .restart local v9       #nSourceWidth:I
    .restart local v13       #nWidth:I
    :cond_5
    if-le v8, v9, :cond_3

    .line 413
    int-to-float v15, v6

    mul-float/2addr v15, v5

    float-to-int v13, v15

    goto :goto_1

    .line 415
    .end local v5           #fRatio:F
    :cond_6
    if-ge v9, v13, :cond_3

    if-ge v8, v6, :cond_3

    .line 417
    move v13, v9

    .line 418
    move v6, v8

    goto :goto_1
.end method

.method public static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 106
    if-nez p0, :cond_1

    .line 107
    const/16 p0, 0x0

    .line 179
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 110
    .restart local p0
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/Utilities;->getIconWidthHeight(Landroid/content/Context;)V

    .line 112
    sget v16, Lcom/htc/launcher/Utilities;->sIconWidth:I

    .line 113
    .local v16, width:I
    sget v9, Lcom/htc/launcher/Utilities;->sIconHeight:I

    .line 115
    .local v9, height:I
    const/high16 v14, 0x3f80

    .line 116
    .local v14, scale:F
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v12, p0

    .line 117
    check-cast v12, Landroid/graphics/drawable/PaintDrawable;

    .line 118
    .local v12, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 119
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 129
    .end local v12           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 130
    .local v11, iconWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 131
    .local v10, iconHeight:I
    const-string v19, "Utilities"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createIconThumbnail # iconWidth: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",iconHeight: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",width: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",height: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-lez v16, :cond_0

    if-lez v9, :cond_0

    .line 133
    move/from16 v0, v16

    if-lt v0, v11, :cond_3

    if-lt v9, v10, :cond_3

    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-eqz v19, :cond_8

    .line 134
    :cond_3
    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 136
    .local v13, ratio:F
    if-le v11, v10, :cond_6

    .line 137
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v13

    move/from16 v0, v19

    float-to-int v9, v0

    .line 142
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 144
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_3
    sget v19, Lcom/htc/launcher/Utilities;->sIconWidth:I

    sget v20, Lcom/htc/launcher/Utilities;->sIconHeight:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 145
    .local v15, thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 146
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    sget-object v19, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    sget v19, Lcom/htc/launcher/Utilities;->sIconWidth:I

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 154
    .local v17, x:I
    sget v19, Lcom/htc/launcher/Utilities;->sIconHeight:I

    sub-int v19, v19, v9

    div-int/lit8 v18, v19, 0x2

    .line 155
    .local v18, y:I
    add-int v19, v17, v16

    add-int v20, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    new-instance p0, Lcom/htc/launcher/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .restart local p0
    sget-object v19, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 120
    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #iconHeight:I
    .end local v11           #iconWidth:I
    .end local v13           #ratio:F
    .end local v15           #thumb:Landroid/graphics/Bitmap;
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v6, p0

    .line 122
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 125
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_2

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_1

    .line 138
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10       #iconHeight:I
    .restart local v11       #iconWidth:I
    .restart local v13       #ratio:F
    :cond_6
    if-le v10, v11, :cond_4

    .line 139
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v13

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_2

    .line 142
    :cond_7
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_3

    .line 159
    .end local v13           #ratio:F
    :cond_8
    move/from16 v0, v16

    if-ge v11, v0, :cond_0

    if-ge v10, v9, :cond_0

    .line 160
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 161
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move/from16 v0, v16

    invoke-static {v0, v9, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 162
    .restart local v15       #thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 163
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    sget-object v19, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 166
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    new-instance p0, Lcom/htc/launcher/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .restart local p0
    sget-object v19, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 169
    :cond_9
    sub-int v19, v16, v11

    div-int/lit8 v17, v19, 0x2

    .line 170
    .restart local v17       #x:I
    sub-int v19, v9, v10

    div-int/lit8 v18, v19, 0x2

    .line 171
    .restart local v18       #y:I
    add-int v19, v17, v11

    add-int v20, v18, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4
.end method

.method public static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 21
    .parameter "icon"
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 184
    if-nez p0, :cond_1

    .line 185
    const/16 p0, 0x0

    .line 254
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 188
    .restart local p0
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/Utilities;->getIconWidthHeight(Landroid/content/Context;)V

    .line 190
    const/high16 v13, 0x3f80

    .line 191
    .local v13, scale:F
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v11, p0

    .line 192
    check-cast v11, Landroid/graphics/drawable/PaintDrawable;

    .line 193
    .local v11, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 194
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 204
    .end local v11           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 205
    .local v10, iconWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 206
    .local v9, iconHeight:I
    const-string v18, "Utilities"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createIconThumbnail # iconWidth: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",iconHeight: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",width: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",height: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 208
    move/from16 v0, p2

    if-lt v0, v10, :cond_3

    move/from16 v0, p3

    if-lt v0, v9, :cond_3

    const/high16 v18, 0x3f80

    cmpl-float v18, v13, v18

    if-eqz v18, :cond_8

    .line 209
    :cond_3
    int-to-float v0, v10

    move/from16 v18, v0

    int-to-float v0, v9

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 211
    .local v12, ratio:F
    if-le v10, v9, :cond_6

    .line 212
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 p3, v0

    .line 217
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 219
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_3
    invoke-static {v10, v9, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 220
    .local v15, thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 221
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    sget-object v18, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    sget-object v18, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 232
    .local v14, scaleIcon:Landroid/graphics/Bitmap;
    new-instance p0, Lcom/htc/launcher/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .restart local p0
    goto/16 :goto_0

    .line 195
    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v9           #iconHeight:I
    .end local v10           #iconWidth:I
    .end local v12           #ratio:F
    .end local v14           #scaleIcon:Landroid/graphics/Bitmap;
    .end local v15           #thumb:Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v6, p0

    .line 197
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 198
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 200
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v18

    if-nez v18, :cond_2

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_1

    .line 213
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9       #iconHeight:I
    .restart local v10       #iconWidth:I
    .restart local v12       #ratio:F
    :cond_6
    if-le v9, v10, :cond_4

    .line 214
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 p2, v0

    goto/16 :goto_2

    .line 217
    :cond_7
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 233
    .end local v12           #ratio:F
    :cond_8
    move/from16 v0, p2

    if-ge v10, v0, :cond_0

    move/from16 v0, p3

    if-ge v9, v0, :cond_0

    .line 234
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 235
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    invoke-static {v10, v9, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 236
    .restart local v15       #thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 237
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    sget-object v18, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 239
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 240
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    sget-object v18, Lcom/htc/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 249
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 250
    .restart local v14       #scaleIcon:Landroid/graphics/Bitmap;
    new-instance p0, Lcom/htc/launcher/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    goto/16 :goto_0

    .line 243
    .end local v14           #scaleIcon:Landroid/graphics/Bitmap;
    :cond_9
    sub-int v18, p2, v10

    div-int/lit8 v16, v18, 0x2

    .line 244
    .local v16, x:I
    sub-int v18, p3, v9

    div-int/lit8 v17, v18, 0x2

    .line 245
    .local v17, y:I
    add-int v18, v16, v10

    add-int v19, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4
.end method

.method public static enforceConfigOrientation(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "orientation"

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 334
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 335
    .local v0, conf:Landroid/content/res/Configuration;
    sget-object v3, Lcom/htc/launcher/Utilities;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking configuration of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v3, :cond_0

    .line 337
    sget-object v3, Lcom/htc/launcher/Utilities;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updating orientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 339
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 340
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 341
    sget-object v3, Lcom/htc/launcher/Utilities;->LOG_TAG:Ljava/lang/String;

    const-string v4, "orientation updated"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method private static getIconWidthHeight(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    .local v0, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget v1, Lcom/htc/launcher/Utilities;->sOrientation:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 309
    sput v3, Lcom/htc/launcher/Utilities;->sIconWidth:I

    .line 310
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    sput v1, Lcom/htc/launcher/Utilities;->sOrientation:I

    .line 313
    :cond_0
    sget v1, Lcom/htc/launcher/Utilities;->sIconWidth:I

    if-ne v1, v3, :cond_1

    .line 314
    invoke-static {p0}, Lcom/htc/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 316
    :cond_1
    return-void
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 373
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/htc/launcher/Utilities;->sIconHeight:I

    sput v1, Lcom/htc/launcher/Utilities;->sIconWidth:I

    .line 374
    sget v1, Lcom/htc/launcher/Utilities;->sIconWidth:I

    sput v1, Lcom/htc/launcher/Utilities;->s_nIconTextureHeight:I

    sput v1, Lcom/htc/launcher/Utilities;->s_nIconTextureWidth:I

    .line 375
    sget-object v1, Lcom/htc/launcher/Utilities;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init using R.dimen.workspace_icon_size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/launcher/Utilities;->sIconWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 357
    sget-object v1, Lcom/htc/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 358
    :try_start_0
    sget v0, Lcom/htc/launcher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 359
    invoke-static {p1}, Lcom/htc/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/htc/launcher/Utilities;->sIconWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/htc/launcher/Utilities;->sIconHeight:I

    if-ne v0, v2, :cond_1

    .line 363
    monitor-exit v1

    .line 365
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/htc/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0
    monitor-exit v1

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
