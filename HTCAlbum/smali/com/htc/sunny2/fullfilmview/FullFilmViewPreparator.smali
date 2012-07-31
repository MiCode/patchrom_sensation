.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.super Lcom/htc/sunny2/Preparator;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;
    }
.end annotation


# static fields
.field public static final CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field public static final ENABLE_QUALITY_OPTIONS:Ljava/lang/String; = "ENABLE_QUALITY_OPTIONS"

.field public static final EQ:I = 0x2

.field protected static final EXTREME_COLORDEPTH:I = 0x20

.field protected static final EXTREME_HEIGHT:I = 0x800

.field protected static final EXTREME_PANORAMA_MAX_PIXELS:I = 0x400000

.field protected static final EXTREME_WIDTH:I = 0x800

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field protected static final FILMSTRIP_WIDTH_HEIGHT:I = 0x100

.field public static final FILM_FILE_CAHCE_SIZE:Ljava/lang/String; = "FILM_FILE_CAHCE_SIZE"

.field public static final FILM_MEM_CAHCE_SIZE:Ljava/lang/String; = "FILM_MEM_CAHCE_SIZE"

.field protected static final FINISH_TASK:I = 0x0

.field protected static final FULLSCREEN_COLORDEPTH:I = 0x20

.field protected static final FULLSCREEN_HEIGHT:I = 0x258

.field protected static final FULLSCREEN_WIDTH:I = 0x400

.field public static final FULL_FILE_CAHCE_SIZE:Ljava/lang/String; = "FULL_FILE_CAHCE_SIZE"

.field public static final FULL_MEM_CAHCE_SIZE:Ljava/lang/String; = "FULL_MEM_CAHCE_SIZE"

.field protected static final HIGH_CACHE_FILE_COUNT:I = 0x1e

.field protected static final HIGH_CACHE_MEM_COUNT:I = 0x1

.field public static final HQ:I = 0x1

.field protected static final ITEMS_PER_PAGE:I = 0xf

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

.field public static final LQ:I = 0x0

.field private static final MAX_MEM_CACHE_LIMIT_COUNT:I = 0x3

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6

.field protected static final MIDIUM_CACHE_FILE_COUNT:I = 0x12c

.field protected static final MIDIUM_TEXTURES_LIMIT_COUNT:I = 0x24

.field public static final SIDE_BY_SIDE:I = 0x3

.field protected static final TAG:Ljava/lang/String; = null

.field public static final TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final THUMB_FOLDER_WIDTH_HEIGHT:I = 0x80


# instance fields
.field protected final LOCK:Ljava/lang/Object;

.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected bInitial:Z

.field protected bMediaListExist:Z

.field protected bStop:Z

.field protected cacheItem:Lcom/htc/sunny2/common/CacheItem;

.field protected decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

.field protected extremeQualityDecodedItemIndex:I

.field protected extremeQualityToDecodeItemIndex:I

.field protected extremeTextureHandle:Lcom/htc/sunny2/Texture;

.field protected failTextureHandle:Lcom/htc/sunny2/Texture;

.field protected isCacheEnabled:Z

.field protected isUploadEditor:Z

.field protected lockTextureMap:Ljava/lang/Object;

.field protected lockVideo:Ljava/lang/Object;

.field protected m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

.field protected mBeginIndex:I

.field protected mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

.field protected mBottomIndex:I

.field protected mBottomIndexHQ:I

.field protected mCacheSet:I

.field private mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

.field protected mContext:Landroid/content/Context;

.field protected mDecodeIdleBeforeTimeMillis:J

.field protected mDecodeIdleDurationAfterSideBySideImageDecoded:J

.field protected mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

.field protected mDirection:I

.field protected mEnableQualityOptions:Z

.field protected mEndIndex:I

.field private mFileCacheSize:I

.field protected mHQTextureCount:I

.field private mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsPaused:Z

.field protected mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

.field protected mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

.field private mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field private mRaisePriorityOnce:Z

.field protected mScaleType:I

.field protected mScreenLongDimension:I

.field protected mScreenShortDimension:I

.field protected mSunnyEnvironment:I

.field private mTask:Lcom/htc/sunny2/common/IterationTask;

.field protected mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskWaitingTime:J

.field protected mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureMap:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

.field protected mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

.field protected mTexturesCount:I

.field protected mTexturesHQCount:I

.field protected mTopIndex:I

.field protected mTopIndexHQ:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

.field protected mViewState:I

.field protected sideBySideBitmap:Landroid/graphics/Bitmap;

.field protected sideBySideDecodedItemIndex:I

.field protected sideBySideToDecodeItemIndex:I

.field protected sideBySideVideoDecodingItemIndex:I

.field protected sideBySideVideoToDecodeItemIndex:I

.field private tempItem:Lcom/htc/sunny2/common/CacheItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    const-class v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .parameter "host"
    .parameter "name"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/Preparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    .line 191
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    .line 281
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    .line 283
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 284
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 285
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 286
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 287
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 288
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 289
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 291
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 292
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 294
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    .line 295
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    .line 296
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 297
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 304
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 305
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 306
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 308
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 309
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 311
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    .line 313
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 314
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    .line 315
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 316
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    .line 317
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    .line 318
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 319
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 320
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 321
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 322
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 323
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 324
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 325
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 326
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 327
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 329
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    .line 331
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 332
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 333
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScaleType:I

    .line 334
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    .line 335
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    .line 336
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 337
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->lockVideo:Ljava/lang/Object;

    .line 346
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->lockTextureMap:Ljava/lang/Object;

    .line 348
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 349
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 350
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    .line 351
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    .line 353
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 354
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 356
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 357
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 359
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 360
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 362
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 364
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 365
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 366
    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 369
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 586
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 587
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 588
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 589
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    .line 590
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 591
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 592
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 594
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 1702
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    .line 1742
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2755
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2756
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    .line 575
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 576
    return-void
.end method


# virtual methods
.method public bind(ILcom/htc/sunny2/IMediaList;I)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 675
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind+"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v1, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialize"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->unbind(I)V

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    if-lez v1, :cond_3

    .line 687
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    if-le v1, v3, :cond_2

    .line 688
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 691
    :cond_2
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 692
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableFileCache(Landroid/content/Context;I)Z

    .line 695
    :cond_3
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 696
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v1, :cond_4

    .line 697
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 700
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 701
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaList has no media"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    goto :goto_0

    .line 706
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 707
    .local v0, itemCounts:I
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v1, v0, :cond_6

    .line 708
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 710
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_8

    .line 711
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind() NG - not null texture pool or map"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_8
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 714
    new-instance v1, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 715
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ItemsAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 716
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 718
    const/16 v1, 0xf

    if-le v0, v1, :cond_f

    .line 719
    const/16 v1, 0xe

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 723
    :goto_1
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 724
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 725
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gez v1, :cond_9

    .line 726
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 729
    :cond_9
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_a

    .line 730
    new-instance v1, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v1, v0}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 731
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 732
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ItemsAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 733
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 734
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 735
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gez v1, :cond_a

    .line 736
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 739
    :cond_a
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_b

    .line 740
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->clear()V

    .line 741
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xb

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 742
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    .line 744
    :cond_b
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 746
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 747
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 749
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_c

    .line 751
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    .line 752
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache Setup M:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_c
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_d

    .line 756
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 757
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 758
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 761
    :cond_d
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v1, :cond_e

    .line 762
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 763
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    .line 764
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 767
    :cond_e
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 768
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scroll speed 0"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind-, item count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :cond_f
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    goto/16 :goto_1
.end method

