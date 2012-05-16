.class public Lcom/htc/music/util/AsyncImageDecoder;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;,
        Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;,
        Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    }
.end annotation


# static fields
.field private static final DECODE:I = 0x1

.field private static final DECODED:I = 0x2

.field private static final QUIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[AsyncImageDecoder]"

.field private static final THREAD_NAME:Ljava/lang/String; = "AsyncImageDecoderThread"

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mContext:Landroid/content/Context;

.field private mDecodeVisibleFirst:Z

.field private mEnd:I

.field private mFilter:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mMergeAfterDecoded:Z

.field private mMergeHeight:I

.field private mMergeImage:Landroid/graphics/Bitmap;

.field private mMergeImageId:I

.field private mMergeOffsetX:I

.field private mMergeOffsetY:I

.field private mMergeWidth:I

.field private mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

.field private mPause:Z

.field private mRecycleOnPause:Z

.field private mScale:Z

.field private mStart:I

.field private mSyncObject:Ljava/lang/Object;

.field private mTouchFile:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 74
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 78
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 82
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 90
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 92
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 142
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 143
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 145
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 146
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;II)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 74
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 78
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 82
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 90
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 92
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 158
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 159
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 160
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 161
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 162
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 163
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 164
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 74
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 78
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 82
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 90
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 92
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 176
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 177
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 178
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 179
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 180
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 181
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 182
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 183
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"
    .parameter "touchFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 34
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 40
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 50
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 54
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 56
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 60
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 66
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 70
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 72
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 74
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 78
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 80
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 82
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 84
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 86
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 88
    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 90
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 92
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 197
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 198
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    .line 199
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    .line 200
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    .line 201
    iput-boolean p6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    .line 202
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    .line 203
    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 204
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/util/AsyncImageDecoder;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/util/AsyncImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/music/util/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method private add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 362
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 364
    .local v0, indexOfTask:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 369
    :goto_0
    monitor-exit v2

    .line 370
    return-void

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v0           #indexOfTask:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeByAlbumId(I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "albumId"

    .prologue
    const/4 v9, 0x0

    .line 506
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 507
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v10, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v11, p1

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 508
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 509
    const/4 v2, 0x0

    .line 511
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v10, "r"

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 512
    const/4 v6, 0x1

    .line 514
    .local v6, sampleSize:I
    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_0

    .line 515
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 516
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 517
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 518
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v10, 0x1

    .line 519
    .local v4, nextWidth:I
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v10, 0x1

    .line 520
    .local v3, nextHeight:I
    :goto_0
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v10, :cond_0

    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v10, :cond_0

    .line 521
    shl-int/lit8 v6, v6, 0x1

    .line 522
    shr-int/lit8 v4, v4, 0x1

    .line 523
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_0
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 528
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 529
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 532
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_2

    .line 533
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v10, v11, :cond_2

    .line 534
    :cond_1
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 535
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 536
    move-object v0, v7

    .line 547
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 548
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 549
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #sampleSize:I
    :catch_0
    move-exception v1

    .line 550
    .local v1, e:Ljava/io/IOException;
    const-string v9, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 541
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #sampleSize:I
    :catch_1
    move-exception v1

    .line 542
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    if-eqz v2, :cond_4

    .line 548
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    move-object v0, v9

    .line 554
    goto :goto_1

    .line 549
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 550
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 543
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 544
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 547
    if-eqz v2, :cond_4

    .line 548
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 549
    :catch_4
    move-exception v1

    .line 550
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 546
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 547
    if-eqz v2, :cond_5

    .line 548
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 551
    :cond_5
    :goto_3
    throw v9

    .line 549
    :catch_5
    move-exception v1

    .line 550
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "afd"

    .prologue
    const/4 v7, 0x0

    .line 558
    if-nez p1, :cond_1

    move-object v0, v7

    .line 604
    :cond_0
    :goto_0
    return-object v0

    .line 562
    :cond_1
    const/4 v5, 0x1

    .line 564
    .local v5, sampleSize:I
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_2

    .line 565
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 566
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 567
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 569
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v8, 0x1

    .line 570
    .local v4, nextWidth:I
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v8, 0x1

    .line 571
    .local v3, nextHeight:I
    :goto_1
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v8, :cond_2

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v8, :cond_2

    .line 572
    shl-int/lit8 v5, v5, 0x1

    .line 573
    shr-int/lit8 v4, v4, 0x1

    .line 574
    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 578
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 579
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 580
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_4

    .line 584
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v8, v9, :cond_4

    .line 585
    :cond_3
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 586
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 587
    move-object v0, v6

    .line 596
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p1, :cond_0

    .line 597
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 598
    :catch_0
    move-exception v1

    .line 599
    .local v1, e:Ljava/io/IOException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "IO ex catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 593
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "[AsyncImageDecoder]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeByFileDescriptor failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    if-eqz p1, :cond_5

    .line 597
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_2
    move-object v0, v7

    .line 604
    goto/16 :goto_0

    .line 598
    :catch_3
    move-exception v1

    .line 599
    .local v1, e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 600
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 595
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 596
    if-eqz p1, :cond_6

    .line 597
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    .line 602
    :cond_6
    :goto_3
    throw v7

    .line 598
    :catch_5
    move-exception v1

    .line 599
    .local v1, e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 600
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 608
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v0, v6

    .line 643
    :cond_1
    :goto_0
    return-object v0

    .line 612
    :cond_2
    const/4 v4, 0x1

    .line 614
    .local v4, sampleSize:I
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_3

    .line 615
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 616
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 617
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 618
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    .line 619
    .local v3, nextWidth:I
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    .line 620
    .local v2, nextHeight:I
    :goto_1
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v3, v7, :cond_3

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v2, v7, :cond_3

    .line 621
    shl-int/lit8 v4, v4, 0x1

    .line 622
    shr-int/lit8 v3, v3, 0x1

    .line 623
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 627
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    :cond_3
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 628
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 629
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 631
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_1

    .line 632
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v7, v8, :cond_1

    .line 633
    :cond_4
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 634
    .local v5, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    move-object v0, v5

    goto :goto_0

    .line 640
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 641
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "[AsyncImageDecoder]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeBypath failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 643
    goto :goto_0
