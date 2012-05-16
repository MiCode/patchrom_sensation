.class public Lcom/htc/music/widget/AlbumView;
.super Landroid/view/View;
.source "AlbumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/AlbumView$AlbumArtHandler;
    }
.end annotation


# static fields
.field private static final ALBUM_ART_DECODED:I = 0x2

.field private static final GET_ALBUM_ART:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[AlbumView]"

.field private static final VIBRATE_DURATION:I = 0x41


# instance fields
.field cR:F

.field cX:F

.field cY:F

.field cZ:F

.field private mAblumTag:I

.field private mAlbumArtHandler:Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

.field private mAlbumArtOffsetX:I

.field private mAlbumArtOffsetY:I

.field private mAlbumHeight:I

.field private mAlbumId:I

.field private mAlbumWidth:I

.field private mBit:Landroid/graphics/Bitmap;

.field private mCleanAlbum:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCoverPaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAttachedToWindow:Z

.field private mIsSetAlbumArt:Z

.field private mLG2:Landroid/graphics/LinearGradient;

.field private mMode:Landroid/graphics/Xfermode;

.field private mOffset:I

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPaused:Z

.field private mReflection:Z

.field private mReflectionHeight:I

.field mScale:F

.field private mUnknowAlbum:Landroid/graphics/Bitmap;

.field private final mVibrator:Landroid/os/Vibrator;