.method public checkImageUpdate(II)V
    .locals 6
    .parameter "mediaListIdx"
    .parameter "index"

    .prologue
    .line 2693
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v3, :cond_1

    .line 2694
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - TextureMap is null or MediaList is null or DecodeItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    :goto_0
    return-void

    .line 2698
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 2700
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - notified index not decode and current index not notified index"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2704
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 2705
    .local v0, mediaItem:Lcom/htc/sunny2/IMediaData;
    if-nez v0, :cond_3

    .line 2706
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkImageUpdate NG - mediaItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2710
    :cond_3
    invoke-interface {v0}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 2711
    .local v1, newIdentifier:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v2

    .line 2713
    .local v2, oldIdentifier:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2715
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkImageUpdate - current decode item id is the same as notified item id, newId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2719
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method public deInit()V
    .locals 3

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_deInit +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bInitial is false, ThumbnailPreparator_deInit -"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    monitor-exit v1

    .line 958
    :goto_0
    return-void

    .line 919
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 920
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->release()V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_3

    .line 931
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 935
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_4

    .line 936
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->release()V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    .line 940
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 943
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-eqz v0, :cond_5

    .line 944
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 948
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 949
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 953
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Release mUpdateListener"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 957
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected decodeFromCache(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1554
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1557
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1558
    const/4 v0, 0x1

    .line 1582
    :goto_0
    return v0

    .line 1561
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1562
    .local v8, filePath:Ljava/lang/String;
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 1564
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 1565
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xb

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    const/16 v3, 0x12c

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1566
    :cond_1
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1567
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1568
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1569
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1574
    :goto_1
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1575
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1576
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1577
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_2

    if-eqz v11, :cond_2

    .line 1579
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1580
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1582
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1571
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1572
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeFromCacheHQ(J)Z
    .locals 12
    .parameter "limitedTimeMillis"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1588
    .local v10, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v10, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1591
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1592
    const/4 v0, 0x1

    .line 1616
    :goto_0
    return v0

    .line 1595
    :cond_0
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1596
    .local v8, filePath:Ljava/lang/String;
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v9

    .line 1598
    .local v9, identifier:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 1599
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/16 v3, 0x1e

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->switchCacheSet(IIIIZ)V

    .line 1600
    :cond_1
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xc

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1601
    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1602
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1603
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {v10}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 1608
    :goto_1
    new-instance v11, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v11}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    .line 1609
    .local v11, task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1610
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 1611
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_2

    if-eqz v11, :cond_2

    .line 1613
    iput-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1614
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1616
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1605
    .end local v11           #task:Lcom/htc/sunny2/common/ItrCacheDecodeTask;
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 1606
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    goto :goto_1
.end method

.method protected decodeIterator(J)Z
    .locals 15
    .parameter "limitedTimeMillis"

    .prologue
    .line 1944
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1945
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v0, :cond_0

    .line 1946
    const/4 v0, 0x0

    .line 2055
    :goto_0
    return v0

    .line 1948
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v0, :cond_1

    .line 1949
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[decodeIterator] IteratorTask is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const/4 v0, 0x1

    goto :goto_0

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1953
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 1954
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 1955
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v8, v0, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1956
    .local v8, bmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_f

    .line 1957
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1959
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 1961
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-ne v0, v1, :cond_6

    .line 1963
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1964
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 1967
    :cond_2
    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 1968
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v0, :cond_3

    .line 1969
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    .line 1971
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 1972
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1973
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1975
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 1976
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1977
    .local v11, currentTimeMillis:J
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 1978
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v0, v0, v11

    if-gez v0, :cond_4

    .line 1979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 1983
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 1990
    .end local v11           #currentTimeMillis:J
    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1986
    :cond_6
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1987
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_1

    .line 1993
    :cond_7
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1995
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 1997
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_d

    .line 1998
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1999
    .local v13, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v13, :cond_c

    .line 2000
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_a

    .line 2001
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2007
    :cond_8
    :goto_2
    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v0, :cond_b

    const/16 v10, 0x11

    .line 2008
    .local v10, cacheSourceType:I
    :goto_3
    new-instance v14, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v14}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 2009
    .local v14, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 2010
    invoke-virtual {v14, v10}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 2011
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v14, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 2012
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_9

    if-eqz v14, :cond_9

    .line 2014
    iput-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 2015
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 2055
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #cacheSourceType:I
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v14           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_9
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2003
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    .restart local v13       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2004
    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xc

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_2

    .line 2007
    :cond_b
    const/4 v10, 0x1

    goto :goto_3

    .line 2018
    :cond_c
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2021
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_d
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][FullFilmViewPreparator][decodeIterator]mediaItem is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2024
    :cond_e
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 2025
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 2030
    :cond_f
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 2031
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2041
    :goto_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_4

    .line 2034
    :cond_10
    const/4 v9, 0x1

    .line 2035
    .local v9, bNotifyFail:Z
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2036
    .restart local v13       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v13, :cond_11

    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2037
    const/4 v9, 0x0

    .line 2039
    :cond_11
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto :goto_5

    .line 2045
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #bNotifyFail:Z
    .end local v13           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_12
    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 2046
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 2053
    :cond_13
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2047
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 2048
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v1, "Task waiting time over time limit, request resume thread"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2050
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto :goto_6
.end method

.method protected decodeOriginalFile(J)Z
    .locals 26
    .parameter "limitedTimeMillis"

    .prologue
    .line 1746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v20

    check-cast v20, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1747
    .local v20, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v20, :cond_0

    .line 1748
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1751
    const/4 v2, 0x1

    .line 1872
    :goto_0
    return v2

    .line 1753
    :cond_0
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v14

    .line 1754
    .local v14, filePath:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v17

    .line 1755
    .local v17, isVideo:Z
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v16

    .line 1756
    .local v16, isDrm:Z
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v21

    .line 1758
    .local v21, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1759
    const/16 v23, 0x10

    .line 1761
    .local v23, requiredColorDepth:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScaleType:I

    .line 1762
    const/16 v13, 0x422

    .line 1764
    .local v13, decodeFlag:I
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v2

    const-wide/32 v5, 0x400000

    cmp-long v2, v2, v5

    if-gez v2, :cond_1

    .line 1766
    or-int/lit8 v13, v13, 0x40

    .line 1768
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1769
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v2, :cond_3

    .line 1770
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1771
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1833
    :cond_2
    :goto_1
    if-eqz v17, :cond_c

    .line 1834
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 1835
    const/4 v2, 0x1

    goto :goto_0

    .line 1773
    :cond_3
    const/16 v2, 0x400

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1774
    const/16 v2, 0x258

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1776
    const/16 v23, 0x20

    goto :goto_1

    .line 1778
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1779
    const/16 v2, 0x400

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1780
    const/16 v2, 0x258

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v3, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z

    .line 1782
    const/16 v23, 0x20

    goto :goto_1

    .line 1783
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 1784
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1785
    const/16 v2, 0x800

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1786
    const/16 v23, 0x20

    .line 1790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v2, :cond_2

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    .line 1793
    .local v12, currentIdx:I
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v2, 0xc8

    invoke-direct {v11, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1794
    .local v11, bStr:Ljava/lang/StringBuffer;
    const-string v2, "decode EQ, current idx="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mTextureMapHQ remove idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v18

    .line 1797
    .local v18, itemsCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v22

    .line 1798
    .local v22, minIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v19

    .line 1800
    .local v19, maxIndex:I
    if-gez v22, :cond_6

    .line 1801
    const/16 v22, 0x0

    .line 1802
    :cond_6
    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 1803
    add-int/lit8 v19, v18, -0x1

    .line 1805
    :cond_7
    move/from16 v15, v22

    .local v15, i:I
    :goto_2
    move/from16 v0, v19

    if-gt v15, v0, :cond_2

    .line 1806
    if-ne v12, v15, :cond_9

    .line 1805
    :cond_8
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1810
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v15}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v25

    .line 1811
    .local v25, texture:Lcom/htc/sunny2/Texture;
    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, v25

    if-eq v0, v2, :cond_8

    .line 1812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v15}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    .line 1813
    invoke-virtual/range {v25 .. v25}, Lcom/htc/sunny2/Texture;->release()V

    .line 1814
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_a

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v15, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v15, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 1822
    :cond_a
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1828
    .end local v11           #bStr:Ljava/lang/StringBuffer;
    .end local v12           #currentIdx:I
    .end local v15           #i:I
    .end local v18           #itemsCount:I
    .end local v19           #maxIndex:I
    .end local v22           #minIndex:I
    .end local v25           #texture:Lcom/htc/sunny2/Texture;
    :cond_b
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1829
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 1830
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 1831
    or-int/lit16 v13, v13, 0x200

    goto/16 :goto_1

    .line 1838
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1839
    const/4 v4, -0x1

    .line 1840
    .local v4, cacheSet:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    if-nez v2, :cond_f

    .line 1841
    const/16 v4, 0xb

    .line 1845
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v2, :cond_10

    .line 1846
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1850
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 1853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 1857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 1858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 1860
    new-instance v24, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v24 .. v24}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 1861
    .local v24, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 1863
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setColorDepth(I)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageCallbackListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V

    .line 1865
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_e

    if-eqz v24, :cond_e

    .line 1869
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1872
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1842
    .end local v24           #task:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1843
    const/16 v4, 0xc

    goto/16 :goto_4

    .line 1848
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    goto/16 :goto_5
.end method

