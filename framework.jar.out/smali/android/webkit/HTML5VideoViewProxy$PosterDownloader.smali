.class final Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PosterDownloader"
.end annotation


# static fields
.field private static mQueueRefCount:I

.field private static mRequestQueue:Landroid/net/http/RequestQueue;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaders:Landroid/net/http/Headers;

.field private mPosterBytes:Ljava/io/ByteArrayOutputStream;

.field private final mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 2
    .parameter "url"
    .parameter "proxy"

    .prologue
    .line 409
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 411
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 416
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    .line 417
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Landroid/net/http/RequestHandle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Ljava/net/URL;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    return v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 514
    :cond_0
    return-void

    .line 511
    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    throw v0

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseQueue()V
    .locals 1

    .prologue
    .line 525
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->shutdown()V

    .line 530
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    goto :goto_0
.end method

.method private retainQueue()V
    .locals 2

    .prologue
    .line 518
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 521
    :cond_0
    sget v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    .line 522
    return-void
.end method


# virtual methods
.method public cancelAndReleaseQueue()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 441
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->releaseQueue()V

    .line 442
    return-void
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 492
    return-void
.end method

.method public data([BI)V
    .locals 2
    .parameter "data"
    .parameter "len"

    .prologue
    .line 456
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 459
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 460
    return-void
.end method

.method public endData()V
    .locals 5

    .prologue
    .line 463
    iget v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 464
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 465
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 467
    .local v1, poster:Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    #calls: Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V

    .line 469
    .end local v1           #poster:Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    iget v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    iget v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    .line 473
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_1
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;

    invoke-direct {v3, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;-><init>(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_1
.end method

.method public error(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "description"

    .prologue
    .line 495
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 496
    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 1
    .parameter "error"

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 452
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    .line 453
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->retainQueue()V

    .line 422
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 430
    .local v7, protocol:Ljava/lang/String;
    const-string/jumbo v0, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "https"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    :cond_2
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    goto :goto_0
.end method

.method public status(IIILjava/lang/String;)V
    .locals 0
    .parameter "major_version"
    .parameter "minor_version"
    .parameter "code"
    .parameter "reason_phrase"

    .prologue
    .line 448
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    .line 449
    return-void
.end method
