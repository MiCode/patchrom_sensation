.class public Lcom/android/camera/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SlidingDrawer$1;,
        Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;,
        Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;,
        Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;,
        Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ACTION_UP:I = 0x7d0

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlidingDrawer"

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/widget/ImageView;

.field private mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mIsHandleOpened:Z

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

.field private mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mRect:Landroid/graphics/Rect;

.field private mSlideHandle:Z

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    iput-boolean v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    .line 114
    iput-boolean v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    .line 115
    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    iput-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mRect:Landroid/graphics/Rect;

    .line 123
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 124
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 143
    new-instance v5, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;

    invoke-direct {v5, p0, v9}, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;-><init>(Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/widget/SlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 221
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 224
    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    .line 225
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    .line 226
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    .line 227
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 228
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 230
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 231
    .local v3, handleId:I
    if-nez v3, :cond_1

    .line 232
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    .line 224
    goto :goto_0

    .line 236
    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 237
    .local v1, contentId:I
    if-nez v1, :cond_2

    .line 238
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 242
    :cond_2
    if-ne v3, v1, :cond_3

    .line 243
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_3
    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleId:I

    .line 248
    iput v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mContentId:I

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 251
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    .line 252
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 253
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 254
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 255
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 256
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityUnits:I

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 261
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SlidingDrawer;)Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/SlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/widget/SlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->doActionUp()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    .line 576
    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    .line 577
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    .line 584
    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    .line 585
    return-void
.end method

.method private closeDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 982
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    .line 983
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 992
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    .line 996
    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    .line 997
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 1000
    :cond_0
    return-void
.end method

.method private doActionUp()V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 509
    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 510
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 512
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 513
    .local v7, yVelocity:F
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 516
    .local v6, xVelocity:F
    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    .line 517
    .local v5, vertical:Z
    if-eqz v5, :cond_6

    .line 518
    cmpg-float v9, v7, v10

    if-gez v9, :cond_5

    .line 519
    .local v1, negative:Z
    :goto_0
    cmpg-float v9, v6, v10

    if-gez v9, :cond_0

    .line 520
    neg-float v6, v6

    .line 522
    :cond_0
    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    .line 523
    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v6, v9

    .line 535
    :cond_1
    :goto_1
    float-to-double v9, v6

    float-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v3, v9

    .line 536
    .local v3, velocity:F
    if-eqz v1, :cond_2

    .line 537
    neg-float v3, v3

    .line 540
    :cond_2
    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    .line 541
    .local v2, top:I
    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    .line 543
    .local v0, left:I
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_12

    .line 544
    if-eqz v5, :cond_9

    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v2, v9, :cond_4

    :cond_3
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_b

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v2, v9, :cond_b

    .line 551
    :cond_4
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_f

    .line 552
    invoke-virtual {p0, v8}, Lcom/android/camera/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 554
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_d

    .line 555
    if-eqz v5, :cond_c

    .end local v2           #top:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/widget/SlidingDrawer;->animateClose(I)V

    .line 569
    :goto_3
    return-void

    .end local v0           #left:I
    .end local v1           #negative:Z
    .end local v3           #velocity:F
    :cond_5
    move v1, v8

    .line 518
    goto :goto_0

    .line 526
    :cond_6
    cmpg-float v9, v6, v10

    if-gez v9, :cond_8

    .line 527
    .restart local v1       #negative:Z
    :goto_4
    cmpg-float v9, v7, v10

    if-gez v9, :cond_7

    .line 528
    neg-float v7, v7

    .line 530
    :cond_7
    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    .line 531
    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    goto :goto_1

    .end local v1           #negative:Z
    :cond_8
    move v1, v8

    .line 526
    goto :goto_4

    .line 544
    .restart local v0       #left:I
    .restart local v1       #negative:Z
    .restart local v2       #top:I
    .restart local v3       #velocity:F
    :cond_9
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v0, v9, :cond_4

    :cond_a
    iget-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_b

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v0, v9, :cond_4

    .line 564
    :cond_b
    if-eqz v5, :cond_11

    .end local v2           #top:I
    :goto_5
    invoke-direct {p0, v2, v3, v8}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_3

    .restart local v2       #top:I
    :cond_c
    move v2, v0

    .line 555
    goto :goto_2

    .line 557
    :cond_d
    if-eqz v5, :cond_e

    .end local v2           #top:I
    :goto_6
    invoke-direct {p0, v2}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen(I)V

    goto :goto_3

    .restart local v2       #top:I
    :cond_e
    move v2, v0

    goto :goto_6

    .line 560
    :cond_f
    if-eqz v5, :cond_10

    .end local v2           #top:I
    :goto_7
    invoke-direct {p0, v2, v3, v8}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_3

    .restart local v2       #top:I
    :cond_10
    move v2, v0

    goto :goto_7

    :cond_11
    move v2, v0

    .line 564
    goto :goto_5

    .line 567
    :cond_12
    if-eqz v5, :cond_13

    .end local v2           #top:I
    :goto_8
    invoke-direct {p0, v2, v3, v8}, Lcom/android/camera/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_3

    .restart local v2       #top:I
    :cond_13
    move v2, v0

    goto :goto_8
