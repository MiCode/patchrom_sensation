.class public Lcom/htc/album/AlbumUtility/Camera_Util;
.super Ljava/lang/Object;
.source "Camera_Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera_Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "needRecycleSource"

    .prologue
    .line 150
    const/16 v0, 0x60

    invoke-static {p0, p1, v0}, Lcom/htc/album/AlbumUtility/Camera_Util;->compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "needRecycleSource"
    .parameter "size"

    .prologue
    .line 156
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 174
    :goto_0
    return-object v2

    .line 158
    :cond_0
    move v0, p2

    .line 159
    .local v0, MINI_THUMB_TARGET_SIZE:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 161
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 167
    .local v3, scale:F
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 168
    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 169
    const/4 v4, 0x0

    invoke-static {v1, p0, v0, v0, v4}, Lcom/htc/album/AlbumUtility/Camera_Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 170
    .local v2, miniThumbnail:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    :cond_1
    const-string v4, "Camera_Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][Camera_Util][compressToMiniThumbnail]: W: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v1           #matrix:Landroid/graphics/Matrix;
    .end local v2           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .restart local v3       #scale:F
    goto :goto_1
.end method

.method public static saveToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "fullPath"
    .parameter "b"

    .prologue
    .line 177
    if-nez p1, :cond_1

    .line 178
    const-string v5, "Camera_Util"

    const-string v6, "save to file fail because you didn\'t provide bitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 184
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 189
    if-eqz v4, :cond_3

    .line 191
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    :goto_1
    const/4 v3, 0x0

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 192
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 187
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "Camera_Util"

    const-string v6, "compress error"

    invoke-static {v5, v6, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-eqz v3, :cond_0

    .line 191
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 195
    :goto_3
    const/4 v3, 0x0

    goto :goto_0

    .line 192
    :catch_2
    move-exception v0

    .line 193
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 189
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_2

    .line 191
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :goto_5
    const/4 v3, 0x0

    :cond_2
    throw v5

    .line 192
    :catch_3
    move-exception v0

    .line 193
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 189
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 186
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static declared-synchronized transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 19
    const-class v6, Lcom/htc/album/AlbumUtility/Camera_Util;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/album/AlbumUtility/Camera_Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"
    .parameter "config"

    .prologue
    .line 24
    const-class v27, Lcom/htc/album/AlbumUtility/Camera_Util;

    monitor-enter v27

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    .line 26
    :cond_0
    :try_start_0
    const-string v3, "Camera_Util"

    const-string v4, "[HTCAlbum][Camera_Util][transform]: target height less than zero!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v11, 0x0

    .line 144
    :cond_1
    :goto_0
    monitor-exit v27

    return-object v11

    .line 29
    :cond_2
    if-nez p5, :cond_3

    .line 31
    :try_start_1
    sget-object p5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 34
    :cond_3
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 37
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 39
    .local v18, deltaY:I
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: delta W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "delta H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-nez p4, :cond_5

    if-ltz v16, :cond_4

    if-gez v18, :cond_5

    .line 48
    :cond_4
    const/4 v11, 0x0

    .line 51
    .local v11, b2:Landroid/graphics/Bitmap;
    :try_start_2
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 58
    :try_start_3
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 61
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 62
    .local v19, deltaYHalf:I
    new-instance v25, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v25, src:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 24
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v16           #deltaX:I
    .end local v17           #deltaXHalf:I
    .end local v18           #deltaY:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v25           #src:Landroid/graphics/Rect;
    :catchall_0
    move-exception v3

    monitor-exit v27

    throw v3

    .line 53
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    .restart local v16       #deltaX:I
    .restart local v18       #deltaY:I
    :catch_0
    move-exception v23

    .line 55
    .local v23, oome:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: alloc bitmap OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 73
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #oome:Ljava/lang/OutOfMemoryError;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 74
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 76
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 77
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v26, v3, v4

    .line 79
    .local v26, viewAspect:F
    cmpl-float v3, v12, v26

    if-lez v3, :cond_8

    .line 81
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v24, v3, v13

    .line 82
    .local v24, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v24, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f80

    cmpl-float v3, v24, v3

    if-lez v3, :cond_7

    .line 84
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    :goto_1
    if-eqz p0, :cond_b

    .line 110
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    .line 122
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_2
    :try_start_6
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 124
    .local v21, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v22

    .line 126
    .local v22, dy1:I
    const/4 v11, 0x0

    .line 129
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    :try_start_7
    div-int/lit8 v3, v21, 0x2

    div-int/lit8 v4, v22, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v11

    .line 141
    :goto_3
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 142
    :try_start_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 88
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v21           #dx1:I
    .end local v22           #dy1:I
    :cond_7
    const/16 p0, 0x0

    goto :goto_1

    .line 93
    .end local v24           #scale:F
    :cond_8
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v24, v3, v14

    .line 94
    .restart local v24       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v24, v3

    if-ltz v3, :cond_9

    const/high16 v3, 0x3f80

    cmpl-float v3, v24, v3

    if-lez v3, :cond_a

    .line 96
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_1

    .line 100
    :cond_a
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 112
    :catch_1
    move-exception v23

    .line 114
    .restart local v23       #oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: scaler OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 120
    .end local v23           #oome:Ljava/lang/OutOfMemoryError;
    :cond_b
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 136
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    .restart local v21       #dx1:I
    .restart local v22       #dy1:I
    :catch_2
    move-exception v23

    .line 138
    .restart local v23       #oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method