.field show:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 154
    iput-boolean v1, p0, Lcom/htc/music/widget/AlbumView;->show:Z

    .line 364
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    .line 366
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    .line 368
    iput v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetX:I

    .line 370
    iput v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetY:I

    .line 372
    iput-boolean v1, p0, Lcom/htc/music/widget/AlbumView;->mIsSetAlbumArt:Z

    .line 387
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mVibrator:Landroid/os/Vibrator;

    .line 400
    new-instance v0, Lcom/htc/music/widget/AlbumView$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/AlbumView$1;-><init>(Lcom/htc/music/widget/AlbumView;)V

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/AlbumView;->setWillNotDraw(Z)V

    .line 74
    iput-boolean v1, p0, Lcom/htc/music/widget/AlbumView;->mReflection:Z

    .line 75
    iput v1, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    .line 76
    iput p2, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    .line 77
    iput p3, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    .line 78
    iput p4, p0, Lcom/htc/music/widget/AlbumView;->mOffset:I

    .line 79
    invoke-virtual {p0}, Lcom/htc/music/widget/AlbumView;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/LinearGradient;Landroid/graphics/Xfermode;IIII)V
    .locals 2
    .parameter "context"
    .parameter "defaultAlbum"
    .parameter "lg"
    .parameter "mode"
    .parameter "refelectHeight"
    .parameter "position"
    .parameter "albumWidth"
    .parameter "albumHeight"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 154
    iput-boolean v1, p0, Lcom/htc/music/widget/AlbumView;->show:Z

    .line 364
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    .line 366
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    .line 368
    iput v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetX:I

    .line 370
    iput v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetY:I

    .line 372
    iput-boolean v1, p0, Lcom/htc/music/widget/AlbumView;->mIsSetAlbumArt:Z

    .line 387
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mVibrator:Landroid/os/Vibrator;

    .line 400
    new-instance v0, Lcom/htc/music/widget/AlbumView$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/AlbumView$1;-><init>(Lcom/htc/music/widget/AlbumView;)V

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/AlbumView;->setWillNotDraw(Z)V

    .line 108
    iput-object p2, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    .line 109
    iput p6, p0, Lcom/htc/music/widget/AlbumView;->mAblumTag:I

    .line 110
    iput-object p3, p0, Lcom/htc/music/widget/AlbumView;->mLG2:Landroid/graphics/LinearGradient;

    .line 111
    iput-object p4, p0, Lcom/htc/music/widget/AlbumView;->mMode:Landroid/graphics/Xfermode;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/AlbumView;->mReflection:Z

    .line 113
    iput p5, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    .line 114
    iput v1, p0, Lcom/htc/music/widget/AlbumView;->mOffset:I

    .line 115
    iput p7, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    .line 116
    iput p8, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    .line 117
    invoke-virtual {p0}, Lcom/htc/music/widget/AlbumView;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 154
    iput-boolean v5, p0, Lcom/htc/music/widget/AlbumView;->show:Z

    .line 364
    const/16 v3, 0x1d

    iput v3, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    .line 366
    const/16 v3, 0x1c

    iput v3, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    .line 368
    iput v5, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetX:I

    .line 370
    iput v5, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetY:I

    .line 372
    iput-boolean v5, p0, Lcom/htc/music/widget/AlbumView;->mIsSetAlbumArt:Z

    .line 387
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/htc/music/widget/AlbumView;->mVibrator:Landroid/os/Vibrator;

    .line 400
    new-instance v3, Lcom/htc/music/widget/AlbumView$1;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/AlbumView$1;-><init>(Lcom/htc/music/widget/AlbumView;)V

    iput-object v3, p0, Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;

    .line 85
    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, a:Landroid/content/res/TypedArray;
    const-string v3, "layout_width"

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v2

    .line 90
    .local v2, width:I
    const/4 v3, 0x1

    const-string v4, "layout_height"

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v1

    .line 93
    .local v1, height:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iput-object p1, p0, Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0, v5}, Lcom/htc/music/widget/AlbumView;->setWillNotDraw(Z)V

    .line 96
    iput-boolean v5, p0, Lcom/htc/music/widget/AlbumView;->mReflection:Z

    .line 97
    iput v5, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    .line 98
    iput v5, p0, Lcom/htc/music/widget/AlbumView;->mOffset:I

    .line 99
    invoke-virtual {p0}, Lcom/htc/music/widget/AlbumView;->init()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/AlbumView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/music/widget/AlbumView;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/AlbumView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/AlbumView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/AlbumView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/AlbumView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/AlbumView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawArtwork(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "[AlbumView]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "borranx Bad ! mBit is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/widget/AlbumView;->mAlbumId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    monitor-exit p0

    .line 256
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "[AlbumView]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "borranx Bad ! mBit is Recycled mIsAttachedToWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/widget/AlbumView;->mIsAttachedToWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    monitor-exit p0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 254
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/music/widget/AlbumView;->mOffset:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 255
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public cleanResource()V
    .locals 4

    .prologue
    .line 559
    monitor-enter p0

    .line 560
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/music/widget/AlbumView;->mPaused:Z

    .line 561
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtHandler:Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

    invoke-virtual {v2}, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->isHandleMessageFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 576
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 580
    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    .line 588
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_3

    .line 589
    iget-object v2, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 590
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 593
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    return-void

    .line 567
    :cond_4
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 561
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 593
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/htc/music/widget/AlbumView;->cleanResource()V

    .line 556
    return-void
.end method

.method public getAblumTag()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mAblumTag:I

    return v0
.end method

.method public final getAlbumLeft()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->cX:F

    float-to-int v0, v0

    return v0
.end method

.method public final getAlbumRight()I
    .locals 3

    .prologue
    .line 285
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->cX:F

    iget v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/music/widget/AlbumView;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getAlbumWidth()I
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/music/widget/AlbumView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mScale:F

    return v0
.end method

.method init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 123
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    iget v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    iget v2, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "album art worker"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 133
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtHandler:Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

    iget-object v1, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;-><init>(Lcom/htc/music/widget/AlbumView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtHandler:Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

    .line 139
    :cond_2
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/music/widget/AlbumView;->mScale:F

    .line 140
    iput v3, p0, Lcom/htc/music/widget/AlbumView;->cX:F

    .line 141
    iput v3, p0, Lcom/htc/music/widget/AlbumView;->cY:F

    .line 142
    iput v3, p0, Lcom/htc/music/widget/AlbumView;->cZ:F

    .line 143
    iput v3, p0, Lcom/htc/music/widget/AlbumView;->cR:F

    .line 144
    iput-boolean v4, p0, Lcom/htc/music/widget/AlbumView;->mIsSetAlbumArt:Z

    .line 146
    iput-boolean v4, p0, Lcom/htc/music/widget/AlbumView;->mPaused:Z

    .line 148
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 149
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 150
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 315
    iput-boolean v3, p0, Lcom/htc/music/widget/AlbumView;->mIsAttachedToWindow:Z

    .line 316
    iget v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumId:I

    .line 317
    .local v0, albumid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtHandler:Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->removeMessages(I)V

    .line 319
    iget-object v1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtHandler:Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 322
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/widget/AlbumView;->mIsAttachedToWindow:Z

    .line 329
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtHandler:Lcom/htc/music/widget/AlbumView$AlbumArtHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 347
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 349
    monitor-exit p0

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/htc/music/widget/AlbumView;->drawArtwork(Landroid/graphics/Canvas;)V

    .line 262
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 304
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 305
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 306
    .local v0, height:I
    iget v2, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    iget v3, p0, Lcom/htc/music/widget/AlbumView;->mOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    iget v4, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/widget/AlbumView;->setMeasuredDimension(II)V

    .line 310
    return-void
.end method

.method public setAlbumArtOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 270
    iput p1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetX:I

    .line 271
    iput p2, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetY:I

    .line 272
    return-void
.end method

.method public setAlbumSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 265
    iput p1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    .line 266
    iput p2, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    .line 267
    return-void
.end method

.method public setArtwork(I)V
    .locals 1
    .parameter "albumid"

    .prologue
    .line 157
    iput p1, p0, Lcom/htc/music/widget/AlbumView;->mAlbumId:I

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/AlbumView;->setArtwork(Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "art"

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/music/widget/AlbumView;->mPaused:Z

    if-eqz v6, :cond_0

    .line 169
    monitor-exit p0

    .line 239
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 173
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    .line 175
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    .line 178
    :cond_1
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    .line 179
    iget v6, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    iget v7, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    iget v8, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    add-int/2addr v7, v8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    .line 184
    :cond_2
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_3

    .line 185
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    .line 186
    :cond_3
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 187
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 188
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    if-nez p1, :cond_6

    .line 191
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 192
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 194
    invoke-virtual {p0}, Lcom/htc/music/widget/AlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020002

    invoke-static {v6, v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    .line 196
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    iget v8, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 198
    .local v5, tmp:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    iput-object v5, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    .line 200
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    .line 201
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 202
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetY:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    .line 208
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mUnknowAlbum:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    .line 237
    :cond_5
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/widget/AlbumView;->mIsSetAlbumArt:Z

    .line 238
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 211
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/htc/music/util/HtcBitmapFactory;->isReady()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 212
    const-string v6, "[AlbumView]"

    const-string v7, "borranx HtcBitmapFactory enable"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/htc/music/widget/AlbumView;->mCleanAlbum:Landroid/graphics/Bitmap;

    .line 216
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 217
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    iget v6, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/widget/AlbumView;->mAlbumArtOffsetY:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    iput-object v0, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    .line 223
    iget-boolean v6, p0, Lcom/htc/music/widget/AlbumView;->mReflection:Z

    if-eqz v6, :cond_5

    .line 224
    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v6, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 226
    .local v4, sh1:Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/ComposeShader;

    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mLG2:Landroid/graphics/LinearGradient;

    iget-object v7, p0, Lcom/htc/music/widget/AlbumView;->mMode:Landroid/graphics/Xfermode;

    invoke-direct {v3, v4, v6, v7}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 227
    .local v3, reflectionShader:Landroid/graphics/ComposeShader;
    const/high16 v6, 0x3f80

    const/high16 v7, -0x4080

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 229
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 231
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/widget/AlbumView;->mBit:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I

    sub-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    iget-object v6, p0, Lcom/htc/music/widget/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public showHitRect()V
    .locals 5

    .prologue
    .line 276
    const-string v0, "[AlbumView]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/widget/AlbumView;->cX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/widget/AlbumView;->cY:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/widget/AlbumView;->cX:F

    iget v3, p0, Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/music/widget/AlbumView;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/widget/AlbumView;->cY:F

    neg-float v2, v2

    iget v3, p0, Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/music/widget/AlbumView;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method