.end method

.method private doAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 831
    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v2, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->incrementAnimation()V

    .line 833
    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    iget v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_0
    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_2

    .line 834
    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    .line 835
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->closeDrawer()V

    .line 858
    :cond_0
    :goto_1
    return-void

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_0

    .line 836
    :cond_2
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 837
    iput-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    .line 838
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->openDrawer()V

    .line 841
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 842
    .local v1, context:Landroid/content/Context;
    instance-of v2, v1, Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 844
    check-cast v0, Lcom/android/camera/HTCCamera;

    .line 845
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-ne p0, v2, :cond_3

    .line 846
    const-string v2, "open_menu"

    const-string v3, "complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 847
    :cond_3
    const-string v2, "pref_set_white_balance"

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    const-string v2, "open_white_balance"

    const-string v3, "complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 852
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v1           #context:Landroid/content/Context;
    :cond_4
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    .line 853
    iget-wide v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 854
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 862
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 863
    .local v4, t:F
    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    .line 864
    .local v3, position:F
    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 865
    .local v5, v:F
    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 866
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    .line 867
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 868
    iput-wide v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 869
    return-void
.end method

.method private moveHandle(I)V
    .locals 13
    .parameter "position"

    .prologue
    const/4 v11, 0x1

    const/16 v10, -0x2711

    const/16 v9, -0x2712

    const/4 v12, 0x0

    .line 662
    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    .line 664
    .local v3, handle:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_a

    .line 665
    if-ne p1, v10, :cond_1

    .line 667
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v8

    if-nez v8, :cond_0

    .line 668
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 673
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    .line 780
    :goto_1
    return-void

    .line 670
    :cond_0
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 674
    :cond_1
    if-ne p1, v9, :cond_3

    .line 676
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v8

    if-nez v8, :cond_2

    .line 678
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 687
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    goto :goto_1

    .line 683
    :cond_2
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 689
    :cond_3
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    .line 690
    .local v7, top:I
    sub-int v1, p1, v7

    .line 691
    .local v1, deltaY:I
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v8, :cond_6

    .line 692
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v8, v7

    .line 697
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v8

    if-nez v8, :cond_7

    .line 698
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 704
    :goto_4
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    if-eqz v8, :cond_5

    .line 705
    const/4 v6, 0x0

    .line 706
    .local v6, threshold:I
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_8

    .line 707
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    add-int v6, v8, v9

    .line 710
    :goto_5
    if-le p1, v6, :cond_9

    .line 711
    iput-boolean v12, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    .line 712
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    .end local v6           #threshold:I
    :cond_5
    :goto_6
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 721
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 723
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 724
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 726
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v1

    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v1

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    .line 727
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    iget-object v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5, v12, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 730
    invoke-virtual {p0, v5}, Lcom/android/camera/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 693
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_6
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    if-le v1, v8, :cond_4

    .line 694
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    sub-int v1, v8, v7

    goto :goto_3

    .line 700
    :cond_7
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 709
    .restart local v6       #threshold:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    goto :goto_5

    .line 714
    :cond_9
    iput-boolean v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    .line 715
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 733
    .end local v1           #deltaY:I
    .end local v6           #threshold:I
    .end local v7           #top:I
    :cond_a
    if-ne p1, v10, :cond_b

    .line 734
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 735
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 736
    :cond_b
    if-ne p1, v9, :cond_c

    .line 737
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 739
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 741
    :cond_c
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 742
    .local v4, left:I
    sub-int v0, p1, v4

    .line 743
    .local v0, deltaX:I
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v8, :cond_f

    .line 744
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v0, v8, v4

    .line 748
    :cond_d
    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 751
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    if-eqz v8, :cond_e

    .line 752
    const/4 v6, 0x0

    .line 753
    .restart local v6       #threshold:I
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_10

    .line 754
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    add-int v6, v8, v9

    .line 757
    :goto_8
    if-le p1, v6, :cond_11

    .line 758
    iput-boolean v12, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    .line 759
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    .end local v6           #threshold:I
    :cond_e
    :goto_9
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 768
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 770
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 771
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 773
    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v0

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v0

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    .line 774
    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v10

    invoke-virtual {v5, v8, v12, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 777
    invoke-virtual {p0, v5}, Lcom/android/camera/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 745
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_f
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    if-le v0, v8, :cond_d

    .line 746
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    sub-int v0, v8, v4

    goto :goto_7

    .line 756
    .restart local v6       #threshold:I
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    goto :goto_8

    .line 761
    :cond_11
    iput-boolean v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    .line 762
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 1003
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    .line 1004
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    .line 1015
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 1018
    :cond_0
    return-void
.end method

.method private performFling(IFZ)V
    .locals 6
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 588
    int-to-float v2, p1

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    .line 589
    iput p2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 591
    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 592
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 597
    :cond_0
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 598
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 599
    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 627
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 628
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 629
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 630
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    .line 631
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 633
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->stopTracking()V

    .line 634
    return-void

    .line 592
    .end local v0           #now:J
    :cond_2
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 603
    :cond_3
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 604
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 605
    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 609
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 613
    :cond_5
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 614
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 615
    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 609
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 620
    :cond_7
    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 621
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 622
    iput v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 783
    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 814
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 790
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 791
    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_2

    .line 792
    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    .line 793
    .local v0, childHeight:I
    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 794
    .local v3, height:I
    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 796
    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 810
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 811
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 813
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 799
    :cond_2
    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 800
    .local v1, childWidth:I
    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 801
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottom:I

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 803
    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 637
    iput-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    .line 638
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 639
    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 640
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 641
    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 642
    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 643
    iget v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    .line 645
    iget v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    .line 646
    iput-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    .line 647
    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 649
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 650
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 651
    iput-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    .line 659
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 639
    goto :goto_0

    .line 643
    .restart local v2       #opening:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 653
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 654
    iput-boolean v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    .line 655
    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 817
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 818
    iput-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    .line 820
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 828
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->prepareContent()V

    .line 946
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 947
    .local v0, scrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 948
    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 950
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->animateClose(I)V

    .line 952
    if-eqz v0, :cond_1

    .line 953
    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 955
    :cond_1
    return-void

    .line 950
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->prepareContent()V

    .line 968
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 969
    .local v0, scrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 970
    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 972
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen(I)V

    .line 974
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 976
    if-eqz v0, :cond_1

    .line 977
    invoke-interface {v0}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 979
    :cond_1
    return-void

    .line 972
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->animateOpen()V

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->closeDrawer()V

    .line 931
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    .line 932
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->requestLayout()V

    .line 933
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 336
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    .line 337
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    .line 339
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/camera/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 341
    iget-boolean v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 342
    :cond_0
    iget-object v6, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 344
    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 359
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 347
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 351
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/camera/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 351
    :cond_5
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 356
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 357
    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/camera/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getHandleArea()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    .line 1091
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 290
    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    .line 291
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;-><init>(Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 402
    iget-boolean v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    if-eqz v10, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v8

    .line 406
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 408
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 409
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 411
    .local v7, y:F
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 412
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    .line 414
    .local v2, handle:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 415
    iget-boolean v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v10, :cond_2

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 416
    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    if-eqz v9, :cond_0

    .line 417
    iget-object v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    float-to-int v10, v6

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    float-to-int v11, v7

    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-interface {v9, p1, v10, v11}, Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;->onCapture(Landroid/view/MotionEvent;II)Z

    goto :goto_0

    .line 423
    :cond_2
    const/4 v4, 0x0

    .line 424
    .local v4, onCapture:Z
    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    if-eqz v10, :cond_3

    .line 425
    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    float-to-int v11, v6

    iget v12, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    float-to-int v12, v7

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    invoke-interface {v10, p1, v11, v12}, Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;->onCapture(Landroid/view/MotionEvent;II)Z

    move-result v4

    .line 430
    :cond_3
    if-eq v4, v9, :cond_0

    .line 433
    iput-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    .line 436
    iget-boolean v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v10, :cond_5

    .line 437
    iput-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    .line 438
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 446
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->prepareContent()V

    .line 449
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v8, :cond_4

    .line 450
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v8}, Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 453
    :cond_4
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_6

    .line 454
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    .line 455
    .local v5, top:I
    float-to-int v8, v7

    sub-int/2addr v8, v5

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTouchDelta:I

    .line 456
    invoke-direct {p0, v5}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    .line 462
    .end local v5           #top:I
    :goto_2
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 464
    iput-boolean v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    move v8, v9

    .line 466
    goto :goto_0

    .line 440
    :cond_5
    iput-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    .line 441
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 458
    :cond_6
    iget-object v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    .line 459
    .local v3, left:I
    float-to-int v8, v6

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTouchDelta:I

    .line 460
    invoke-direct {p0, v3}, Lcom/android/camera/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 363
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 398
    :goto_0
    return-void

    .line 367
    :cond_0
    sub-int v7, p4, p2

    .line 368
    .local v7, width:I
    sub-int v6, p5, p3

    .line 370
    .local v6, height:I
    iget-object v5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    .line 372
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 373
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 378
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 380
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 381
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 382
    .local v1, childLeft:I
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    .line 384
    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 395
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 396
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleHeight:I

    .line 397
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 382
    .end local v2           #childTop:I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .line 387
    .end local v1           #childLeft:I
    :cond_2
    iget-boolean v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    .line 388
    .restart local v1       #childLeft:I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 390
    .restart local v2       #childTop:I
    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 387
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/camera/widget/SlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 307
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 308
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 310
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 311
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 313
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 314
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    .line 318
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 320
    iget-boolean v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 322
    .local v1, height:I
    iget-object v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 330
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/camera/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 331
    return-void

    .line 325
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/camera/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 326
    .local v4, width:I
    iget-object v7, p0, Lcom/android/camera/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/16 v5, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    if-eqz v1, :cond_0

    .line 505
    :goto_0
    return v3

    .line 476
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 479
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 505
    .end local v0           #action:I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mTracking:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mAnimating:Z

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move v1, v3

    :goto_2
    move v3, v1

    goto :goto_0

    .line 481
    .restart local v0       #action:I
    :pswitch_0
    const-string v1, "SlidingDrawer"

    const-string v4, "not enter this state due to the event was intercepted by onInterceptTouchEvent()"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    :goto_3
    float-to-int v1, v1

    iget v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_3

    .line 489
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/camera/widget/SlidingDrawer;->mSlideHandle:Z

    .line 492
    iget-boolean v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mIsHandleOpened:Z

    if-eqz v1, :cond_4

    .line 493
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    :goto_4
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .end local v0           #action:I
    :cond_5
    move v1, v2

    .line 505
    goto :goto_2

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->openDrawer()V

    .line 916
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    .line 917
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->requestLayout()V

    .line 919
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 920
    return-void
.end method

.method public setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "closed"
    .parameter "opening"
    .parameter "opened"
    .parameter "slide_opening"
    .parameter "slide_opened"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    iput-object p2, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpeningDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    iput-object p3, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iput-object p4, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpeningDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    iput-object p5, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    return-void
.end method

.method public setHandleOpened()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setHandleSlideOpened()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/widget/SlidingDrawer;->mHandleSlideOpenedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_0
    return-void
.end method

.method public setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V
    .locals 0
    .parameter "onCaptureListener"

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    .line 1053
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerCloseListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 1036
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 1027
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer;->mOnDrawerScrollListener:Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 1048
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->openDrawer()V

    .line 886
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->invalidate()V

    .line 887
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingDrawer;->requestLayout()V

    .line 888
    return-void

    .line 884
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z

    .line 1082
    return-void
.end method
