.class public Lcom/android/camera/widget/ScrollWheelScroller;
.super Ljava/lang/Object;
.source "ScrollWheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScrollWheelScroller"


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrY:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mEasingFunction:Lcom/htc/widget/EasingFunction;

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingStateListener:Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;

.field private mFlinging:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/ScrollWheelScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffX:F

    .line 61
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffY:F

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFlinging:Z

    .line 92
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 94
    iput-object p2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 96
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    const v2, 0x3fe66666

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeceleration:F

    .line 104
    return-void
.end method

.method private changeFlingingState(Z)V
    .locals 2
    .parameter "newFlingState"

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFlinging:Z

    if-eq p1, v0, :cond_0

    .line 486
    iput-boolean p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFlinging:Z

    .line 487
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFlingStateListener:Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;

    if-eqz v0, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFlingStateListener:Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0, p1}, Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;->onFlingStateChanged(ZZ)V

    .line 491
    :cond_0
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeMFinishedTo(Z)V
    .locals 1
    .parameter "finished"

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinished:Z

    if-eq p1, v0, :cond_0

    .line 495
    iput-boolean p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinished:Z

    .line 496
    iget-boolean v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ScrollWheelScroller;->changeFlingingState(Z)V

    .line 502
    :cond_0
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 414
    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 415
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 416
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 422
    :goto_0
    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 423
    return p1

    .line 418
    :cond_0
    const v0, 0x3ebc5ab2

    .line 419
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 420
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    .line 431
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 435
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 198
    iget-boolean v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v7, v2

    .line 204
    .local v7, timePassed:I
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    if-ge v7, v0, :cond_4

    .line 205
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v10

    .line 259
    goto :goto_0

    .line 207
    :pswitch_0
    int-to-float v0, v7

    iget v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDurationReciprocal:F

    mul-float v9, v0, v2

    .line 208
    .local v9, x:F
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    int-to-float v2, v7

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaX:F

    iget v5, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    .line 210
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    int-to-float v2, v7

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaY:F

    iget v5, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/EasingFunction;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    goto :goto_1

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 214
    invoke-direct {p0, v9}, Lcom/android/camera/widget/ScrollWheelScroller;->viscousFluid(F)F

    move-result v9

    .line 218
    :goto_2
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaX:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    .line 219
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaY:F

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    .line 220
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 222
    invoke-direct {p0, v10}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    goto :goto_1

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    goto :goto_2

    .line 229
    .end local v9           #x:F
    :pswitch_1
    int-to-float v0, v7

    const/high16 v1, 0x447a

    div-float v8, v0, v1

    .line 230
    .local v8, timePassedSeconds:F
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mVelocity:F

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeceleration:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v8

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 233
    .local v6, distance:F
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffX:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    .line 235
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    .line 236
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    .line 238
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    .line 240
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    .line 241
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    .line 243
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 245
    invoke-direct {p0, v10}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    goto/16 :goto_1

    .line 253
    .end local v6           #distance:F
    .end local v8           #timePassedSeconds:F
    :cond_4
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    .line 254
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    .line 256
    invoke-direct {p0, v10}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    goto/16 :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheelScroller;->timePassed()I

    move-result v0

    .line 445
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    .line 446
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDurationReciprocal:F

    .line 448
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 450
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 371
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMode:I

    .line 373
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/widget/ScrollWheelScroller;->changeFlingingState(Z)V

    .line 374
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 378
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 380
    .local v1, velocity:F
    iput v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mVelocity:F

    .line 381
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    .line 383
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartTime:J

    .line 384
    iput p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    .line 385
    iput p2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    .line 387
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffX:F

    .line 388
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffY:F

    .line 390
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 392
    .local v0, totalDistance:I
    iput p5, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMinX:I

    .line 393
    iput p6, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMaxX:I

    .line 394
    iput p7, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMinY:I

    .line 395
    iput p8, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMaxY:I

    .line 398
    int-to-float v2, v0

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    .line 400
    iget v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    .line 401
    iget v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    .line 403
    int-to-float v2, v0

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    .line 405
    iget v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    .line 406
    iget v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    iget v3, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    .line 407
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    .line 408
    return-void

    .line 387
    .end local v0           #totalDistance:I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 388
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 125
    return-void
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinished:Z

    return v0
.end method

.method public isFlinging()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFlinging:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 457
    iput p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    .line 458
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaX:F

    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 462
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 465
    iput p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    .line 466
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaY:F

    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 471
    return-void
.end method

.method public setScrollerStateListener(Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFlingStateListener:Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;

    .line 481
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 277
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/ScrollWheelScroller;->startScroll(IIIII)V

    .line 278
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 294
    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMode:I

    .line 296
    invoke-direct {p0, v0}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 298
    iput p5, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    .line 299
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartTime:J

    .line 300
    iput p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    .line 301
    iput p2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    .line 302
    add-int v0, p1, p3

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    .line 303
    add-int v0, p2, p4

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    .line 304
    int-to-float v0, p3

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaX:F

    .line 305
    int-to-float v0, p4

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaY:F

    .line 306
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDurationReciprocal:F

    .line 308
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidScale:F

    .line 310
    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidNormalize:F

    .line 311
    invoke-direct {p0, v2}, Lcom/android/camera/widget/ScrollWheelScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidNormalize:F

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    .line 313
    return-void
.end method

.method public startScroll(IIIIILcom/htc/widget/EasingFunction;)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"
    .parameter "function"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 329
    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mMode:I

    .line 330
    iput-object p6, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mEasingFunction:Lcom/htc/widget/EasingFunction;

    .line 332
    invoke-direct {p0, v0}, Lcom/android/camera/widget/ScrollWheelScroller;->changeMFinishedTo(Z)V

    .line 334
    iput p5, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    .line 335
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartTime:J

    .line 336
    iput p1, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartX:I

    .line 337
    iput p2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartY:I

    .line 338
    add-int v0, p1, p3

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalX:I

    .line 339
    add-int v0, p2, p4

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mFinalY:I

    .line 340
    int-to-float v0, p3

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaX:F

    .line 341
    int-to-float v0, p4

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDeltaY:F

    .line 342
    iget v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mDurationReciprocal:F

    .line 344
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidScale:F

    .line 346
    iput v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidNormalize:F

    .line 347
    invoke-direct {p0, v2}, Lcom/android/camera/widget/ScrollWheelScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mViscousFluidNormalize:F

    .line 348
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 453
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/widget/ScrollWheelScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