.method protected findAHQTextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "newContentIndex"

    .prologue
    .line 1531
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-ge v2, v3, :cond_1

    .line 1533
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1534
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1548
    :cond_0
    :goto_0
    return-object v0

    .line 1536
    :cond_1
    const/4 v0, 0x0

    .line 1537
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1538
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1540
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1541
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1542
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1545
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1546
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 5
    .parameter "newContentIndex"

    .prologue
    .line 1510
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-ge v2, v3, :cond_1

    .line 1512
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1513
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1527
    :cond_0
    :goto_0
    return-object v0

    .line 1515
    :cond_1
    const/4 v0, 0x0

    .line 1516
    .local v0, candidate:Lcom/htc/sunny2/Texture;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(II)I

    move-result v1

    .line 1517
    .local v1, contentIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1519
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1520
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    .line 1521
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 1524
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_0

    .line 1525
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAnItemToDecode()I
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    .line 1298
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    if-eq v8, v7, :cond_0

    .line 1299
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne v8, v9, :cond_2

    .line 1303
    sget-object v8, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]extremeQualityToDecodeItemIndex, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has already decoded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 1312
    :cond_0
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    if-eq v8, v7, :cond_4

    .line 1313
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_3

    .line 1317
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 1318
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_1

    .line 1319
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_1
    move v0, v7

    .line 1497
    :goto_0
    return v0

    .line 1306
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v8, 0x2

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1307
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]extremeQualityToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_0

    .line 1323
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1324
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]sideBySideToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto :goto_0

    .line 1329
    :cond_4
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v7, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    if-eq v8, v9, :cond_7

    .line 1330
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1331
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    if-ne v8, v9, :cond_6

    .line 1335
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 1336
    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 1337
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v8, :cond_5

    .line 1338
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_5
    move v0, v7

    .line 1340
    goto :goto_0

    .line 1342
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1343
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcAlbum][FullFilmViewPreparator][findAnItemToDecode]sideBySideVideoToDecodeItemIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    goto/16 :goto_0

    .line 1348
    :cond_7
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .local v0, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v0, v8, :cond_b

    .line 1349
    invoke-virtual {p0, v0, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_8

    .line 1351
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1352
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1356
    :cond_8
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_a

    .line 1357
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_9

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_a

    .line 1358
    :cond_9
    invoke-virtual {p0, v0, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_a

    .line 1360
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    goto/16 :goto_0

    .line 1348
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1367
    :cond_b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v5, v8, -0x1

    .line 1368
    .local v5, searchUpIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v8, 0x1

    .line 1369
    .local v3, searchDownIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v6, v8, -0x1

    .line 1370
    .local v6, searchUpIndexHQ:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v8, 0x1

    .line 1371
    .local v4, searchDownIndexHQ:I
    const/4 v2, 0x0

    .line 1372
    .local v2, loopCount:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v8}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 1373
    .local v1, itemCount:I
    :cond_c
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_d

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-le v5, v8, :cond_e

    :cond_d
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_19

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_19

    .line 1375
    :cond_e
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-ltz v8, :cond_1b

    .line 1377
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_10

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_10

    .line 1379
    invoke-virtual {p0, v3, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1382
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 1384
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v3

    .line 1385
    goto/16 :goto_0

    .line 1388
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 1391
    :cond_10
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_12

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_12

    .line 1393
    invoke-virtual {p0, v5, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_11

    .line 1396
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1398
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v5

    .line 1399
    goto/16 :goto_0

    .line 1402
    :cond_11
    add-int/lit8 v5, v5, -0x1

    .line 1405
    :cond_12
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_15

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_15

    .line 1407
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_14

    invoke-virtual {p0, v4, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_14

    .line 1409
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_13

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_14

    .line 1411
    :cond_13
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v4

    .line 1412
    goto/16 :goto_0

    .line 1415
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 1418
    :cond_15
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_18

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_18

    .line 1420
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_17

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_17

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_17

    invoke-virtual {p0, v6, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_17

    .line 1422
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_16

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_17

    .line 1424
    :cond_16
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v6

    .line 1425
    goto/16 :goto_0

    .line 1428
    :cond_17
    add-int/lit8 v6, v6, -0x1

    .line 1487
    :cond_18
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 1488
    if-le v2, v1, :cond_c

    .line 1490
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_19
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v8, v9, :cond_1a

    .line 1495
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bottom is smaller than top"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move v0, v7

    .line 1497
    goto/16 :goto_0

    .line 1433
    :cond_1b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v5, v8, :cond_1d

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v5, v8, :cond_1d

    .line 1435
    invoke-virtual {p0, v5, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_1c

    .line 1438
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1440
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v5

    .line 1441
    goto/16 :goto_0

    .line 1444
    :cond_1c
    add-int/lit8 v5, v5, -0x1

    .line 1447
    :cond_1d
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v3, v8, :cond_1f

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v3, v8, :cond_1f

    .line 1449
    invoke-virtual {p0, v3, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 1452
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 1454
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v3

    .line 1455
    goto/16 :goto_0

    .line 1458
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 1461
    :cond_1f
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_22

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_22

    .line 1463
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v6, v8, :cond_21

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v6, v8, :cond_21

    invoke-virtual {p0, v6, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_21

    .line 1465
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_20

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_21

    .line 1467
    :cond_20
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v6

    .line 1468
    goto/16 :goto_0

    .line 1471
    :cond_21
    add-int/lit8 v6, v6, -0x1

    .line 1474
    :cond_22
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v4, v8, :cond_18

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v4, v8, :cond_18

    .line 1476
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v8, :cond_24

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-lt v4, v8, :cond_24

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    if-gt v4, v8, :cond_24

    invoke-virtual {p0, v4, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_24

    .line 1478
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    if-ne v8, v11, :cond_23

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    if-eqz v8, :cond_24

    .line 1480
    :cond_23
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v7, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move v0, v4

    .line 1481
    goto/16 :goto_0

    .line 1484
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method public freeOutOfRange(III)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"

    .prologue
    .line 2744
    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "mediaListIdx"
    .parameter "itemIdx"
    .parameter "inValue"

    .prologue
    const/4 v1, 0x0

    .line 2370
    if-nez p3, :cond_0

    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->queryTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 2371
    .local v0, texture:Lcom/htc/sunny2/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_1

    .line 2374
    .end local v0           #texture:Lcom/htc/sunny2/Texture;
    :goto_1
    return-object v0

    .line 2370
    :cond_0
    const-string v2, "QUALITY"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 2374
    .restart local v0       #texture:Lcom/htc/sunny2/Texture;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method public hasSideBySideBitmapReadyListener()Z
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8
    .parameter "context"
    .parameter "inValue"

    .prologue
    const/16 v7, 0x24

    const/4 v6, 0x0

    .line 603
    if-nez p1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Context is null"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 667
    :goto_0
    return-void

    .line 609
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    .line 610
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 611
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 612
    .local v2, screenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 613
    .local v1, screenHeight:I
    if-le v2, v1, :cond_2

    .line 614
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 615
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    .line 620
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v4, "TEXTURE_MAX_COUNT"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 623
    .local v3, texturePreparationMaxCount:I
    if-le v3, v7, :cond_1

    .line 624
    const/16 v3, 0x24

    .line 628
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ThumbnailPreparator_init +"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    .line 631
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mSunnyEnvironment:I

    if-nez v4, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Environment handle is 0"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 634
    monitor-exit v5

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 617
    .end local v3           #texturePreparationMaxCount:I
    :cond_2
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    .line 618
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    goto :goto_1

    .line 637
    .restart local v3       #texturePreparationMaxCount:I
    :cond_3
    :try_start_1
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 638
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-nez v4, :cond_4

    .line 639
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "TexturePreparationMaxCount is 0"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 641
    monitor-exit v5

    goto/16 :goto_0

    .line 643
    :cond_4
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    .line 645
    const-string v4, "CACHE_SET"

    const/16 v6, 0xb

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    .line 647
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    .line 649
    const-string v4, "FULL_MEM_CAHCE_SIZE"

    const/4 v6, 0x3

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMemCacheSize:I

    .line 650
    const-string v4, "FULL_FILE_CAHCE_SIZE"

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mFileCacheSize:I

    .line 652
    new-instance v4, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v4}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 653
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener;

    .line 655
    new-instance v4, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v4}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    .line 656
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DUpdateMediaListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$UpdateMediaListener2;

    .line 658
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    .line 659
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    .line 660
    const-string v4, "ENABLE_QUALITY_OPTIONS"

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    .line 662
    new-instance v4, Lcom/htc/sunny2/common/IterationTaskThread;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ItrTaskThread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 664
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 665
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ThumbnailPreparator_init -"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    .line 1504
    :cond_0
    const/4 v0, 0x1

    .line 1506
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2
    .parameter "limitedTimeMillis"

    .prologue
    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRange(IIIJ)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "firstIndex"
    .parameter "lastIndex"
    .parameter "restrictTime"

    .prologue
    .line 2748
    return-void
.end method

.method public notifyDataItemChanged(II)V
    .locals 15
    .parameter "mediaListIdx"
    .parameter "contentIndex"

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged+, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 965
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum] notifyDataItemChanged - bStop"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    monitor-exit v13

    .line 1070
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v1, :cond_1

    .line 972
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum] notifyDataItemChanged - decodeItem is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    monitor-exit v13

    goto :goto_0

    .line 1068
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 975
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_6

    .line 976
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    .line 977
    .local v9, currentIndex:I
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum] notifyDataItemChanged - current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notify changed item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    .line 980
    .local v10, currentTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_2

    .line 981
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 983
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v1, :cond_3

    .line 984
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v9, v3}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    .line 986
    :cond_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_4

    .line 988
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 990
    :cond_4
    if-eqz v10, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_b

    .line 991
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 992
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 994
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1006
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1009
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_f

    .line 1010
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1011
    .local v12, textureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v1, :cond_7

    .line 1012
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_d

    .line 1013
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1015
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1024
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_8

    .line 1025
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_8

    .line 1026
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1027
    .local v11, item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_e

    .line 1028
    iget-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1038
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_a

    .line 1039
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_12

    .line 1040
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v12

    .line 1041
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v12, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v1, :cond_9

    .line 1042
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-nez v1, :cond_10

    .line 1043
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1045
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 1054
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_a

    .line 1055
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_a

    .line 1056
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1057
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v11, :cond_11

    .line 1058
    iget-object v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 1068
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_a
    :goto_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged-"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 996
    .restart local v9       #currentIndex:I
    .restart local v10       #currentTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_b
    if-eqz v10, :cond_c

    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_c

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 997
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 998
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    .line 1000
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_1

    .line 1002
    :cond_c
    if-eqz v10, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1004
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto/16 :goto_1

    .line 1017
    .end local v9           #currentIndex:I
    .end local v10           #currentTextureHandle:Lcom/htc/sunny2/Texture;
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1018
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1020
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_2

    .line 1030
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_e
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1035
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_f
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - TextureMap is  null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1047
    .restart local v12       #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1048
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 1050
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_4

    .line 1060
    .restart local v11       #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_11
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1065
    .end local v11           #item:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #textureHandle:Lcom/htc/sunny2/Texture;
    :cond_12
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyDataItemChanged NG - TextureMapHQ is  null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_2

    .line 206
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 210
    :cond_0
    if-ne p1, v2, :cond_3

    .line 211
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread FullFilmView preparation start"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 218
    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    .line 220
    :cond_2
    monitor-exit v1

    .line 221
    return-void

    .line 213
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 214
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread FullFilmView preparation end"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_onCancelIRT +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreparator_onCancelIRT -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method protected onProcessPreparation(J)Z
    .locals 10
    .parameter "limitedTimeMillis"

    .prologue
    .line 1116
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v6, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_Force stop"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1119
    const/4 v6, 0x0

    .line 1290
    :goto_0
    return v6

    .line 1122
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v7

    .line 1123
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    if-eqz v6, :cond_1

    .line 1126
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 1128
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1130
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1132
    .local v0, currentTimeMillis:J
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x7d0

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    .line 1133
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleBeforeTimeMillis:J

    .line 1135
    :cond_3
    long-to-int v6, v0

    rem-int/lit16 v5, v6, 0xc8

    .line 1136
    .local v5, t:I
    const/16 v6, 0x14

    if-ge v5, v6, :cond_4

    .line 1137
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Decode Idle"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1142
    .end local v0           #currentTimeMillis:J
    .end local v5           #t:I
    :cond_5
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v6, :cond_6

    .line 1143
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_Not initialize"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/4 v6, 0x1

    goto :goto_0

    .line 1146
    :cond_6
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v6, :cond_7

    .line 1149
    const/4 v6, 0x1

    goto :goto_0

    .line 1151
    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-nez v6, :cond_8

    .line 1152
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onProcessPreparationIRT_mUpdateListener is null"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isTimeExpired(J)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1156
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v6, :cond_9

    .line 1157
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stop preparator"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1159
    const/4 v6, 0x0

    goto :goto_0

    .line 1162
    :cond_9
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 1163
    :try_start_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v6, :cond_a

    .line 1164
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DecodeItem is null"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1166
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1286
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1170
    :cond_a
    const/4 v4, 0x0

    .line 1171
    .local v4, shouldCancelDecodeSideBySide:Z
    :try_start_3
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_c

    .line 1172
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_14

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_14

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v6, v8, :cond_b

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    if-ge v6, v8, :cond_14

    :cond_b
    const/4 v4, 0x1

    .line 1175
    :cond_c
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_d

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v6, v8, :cond_f

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-lt v6, v8, :cond_f

    :cond_d
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_e

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_e

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    if-gt v6, v8, :cond_f

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    if-lt v6, v8, :cond_f

    :cond_e
    if-eqz v4, :cond_13

    .line 1177
    :cond_f
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeItem is expired "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v6, :cond_10

    .line 1179
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1180
    :cond_10
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v6, :cond_11

    .line 1183
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1185
    :cond_11
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v8, :cond_15

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_15

    .line 1186
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1187
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1189
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1204
    :cond_12
    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1208
    :cond_13
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_26

    .line 1210
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processMediaThumbnail(J)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1212
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1172
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1191
    :cond_15
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v8, :cond_16

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_16

    .line 1192
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1193
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "onProcessPreparationIRT NG - mTexturePoolHQ is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 1195
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_2

    .line 1197
    :cond_16
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v6, v8, :cond_17

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_17

    .line 1199
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_2

    .line 1200
    :cond_17
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_12

    .line 1202
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    goto/16 :goto_2

    .line 1215
    :cond_18
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findAnItemToDecode()I

    move-result v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1217
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_25

    .line 1218
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1220
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_1c

    .line 1221
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 1231
    :cond_19
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 1232
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-ne v6, v8, :cond_1b

    .line 1233
    const/4 v3, 0x0

    .line 1235
    .local v3, reusableTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_1f

    .line 1236
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 1241
    :cond_1a
    :goto_4
    if-eqz v3, :cond_20

    .line 1242
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 1250
    .end local v3           #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_1b
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_22

    .line 1251
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    if-nez v6, :cond_21

    .line 1252
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCache(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1222
    :cond_1c
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1d

    .line 1223
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->findAHQTextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto :goto_3

    .line 1224
    :cond_1d
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1e

    .line 1225
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto :goto_3

    .line 1227
    :cond_1e
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_19

    .line 1228
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v8, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto/16 :goto_3

    .line 1237
    .restart local v3       #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_1f
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1a

    .line 1238
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v3

    goto :goto_4

    .line 1244
    :cond_20
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "No reusable texture"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1246
    const/4 v6, 0x0

    monitor-exit v7

    goto/16 :goto_0

    .line 1253
    .end local v3           #reusableTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_21
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_27

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeFromCacheHQ(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1257
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1259
    :cond_23
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-nez v6, :cond_24

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_24

    .line 1260
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "[HTCAlbum][FullFilmViewPreparator][findAnItemToDecode]decodeOriginalFile..."

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    move-result v6

    monitor-exit v7

    goto/16 :goto_0

    .line 1263
    :cond_24
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Texture cache is full"

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1265
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1270
    :cond_25
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1271
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1274
    :cond_26
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyLoadingStatus(I)V

    .line 1278
    :cond_27
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v6, :cond_28

    .line 1280
    const/4 v2, 0x0

    .line 1281
    .local v2, ret:I
    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->processCache(IJ)V

    .line 1282
    const/4 v6, 0x1

    monitor-exit v7

    goto/16 :goto_0

    .line 1284
    .end local v2           #ret:I
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeIterator(J)Z

    move-result v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1290
    .end local v4           #shouldCancelDecodeSideBySide:Z
    :cond_29
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 7
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 1082
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->onProcessPreparation(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1111
    :cond_0
    :goto_0
    return v2

    .line 1083
    :catch_0
    move-exception v1

    .line 1084
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProcessPreparationIRT NG -Unexpected Exception, reset decodeItem and status, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1086
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1087
    .local v0, currentTextureHandle:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v3, :cond_1

    .line 1088
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 1089
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v3, :cond_2

    .line 1091
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1093
    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1094
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1095
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1097
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 1109
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto :goto_0

    .line 1099
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1100
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1101
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notifyDataItemChanged NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1103
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_1

    .line 1105
    :cond_5
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1107
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    goto :goto_1
.end method

.method public onViewStateChange(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 2723
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mViewState:I

    .line 2724
    return-void
.end method

.method public pausePreparator()V
    .locals 2

    .prologue
    .line 2760
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2761
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2762
    monitor-exit v1

    .line 2763
    return-void

    .line 2762
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected processCache(IJ)V
    .locals 12
    .parameter "returnValue"
    .parameter "limitedTimeMillis"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    .line 1620
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v4, :cond_1

    .line 1621
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[processCache] IteratorTask is null"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1626
    iput-wide v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    .line 1627
    const/4 v2, 0x0

    .line 1628
    .local v2, isFailed:Z
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v4, v4, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v4, :cond_3

    .line 1629
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v4, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v2

    .line 1633
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 1634
    if-eqz v2, :cond_5

    .line 1636
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v5, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v4, v5, :cond_4

    .line 1638
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 1639
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeOriginalFile(J)Z

    goto :goto_0

    .line 1630
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v4, v4, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v4, :cond_2

    .line 1631
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v4, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v2

    goto :goto_1

    .line 1641
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error on encode cache"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1643
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_0

    .line 1647
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v5, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v4, v5, :cond_6

    .line 1648
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v4, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 1649
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    .line 1650
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v5, Lcom/htc/sunny2/common/CacheItem;->mFilePath:Ljava/lang/String;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1653
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1654
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 1655
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1667
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1668
    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto/16 :goto_0

    .line 1657
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap is null, cacheItem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ori filePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v6, v6, Lcom/htc/sunny2/common/CacheItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const/4 v0, 0x1

    .line 1659
    .local v0, bNotifyFail:Z
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1660
    .local v3, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1661
    const/4 v0, 0x0

    .line 1663
    :cond_8
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto :goto_2

    .line 1672
    .end local v0           #bNotifyFail:Z
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #isFailed:Z
    .end local v3           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_9
    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_a

    .line 1673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_0

    .line 1674
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    const-wide/16 v8, 0x7d0

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1675
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v5, "Task waiting time over time limit, request resume thread"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v4}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 1677
    iput-wide v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTaskWaitingTime:J

    goto/16 :goto_0
.end method

.method protected processMediaThumbnail(J)Z
    .locals 20
    .parameter "limitedTimeMillis"

    .prologue
    .line 393
    const/4 v8, 0x0

    .line 394
    .local v8, isProcessSideBySideVideo:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 395
    const/16 v17, 0x0

    .line 567
    :goto_0
    return v17

    .line 397
    :cond_0
    const/4 v5, 0x0

    .line 398
    .local v5, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 399
    const/4 v8, 0x1

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    check-cast v5, Lcom/htc/sunny2/common/CacheItem;

    .line 404
    .restart local v5       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    :cond_1
    :goto_1
    sget-object v17, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][FullFilmViewPreparator][processMediaThumbnail]isProcessSideBySideVideo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-eqz v8, :cond_6

    .line 407
    iget-object v4, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 408
    .local v4, bmp:Landroid/graphics/Bitmap;
    if-nez v4, :cond_3

    .line 409
    const/16 v17, 0x0

    goto :goto_0

    .line 401
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    check-cast v5, Lcom/htc/sunny2/common/CacheItem;

    .restart local v5       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    goto :goto_1

    .line 413
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 414
    .local v16, width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 415
    .local v7, height:I
    mul-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    invoke-static {v4, v0, v7}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 417
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 418
    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 420
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 421
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoDecodingItemIndex:I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V

    .line 430
    :cond_4
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 426
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideBitmap:Landroid/graphics/Bitmap;

    .line 428
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    goto :goto_2

    .line 433
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #height:I
    .end local v16           #width:I
    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail - NotifyDataItemChanged for this item is not decoded"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/16 v17, 0x0

    invoke-virtual {v5}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->notifyDataItemChanged(II)V

    .line 436
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 439
    :cond_7
    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 440
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Video thumbnail not in range"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mPosition:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 451
    .local v9, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v9, :cond_9

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 453
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 455
    :cond_9
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_b

    const/16 v6, 0x11

    .line 458
    .local v6, cacheSourceType:I
    :goto_3
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 459
    .local v15, task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 460
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    if-eqz v15, :cond_a

    .line 464
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 467
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 457
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    .line 469
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 470
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 474
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v14

    .line 476
    .local v14, reusableTextureHandle:Lcom/htc/sunny2/Texture;
    if-eqz v14, :cond_1a

    .line 477
    iget-object v4, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 478
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_16

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mPosition:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    iget v0, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    move/from16 v18, v0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v10

    .line 488
    .local v10, oldTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_f

    .line 489
    sget-object v17, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v18, "oldTexture not fail texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 495
    :cond_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    const/4 v5, 0x0

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 498
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 500
    :cond_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 501
    .restart local v16       #width:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 504
    .restart local v7       #height:I
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 505
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "video/mp4-3d"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 506
    new-instance v13, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    div-int/lit8 v19, v16, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v13, v0, v1, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 507
    .local v13, r:Landroid/graphics/Rect;
    move-object v11, v4

    .line 508
    .local v11, oldbmp:Landroid/graphics/Bitmap;
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v13, v0, v7, v1}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 509
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 513
    .end local v11           #oldbmp:Landroid/graphics/Bitmap;
    .end local v13           #r:Landroid/graphics/Rect;
    :cond_10
    iput-object v4, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTexture(Landroid/graphics/Bitmap;)V

    .line 516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isCacheEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 519
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v9, :cond_11

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 521
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 523
    :cond_11
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v6, 0x11

    .line 526
    .restart local v6       #cacheSourceType:I
    :goto_4
    new-instance v15, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v15}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    .line 527
    .restart local v15       #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    invoke-virtual {v15, v5}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 528
    invoke-virtual {v15, v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    if-eqz v15, :cond_12

    .line 532
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    .line 535
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 525
    .end local v6           #cacheSourceType:I
    .end local v15           #task:Lcom/htc/sunny2/common/ItrCacheEncodeTask;
    :cond_13
    const/4 v6, 0x1

    goto :goto_4

    .line 537
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 567
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v7           #height:I
    .end local v10           #oldTexture:Lcom/htc/sunny2/Texture;
    .end local v16           #width:I
    :cond_15
    :goto_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 540
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v17

    if-nez v17, :cond_17

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 545
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "get null bitmap"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v3, 0x1

    .line 547
    .local v3, bNotifyFail:Z
    iget v12, v5, Lcom/htc/sunny2/common/CacheItem;->mPosition:I

    .line 548
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 549
    .restart local v9       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v9, :cond_18

    invoke-interface {v9}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 550
    const/4 v3, 0x0

    .line 552
    :cond_18
    if-eqz v3, :cond_19

    .line 553
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 554
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v12, v2}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    goto :goto_5

    .line 559
    .end local v3           #bNotifyFail:Z
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .end local v12           #pos:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "No reusable texture"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 561
    iget-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 562
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/htc/sunny2/common/CacheItem;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 564
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_5
.end method

.method protected queryTexture(II)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "contentIndex"
    .parameter "quality"

    .prologue
    const/4 v0, 0x0

    .line 2379
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v1, :cond_2

    .line 2380
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preparator not initialize or no MediaList"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    :cond_1
    :goto_0
    return-object v0

    .line 2384
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v1, :cond_5

    .line 2385
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    if-ne p1, v1, :cond_3

    .line 2386
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][FullFilmViewPreparator][queryTexture]EQ, contentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 2388
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_4

    .line 2389
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 2390
    :cond_4
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0

    .line 2393
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v1, :cond_1

    .line 2394
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method public raisePriorityOnce()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 374
    return-void
.end method

.method public refresh(ILcom/htc/sunny2/IMediaList;I)V
    .locals 15
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"

    .prologue
    .line 2470
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_1

    .line 2472
    :cond_0
    sget-object v13, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "refresh() - null mediaList "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p2, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v14, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    if-nez v12, :cond_2

    .line 2476
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    .line 2479
    :cond_2
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    .line 2480
    sget-object v12, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v13, "refresh() - new media list count is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    :goto_2
    return-void

    .line 2472
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2485
    :cond_5
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v12, :cond_c

    .line 2486
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "decodeItem is null"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    :cond_6
    :goto_3
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_7

    .line 2501
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 2503
    :cond_7
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v12, :cond_8

    .line 2504
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 2507
    :cond_8
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v12, :cond_9

    .line 2509
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v12}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 2512
    :cond_9
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 2513
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2514
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Clear MediaDecode tasks."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    :cond_a
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 2517
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2518
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Clear SideBySide Video tasks."

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    :cond_b
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 2524
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 2525
    .local v3, intervalCount:I
    if-gez v3, :cond_f

    .line 2526
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "visible range is 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2487
    .end local v3           #intervalCount:I
    :cond_c
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 2488
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v12, :cond_d

    .line 2489
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v12}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 2490
    :cond_d
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v12, v13, :cond_e

    .line 2491
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 2492
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - mTexturePool is full"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->release()V

    .line 2494
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2497
    :cond_e
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_3

    .line 2529
    .restart local v3       #intervalCount:I
    :cond_f
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    .line 2530
    .local v4, itemCounts:I
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_10

    .line 2531
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2533
    :cond_10
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_11

    .line 2534
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2537
    :cond_11
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_12

    .line 2538
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2539
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2541
    :cond_12
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v12, v3

    .line 2542
    .local v1, difference:I
    if-ltz v1, :cond_1a

    .line 2543
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v13, v1, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2544
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v12, :cond_19

    .line 2545
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2549
    :cond_13
    :goto_4
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2550
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_14

    .line 2551
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2552
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2560
    :cond_14
    :goto_5
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_17

    .line 2561
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v12, v4, :cond_15

    .line 2562
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2563
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2565
    :cond_15
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v3

    if-ltz v12, :cond_1c

    .line 2566
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v13, v3

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2567
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v12, :cond_1b

    .line 2568
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2572
    :cond_16
    :goto_6
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2573
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_17

    .line 2574
    add-int/lit8 v12, v4, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2575
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2585
    :cond_17
    :goto_7
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2586
    .local v6, oldMap:Lcom/htc/sunny2/common/TextureMap;
    new-instance v12, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 2587
    const/4 v8, 0x0

    .line 2588
    .local v8, originalOldMapSize:I
    const/4 v9, 0x0

    .line 2590
    .local v9, recycledCount:I
    if-eqz v6, :cond_21

    .line 2591
    invoke-virtual {v6}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v8

    .line 2593
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .local v2, i:I
    :goto_8
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_1e

    .line 2594
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 2595
    .local v5, mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v5, :cond_1d

    .line 2596
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    :cond_18
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2546
    .end local v2           #i:I
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v6           #oldMap:Lcom/htc/sunny2/common/TextureMap;
    .end local v8           #originalOldMapSize:I
    .end local v9           #recycledCount:I
    :cond_19
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_13

    .line 2547
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_4

    .line 2555
    :cond_1a
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2557
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2569
    :cond_1b
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v13, v4, -0x1

    if-le v12, v13, :cond_16

    .line 2570
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto :goto_6

    .line 2578
    :cond_1c
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2580
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "top = bottom = 0"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2599
    .restart local v2       #i:I
    .restart local v5       #mediaData:Lcom/htc/sunny2/IMediaData;
    .restart local v6       #oldMap:Lcom/htc/sunny2/common/TextureMap;
    .restart local v8       #originalOldMapSize:I
    .restart local v9       #recycledCount:I
    :cond_1d
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2600
    .local v11, texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_18

    .line 2601
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2602
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 2605
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .local v10, s:I
    :goto_a
    if-ge v2, v10, :cond_20

    .line 2606
    invoke-virtual {v6, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2607
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_1f

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v11, v12, :cond_1f

    .line 2608
    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->release()V

    .line 2609
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2605
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2612
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_20
    const/4 v6, 0x0

    .line 2616
    .end local v2           #i:I
    .end local v10           #s:I
    :cond_21
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v12, :cond_26

    .line 2617
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 2618
    .local v7, oldMapHQ:Lcom/htc/sunny2/common/TextureMap;
    new-instance v12, Lcom/htc/sunny2/common/TextureMap;

    invoke-direct {v12, v4}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 2619
    const/4 v8, 0x0

    .line 2620
    const/4 v9, 0x0

    .line 2621
    if-eqz v7, :cond_26

    .line 2622
    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v8

    .line 2623
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .restart local v2       #i:I
    :goto_b
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-gt v2, v12, :cond_24

    .line 2624
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    .line 2625
    .restart local v5       #mediaData:Lcom/htc/sunny2/IMediaData;
    if-nez v5, :cond_23

    .line 2626
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh NG - null media data"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    :cond_22
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2629
    :cond_23
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2630
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_22

    .line 2631
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v11, v13}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2632
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 2635
    .end local v5           #mediaData:Lcom/htc/sunny2/IMediaData;
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v10

    .restart local v10       #s:I
    :goto_d
    if-ge v2, v10, :cond_26

    .line 2636
    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2637
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v11, :cond_25

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v11, v12, :cond_25

    .line 2638
    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->release()V

    .line 2639
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 2635
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2648
    .end local v2           #i:I
    .end local v7           #oldMapHQ:Lcom/htc/sunny2/common/TextureMap;
    .end local v10           #s:I
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_26
    const/4 v12, -0x1

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2651
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 2653
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount_backup:I

    iput v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 2654
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v12, v4, :cond_27

    .line 2655
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    .line 2657
    :cond_27
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ItemsAttributes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 2658
    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ItemsAttributes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->reset(Ljava/lang/String;I)V

    .line 2659
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "refresh-"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public requestDecodeIdleAfterSideBySideImageDecoded(J)V
    .locals 0
    .parameter "idleDuration"

    .prologue
    .line 2739
    iput-wide p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeIdleDurationAfterSideBySideImageDecoded:J

    .line 2740
    return-void