.end method

.method private getPathByAlbumId(I)Ljava/lang/String;
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 440
    if-gez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v3

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 443
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 445
    sget-object v2, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 446
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 448
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 451
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 452
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 453
    if-eqz v6, :cond_3

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 462
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 464
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 465
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 467
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 464
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 209
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 210
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 212
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncImageDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 213
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 214
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;-><init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 216
    return-void
.end method

.method private isTaskExists(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z
    .locals 4
    .parameter "task"

    .prologue
    const/4 v2, 0x0

    .line 373
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    const/4 v1, 0x0

    .line 376
    .local v1, temp:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    check-cast v1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 378
    .restart local v1       #temp:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 379
    const/4 v2, 0x1

    goto :goto_0

    .line 376
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 471
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object v5

    .line 473
    :cond_1
    const/4 v3, -0x1

    .line 474
    .local v3, start:I
    const/4 v0, -0x1

    .line 476
    .local v0, end:I
    iget-boolean v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-lt v6, v7, :cond_0

    .line 477
    iget v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 478
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 481
    const/4 v1, -0x1

    .line 482
    .local v1, firstVisible:I
    const/4 v4, 0x0

    .line 483
    .local v4, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 484
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    check-cast v4, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 485
    .restart local v4       #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v4, :cond_3

    .line 486
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$800(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v3, v6, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$800(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v6, v0, :cond_3

    .line 487
    move v1, v2

    .line 494
    :cond_2
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    .line 495
    iget-object v5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    goto :goto_0

    .line 491
    :cond_3
    const/4 v4, 0x0

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public varargs add(III[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 293
    if-gez p2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V

    .line 298
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 300
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 316
    if-nez p2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V

    .line 321
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 323
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v7, 0x1

    .line 341
    if-nez p2, :cond_1

    if-gez p3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 346
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 348
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "varargs"

    .prologue
    const/4 v6, 0x1

    .line 270
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 275
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    .line 277
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    return-void
.end method

.method public pauseDecode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 410
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-ne v0, v2, :cond_0

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "pauseDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iput-boolean v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 390
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 391
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 395
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 397
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 398
    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 404
    :cond_1
    return-void
.end method

.method public resumeDecode()V
    .locals 2

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "resumeDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    .line 422
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 424
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 503
    return-void
.end method

.method public setMergeImageResource(IIIII)V
    .locals 1
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 231
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_1
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    .line 236
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    .line 237
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    .line 238
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    .line 239
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    goto :goto_0
.end method

.method public setRecycleOnPause(Z)V
    .locals 0
    .parameter "recycleOnPause"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 220
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 250
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    .line 256
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
