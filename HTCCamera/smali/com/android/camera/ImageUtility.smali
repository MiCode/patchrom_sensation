.class public final Lcom/android/camera/ImageUtility;
.super Ljava/lang/Object;
.source "ImageUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageUtility$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method private static addRotateFilter(Lcom/scalado/caps/Session;I)V
    .locals 3
    .parameter "session"
    .parameter "degree"

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "angle can only be 0, 90, 180 or 270"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :sswitch_0
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 44
    .local v0, rotate:Lcom/scalado/caps/filter/Rotate;
    sget-object v1, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    .line 62
    .end local v0           #rotate:Lcom/scalado/caps/filter/Rotate;
    :goto_0
    :sswitch_1
    return-void

    .line 49
    :sswitch_2
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 50
    .restart local v0       #rotate:Lcom/scalado/caps/filter/Rotate;
    sget-object v1, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    goto :goto_0

    .line 55
    .end local v0           #rotate:Lcom/scalado/caps/filter/Rotate;
    :sswitch_3
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 56
    .restart local v0       #rotate:Lcom/scalado/caps/filter/Rotate;
    sget-object v1, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    goto :goto_0

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "image"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "image"
    .parameter "rotateDegree"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "rotateDegree"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v1

    .line 172
    .local v1, config:Lcom/scalado/base/Image$Config;
    if-nez p3, :cond_0

    sget-object v9, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne v1, v9, :cond_0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    if-ne p1, v9, :cond_0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    if-eq p2, v9, :cond_1

    .line 174
    :cond_0
    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v2, p0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 175
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 176
    .local v7, session:Lcom/scalado/caps/Session;
    new-instance v6, Lcom/scalado/base/Image;

    new-instance v9, Lcom/scalado/base/Size;

    invoke-direct {v9, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v10, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v6, v9, v10}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 177
    .local v6, newImage:Lcom/scalado/base/Image;
    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v6}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 178
    .local v3, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {v7, p3}, Lcom/android/camera/ImageUtility;->addRotateFilter(Lcom/scalado/caps/Session;I)V

    .line 181
    :try_start_0
    invoke-virtual {v7, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 182
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    move-object p0, v6

    .line 192
    .end local v2           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #newImage:Lcom/scalado/base/Image;
    .end local v7           #session:Lcom/scalado/caps/Session;
    :cond_1
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v8

    .line 193
    .local v8, size:Lcom/scalado/base/Size;
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 197
    return-object v0

    .line 184
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #size:Lcom/scalado/base/Size;
    .restart local v2       #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .restart local v3       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v6       #newImage:Lcom/scalado/base/Image;
    .restart local v7       #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v4

    .line 186
    .local v4, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "session"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "session"
    .parameter "rotateDegree"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 74
    .local v0, size:Lcom/scalado/base/Size;
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-static {p0, v1, v2, p1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "session"
    .parameter "width"
    .parameter "height"
    .parameter "rotateDegree"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v5

    .line 80
    .local v5, size:Lcom/scalado/base/Size;
    sparse-switch p3, :sswitch_data_0

    .line 93
    :goto_0
    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/scalado/base/Image;

    sget-object v6, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 97
    .local v3, image:Lcom/scalado/base/Image;
    new-instance v1, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v1, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 98
    .local v1, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {p0, p3}, Lcom/android/camera/ImageUtility;->addRotateFilter(Lcom/scalado/caps/Session;I)V

    .line 101
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 102
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 111
    return-object v0

    .line 84
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :sswitch_0
    new-instance v5, Lcom/scalado/base/Size;

    .end local v5           #size:Lcom/scalado/base/Size;
    invoke-direct {v5, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    .line 85
    .restart local v5       #size:Lcom/scalado/base/Size;
    goto :goto_0

    .line 88
    :sswitch_1
    new-instance v5, Lcom/scalado/base/Size;

    .end local v5           #size:Lcom/scalado/base/Size;
    invoke-direct {v5, p2, p1}, Lcom/scalado/base/Size;-><init>(II)V

    .restart local v5       #size:Lcom/scalado/base/Size;
    goto :goto_0

    .line 104
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v3       #image:Lcom/scalado/base/Image;
    :catch_0
    move-exception v2

    .line 106
    .local v2, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "session"
    .parameter "targetBitmap"
    .parameter "rotateDegree"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V

    .line 116
    return-void
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V
    .locals 23
    .parameter "session"
    .parameter "targetBitmap"
    .parameter "rotateDegree"
    .parameter "maintainRatio"

    .prologue
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    .line 123
    .local v12, srcSize:Lcom/scalado/base/Size;
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v5, canvas:Landroid/graphics/Canvas;
    if-eqz p3, :cond_0

    .line 128
    const/high16 v17, -0x100

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v8, v17, v19

    .line 132
    .local v8, ratioX:D
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v10, v17, v19

    .line 133
    .local v10, ratioY:D
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 134
    .local v6, ratio:D
    invoke-virtual {v12}, Lcom/scalado/base/Size;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v6

    move-wide/from16 v0, v17

    double-to-int v14, v0

    .line 135
    .local v14, targetWidth:I
    invoke-virtual {v12}, Lcom/scalado/base/Size;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v6

    move-wide/from16 v0, v17

    double-to-int v13, v0

    .line 136
    .local v13, targetHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v17, v14

    div-int/lit8 v15, v17, 0x2

    .line 137
    .local v15, targetX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    sub-int v17, v17, v13

    div-int/lit8 v16, v17, 0x2

    .line 140
    .local v16, targetY:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v14, v13, v1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 143
    .local v4, bitmap:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v18, Landroid/graphics/Rect;

    add-int v19, v15, v14

    add-int v20, v16, v13

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    .end local v6           #ratio:D
    .end local v8           #ratioX:D
    .end local v10           #ratioY:D
    .end local v13           #targetHeight:I
    .end local v14           #targetWidth:I
    .end local v15           #targetX:I
    .end local v16           #targetY:I
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    return-void

    .line 151
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 152
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static convertToScaladoImage(Landroid/graphics/Bitmap;)Lcom/scalado/base/Image;
    .locals 7
    .parameter "bitmap"

    .prologue
    .line 207
    sget-object v4, Lcom/android/camera/ImageUtility$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 216
    const-string v4, "ImageUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported bitmap config : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupported bitmap config"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :pswitch_0
    sget-object v1, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    .line 221
    .local v1, config:Lcom/scalado/base/Image$Config;
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 222
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 223
    .local v2, height:I
    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 227
    new-instance v4, Lcom/scalado/base/Image;

    new-instance v5, Lcom/scalado/base/Buffer;

    invoke-direct {v5, v0}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v6, Lcom/scalado/base/Size;

    invoke-direct {v6, v3, v2}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v4, v5, v6, v1}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    return-object v4

    .line 213
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v1           #config:Lcom/scalado/base/Image$Config;
    .end local v2           #height:I
    .end local v3           #width:I
    :pswitch_1
    sget-object v1, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    .line 214
    .restart local v1       #config:Lcom/scalado/base/Image$Config;
    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmapFromRawData(IILcom/scalado/base/Image$Config;[B)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "rawData"

    .prologue
    .line 236
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/ImageUtility;->createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;

    move-result-object v0

    .line 239
    .local v0, image:Lcom/scalado/base/Image;
    invoke-static {v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "rawData"

    .prologue
    .line 247
    new-instance v0, Lcom/scalado/base/Image;

    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, p3}, Lcom/scalado/base/Buffer;-><init>([B)V

    new-instance v2, Lcom/scalado/base/Size;

    invoke-direct {v2, p0, p1}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, p2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    return-object v0
.end method

.method public static encodeToJpeg(Lcom/scalado/base/Image;)[B
    .locals 13
    .parameter "image"

    .prologue
    const/4 v12, 0x0

    .line 256
    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v1, p0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 257
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v8, Lcom/scalado/caps/Session;

    invoke-direct {v8, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 260
    .local v8, session:Lcom/scalado/caps/Session;
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    .line 261
    .local v4, imageSize:Lcom/scalado/base/Size;
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 262
    .local v0, buffer:Lcom/scalado/base/Buffer;
    new-instance v9, Lcom/scalado/stream/BufferStream;

    invoke-direct {v9, v0, v12}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 263
    .local v9, stream:Lcom/scalado/stream/BufferStream;
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v2, v9, v4}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 264
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/high16 v10, 0x3f80

    invoke-virtual {v2, v10}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    .line 269
    :try_start_0
    invoke-virtual {v8, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 270
    .local v5, iter:Lcom/scalado/base/Iterator;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 271
    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->done()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    invoke-virtual {v9}, Lcom/scalado/stream/BufferStream;->getPosition()J

    move-result-wide v10

    long-to-int v7, v10

    .line 280
    .local v7, jpegDataLength:I
    new-array v6, v7, [B

    .line 281
    .local v6, jpegData:[B
    invoke-virtual {v0, v6, v12, v12, v7}, Lcom/scalado/base/Buffer;->get([BIII)V

    .line 282
    return-object v6

    .line 273
    .end local v5           #iter:Lcom/scalado/base/Iterator;
    .end local v6           #jpegData:[B
    .end local v7           #jpegDataLength:I
    :catch_0
    move-exception v3

    .line 275
    .local v3, ex:Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method public static recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 290
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 292
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    :cond_0
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"
    .parameter "degree"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "degree"
    .parameter "recycle"

    .prologue
    const/4 v1, 0x0

    .line 308
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 309
    .local v5, matrix:Landroid/graphics/Matrix;
    sparse-switch p1, :sswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "degree can only be 0, 90, 180 or 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :sswitch_0
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 323
    .local v7, newBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    :cond_0
    return-object v7

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