.end method

.method public resetDecodeDirection()V
    .locals 1

    .prologue
    .line 2752
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 2753
    return-void
.end method

.method public resumePreparator()V
    .locals 2

    .prologue
    .line 2767
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    .line 2768
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsPaused:Z

    .line 2769
    monitor-exit v1

    .line 2770
    return-void

    .line 2769
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDecodeDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 2362
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    if-eq v0, p1, :cond_0

    .line 2364
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDirection:I

    .line 2366
    :cond_0
    return-void
.end method

.method public setDecodeStatusListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setExtremeQualityItemIndex(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2401
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex] + "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    monitor-enter p0

    .line 2403
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2404
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2405
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2406
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]Force reset - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    monitor-exit p0

    .line 2424
    :goto_0
    return v1

    .line 2409
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v3, :cond_1

    .line 2410
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]mMediaList is null"

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2414
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2415
    .local v0, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v3, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2416
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2417
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]extremeQualityToDecodeItemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]set! - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    monitor-exit p0

    goto :goto_0

    .line 2422
    .end local v0           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2423
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setExtremeQualityItemIndex]??? - "

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2424
    goto :goto_0
.end method

.method protected setFailTextureToCache(Z)V
    .locals 8
    .parameter "notifyFail"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2192
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2194
    if-eqz p1, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2196
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2201
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2206
    if-eqz p1, :cond_2

    .line 2207
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2208
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_2

    .line 2209
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    invoke-interface {v0, v7, v1, v5}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    .line 2212
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 2213
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2217
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_5

    .line 2218
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2219
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2221
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2222
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2241
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 2243
    :cond_5
    return-void

    .line 2224
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 2225
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2227
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2228
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2231
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-nez v0, :cond_8

    .line 2232
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2233
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2234
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2235
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2236
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto :goto_0
.end method

