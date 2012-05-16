.class Lcom/htc/music/GliderAdapter$1;
.super Ljava/lang/Object;
.source "GliderAdapter.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/GliderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/GliderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 439
    monitor-enter p0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v7

    array-length v7, v7

    if-ge p1, v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v7

    if-nez v7, :cond_2

    .line 441
    :cond_0
    if-eqz p2, :cond_1

    .line 442
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    const/4 p2, 0x0

    .line 494
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 448
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/SBitmap;

    .line 449
    .local v1, bmp3D:Lcom/htc/sunny2/SBitmap;
    const/4 v0, 0x1

    .line 452
    .local v0, bAddToCache:Z
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 453
    if-eqz p5, :cond_5

    const/4 v7, 0x0

    aget-object v7, p5, v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    aget-object v7, p5, v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 454
    const/4 v7, 0x0

    aget-object v7, p5, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 455
    .local v3, nRequestAlbumId:I
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v7

    aget-object v7, v7, p1

    iget v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v3, v7, :cond_3

    .line 456
    const/4 v0, 0x0

    .line 481
    .end local v3           #nRequestAlbumId:I
    :cond_3
    :goto_1
    const/4 v7, 0x1

    if-ne v7, v0, :cond_4

    .line 482
    invoke-static {p2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_4

    .line 484
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    iget-object v7, v7, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v9

    aget-object v9, v9, p1

    iget v9, v9, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/htc/music/HtcMusic;

    iget-object v7, v7, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    .line 490
    :cond_4
    if-eqz p2, :cond_1

    .line 491
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    const/4 p2, 0x0

    goto/16 :goto_0

    .line 459
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 462
    :cond_6
    iget-object v7, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/htc/music/HtcMusic;

    iget-object v4, v7, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    .local v4, service:Lcom/htc/music/IMediaPlaybackService;
    const/4 v6, 0x0

    .line 465
    .local v6, szRequestAlbumPath:Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 466
    :try_start_2
    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 470
    :cond_7
    :goto_2
    if-eqz p5, :cond_8

    const/4 v7, 0x0

    :try_start_3
    aget-object v7, p5, v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    aget-object v7, p5, v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 471
    const/4 v7, 0x0

    aget-object v5, p5, v7

    check-cast v5, Ljava/lang/String;

    .line 472
    .local v5, szDecodedAlbumArtPath:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 473
    const/4 v0, 0x0

    goto :goto_1

    .line 467
    .end local v5           #szDecodedAlbumArtPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 468
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 439
    .end local v0           #bAddToCache:Z
    .end local v1           #bmp3D:Lcom/htc/sunny2/SBitmap;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #service:Lcom/htc/music/IMediaPlaybackService;
    .end local v6           #szRequestAlbumPath:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 476
    .restart local v0       #bAddToCache:Z
    .restart local v1       #bmp3D:Lcom/htc/sunny2/SBitmap;
    .restart local v4       #service:Lcom/htc/music/IMediaPlaybackService;
    .restart local v6       #szRequestAlbumPath:Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method
