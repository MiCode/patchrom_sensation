.class Lcom/android/camera/ImageManager$ImageList;
.super Lcom/android/camera/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageList"
.end annotation


# instance fields
.field final INDEX_DATA:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_MINI_THUMB_MAGIC:I

.field final INDEX_ORIENTATION:I

.field final INDEX_THUMB_HEIGHT:I

.field final INDEX_THUMB_ID:I

.field final INDEX_THUMB_IMAGE_ID:I

.field final INDEX_THUMB_WIDTH:I

.field mContentObserver:Landroid/database/ContentObserver;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field mInputStreamBuffer:[B

.field mIsRegistered:Z

.field mTempStorage:[B

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    const/16 v6, 0x4000

    .line 2622
    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageList;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p6

    move-object v5, p7

    .line 2623
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 2578
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ID:I

    .line 2579
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATA:I

    .line 2580
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    .line 2581
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "datetaken"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    .line 2582
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "mini_thumb_magic"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    .line 2583
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "orientation"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ORIENTATION:I

    .line 2585
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    .line 2586
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_IMAGE_ID:I

    .line 2587
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_WIDTH:I

    .line 2588
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_HEIGHT:I

    .line 2590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    .line 2773
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mInputStreamBuffer:[B

    .line 2774
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mTempStorage:[B

    .line 2624
    iput-object p4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 2625
    iput-object p5, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    .line 2626
    iput p6, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    .line 2627
    iput-object p7, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    .line 2629
    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 2631
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 2632
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2633
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create image cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2637
    :cond_0
    const-string v1, "ImageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " got cursor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    new-instance v0, Lcom/android/camera/ImageManager$ImageList$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/ImageManager$ImageList$1;-><init>(Lcom/android/camera/ImageManager$ImageList;Landroid/os/Handler;Lcom/android/camera/ImageManager;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    .line 2670
    new-instance v0, Lcom/android/camera/ImageManager$ImageList$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ImageManager$ImageList$2;-><init>(Lcom/android/camera/ImageManager$ImageList;Lcom/android/camera/ImageManager;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 2683
    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->registerObservers()V

    .line 2684
    return-void

    .line 2637
    :cond_1
    const-string v0, "-1"

    goto :goto_0
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 2948
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;II)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v7

    .line 2954
    .local v7, list:Lcom/android/camera/ImageManager$IImageList;
    if-eqz v7, :cond_0

    .line 2956
    invoke-interface {v7, p1}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v6

    .line 2957
    .local v6, iImage:Lcom/android/camera/ImageManager$IImage;
    invoke-interface {v7}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 2958
    if-eqz v6, :cond_0

    .line 2959
    invoke-interface {v6}, Lcom/android/camera/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 2962
    .end local v6           #iImage:Lcom/android/camera/ImageManager$IImage;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "uri"

    .prologue
    .line 2995
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2997
    :goto_0
    return-object v1

    .line 2996
    :catch_0
    move-exception v0

    .line 2997
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerObservers()V
    .locals 2

    .prologue
    .line 2687
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 2693
    :goto_0
    return-void

    .line 2690
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2691
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3005
    iget v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 3006
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3005
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method

.method private unregisterObservers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2696
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 2706
    :goto_0
    return-void

    .line 2699
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2700
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    .line 2704
    iput-object v2, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    .line 2705
    iput-object v2, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 2709
    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->activate()V

    .line 2710
    return-void
.end method

.method protected activateCursor()V
    .locals 0

    .prologue
    .line 2724
    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->activateCursor()V

    .line 2725
    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->registerObservers()V

    .line 2726
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2749
    .local v6, c:Landroid/database/Cursor;
    const-string v1, "ImageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCursor got cursor with count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v6, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    return-object v6

    .line 2749
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 2713
    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->deactivate()V

    .line 2714
    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->unregisterObservers()V

    .line 2717
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 2721
    :cond_0
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2595
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v8

    const-string v3, "bucket_id"

    aput-object v3, v2, v9

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2606
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2607
    .local v7, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2609
    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2612
    :cond_1
    if-eqz v6, :cond_2

    .line 2613
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2614
    const/4 v6, 0x0

    .line 2616
    :cond_2
    return-object v7
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 2757
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 2754
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 2755
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 2766
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 2758
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 2759
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 2760
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 2756
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 2761
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 2753
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ORIENTATION:I

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 2763
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 2764
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 2767
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 2765
    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;
    .locals 10
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 2770
    new-instance v0, Lcom/android/camera/ImageManager$Image;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->this$0:Lcom/android/camera/ImageManager;

    iget-object v6, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p0

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfd"
    .parameter "options"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 2777
    const/4 v0, 0x0

    .line 2797
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p3, :cond_0

    .line 2798
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/ImageManager$ImageList;->makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    .line 2800
    :cond_0
    if-nez p3, :cond_2

    .line 2844
    :cond_1
    :goto_0
    return-object v4

    .line 2803
    :cond_2
    if-nez p4, :cond_3

    .line 2804
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p4, v3

    .line 2806
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_3
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 2807
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v5, 0x1

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2808
    if-eq p1, v6, :cond_4

    .line 2809
    const/4 v5, 0x1

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2811
    const/4 v5, 0x0

    invoke-static {v2, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2813
    iget-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_1

    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_1

    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v5, v6, :cond_1

    .line 2816
    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {p4, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2817
    const/4 v5, 0x0

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2820
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2821
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2823
    const/4 v5, 0x0

    invoke-static {v2, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2826
    if-nez v0, :cond_5

    .line 2827
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not support format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    :cond_5
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2841
    if-eqz v0, :cond_6

    .line 2842
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeBitmap b W = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v4, v0

    .line 2844
    goto/16 :goto_0

    .line 2833
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 2834
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got io exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method makeBitmapFromVendor(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "uri"
    .parameter "nTargetWidthHeight"

    .prologue
    .line 2968
    const/4 v0, 0x0

    .line 2970
    .local v0, filePath:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 2973
    .local v1, nMagic:J
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeBitmapFromVendor uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->indexData()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2979
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->indexMiniThumbId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2989
    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/android/camera/ImageManager$ImageList;->makeBitmapFromVendor(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mime_type=? or mime_type=?) and bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2732
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(mime_type=? or mime_type=?)"

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2737
    invoke-static {}, Lcom/android/camera/ImageManager;->access$400()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