.method public setIsUploadEditor(Z)V
    .locals 0
    .parameter "isUploadEditor"

    .prologue
    .line 2727
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->isUploadEditor:Z

    .line 2728
    return-void
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    .line 197
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLoadingNotifyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$LoadingNotifyListener;->onLoadingStatusChange(I)V

    .line 200
    :cond_0
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSideBySideBitmapReadyListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2731
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBitmapReadyListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;

    .line 2732
    return-void
.end method

.method protected setSideBySideItemIndex(I)Z
    .locals 7
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2428
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]+ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 2466
    :goto_0
    return v2

    .line 2434
    :cond_0
    monitor-enter p0

    .line 2436
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 2437
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2438
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideDecodedItemIndex:I

    .line 2439
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]Force reset - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 2443
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_2

    .line 2444
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]mMediaList is null"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 2448
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2449
    .local v1, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-nez v1, :cond_3

    .line 2450
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]mediaItem is null - "

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 2453
    :cond_3
    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object v2, v0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2454
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2455
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    .line 2456
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]sideBySideToDecodeItemIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideToDecodeItemIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    :goto_1
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v3, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]set! - "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    monitor-exit p0

    move v2, v4

    goto :goto_0

    .line 2458
    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    .line 2459
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]sideBySideVideoToDecodeItemIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->sideBySideVideoToDecodeItemIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2464
    .end local v1           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2465
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v4, "[HtcAlbum][FullFilmViewPreparator][setSideBySideItemIndex]??? - "

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2466
    goto/16 :goto_0
