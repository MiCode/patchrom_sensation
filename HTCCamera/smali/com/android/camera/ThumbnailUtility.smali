.class public final Lcom/android/camera/ThumbnailUtility;
.super Ljava/lang/Object;
.source "ThumbnailUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create3DVideoThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-string v8, "ThumbnailUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create3DVideoThumbnailImage("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 41
    .local v6, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 42
    const-wide/16 v8, -0x1

    invoke-virtual {v6, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    .local v2, firstFrame:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 46
    .local v5, imageWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 47
    .local v4, imageHeight:I
    invoke-static {v2}, Lcom/android/camera/ImageUtility;->convertToScaladoImage(Landroid/graphics/Bitmap;)Lcom/scalado/base/Image;

    move-result-object v3

    .line 48
    .local v3, image:Lcom/scalado/base/Image;
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v0, v3}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 49
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 52
    .local v7, session:Lcom/scalado/caps/Session;
    const/4 v8, 0x0

    invoke-static {v7, v5, v4, v8}, Lcom/android/camera/ThumbnailUtility;->cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 61
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 52
    return-object v8

    .line 54
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v2           #firstFrame:Landroid/graphics/Bitmap;
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #imageHeight:I
    .end local v5           #imageWidth:I
    .end local v7           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v1

    .line 56
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "ThumbnailUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot create thumbnail image from 3D video file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v8
.end method

.method private static createJpsThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    const-string v6, "ThumbnailUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createJpsThumbnailImage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v5, Lcom/scalado/stream/FileStream;

    sget-object v6, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v5, p0, v6}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    .line 76
    .local v5, stream:Lcom/scalado/stream/FileStream;
    :try_start_0
    invoke-static {v5}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v3

    .line 77
    .local v3, iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/scalado/base/Iterator;->step(I)F

    .line 78
    invoke-virtual {v3}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 79
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 82
    .local v4, session:Lcom/scalado/caps/Session;
    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 83
    .local v2, imageSize:Lcom/scalado/base/Size;
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/camera/ThumbnailUtility;->cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 92
    invoke-virtual {v5}, Lcom/scalado/stream/FileStream;->close()V

    .line 83
    return-object v6

    .line 85
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v2           #imageSize:Lcom/scalado/base/Size;
    .end local v3           #iterator:Lcom/scalado/base/Iterator;
    .end local v4           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v1

    .line 87
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ThumbnailUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create thumbnail image from JPS file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/scalado/stream/FileStream;->close()V

    throw v6
.end method

.method public static createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 141
    if-nez p0, :cond_0

    .line 143
    const-string v1, "filePath"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 146
    :cond_0
    if-nez p1, :cond_1

    .line 148
    const-string v1, "mimeType"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 153
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_3

    .line 170
    :cond_2
    :goto_0
    return-object v1

    .line 155
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, mediaType:Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    const-string v1, "image/jps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    invoke-static {p0}, Lcom/android/camera/ThumbnailUtility;->createJpsThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_4
    invoke-static {p0, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_5
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const-string v1, "video/3gpp-3d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "video/mp4-3d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 167
    :cond_6
    invoke-static {p0}, Lcom/android/camera/ThumbnailUtility;->create3DVideoThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_7
    invoke-static {p0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "session"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "isFullSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p3, :cond_0

    .line 105
    mul-int/lit8 p1, p1, 0x2

    .line 106
    new-instance v4, Lcom/scalado/base/Image;

    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v9, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v4, v8, v9}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 107
    .local v4, fullSizeImage:Lcom/scalado/base/Image;
    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v4}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 108
    .local v3, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 109
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 112
    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v2, v4}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 113
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance p0, Lcom/scalado/caps/Session;

    .end local p0
    invoke-direct {p0, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 117
    .end local v2           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v4           #fullSizeImage:Lcom/scalado/base/Image;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .restart local p0
    :cond_0
    div-int/lit8 p1, p1, 0x2

    .line 118
    new-instance v0, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 119
    .local v0, crop:Lcom/scalado/caps/filter/Crop;
    if-lt p1, p2, :cond_1

    move v1, p2

    .line 120
    .local v1, cropSize:I
    :goto_0
    new-instance v8, Lcom/scalado/base/Rect;

    sub-int v9, p1, v1

    div-int/lit8 v9, v9, 0x2

    sub-int v10, p2, v1

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10, v1, v1}, Lcom/scalado/base/Rect;-><init>(IIII)V

    invoke-virtual {v0, v8}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 123
    new-instance v7, Lcom/scalado/base/Image;

    new-instance v8, Lcom/scalado/base/Size;

    const/16 v9, 0xc8

    const/16 v10, 0xc8

    invoke-direct {v8, v9, v10}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v9, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v7, v8, v9}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 124
    .local v7, thumbBuffer:Lcom/scalado/base/Image;
    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v7}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 125
    .restart local v3       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 126
    .restart local v5       #iterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 129
    const/16 v8, 0xc8

    const/16 v9, 0xc8

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 130
    .local v6, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 131
    const-string v8, "ThumbnailUtility"

    const-string v9, "createJpsThumbnailImage() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v6

    .end local v1           #cropSize:I
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #thumb:Landroid/graphics/Bitmap;
    .end local v7           #thumbBuffer:Lcom/scalado/base/Image;
    :cond_1
    move v1, p1

    .line 119
    goto :goto_0
.end method
