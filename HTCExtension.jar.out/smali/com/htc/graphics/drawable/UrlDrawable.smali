.class public Lcom/htc/graphics/drawable/UrlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;,
        Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;,
        Lcom/htc/graphics/drawable/UrlDrawable$Dimension;,
        Lcom/htc/graphics/drawable/UrlDrawable$Options;
    }
.end annotation


# static fields
.field public static final ACTION_REDRAW_IMAGE:Ljava/lang/String; = "urldrawable_redraw_image"

.field private static final BLACK_LIST_KEEP_DURATION:J = 0x927c0L

.field protected static final CACHE_PATH:Ljava/lang/String; = ""

.field private static final CORE_POOL_SIZE:I = 0x1

.field public static DEBUT_LOG_ENABLED:Z = false

.field private static final DEFAULT_HEIGHT:I = 0x17

.field private static final DEFAULT_WIDTH:I = 0x17

.field public static final EXTRA_LIST_POS:Ljava/lang/String; = "urldrawable_redraw_image_in_list_pos"

.field public static final EXTRA_URL:Ljava/lang/String; = "urldrawable_redraw_image_url"

.field private static final KEEP_ALIVE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "UrlDrawable"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1

.field private static final MAX_RETRY_DUPLICATE:I = 0x64

.field private static final MAX_RETRY_GENERAL:I = 0x3

.field public static final MSG_REDRAW_IMAGE:I = 0x101

.field private static final REMOTE_CONNECT_TIMEOUT:I = 0x2710

.field private static final REMOTE_FETCH_TIMEOUT:I = 0x2710

.field private static final RETRY_DUPLICATE_DELAY_TIMEOUT:I = 0xc8

.field private static final RETRY_GENERAL_DELAY_TIMEOUT:I