.end method

.method protected setTexture(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bmp"

    .prologue
    .line 2059
    const/4 v4, -0x1

    .line 2060
    .local v4, previousDecodedItemIndex:I
    if-nez p1, :cond_8

    .line 2061
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bmp is null"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v8, v9, :cond_1

    .line 2063
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_6

    .line 2064
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_5

    .line 2065
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2066
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePool is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2068
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2086
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v9, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    .line 2088
    :cond_1
    const/4 v0, 0x1

    .line 2089
    .local v0, bNotifyFail:Z
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 2090
    .local v2, mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2091
    const/4 v0, 0x0

    .line 2093
    :cond_2
    if-eqz v0, :cond_3

    .line 2094
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2095
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v8, :cond_4

    .line 2096
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2189
    .end local v0           #bNotifyFail:Z
    .end local v2           #mediaItem:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    :cond_4
    :goto_1
    return-void

    .line 2071
    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2072
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2074
    :cond_6
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2075
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_7

    .line 2076
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2077
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2079
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_0

    .line 2082
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2083
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto/16 :goto_0

    .line 2100
    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    .line 2101
    .local v6, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v6, p1}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2103
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    .line 2104
    .local v7, width:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    .line 2106
    .local v1, height:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    .line 2108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2112
    :cond_9
    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Texture;->setSourceWidth(I)V

    .line 2113
    invoke-virtual {v6, v1}, Lcom/htc/sunny2/Texture;->setSourceHeight(I)V

    .line 2114
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 2115
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_10

    .line 2116
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 2117
    .local v3, oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v3, :cond_d

    .line 2118
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    .line 2170
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_a
    :goto_2
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2171
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 2172
    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    .line 2173
    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->updateDecodeStatus(II)V

    .line 2177
    :cond_b
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v8, :cond_c

    .line 2178
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2180
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 2181
    const/4 v8, -0x1

    if-eq v4, v8, :cond_c

    .line 2183
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v4, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    .line 2188
    :cond_c
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    const/4 v9, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    .line 2120
    .restart local v3       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    :cond_d
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-ne v3, v8, :cond_e

    .line 2121
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_2

    .line 2123
    :cond_e
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_a

    .line 2124
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2125
    .local v5, removeTexture:Lcom/htc/sunny2/Texture;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 2126
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePool is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2128
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2130
    :cond_f
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2134
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    .end local v5           #removeTexture:Lcom/htc/sunny2/Texture;
    :cond_10
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 2135
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    .line 2136
    .restart local v3       #oriTextureHandle:Lcom/htc/sunny2/Texture;
    if-nez v3, :cond_11

    .line 2137
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2139
    :cond_11
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-ne v3, v8, :cond_12

    .line 2140
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2142
    :cond_12
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v8, :cond_a

    .line 2143
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 2144
    .restart local v5       #removeTexture:Lcom/htc/sunny2/Texture;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v8, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 2145
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setTexture NG - mTexturePoolHQ is full"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    .line 2147
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 2149
    :cond_13
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2153
    .end local v3           #oriTextureHandle:Lcom/htc/sunny2/Texture;
    .end local v5           #removeTexture:Lcom/htc/sunny2/Texture;
    :cond_14
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_15

    .line 2154
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2155
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 2156
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 2157
    sget-object v8, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][setTexture]EQ, extremeQualityDecodedItemIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    sget-object v8, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][FullFilmViewPreparator][setTexture]width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2160
    :cond_15
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    if-nez v8, :cond_16

    .line 2161
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Add decodeItem to mTextureMap is Error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2163
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto/16 :goto_2

    .line 2164
    :cond_16
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 2165
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Add decodeItem to mTextureMapHQ is Error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    .line 2167
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    goto/16 :goto_2
.end method

