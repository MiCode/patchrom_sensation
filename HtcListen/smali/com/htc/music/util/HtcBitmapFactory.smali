.class public Lcom/htc/music/util/HtcBitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "HtcBitmapFactory.java"


# static fields
.field private static mIsReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    sput-boolean v3, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    .line 74
    :try_start_0
    const-string v2, "htcbitmapfactory"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, er:Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v3, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    goto :goto_0

    .line 80
    .end local v1           #er:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    sput-boolean v3, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    return-void
.end method

.method public static native createScaledBitmapWithReflection(Ljava/lang/String;III)Landroid/graphics/Bitmap;
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    return v0
.end method

.method public static native mergeFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
.end method

.method public static native mergeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
.end method

.method public static native mergeFile(Ljava/lang/String;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
.end method

.method public static native reattachBMP(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method