.field private static final WHITE_LIST:[Ljava/lang/String;

.field private static final blackListMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected static final sFileReadLock:Ljava/util/concurrent/locks/Lock;

.field private static final sFileUtilLock:Ljava/lang/Object;

.field protected static final sFileWriteLock:Ljava/util/concurrent/locks/Lock;

.field private static sMaxFetchedImageDimension:I

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRamCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mContext:Landroid/content/Context;

.field private mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

.field private final mHandler:Landroid/os/Handler;

.field protected mImageId:Ljava/lang/String;

.field public mListPos:I

.field private mNeverDrawn:Z

.field protected mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

.field private mRedrawHandler:Landroid/os/Handler;

.field private mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 77
    sput-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.htc.deals"

    aput-object v2, v0, v3

    const-string v2, "com.htc.dealswidget"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->WHITE_LIST:[Ljava/lang/String;

    .line 296
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x226

    :goto_0
    sput v0, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 321
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 324
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    .line 326
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->blackListMap:Ljava/util/concurrent/ConcurrentMap;

    .line 328
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$1;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$1;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 337
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v7, Lcom/htc/graphics/drawable/UrlDrawable;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    .line 426
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$2;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$2;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 454
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 456
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    .line 457
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 1113
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    .line 1356
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    .line 1358
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1359
    return-void

    .line 296
    :cond_0
    const/16 v0, 0x96

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 678
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 459
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 659
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 680
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 8
    .parameter "hostContext"
    .parameter "pluginContext"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 631
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 420
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 459
    new-instance v5, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 659
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 633
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iget v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v5, :cond_0

    .line 634
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, pkgName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 636
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 637
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 638
    iget v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    sput v5, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 639
    sget-boolean v5, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v5, :cond_0

    .line 640
    const-string v5, "UrlDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sMaxFetchedImageDimension:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 649
    return-void

    .line 636
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 459
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 659
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 623
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 624
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "options"
    .parameter "state"

    .prologue
    .line 684
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 459
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 659
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 685
    iput-object p4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 686
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 687
    return-void
.end method

.method static synthetic access$000(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/graphics/drawable/UrlDrawable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getFromRemote()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->blackListMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private canLoadToRamCache()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1003
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    if-nez v1, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplyMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bmSrc"
    .parameter "bmMask"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1566
    invoke-static {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1600
    .end local p0
    :goto_0
    return-object p0

    .line 1569
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1570
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1572
    .local v1, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1573
    .local v3, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1575
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p0, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1590
    :cond_1
    :goto_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1591
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1593
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1596
    if-eqz v0, :cond_2

    .line 1597
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1598
    const/4 v0, 0x0

    :cond_2
    move-object p0, v1

    .line 1600
    goto :goto_0

    .line 1579
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p0, v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1581
    .local v2, bmScaleSrc:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 1582
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1586
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method private getBitmapFromRamCache()Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1280
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1281
    const-string v2, "UrlDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Bitmap from Ram by ImageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 1298
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_3

    .line 1299
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1300
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1301
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1302
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] Drawable found in RAM cache"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 1309
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_2
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 1311
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->isEnqueued()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1312
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->enqueue()Z

    .line 1316
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "extraPath"

    .prologue
    .line 1116
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1117
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1118
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    const-string v1, "UrlDrawable"

    const-string v3, "Unable to create cache directory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v0, 0x0

    monitor-exit v2

    .line 1125
    .end local v0           #dir:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 1126
    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFromLocal()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1272
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local v1, bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1266
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1267
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromDiskCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1268
    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 1269
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    move-object v1, v0

    .line 1272
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getFromRemote()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1191
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1192
    .local v3, image_hash:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 1193
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "%s.tmp"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1196
    .local v2, f:Ljava/io/File;
    :try_start_0
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v6, v6, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    invoke-static {v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->getInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 1199
    .local v4, is:Ljava/io/InputStream;
    invoke-static {v4, v2}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 1201
    if-eqz v4, :cond_0

    .line 1202
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1204
    :cond_0
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v5, :cond_1

    .line 1205
    invoke-direct {p0, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->writeToCaches(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1207
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    .end local v4           #is:Ljava/io/InputStream;
    :goto_0
    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    return-object v0

    .line 1209
    :catch_0
    move-exception v1

    .line 1210
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UrlDrawable"

    const-string v6, "[%s][%s] Unable to fetch remotely!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5
.end method

.method private static getInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 12
    .parameter "url"
    .parameter "useApacheHttpClient"

    .prologue
    .line 1156
    const/4 v5, 0x0

    .line 1158
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v8, url_url:Ljava/net/URL;
    if-eqz p1, :cond_0

    .line 1161
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1162
    .local v6, params:Lorg/apache/http/params/HttpParams;
    sget-object v9, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v6, v9}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1163
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1165
    const/4 v9, 0x0

    invoke-static {v6, v9}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 1166
    const/16 v9, 0x2710

    invoke-static {v6, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1168
    const/16 v9, 0x2710

    invoke-static {v6, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1169
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 1170
    .local v4, getRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1171
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 1172
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 1173
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 1186
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #params:Lorg/apache/http/params/HttpParams;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #url_url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 1175
    .restart local v8       #url_url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1176
    .local v1, conn:Ljava/net/URLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1177
    const/16 v9, 0x2710

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1178
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1179
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 1180
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1182
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v8           #url_url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 1183
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "UrlDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getInputStream failed! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "forceDim"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v4, 0x1

    .line 583
    invoke-static {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    .line 587
    .local v0, default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    invoke-virtual {p1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    invoke-virtual {p1, v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    iget v2, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v3, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 602
    .end local v0           #default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_0
    :goto_0
    return-object p0

    .line 594
    .restart local v0       #default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_1
    invoke-static {v0, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledDimension(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v1

    .line 595
    .local v1, scaled_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    iget v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v3, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "bmSrc"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 1603
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 1641
    :cond_0
    :goto_0
    return-object v3

    .line 1604
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1605
    .local v10, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1606
    .local v9, nSrcH:I
    int-to-float v14, v10

    move/from16 v0, p1

    int-to-float v15, v0

    div-float v5, v14, v15

    .line 1607
    .local v5, fXratio:F
    int-to-float v14, v9

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v6, v14, v15

    .line 1608
    .local v6, fYratio:F
    cmpg-float v14, v5, v6

    if-gtz v14, :cond_2

    .line 1609
    move v8, v10

    .line 1610
    .local v8, nSrcDrawW:I
    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v5

    float-to-int v7, v14

    .line 1611
    .local v7, nSrcDrawH:I
    sub-int v14, v9, v7

    div-int/lit8 v12, v14, 0x2

    .line 1613
    .local v12, nYoffset:I
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1614
    .local v2, bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1615
    .local v4, canvasDst:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1616
    .local v13, paintDefault:Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v12, v7

    move/from16 v0, v16

    invoke-direct {v14, v15, v12, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1620
    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1621
    .local v3, bmRet:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1622
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1626
    .end local v2           #bmDst:Landroid/graphics/Bitmap;
    .end local v3           #bmRet:Landroid/graphics/Bitmap;
    .end local v4           #canvasDst:Landroid/graphics/Canvas;
    .end local v7           #nSrcDrawH:I
    .end local v8           #nSrcDrawW:I
    .end local v12           #nYoffset:I
    .end local v13           #paintDefault:Landroid/graphics/Paint;
    :cond_2
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v6

    float-to-int v8, v14

    .line 1627
    .restart local v8       #nSrcDrawW:I
    move v7, v9

    .line 1628
    .restart local v7       #nSrcDrawH:I
    sub-int v14, v10, v8

    div-int/lit8 v11, v14, 0x2

    .line 1630
    .local v11, nXoffset:I
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1631
    .restart local v2       #bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1632
    .restart local v4       #canvasDst:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1633
    .restart local v13       #paintDefault:Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v11, v8

    move/from16 v0, v16

    invoke-direct {v14, v11, v15, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1637
    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1638
    .restart local v3       #bmRet:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1639
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private static getScaledDimension(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .locals 3
    .parameter "original"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 548
    :cond_1
    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    .line 549
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 550
    :cond_2
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-le p1, p2, :cond_3

    .line 551
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 554
    :cond_3
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v0

    .line 556
    .local v0, scaled:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    if-lez p1, :cond_4

    .line 557
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-ge v1, p1, :cond_5

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_5

    .line 558
    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 559
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 567
    :cond_4
    :goto_1
    if-lez p2, :cond_0

    .line 568
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-le v1, p2, :cond_6

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_6

    .line 569
    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 570
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    goto :goto_0

    .line 560
    :cond_5
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-ge v1, p1, :cond_4

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_4

    .line 562
    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 563
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    goto :goto_1

    .line 571
    :cond_6
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-le v1, p2, :cond_0

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_0

    .line 573
    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 574
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    goto/16 :goto_0
.end method

.method public static final isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 540
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "base"
    .parameter "name"

    .prologue
    .line 1130
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "bitmap"
    .parameter "recycleOriginal"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x4100

    .line 1015
    const/high16 v0, 0x4100

    .line 1023
    .local v0, ROUND_RADIUS:F
    invoke-static {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1024
    move-object v5, p1

    .line 1025
    .local v5, temp_bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1027
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1028
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1029
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1030
    const v7, -0xbdbdbe

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1031
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v3, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1041
    .local v3, rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1042
    .local v4, rectf:Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v10, v10, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1043
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1045
    invoke-virtual {v1, v5, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1046
    if-eqz p2, :cond_0

    .line 1047
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object v6, p1

    .line 1051
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #rectf:Landroid/graphics/RectF;
    .end local v5           #temp_bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v6
.end method

.method private writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 1055
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->getApplyMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-static {p1, v0, v1, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1062
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Lcom/htc/graphics/drawable/UrlDrawable;->roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1066
    :cond_1
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-boolean v0, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v0, :cond_2

    .line 1069
    const-string v0, "UrlDrawable"

    const-string v1, "[%s][%s] Bitmap stored to RAM cache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_2
    return-object p1
.end method

.method private writeToCaches(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    sget v3, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1140
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    invoke-virtual {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V

    .line 1149
    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1151
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1369
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v2

    if-nez v2, :cond_7

    .line 1372
    :cond_0
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1373
    const-string v2, "UrlDrawable"

    const-string v3, "[%d][%s] Draw real avatar"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_1
    iput-boolean v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    .line 1377
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1378
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1380
    const/4 v0, 0x0

    .local v0, transX:F
    const/4 v1, 0x0

    .line 1381
    .local v1, transY:F
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_5

    .line 1382
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 1387
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_6

    .line 1388
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 1393
    :cond_3
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1394
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v4, v4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1435
    .end local v0           #transX:F
    .end local v1           #transY:F
    :cond_4
    :goto_2
    return-void

    .line 1384
    .restart local v0       #transX:F
    .restart local v1       #transY:F
    :cond_5
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_2

    .line 1385
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v8

    goto :goto_0

    .line 1390
    :cond_6
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_3

    .line 1391
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v8

    goto :goto_1

    .line 1401
    .end local v0           #transX:F
    .end local v1           #transY:F
    :cond_7
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1402
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_8

    .line 1403
    const-string v2, "UrlDrawable"

    const-string v3, "[%d][%s] Draw default avatar"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_8
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1407
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1409
    const/4 v0, 0x0

    .restart local v0       #transX:F
    const/4 v1, 0x0

    .line 1410
    .restart local v1       #transY:F
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_b

    .line 1411
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 1416
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_c

    .line 1417
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 1422
    :cond_a
    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1423
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v4, v4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 1413
    :cond_b
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_9

    .line 1414
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v8

    goto :goto_3

    .line 1419
    :cond_c
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_a

    .line 1420
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v8

    goto :goto_4

    .line 1431
    .end local v0           #transX:F
    .end local v1           #transY:F
    :cond_d
    const-string v2, "UrlDrawable"

    const-string v3, "[%d][%s] Nothing can be drawn"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getAvatarOptions()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapFromDiskCache()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1325
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1326
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1328
    :try_start_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "%s.png"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1330
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1332
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1333
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1334
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] Drawable found in Disk cache"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    :cond_0
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1353
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v0

    .line 1344
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 1341
    :catch_0
    move-exception v2

    .line 1344
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    :goto_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1346
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1347
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] Drawable NOT found in Disk cache"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1344
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #f:Ljava/io/File;
    :cond_2
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_1
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1480
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v0, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 1495
    :cond_0
    :goto_0
    return v0

    .line 1481
    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1482
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 1483
    :cond_2
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v1, :cond_4

    .line 1484
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v0, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 1486
    .local v0, height:I
    if-gtz v0, :cond_3

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1487
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1490
    :cond_3
    if-gtz v0, :cond_0

    .line 1491
    const/16 v0, 0x17

    goto :goto_0

    .line 1495
    .end local v0           #height:I
    :cond_4
    const/16 v0, 0x17

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 1504
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v0, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 1520
    :cond_0
    :goto_0
    return v0

    .line 1506
    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1507
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v1, :cond_4

    .line 1509
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v0, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 1511
    .local v0, width:I
    if-gtz v0, :cond_3

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1512
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1515
    :cond_3
    if-gtz v0, :cond_0

    .line 1516
    const/16 v0, 0x17

    goto :goto_0

    .line 1520
    .end local v0           #width:I
    :cond_4
    const/16 v0, 0x17

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 1537
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1442
    const/4 v0, -0x3

    return v0
.end method

.method public getRedrawHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-object v0
.end method

.method public isDimChanged()Z
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "path"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 1227
    invoke-static {p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v6

    .line 1228
    .local v6, originalSize:[I
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9, p2, p3}, Lcom/htc/util/media/ImageUtil;->countNewSize(IIII)[I

    move-result-object v5

    .line 1230
    .local v5, newSize:[I
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/util/media/ImageUtil;->countSampleValue(IIII)I

    move-result v7

    .line 1233
    .local v7, sampleValue:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1234
    .local v4, bopts:Landroid/graphics/BitmapFactory$Options;
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1236
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1237
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 1238
    const-string v8, "UrlDrawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap could not be decoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v8, 0x0

    .line 1257
    :goto_0
    return-object v8

    .line 1242
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1243
    .local v1, afterSameplWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1244
    .local v0, afterSameplHeight:I
    const/4 v8, 0x0

    aget v8, v5, v8

    if-gt v1, v8, :cond_1

    const/4 v8, 0x1

    aget v8, v5, v8

    if-le v0, v8, :cond_2

    .line 1245
    :cond_1
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    const/4 v10, 0x0

    invoke-static {v2, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1247
    .local v3, bitmap2:Landroid/graphics/Bitmap;
    if-eq v3, v2, :cond_2

    .line 1248
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1249
    move-object v2, v3

    .line 1252
    .end local v3           #bitmap2:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget v9, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    if-gt v8, v9, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget v9, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    if-gt v8, v9, :cond_3

    move-object v8, v2

    .line 1254
    goto :goto_0

    .line 1255
    :cond_3
    const-string v8, "UrlDrawable"

    const-string v9, "bitmap too large"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1257
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected redrawImage()V
    .locals 4

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    if-eqz v1, :cond_2

    .line 1651
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 1652
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1653
    const-string v1, "UrlDrawable"

    const-string v2, "sendbroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "urldrawable_redraw_image"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "urldrawable_redraw_image_url"

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    const-string v1, "urldrawable_redraw_image_in_list_pos"

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1658
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1662
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1663
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    const/16 v2, 0x101

    iget v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1666
    :cond_2
    return-void
.end method

.method public resetParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 665
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 666
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->reset()V

    .line 669
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 671
    :cond_0
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    .line 673
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 674
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 675
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1451
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1558
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1459
    return-void
.end method

.method public setRedrawHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1675
    :cond_0
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 1677
    :cond_1
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 611
    return-void
.end method

.method public setStart()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 693
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2, v6}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->cancel(Z)Z

    .line 695
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 696
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] setStart begins, cancelling previous FutureTask %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    const/4 v0, 0x0

    .line 705
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 710
    :goto_0
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 711
    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    new-instance v3, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V

    invoke-direct {v2, p0, v3}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/util/concurrent/Callable;)V

    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 712
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 713
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 714
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] setStart begins, dispatching new FutureTask %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_1
    :goto_1
    return-void

    .line 706
    :catch_0
    move-exception v1

    .line 707
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 730
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 9
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 736
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1, v5}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->cancel(Z)Z

    .line 738
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 739
    const-string v1, "UrlDrawable"

    const-string v2, "[%s][%s] setStart begins, cancelling previous FutureTask %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->resetParams()V

    .line 748
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 749
    iput-object p2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 750
    if-eqz p3, :cond_2

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 752
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 753
    const-string v1, "UrlDrawable"

    const-string v2, "Url is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_1
    :goto_1
    return-void

    .line 750
    .restart local p3
    :cond_2
    new-instance p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .end local p3
    invoke-direct {p3}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    goto :goto_0

    .line 757
    :cond_3
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 758
    const-string v1, "UrlDrawable"

    const-string v2, "Context is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 762
    :cond_4
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-ge v1, v2, :cond_5

    .line 765
    const-string v1, "UrlDrawable"

    const-string v2, "Options.minDim is not within the valid range set by Options.forceDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 770
    :cond_5
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_6

    .line 773
    const-string v1, "UrlDrawable"

    const-string v2, "Options.maxDim is not within the valid range set by Options.forceDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 778
    :cond_6
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_7

    .line 780
    const-string v1, "UrlDrawable"

    const-string v2, "Options.minDim should not exceed Options.maxDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 784
    :cond_7
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    .line 795
    :goto_2
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 796
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$4;

    invoke-direct {v1, p0}, Lcom/htc/graphics/drawable/UrlDrawable$4;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;)V

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/graphics/drawable/UrlDrawable$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 826
    :cond_8
    const/4 v0, 0x0

    .line 828
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 833
    :goto_3
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 834
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 836
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 837
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v1, :cond_1

    .line 838
    const-string v1, "UrlDrawable"

    const-string v2, "[%s][%s] setStart begins, dispatching new FutureTask %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 789
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    goto/16 :goto_2

    .line 871
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_a
    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 829
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method public writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v4, v4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v4, :cond_2

    .line 1084
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 1085
    const/4 v2, 0x0

    .line 1086
    .local v2, fos:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1088
    :try_start_0
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "%s.png"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1090
    .local v1, f:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1092
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 1093
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s] Bitmap stored to Disk cache"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1104
    :cond_0
    if-eqz v3, :cond_1

    .line 1105
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1107
    :cond_1
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    .end local v1           #f:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_0
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1111
    :cond_2
    return-void

    .line 1098
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s] Bitmap NOT stored to Disk cache"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1104
    if-eqz v2, :cond_3

    .line 1105
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1107
    :cond_3
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .line 1104
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_4

    .line 1105
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1107
    :cond_4
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1104
    throw v4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1098
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
