.class public Lcom/htc/widget/HtcToggleButton;
.super Landroid/widget/FrameLayout;
.source "HtcToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcToggleButton$1;,
        Lcom/htc/widget/HtcToggleButton$SavedState;,
        Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final DOWN_DURATION:I = 0x64

.field private static final DURATION:I = 0x64

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.9f

.field public static final MODE_BRIGHT_BACKGROUND:I = 0x0

.field public static final MODE_DARK_BACKGROUND:I = 0x1

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static final TOGGLE_OUTER_PADDING:I = 0x4

.field private static final UP_DURATION:I = 0x14


# instance fields
.field private mBroadcasting:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mChecked:Z

.field private mCheckedCenterX:I

.field private mColor:I

.field private mDownAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mIsDown:Z

.field private mIsMove:Z

.field private mIsSizeChanged:Z

.field private mIsUserSetOffText:Z

.field private mIsUserSetOnText:Z

.field private mMode:I

.field private mOffAnimator:Landroid/animation/ObjectAnimator;

.field private mOffAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnAnimator:Landroid/animation/ObjectAnimator;

.field private mOnAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

.field private mOuterCenterX:I

.field private mOuterCenterY:I

.field private mOuterxOffset:I

.field private mOuteryOffset:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTextOff:Landroid/widget/TextView;

.field private mTextOn:Landroid/widget/TextView;

.field private mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mToggleOuter:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mUnCheckedCenterX:I

.field private mUpAnimator:Landroid/animation/ObjectAnimator;

.field private mUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    .line 63
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 64
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 67
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 68
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 96
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 97
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOnText:Z

    .line 98
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOffText:Z

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    .line 63
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 64
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 67
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 68
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 96
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 97
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOnText:Z

    .line 98
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOffText:Z

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mMode:I

    .line 63
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 64
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 67
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 68
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 96
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 97
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOnText:Z

    .line 98
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOffText:Z

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 117
    const v4, 0x2080b9b

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcToggleButton;->setBackgroundResource(I)V

    .line 118
    const/4 v1, 0x1

    .line 119
    .local v1, clickable:Z
    const/4 v2, 0x1

    .line 120
    .local v2, enabled:Z
    if-eqz p2, :cond_0

    .line 121
    sget-object v4, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    const/4 v2, 0x1

    .line 128
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    const/16 v4, 0x1d

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    const/4 v1, 0x1

    .line 136
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 142
    const v4, 0x20900f0

    invoke-static {p1, v4, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 143
    const v4, 0x2020268

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    .line 144
    const v4, 0x2020267

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x2080b9e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    .line 148
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    .line 149
    const-string v4, "toggle_on"

    const v5, 0x2080b9d

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    const v4, 0x2080b9c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    .line 152
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    .line 159
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    .line 160
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    .line 161
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 162
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 163
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 164
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 165
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 166
    return-void

    .line 126
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private setDown()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 374
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 375
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 376
    return-void
.end method

.method private setToggleBounds()V
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 357
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    .line 361
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setCenterX(I)V

    .line 362
    return-void

    .line 359
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    goto :goto_0
.end method

.method private setUp()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 380
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 381
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 382
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 283
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 284
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    if-eqz v0, :cond_0

    .line 285
    iput-boolean v6, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 286
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    .line 287
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    .line 288
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    .line 290
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    .line 291
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    .line 292
    const-string v0, "centerX"

    new-array v1, v8, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    aput v2, v1, v6

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    aput v2, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    .line 293
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    const-string v0, "centerX"

    new-array v1, v8, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    aput v2, v1, v6

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    aput v2, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    .line 295
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    const-string v0, "scale"

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    .line 297
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    const-string v0, "scale"

    new-array v1, v8, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 301
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 302
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 303
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 304
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 305
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 306
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 307
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 308
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setToggleBounds()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 296
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 298
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 455
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcToggleButton$SavedState;

    .line 457
    .local v0, ss:Lcom/htc/widget/HtcToggleButton$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 458
    iget-boolean v1, v0, Lcom/htc/widget/HtcToggleButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 459
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->requestLayout()V

    .line 460
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 445
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 447
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/HtcToggleButton$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 449
    .local v0, ss:Lcom/htc/widget/HtcToggleButton$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/widget/HtcToggleButton$SavedState;->checked:Z

    .line 450
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    .line 328
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 332
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 334
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 335
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setDown()V

    .line 352
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 336
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 337
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    if-nez v3, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setUp()V

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 340
    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    if-nez v3, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 342
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 343
    .local v2, y:I
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mTouchSlop:I

    .line 344
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 346
    :cond_4
    iput-boolean v5, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 347
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setUp()V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->toggle()V

    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method protected setCenterX(I)V
    .locals 6
    .parameter "centerX"

    .prologue
    .line 365
    iput p1, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    .line 366
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 368
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsSizeChanged:Z

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->invalidate()V

    .line 370
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 230
    iput-boolean p1, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 231
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 233
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 240
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    if-eqz v0, :cond_2

    .line 251
    :cond_0
    :goto_1
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 236
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 245
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V

    .line 249
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 525
    if-nez p1, :cond_0

    .line 526
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setAlpha(F)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 544
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    .line 265
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 520
    return-void
.end method

.method protected setScale(F)V
    .locals 9
    .parameter "scale"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcToggleButton;->setScaleX(F)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcToggleButton;->setScaleY(F)V

    .line 391
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v0, v4

    .line 392
    .local v0, outerx:I
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 393
    .local v1, outery:I
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v2, v4

    .line 394
    .local v2, x:I
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v3, v4

    .line 395
    .local v3, y:I
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    add-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 396
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 398
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textOff"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOffText:Z

    .line 192
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textOn"

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOnText:Z

    .line 202
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSkinResources(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 468
    if-nez p1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 471
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_2

    .line 472
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 473
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 474
    .local v3, skinPackage:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 476
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 477
    .local v4, themeres:Landroid/content/res/Resources;
    if-eqz v4, :cond_2

    .line 478
    const-string v5, "toggle_on"

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 479
    .local v1, id:I
    if-eqz v1, :cond_2

    .line 480
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 481
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 482
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    .line 483
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    .line 484
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setToggleBounds()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #id:I
    .end local v3           #skinPackage:Ljava/lang/String;
    .end local v4           #themeres:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 505
    iget-boolean v5, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOffText:Z

    if-nez v5, :cond_3

    .line 506
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    const v6, 0x20c024a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 507
    :cond_3
    iget-boolean v5, p0, Lcom/htc/widget/HtcToggleButton;->mIsUserSetOnText:Z

    if-nez v5, :cond_0

    .line 508
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    const v6, 0x20c0249

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 496
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v3       #skinPackage:Ljava/lang/String;
    :cond_4
    const v5, 0x2080b9d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 497
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 498
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    .line 499
    iget-object v5, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    .line 500
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setToggleBounds()V

    goto :goto_1

    .line 492
    :catch_0
    move-exception v5

    goto :goto_1
.end method
