.class public Landroid/graphics/drawable/BitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/BitmapDrawable$1;,
        Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6


# instance fields
.field private mApplyGravity:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mMutated:Z

.field private mTargetDensity:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 82
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 91
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 92
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "res"
    .parameter "bitmap"

    .prologue
    .line 110
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 111
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 3
    .parameter "res"
    .parameter "is"

    .prologue
    .line 157
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .parameter "res"
    .parameter "filepath"

    .prologue
    .line 132
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 133
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 134
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 103
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 556
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 557
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 558
    if-eqz p2, :cond_0

    .line 559
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 563
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 564
    return-void

    .line 561
    :cond_0
    iget v0, p1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    goto :goto_0

    .line 563
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filepath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 122
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    .line 180
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    .line 181
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 185
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 186
    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    .line 191
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 193
    :cond_0
    return-void

    .line 189
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 368
    iget-object v6, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 369
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 370
    iget-object v8, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 372
    .local v8, state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-boolean v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    if-nez v0, :cond_1

    .line 373
    iget-object v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-nez v0, :cond_0

    iget-object v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    .line 378
    :cond_1
    iget-boolean v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    if-eqz v0, :cond_2

    .line 379
    iget-object v9, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 380
    .local v9, tmx:Landroid/graphics/Shader$TileMode;
    iget-object v10, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 382
    .local v10, tmy:Landroid/graphics/Shader$TileMode;
    if-nez v9, :cond_5

    if-nez v10, :cond_5

    .line 383
    iget-object v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    .end local v9           #tmx:Landroid/graphics/Shader$TileMode;
    .end local v10           #tmy:Landroid/graphics/Shader$TileMode;
    :goto_0
    iput-boolean v11, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    .line 390
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 393
    :cond_2
    iget-object v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    .line 394
    .local v7, shader:Landroid/graphics/Shader;
    if-nez v7, :cond_8

    .line 395
    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getResolvedLayoutDirectionSelf()I

    move-result v5

    .line 397
    .local v5, layoutDirection:I
    iget v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    iget v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 399
    iput-boolean v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 401
    .end local v5           #layoutDirection:I
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v1, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v12, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 410
    .end local v7           #shader:Landroid/graphics/Shader;
    .end local v8           #state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    :cond_4
    :goto_1
    return-void

    .line 385
    .restart local v8       #state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    .restart local v9       #tmx:Landroid/graphics/Shader$TileMode;
    .restart local v10       #tmy:Landroid/graphics/Shader$TileMode;
    :cond_5
    iget-object v0, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    if-nez v9, :cond_6

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local v9           #tmx:Landroid/graphics/Shader$TileMode;
    :cond_6
    if-nez v10, :cond_7

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local v10           #tmy:Landroid/graphics/Shader$TileMode;
    :cond_7
    invoke-direct {v1, v6, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 403
    .restart local v7       #shader:Landroid/graphics/Shader;
    :cond_8
    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 405
    iput-boolean v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 407
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v1, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 357
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 512
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    .line 501
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 505
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 445
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 447
    sget-object v5, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 449
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 450
    .local v2, id:I
    if-nez v2, :cond_0

    .line 451
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <bitmap> requires a valid src attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 454
    :cond_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 455
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 456
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <bitmap> requires a valid src attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 459
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iput-object v1, v5, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 460
    invoke-direct {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 463
    iget-object v5, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v3, v5, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 464
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 466
    const/4 v5, 0x3

    invoke-virtual {v3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 468
    const/4 v5, 0x4

    invoke-virtual {v3}, Landroid/graphics/Paint;->isDither()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 470
    const/16 v5, 0x77

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 471
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 472
    .local v4, tileMode:I
    if-eq v4, v7, :cond_2

    .line 473
    packed-switch v4, :pswitch_data_0

    .line 486
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 487
    return-void

    .line 475
    :pswitch_0
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 478
    :pswitch_1
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 481
    :pswitch_2
    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 436
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V

    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    .line 439
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 364
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 414
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 415
    .local v0, oldAlpha:I
    if-eq p1, v0, :cond_0

    .line 416
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 417
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 419
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .parameter "aa"

    .prologue
    .line 267
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 268
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 269
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 424
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 425
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 280
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 281
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 273
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 274
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 275
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 254
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iput p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mApplyGravity:Z

    .line 256
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 258
    :cond_0
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 2
    .parameter "density"

    .prologue
    .line 230
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_2

    .line 231
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    .line 232
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    .line 235
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    .line 236
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 238
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 207
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "metrics"

    .prologue
    .line 218
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 219
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 316
    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .parameter "xmode"
    .parameter "ymode"

    .prologue
    .line 346
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    .line 347
    .local v0, state:Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v1, p2, :cond_1

    .line 348
    :cond_0
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 349
    iput-object p2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    .line 351
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 353
    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 330
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 331
    return-void
.end method
