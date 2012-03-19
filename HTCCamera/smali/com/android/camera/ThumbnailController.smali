.class public Lcom/android/camera/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThumbnailController$ImageFileObserver;
    }
.end annotation


# static fields
.field private static final BUFSIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "ThumbnailController"


# instance fields
.field private CURR_IMAGE_PATH:Ljava/lang/String;

.field private PREV_IMAGE_PATH:Ljava/lang/String;

.field private isNotDeleteThumb:Z

.field private final mButton:Landroid/widget/ImageView;

.field private mCameraUIHandler:Landroid/os/Handler;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

.field private final mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumb_Old:Landroid/graphics/Bitmap;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .locals 1
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"
    .parameter "handler"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ThumbnailController;->isNotDeleteThumb:Z

    .line 84
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 85
    iput-object p2, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 86
    iput-object p3, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    iput-object p4, p0, Lcom/android/camera/ThumbnailController;->mCameraUIHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ThumbnailController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mCameraUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ThumbnailController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/camera/ThumbnailController;->isNotDeleteThumb:Z

    return p1
.end method

.method private keepLastImgPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->CURR_IMAGE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ThumbnailController;->PREV_IMAGE_PATH:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->CURR_IMAGE_PATH:Ljava/lang/String;

    .line 143
    return-void
.end method

.method private setImgObserver(Ljava/lang/String;I)V
    .locals 2
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController$ImageFileObserver;->stopWatching()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    const-string v0, "ThumbnailController"

    const-string v1, "mImgObserver avalible"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ThumbnailController$ImageFileObserver;-><init>(Lcom/android/camera/ThumbnailController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    .line 132
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    iput p2, v0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->mode:I

    .line 133
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController$ImageFileObserver;->startWatching()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ThumbnailController;->isNotDeleteThumb:Z

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v0, "ThumbnailController"

    const-string v1, "mImgObserver UNavalible"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateThumb(Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "original"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 237
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 241
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    .local v2, miniThumbWidth:I
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    .local v1, miniThumbHeight:I
    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    .line 246
    .local v4, temp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    .line 250
    invoke-static {p1, v2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 254
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 255
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 256
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v5, v9

    .line 257
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v5, v9

    .line 258
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v10, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    .line 266
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    if-eqz v4, :cond_1

    .line 269
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    const/4 p1, 0x0

    .line 273
    goto :goto_0

    .line 260
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    aput-object v6, v5, v10

    .line 261
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v5, v9

    .line 262
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v6, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 263
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 264
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v9, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_1
.end method


# virtual methods
.method public clearButtonImage()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController$ImageFileObserver;->stopWatching()V

    .line 296
    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 312
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 313
    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 315
    :cond_3
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 290
    :goto_0
    return v2

    .line 280
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 282
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 283
    const-string v3, "ThumbnailController"

    const-string v4, "Fail to open URI."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 288
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 286
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;)Z
    .locals 10
    .parameter "filePath"

    .prologue
    .line 203
    const/4 v5, 0x0

    .line 204
    .local v5, f:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 205
    .local v0, b:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 207
    .local v2, d:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v5           #f:Ljava/io/FileInputStream;
    .local v6, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .end local v0           #b:Ljava/io/BufferedInputStream;
    .local v1, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    .end local v2           #d:Ljava/io/DataInputStream;
    .local v3, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 211
    .local v8, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 212
    .local v7, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v8, v7}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 213
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 221
    const/4 v9, 0x1

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v8           #uri:Landroid/net/Uri;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :goto_0
    return v9

    .line 214
    :catch_0
    move-exception v4

    .line 215
    .local v4, e:Ljava/io/IOException;
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 216
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    throw v9

    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 214
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setData(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3
    .parameter "original"
    .parameter "path"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 109
    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 120
    :cond_2
    :goto_0
    return-void

    .line 115
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ThumbnailController;->setImgObserver(Ljava/lang/String;I)V

    .line 119
    invoke-direct {p0, p2}, Lcom/android/camera/ThumbnailController;->keepLastImgPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uri"
    .parameter "original"

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 150
    const/4 p1, 0x0

    .line 153
    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    const/4 p2, 0x0

    .line 161
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 162
    invoke-direct {p0, p2}, Lcom/android/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    .line 163
    return-void

    .line 157
    :cond_1
    if-nez p2, :cond_0

    .line 158
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public storeData(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 174
    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_0

    .line 195
    :goto_0
    return v7

    .line 178
    :cond_0
    const/4 v5, 0x0

    .line 179
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 180
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 182
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 186
    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 187
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 195
    const/4 v7, 0x1

    goto :goto_0

    .line 188
    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .end local v3           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 189
    .local v4, e:Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 190
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    throw v7

    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 188
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public updateDisplayIfNeeded()V
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    .line 234
    :cond_0
    return-void
.end method
