.class Lcom/android/camera/ImageManager$SingleImageList$UriImage;
.super Lcom/android/camera/ImageManager$SimpleBaseImage;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UriImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$SingleImageList;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$SingleImageList;)V
    .locals 0
    .parameter

    .prologue
    .line 3601
    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SimpleBaseImage;-><init>()V

    .line 3602
    return-void
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3786
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 3787
    .local v0, input:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_1

    .line 3801
    :cond_0
    :goto_0
    return-object v1

    .line 3790
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 3791
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3792
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3793
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3797
    if-eqz v0, :cond_0

    .line 3798
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3800
    :catch_0
    move-exception v3

    goto :goto_0

    .line 3796
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    .line 3797
    if-eqz v0, :cond_2

    .line 3798
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3801
    :cond_2
    :goto_1
    throw v3

    .line 3800
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "targetWidthHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 3641
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 3642
    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3643
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3644
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3646
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 3647
    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {v2, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3649
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v5, v7, :cond_0

    .line 3650
    const/4 v5, 0x1

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3653
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3654
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3655
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3657
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3658
    .local v0, b:Landroid/graphics/Bitmap;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "B: got bitmap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with sampleSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3664
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .line 3662
    :catch_0
    move-exception v1

    .line 3663
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception decoding bitmap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 3664
    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .locals 6
    .parameter "targetWidthOrHeight"

    .prologue
    const/4 v2, 0x0

    .line 3702
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3703
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 3708
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 3705
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputStream is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3706
    new-instance v3, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;-><init>(Lcom/android/camera/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 3707
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 3708
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 3741
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3715
    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z
    invoke-static {v4}, Lcom/android/camera/ImageManager$SingleImageList;->access$1000(Lcom/android/camera/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z
    invoke-static {v4}, Lcom/android/camera/ImageManager$SingleImageList;->access$1100(Lcom/android/camera/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3717
    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3718
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3723
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3729
    .local v2, moved:Z
    if-eqz v2, :cond_0

    .line 3730
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget-object v3, v3, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget v4, v4, Lcom/android/camera/ImageManager$SingleImageList;->INDEX_ID:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v0

    .line 3736
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #moved:Z
    :goto_0
    return-object v3

    .line 3725
    .restart local v0       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 3727
    .local v1, ex:Ljava/lang/Exception;
    monitor-exit v0

    goto :goto_0

    .line 3731
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2       #moved:Z
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3736
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #moved:Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3769
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3764
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 3813
    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 3814
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 3610
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3611
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3612
    .local v1, path:Ljava/lang/String;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3613
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3618
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3615
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 3617
    :catch_0
    move-exception v0

    .line 3618
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3807
    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 3808
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    .line 3624
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3625
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3626
    .local v1, path:Ljava/lang/String;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 3632
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3629
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 3631
    :catch_0
    move-exception v0

    .line 3632
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3759
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 3819
    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 3820
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 3745
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3749
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 3773
    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3774
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 3775
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3776
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 3777
    .local v7, scale:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3778
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3781
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #scale:F
    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