.method public setVisibleRange(III)V
    .locals 7
    .parameter "mediaListIdx"
    .parameter "firstVisibleIndex"
    .parameter "lastVisibleIndex"

    .prologue
    const/4 v6, 0x0

    .line 2249
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bInitial:Z

    if-nez v3, :cond_1

    .line 2250
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not initialize"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    :cond_0
    :goto_0
    return-void

    .line 2253
    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 2255
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Visible range setting error. beginIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2258
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2259
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2261
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2262
    .local v2, intervalCount:I
    if-gez v2, :cond_4

    .line 2263
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visible range is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2267
    :cond_4
    const/4 v0, 0x0

    .line 2268
    .local v0, contentCount:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_12

    .line 2269
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    .line 2275
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_5

    .line 2276
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    .line 2279
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_6

    .line 2280
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex bigger than content list count, old index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    .line 2285
    :cond_6
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2287
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->raisePriorityOnce()V

    .line 2290
    :cond_7
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mRaisePriorityOnce:Z

    .line 2292
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    if-le v3, v0, :cond_8

    .line 2293
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2294
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2296
    :cond_8
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v1, v3, v2

    .line 2297
    .local v1, difference:I
    if-ltz v1, :cond_14

    .line 2298
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2299
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-gez v3, :cond_13

    .line 2300
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2304
    :cond_9
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2305
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_a

    .line 2306
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    .line 2307
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2314
    :cond_a
    :goto_2
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v3, :cond_d

    .line 2315
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    if-le v3, v0, :cond_b

    .line 2316
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2317
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2319
    :cond_b
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v2

    if-ltz v3, :cond_16

    .line 2320
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2321
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    if-gez v3, :cond_15

    .line 2322
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2326
    :cond_c
    :goto_3
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2327
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_d

    .line 2328
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    .line 2329
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2338
    :cond_d
    :goto_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_e

    .line 2339
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setVisibleRange(II)V

    .line 2341
    :cond_e
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_11

    .line 2342
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    add-int/lit8 v3, v3, -0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2343
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    if-ge v3, v4, :cond_f

    .line 2344
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    .line 2346
    :cond_f
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2347
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    if-le v3, v4, :cond_10

    .line 2348
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    .line 2350
    :cond_10
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineTop:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mOffLineBottom:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    .line 2352
    :cond_11
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_0

    .line 2354
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBeginIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEndIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    goto/16 :goto_0

    .line 2271
    .end local v1           #difference:I
    :cond_12
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mMediaList is null, contentCount is 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2301
    .restart local v1       #difference:I
    :cond_13
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_9

    .line 2302
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMaxCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    goto/16 :goto_1

    .line 2310
    :cond_14
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndex:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndex:I

    .line 2312
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top = bottom = 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2323
    :cond_15
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_c

    .line 2324
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mHQTextureCount:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    goto/16 :goto_3

    .line 2332
    :cond_16
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mBottomIndexHQ:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTopIndexHQ:I

    .line 2334
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top = bottom = 0"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 14
    .parameter "mediaItem"

    .prologue
    .line 1876
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 1878
    :cond_0
    const/4 v0, 0x0

    .line 1880
    .local v0, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    const/16 v12, 0x1001

    .line 1881
    .local v12, type:I
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1882
    const/16 v12, 0x2001

    .line 1885
    :cond_1
    packed-switch v12, :pswitch_data_0

    .line 1891
    :goto_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v11

    .line 1892
    .local v11, mediaSourceType:I
    iput v11, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mSourceType:I

    .line 1893
    const/4 v10, 0x0

    .line 1894
    .local v10, hasError:Z
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    .line 1895
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1896
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1916
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mimeType:Ljava/lang/String;

    .line 1917
    const/16 v1, 0x400

    iput v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mTargetWidth:I

    .line 1918
    const/16 v1, 0x258

    iput v1, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mTargetHeight:I

    .line 1919
    if-nez v10, :cond_a

    .line 1920
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    if-nez v1, :cond_9

    .line 1921
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 1927
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    iget v2, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 1928
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    .line 1940
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v10           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #type:I
    :goto_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    .line 1941
    return-void

    .line 1887
    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .restart local v12       #type:I
    :pswitch_0
    new-instance v0, Lcom/htc/sunny2/common/VideoDecodeItem;

    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v2, 0xb

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDateModified()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/VideoDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    goto :goto_0

    .line 1898
    .restart local v10       #hasError:Z
    .restart local v11       #mediaSourceType:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: AssetFileDescriptor is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const/4 v10, 0x1

    goto :goto_1

    .line 1901
    :cond_5
    const/4 v1, 0x3

    if-ne v11, v1, :cond_7

    .line 1902
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v13

    .line 1903
    .local v13, uriString:Ljava/lang/String;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1904
    iput-object v13, v0, Lcom/htc/sunny2/common/MediaDecodeItem;->mUri:Ljava/lang/String;

    goto :goto_1

    .line 1906
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread: Uri is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const/4 v10, 0x1

    goto :goto_1

    .line 1911
    .end local v13           #uriString:Ljava/lang/String;
    :cond_7
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v9

    .line 1912
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1913
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1922
    .end local v9           #filePath:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1924
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 1925
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    goto/16 :goto_2

    .line 1930
    :cond_a
    const/4 v8, 0x1

    .line 1931
    .local v8, bNotifyFail:Z
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1932
    const/4 v8, 0x0

    .line 1934
    :cond_b
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 1937
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v8           #bNotifyFail:Z
    .end local v10           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #type:I
    :cond_c
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupCurrentTaskToMediaDecodeThread - Not supported Quality"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFailTextureToCache(Z)V

    goto/16 :goto_3

    .line 1885
    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
    .end packed-switch
