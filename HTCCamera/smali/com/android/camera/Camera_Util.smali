.class public Lcom/android/camera/Camera_Util;
.super Ljava/lang/Object;
.source "Camera_Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera_Util$RenderMode;,
        Lcom/android/camera/Camera_Util$Image_Size;
    }
.end annotation


# static fields
.field public static final StampMargin:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "Camera_Util"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "camerautil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/Camera_Util;->nativeBegin()V

    .line 33
    return-void
.end method

.method public static native CheckImageFileSupport(Ljava/lang/String;)Z
.end method

.method public static native CreateSession(Ljava/lang/String;)I
.end method

.method public static native DestroySession(Ljava/lang/String;)I
.end method

.method public static native DocToScreen(Ljava/lang/String;[I)I
.end method

.method public static native GetImageSize(Ljava/lang/String;[I)I
.end method

.method public static InsertSPMOToJPEGImage(Ljava/lang/String;II)V
    .locals 1
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 183
    invoke-static {p0, p1, p2}, Lcom/android/camera/Camera_Util;->addSpmoToJPG(Ljava/lang/String;II)I

    move-result v0

    .line 184
    .local v0, res:I
    return-void
.end method

.method public static native PartialDecode(Ljava/lang/String;Landroid/graphics/Bitmap;IIFI)V
.end method

.method public static native PartialDecodeAbsolute(Ljava/lang/String;Landroid/graphics/Bitmap;IIFI)V
.end method

.method public static native SetSessionOption(ZZ)V
.end method

.method public static addSignature(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "b"
    .parameter "sig"

    .prologue
    const/4 v9, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 147
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 148
    .local v2, height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 149
    .local v4, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 150
    .local v1, h:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 152
    .local v3, paint:Landroid/graphics/Paint;
    const/16 v8, 0xff

    invoke-static {v8, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    add-int/lit8 v8, v5, -0x1e

    sub-int/2addr v8, v4

    int-to-float v6, v8

    .line 154
    .local v6, x:F
    add-int/lit8 v8, v2, -0x1e

    sub-int/2addr v8, v1

    int-to-float v7, v8

    .line 155
    .local v7, y:F
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v4

    add-float/2addr v10, v6

    int-to-float v11, v1

    add-float/2addr v11, v7

    invoke-direct {v9, v6, v7, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p0, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 156
    return-object p0
.end method

.method private static native addSpmoToJPG(Ljava/lang/String;II)I
.end method

.method public static addTimeStamp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "b"

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 42
    .local v9, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 43
    .local v6, height:I
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v7, paint:Landroid/graphics/Paint;
    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    const-string v12, "Camera_Util"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "default font size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/high16 v12, 0x41c8

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 50
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 51
    .local v2, date:Ljava/util/Date;
    const/4 v12, 0x3

    const/4 v13, 0x3

    invoke-static {v12, v13}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v4

    .line 52
    .local v4, df:Ljava/text/DateFormat;
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, dateText:Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 55
    .local v8, w:F
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    .line 57
    .local v5, h:F
    add-int/lit8 v12, v9, -0x1e

    int-to-float v12, v12

    sub-float v10, v12, v8

    .line 58
    .local v10, x:F
    add-int/lit8 v12, v6, -0x1e

    int-to-float v12, v12

    sub-float v11, v12, v5

    .line 60
    .local v11, y:F
    invoke-virtual {v1, v3, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 62
    return-object p0
.end method

.method public static addTimeStampByCopyBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 67
    const-string v3, "Camera_Util"

    const-string v4, "addTimeStampByCopyBitmap"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/camera/Camera_Util;->addTimeStamp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 83
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_1
    return-void

    .line 71
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 84
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static addTimeStampUsingNative(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 17
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 90
    const-string v14, "Camera_Util"

    const-string v15, "addTimeStampUsingNative"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v7, 0x0

    .line 92
    .local v7, input:Ljava/io/InputStream;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 93
    .local v9, paint:Landroid/graphics/Paint;
    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    const/high16 v14, 0x41c8

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 102
    :goto_0
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, b:Landroid/graphics/Bitmap;
    const-string v14, "Camera_Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addTimeStamp: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez v0, :cond_0

    .line 132
    :goto_1
    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 109
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 110
    .local v2, date:Ljava/util/Date;
    const/4 v14, 0x3

    const/4 v15, 0x3

    invoke-static {v14, v15}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v4

    .line 111
    .local v4, df:Ljava/text/DateFormat;
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, dateText:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 114
    .local v11, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 115
    .local v6, height:I
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 116
    .local v10, w:F
    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    .line 117
    .local v5, h:F
    add-int/lit8 v14, v11, -0x1e

    int-to-float v14, v14

    sub-float v12, v14, v10

    .line 118
    .local v12, x:F
    add-int/lit8 v14, v6, -0x1e

    int-to-float v14, v14

    sub-float v13, v14, v5

    .line 123
    .local v13, y:F
    invoke-static {v0, v3, v12, v13, v9}, Lcom/android/camera/Camera_Util;->nativeAddTimeStamp(Landroid/graphics/Bitmap;Ljava/lang/String;FFLandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    .line 125
    const/4 v8, 0x0

    .line 127
    .local v8, os:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8

    .line 128
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x4b

    invoke-virtual {v0, v14, v15, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v14

    goto :goto_1

    .line 98
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #dateText:Ljava/lang/String;
    .end local v4           #df:Ljava/text/DateFormat;
    .end local v5           #h:F
    .end local v6           #height:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v10           #w:F
    .end local v11           #width:I
    .end local v12           #x:F
    .end local v13           #y:F
    :catch_1
    move-exception v14

    goto :goto_0
.end method

.method public static eraseBitmapByMask(Landroid/graphics/Bitmap;I[IILandroid/graphics/Rect;Z)V
    .locals 9
    .parameter "bitmap"
    .parameter "targetColor"
    .parameter "maskbuf"
    .parameter "maskColor"
    .parameter "rect"
    .parameter "isComposite"

    .prologue
    const/4 v4, 0x0

    .line 281
    if-eqz p5, :cond_0

    const/4 v8, 0x1

    .line 282
    .local v8, composite:I
    :goto_0
    if-nez p2, :cond_1

    .line 283
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Camera_Util;->setColorAtAreaByMask(Landroid/graphics/Bitmap;I[IIIIIII)V

    .line 291
    :goto_1
    return-void

    .end local v8           #composite:I
    :cond_0
    move v8, v4

    .line 281
    goto :goto_0

    .line 288
    .restart local v8       #composite:I
    :cond_1
    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    iget v6, p4, Landroid/graphics/Rect;->right:I

    iget v7, p4, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Camera_Util;->setColorAtAreaByMask(Landroid/graphics/Bitmap;I[IIIIIII)V

    goto :goto_1
.end method

.method public static native getRGBArray(II)[I
.end method

.method public static native getScaladoVersionID()Ljava/lang/String;
.end method

.method private static native hasSpmoInFile(Ljava/lang/String;)I
.end method

.method public static native loadImage(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
.end method

.method public static native loadImageWithSpmo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public static native loadImageWithSpmoBase(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public static native loadImage_Partial(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
.end method

.method public static native nativeAddTimeStamp(Landroid/graphics/Bitmap;Ljava/lang/String;FFLandroid/graphics/Paint;)Landroid/graphics/Bitmap;
.end method

.method public static native panorama([Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static runThreadToAddTimeStamp(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .parameter "cr"
    .parameter "u"

    .prologue
    .line 135
    move-object v0, p0

    .line 136
    .local v0, contentResolver:Landroid/content/ContentResolver;
    move-object v1, p1

    .line 137
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "Camera_Util"

    const-string v3, "runThreadToAddTimeStamp"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v2, Lcom/android/camera/Camera_Util$1;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/Camera_Util$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v2}, Lcom/android/camera/Camera_Util$1;->start()V

    .line 143
    return-void
.end method

.method public static native saveRawData([III)V
.end method

.method public static native setColorAtAreaByMask(Landroid/graphics/Bitmap;I[IIIIIII)V
.end method


# virtual methods
.method public Release()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/camera/Camera_Util;->nativeRelease()V

    .line 37
    return-void
.end method

.method public native nativeBegin()V
.end method

.method public native nativeRelease()V
.end method
