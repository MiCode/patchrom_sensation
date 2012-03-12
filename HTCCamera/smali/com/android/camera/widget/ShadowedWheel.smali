.class public Lcom/android/camera/widget/ShadowedWheel;
.super Landroid/view/View;
.source "ShadowedWheel.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ShadowedWheel$ScaleType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShadowedWheel"

.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Lcom/android/camera/widget/ShadowedWheel$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mBaselineAligned:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMatrixValues:[F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mParentPosXInCanvas:I

.field private mResource:I

.field private mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field private mShadowAll:Landroid/graphics/Bitmap;

.field private mShadowCurrent:Landroid/graphics/Bitmap;

.field private mState:[I

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field private rotatePadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->MATRIX:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_XY:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_START:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_END:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_CROP:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_INSIDE:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel;->sScaleTypeArray:[Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    .line 654
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    iput v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 73
    iput-boolean v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mHaveFrame:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mAdjustViewBounds:Z

    .line 75
    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMaxWidth:I

    .line 76
    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMaxHeight:I

    .line 80
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mAlpha:I

    .line 81
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mViewAlphaScale:I

    .line 83
    iput-object v2, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v2, p0, Lcom/android/camera/widget/ShadowedWheel;->mState:[I

    .line 85
    iput-boolean v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mMergeState:Z

    .line 86
    iput v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mLevel:I

    .line 89
    iput-object v2, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempSrc:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempDst:Landroid/graphics/RectF;

    .line 97
    iput-boolean v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mBaselineAligned:Z

    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrixValues:[F

    .line 104
    iput v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mParentPosXInCanvas:I

    .line 108
    iput v1, p0, Lcom/android/camera/widget/ShadowedWheel;->rotatePadding:I

    .line 124
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->initImageView()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/ShadowedWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 73
    iput-boolean v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mHaveFrame:Z

    .line 74
    iput-boolean v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mAdjustViewBounds:Z

    .line 75
    iput v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mMaxWidth:I

    .line 76
    iput v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mMaxHeight:I

    .line 80
    const/16 v4, 0xff

    iput v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mAlpha:I

    .line 81
    const/16 v4, 0x100

    iput v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mViewAlphaScale:I

    .line 83
    iput-object v7, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v7, p0, Lcom/android/camera/widget/ShadowedWheel;->mState:[I

    .line 85
    iput-boolean v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mMergeState:Z

    .line 86
    iput v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mLevel:I

    .line 89
    iput-object v7, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 92
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempSrc:Landroid/graphics/RectF;

    .line 93
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempDst:Landroid/graphics/RectF;

    .line 97
    iput-boolean v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mBaselineAligned:Z

    .line 103
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrixValues:[F

    .line 104
    iput v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mParentPosXInCanvas:I

    .line 108
    iput v6, p0, Lcom/android/camera/widget/ShadowedWheel;->rotatePadding:I

    .line 133
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->initImageView()V

    .line 135
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ShadowedWheel;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mBaselineAligned:Z

    .line 146
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ShadowedWheel;->setAdjustViewBounds(Z)V

    .line 150
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ShadowedWheel;->setMaxWidth(I)V

    .line 153
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ShadowedWheel;->setMaxHeight(I)V

    .line 156
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 157
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 158
    sget-object v4, Lcom/android/camera/widget/ShadowedWheel;->sScaleTypeArray:[Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ShadowedWheel;->setScaleType(Lcom/android/camera/widget/ShadowedWheel$ScaleType;)V

    .line 161
    :cond_1
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 162
    .local v3, tint:I
    if-eqz v3, :cond_2

    .line 163
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/widget/ShadowedWheel;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 166
    :cond_2
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mCropToPadding:Z

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-void
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1014
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mAlpha:I

    iget v2, p0, Lcom/android/camera/widget/ShadowedWheel;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1016
    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/high16 v11, 0x3f00

    .line 811
    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mHaveFrame:Z

    if-nez v9, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iget v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    .line 816
    .local v1, dwidth:I
    iget v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    .line 818
    .local v0, dheight:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingRight:I

    sub-int v7, v9, v10

    .line 819
    .local v7, vwidth:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingBottom:I

    sub-int v6, v9, v10

    .line 821
    .local v6, vheight:I
    if-ltz v1, :cond_2

    if-ne v7, v1, :cond_5

    :cond_2
    if-ltz v0, :cond_3

    if-ne v6, v0, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 824
    .local v4, fits:Z
    :goto_1
    if-lez v1, :cond_4

    if-lez v0, :cond_4

    sget-object v9, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_XY:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    iget-object v10, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    if-ne v9, v10, :cond_6

    .line 828
    :cond_4
    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8, v8, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 829
    iput-object v13, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .end local v4           #fits:Z
    :cond_5
    move v4, v8

    .line 821
    goto :goto_1

    .line 833
    .restart local v4       #fits:Z
    :cond_6
    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 835
    sget-object v8, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->MATRIX:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    if-ne v8, v9, :cond_8

    .line 837
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 838
    iput-object v13, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 840
    :cond_7
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 842
    :cond_8
    if-eqz v4, :cond_9

    .line 844
    iput-object v13, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 845
    :cond_9
    sget-object v8, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    if-ne v8, v9, :cond_a

    .line 847
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 848
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v1

    int-to-float v9, v9

    mul-float/2addr v9, v11

    sub-int v10, v6, v0

    int-to-float v10, v10

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 850
    :cond_a
    sget-object v8, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_CROP:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    if-ne v8, v9, :cond_c

    .line 851
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 854
    const/4 v2, 0x0

    .local v2, dx:F
    const/4 v3, 0x0

    .line 856
    .local v3, dy:F
    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-le v8, v9, :cond_b

    .line 857
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 858
    .local v5, scale:F
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    .line 864
    :goto_2
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 865
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 860
    .end local v5           #scale:F
    :cond_b
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v5, v8, v9

    .line 861
    .restart local v5       #scale:F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    goto :goto_2

    .line 866
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v5           #scale:F
    :cond_c
    sget-object v8, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_INSIDE:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    if-ne v8, v9, :cond_e

    .line 867
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 872
    if-gt v1, v7, :cond_d

    if-gt v0, v6, :cond_d

    .line 873
    const/high16 v5, 0x3f80

    .line 879
    .restart local v5       #scale:F
    :goto_3
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    .line 880
    .restart local v2       #dx:F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    .line 882
    .restart local v3       #dy:F
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 883
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 875
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v5           #scale:F
    :cond_d
    int-to-float v8, v7

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v6

    int-to-float v10, v0

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .restart local v5       #scale:F
    goto :goto_3

    .line 886
    .end local v5           #scale:F
    :cond_e
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 887
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempDst:Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v6

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 889
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 890
    iget-object v8, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempSrc:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/android/camera/widget/ShadowedWheel;->mTempDst:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    invoke-static {v11}, Lcom/android/camera/widget/ShadowedWheel;->scaleTypeToScaleToFit(Lcom/android/camera/widget/ShadowedWheel$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0
.end method

.method private initImageView()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    .line 176
    sget-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->setDuplicateParentStateEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowAll:Landroid/graphics/Bitmap;

    .line 182
    return-void
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 641
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 642
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 643
    .local v2, w:I
    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    .line 644
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 645
    .local v1, h:I
    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    .line 646
    :cond_1
    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 647
    :cond_2
    iput v2, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    .line 648
    iput v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    .line 649
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->requestLayout()V

    .line 652
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .parameter "desiredSize"
    .parameter "maxSize"
    .parameter "measureSpec"

    .prologue
    .line 778
    move v0, p1

    .line 779
    .local v0, result:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 780
    .local v1, specMode:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 781
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 799
    :goto_0
    return v0

    .line 786
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 787
    goto :goto_0

    .line 792
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 793
    goto :goto_0

    .line 796
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 781
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 563
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 568
    .local v2, rsrc:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    if-eqz v3, :cond_3

    .line 576
    :try_start_0
    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 605
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    iput-object v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 582
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 583
    const-string v3, "content"

    iget-object v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 585
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 595
    :goto_2
    if-nez v0, :cond_2

    .line 596
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    iput-object v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 588
    :catch_1
    move-exception v1

    .line 589
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "ImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 592
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method private static scaleTypeToScaleToFit(Lcom/android/camera/widget/ShadowedWheel$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .parameter "st"

    .prologue
    .line 663
    sget-object v0, Lcom/android/camera/widget/ShadowedWheel;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 623
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :cond_0
    iput-object p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 626
    if-eqz p1, :cond_2

    .line 627
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 628
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 631
    :cond_1
    iget v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 632
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    .line 633
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    .line 634
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->applyColorMod()V

    .line 635
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->configureBounds()V

    .line 637
    :cond_2
    return-void
.end method


# virtual methods
.method public final clearColorFilter()V
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 987
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 898
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 899
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 900
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 903
    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mBaselineAligned:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScaleType()Lcom/android/camera/widget/ShadowedWheel$ScaleType;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mState:[I

    if-nez v0, :cond_0

    .line 611
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    .line 612
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMergeState:Z

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mState:[I

    goto :goto_0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mState:[I

    invoke-static {v0, v1}, Lcom/android/camera/widget/ShadowedWheel;->mergeDrawableStates([I[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 913
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 917
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowAll:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowAll:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowAll:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 918
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrixValues:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 921
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowAll:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mParentPosXInCanvas:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrixValues:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/widget/ShadowedWheel;->rotatePadding:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 925
    :cond_0
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 965
    :cond_1
    :goto_0
    return-void

    .line 929
    :cond_2
    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    if-eqz v3, :cond_1

    .line 933
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingLeft:I

    if-nez v3, :cond_3

    .line 934
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 958
    :goto_1
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowCurrent:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_1

    .line 961
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mShadowCurrent:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mParentPosXInCanvas:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrixValues:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/widget/ShadowedWheel;->rotatePadding:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 936
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 937
    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 939
    iget-boolean v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mCropToPadding:Z

    if-eqz v3, :cond_4

    .line 940
    iget v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mScrollX:I

    .line 941
    .local v1, scrollX:I
    iget v2, p0, Lcom/android/camera/widget/ShadowedWheel;->mScrollY:I

    .line 942
    .local v2, scrollY:I
    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/camera/widget/ShadowedWheel;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/ShadowedWheel;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/android/camera/widget/ShadowedWheel;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 947
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_4
    iget v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 949
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5

    .line 950
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 952
    :cond_5
    iget-object v3, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 953
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 908
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 909
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/widget/ShadowedWheel;->resolveUri()V

    .line 673
    const/4 v5, 0x0

    .line 676
    .local v5, desiredAspect:F
    const/16 v17, 0x0

    .line 679
    .local v17, resizeWidth:Z
    const/16 v16, 0x0

    .line 681
    .local v16, resizeHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 683
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    .line 684
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    .line 685
    const/4 v7, 0x0

    .local v7, h:I
    move/from16 v18, v7

    .line 706
    .local v18, w:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingLeft:I

    .line 707
    .local v13, pleft:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingRight:I

    .line 708
    .local v14, pright:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingTop:I

    .line 709
    .local v15, ptop:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/widget/ShadowedWheel;->mPaddingBottom:I

    .line 714
    .local v12, pbottom:I
    if-nez v17, :cond_1

    if-eqz v16, :cond_9

    .line 721
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/ShadowedWheel;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/widget/ShadowedWheel;->resolveAdjustedSize(III)I

    move-result v19

    .line 725
    .local v19, widthSize:I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/ShadowedWheel;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/widget/ShadowedWheel;->resolveAdjustedSize(III)I

    move-result v8

    .line 728
    .local v8, heightSize:I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_3

    .line 730
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 733
    .local v4, actualAspect:F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3e7ad7f29abcaf48L

    cmpl-double v21, v21, v23

    if-lez v21, :cond_3

    .line 735
    const/4 v6, 0x0

    .line 738
    .local v6, done:Z
    if-eqz v17, :cond_2

    .line 739
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 742
    .local v11, newWidth:I
    move/from16 v0, v19

    if-gt v11, v0, :cond_2

    .line 743
    move/from16 v19, v11

    .line 744
    const/4 v6, 0x1

    .line 749
    .end local v11           #newWidth:I
    :cond_2
    if-nez v6, :cond_3

    if-eqz v16, :cond_3

    .line 750
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 752
    .local v10, newHeight:I
    if-gt v10, v8, :cond_3

    .line 753
    move v8, v10

    .line 773
    .end local v4           #actualAspect:F
    .end local v6           #done:Z
    .end local v10           #newHeight:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/widget/ShadowedWheel;->setMeasuredDimension(II)V

    .line 774
    return-void

    .line 687
    .end local v7           #h:I
    .end local v8           #heightSize:I
    .end local v12           #pbottom:I
    .end local v13           #pleft:I
    .end local v14           #pright:I
    .end local v15           #ptop:I
    .end local v18           #w:I
    .end local v19           #widthSize:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableWidth:I

    move/from16 v18, v0

    .line 688
    .restart local v18       #w:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/widget/ShadowedWheel;->mDrawableHeight:I

    .line 689
    .restart local v7       #h:I
    if-gtz v18, :cond_5

    const/16 v18, 0x1

    .line 690
    :cond_5
    if-gtz v7, :cond_6

    const/4 v7, 0x1

    .line 694
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/widget/ShadowedWheel;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 696
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 697
    .local v20, widthSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 699
    .local v9, heightSpecMode:I
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    .line 700
    :goto_2
    const/high16 v21, 0x4000

    move/from16 v0, v21

    if-eq v9, v0, :cond_8

    const/16 v16, 0x1

    .line 702
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 699
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 700
    :cond_8
    const/16 v16, 0x0

    goto :goto_3

    .line 763
    .end local v9           #heightSpecMode:I
    .end local v20           #widthSpecMode:I
    .restart local v12       #pbottom:I
    .restart local v13       #pleft:I
    .restart local v14       #pright:I
    .restart local v15       #ptop:I
    :cond_9
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 764
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/ShadowedWheel;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/ShadowedWheel;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 769
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/widget/ShadowedWheel;->resolveSize(II)I

    move-result v19

    .line 770
    .restart local v19       #widthSize:I
    move/from16 v0, p2

    invoke-static {v7, v0}, Lcom/android/camera/widget/ShadowedWheel;->resolveSize(II)I

    move-result v8

    .restart local v8       #heightSize:I
    goto :goto_1
.end method

.method protected onSetAlpha(I)Z
    .locals 2
    .parameter "alpha"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 208
    shr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .line 209
    .local v0, scale:I
    iget v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mViewAlphaScale:I

    if-eq v1, v0, :cond_0

    .line 210
    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mViewAlphaScale:I

    .line 211
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->applyColorMod()V

    .line 213
    :cond_0
    const/4 v1, 0x1

    .line 215
    .end local v0           #scale:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .parameter "adjustViewBounds"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mAdjustViewBounds:Z

    .line 229
    if-eqz p1, :cond_0

    .line 230
    sget-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->setScaleType(Lcom/android/camera/widget/ShadowedWheel$ScaleType;)V

    .line 232
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1003
    and-int/lit16 p1, p1, 0xff

    .line 1004
    iget v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 1005
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mAlpha:I

    .line 1006
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->applyColorMod()V

    .line 1007
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 1009
    :cond_0
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 982
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 983
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 996
    iput-object p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 997
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->applyColorMod()V

    .line 998
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 1000
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 804
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 805
    .local v0, changed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mHaveFrame:Z

    .line 806
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->configureBounds()V

    .line 807
    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 348
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void
.end method

.method public setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 411
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 412
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    .line 333
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ShadowedWheel;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->requestLayout()V

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 337
    :cond_0
    return-void
.end method

.method public setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    .line 397
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ShadowedWheel;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 400
    :cond_0
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .parameter "level"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 437
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mLevel:I

    .line 438
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 440
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->resizeFromDrawable()V

    .line 442
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 549
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const/4 p1, 0x0

    .line 554
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 557
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->configureBounds()V

    .line 558
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 560
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    if-eq v0, p1, :cond_1

    .line 295
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/widget/ShadowedWheel;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 297
    iput-object v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    .line 298
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->resolveUri()V

    .line 299
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->requestLayout()V

    .line 300
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 302
    :cond_1
    return-void
.end method

.method public setImageResourceWithoutRelayout(I)V
    .locals 2
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    if-eq v0, p1, :cond_1

    .line 361
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/widget/ShadowedWheel;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 363
    iput-object v1, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    .line 364
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->resolveUri()V

    .line 365
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 367
    :cond_1
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .parameter "state"
    .parameter "merge"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mState:[I

    .line 416
    iput-boolean p2, p0, Lcom/android/camera/widget/ShadowedWheel;->mMergeState:Z

    .line 417
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->refreshDrawableState()V

    .line 419
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->resizeFromDrawable()V

    .line 421
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 311
    iget v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 316
    iput-object p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    .line 317
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->resolveUri()V

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->requestLayout()V

    .line 319
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 321
    :cond_1
    return-void
.end method

.method public setImageURIWithoutRelayout(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 376
    iget v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mResource:I

    .line 381
    iput-object p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mUri:Landroid/net/Uri;

    .line 382
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->resolveUri()V

    .line 383
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 385
    :cond_1
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 275
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mMaxHeight:I

    .line 276
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxWidth"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 253
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mMaxWidth:I

    .line 254
    return-void
.end method

.method public setParentRectXInCanvas(I)V
    .locals 0
    .parameter "tmpX"

    .prologue
    .line 1019
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mParentPosXInCanvas:I

    .line 1020
    return-void
.end method

.method public setRotatePadding(I)V
    .locals 0
    .parameter "pandingLen"

    .prologue
    .line 1024
    iput p1, p0, Lcom/android/camera/widget/ShadowedWheel;->rotatePadding:I

    .line 1025
    return-void
.end method

.method public setScaleType(Lcom/android/camera/widget/ShadowedWheel$ScaleType;)V
    .locals 2
    .parameter "scaleType"

    .prologue
    .line 512
    if-nez p1, :cond_0

    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    if-eq v0, p1, :cond_1

    .line 517
    iput-object p1, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    .line 519
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mScaleType:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ShadowedWheel;->setWillNotCacheDrawing(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->requestLayout()V

    .line 522
    invoke-virtual {p0}, Lcom/android/camera/widget/ShadowedWheel;->invalidate()V

    .line 524
    :cond_1
    return-void

    .line 519
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 426
    invoke-direct {p0}, Lcom/android/camera/widget/ShadowedWheel;->resizeFromDrawable()V

    .line 427
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/widget/ShadowedWheel;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