.end method

.method public unbind(I)V
    .locals 8
    .parameter "mediaListIdx"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 773
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind+"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    if-nez v3, :cond_6

    .line 775
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decodeItem is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_1

    .line 807
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 808
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 811
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_2

    .line 812
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    .line 813
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->m3DMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    .line 816
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_3

    .line 818
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    .line 821
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_4

    .line 822
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 825
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributes:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 826
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mItemsAttributesHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ItemsAttributes;->clear()V

    .line 828
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->cacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 830
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_c

    .line 831
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTextureMap+"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_b

    .line 833
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 834
    .local v2, texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_5

    .line 835
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 836
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 832
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 776
    .end local v0           #i:I
    .end local v1           #s:I
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 777
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_7

    .line 778
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 779
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v3, v4, :cond_9

    .line 780
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mEnableQualityOptions:Z

    if-eqz v3, :cond_a

    .line 781
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_8

    .line 782
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 783
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 785
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 788
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_9

    .line 789
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 790
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePoolHQ is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 792
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 803
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->reset()V

    goto/16 :goto_0

    .line 796
    :cond_a
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 797
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 799
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    goto :goto_2

    .line 839
    .restart local v0       #i:I
    .restart local v1       #s:I
    :cond_b
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    .line 840
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTextureMap-"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_c
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_f

    .line 844
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    .restart local v1       #s:I
    :goto_3
    if-ge v0, v1, :cond_e

    .line 845
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 846
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_d

    .line 847
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 848
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 844
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 851
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_e
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTextureMapHQ:Lcom/htc/sunny2/common/TextureMap;

    .line 854
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_f
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_12

    .line 855
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTexturePool"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_4
    if-ge v0, v1, :cond_11

    .line 857
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 858
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_10

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_10

    .line 859
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 860
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesCount:I

    .line 856
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 863
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_11
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePool:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 866
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_12
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    if-eqz v3, :cond_15

    .line 867
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mTexturePool"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I

    move-result v1

    .restart local v1       #s:I
    :goto_5
    if-ge v0, v1, :cond_14

    .line 869
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 870
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_13

    .line 871
    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    .line 872
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturesHQCount:I

    .line 868
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 875
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_14
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTexturePoolHQ:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;

    .line 879
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_15
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_16

    .line 880
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 881
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->failTextureHandle:Lcom/htc/sunny2/Texture;

    .line 883
    :cond_16
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_17

    .line 884
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 885
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeTextureHandle:Lcom/htc/sunny2/Texture;

    .line 887
    :cond_17
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityDecodedItemIndex:I

    .line 888
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->extremeQualityToDecodeItemIndex:I

    .line 890
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 891
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 892
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clear MediaDecode tasks."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_18
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 895
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mTasks2:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 896
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clear SideBySide Video tasks."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_19
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_1a

    .line 900
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->GetName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release mContentList"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bMediaListExist:Z

    .line 902
    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mMediaList:Lcom/htc/sunny2/IMediaList;

    .line 905
    :cond_1a
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 906
    return-void
.end method

.method protected updateDecodeStatus(II)V
    .locals 2
    .parameter "index"
    .parameter "status"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mDecodeStatusListener:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;->onDecodeStatusUpdated(II)V

    .line 180
    :cond_0
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
