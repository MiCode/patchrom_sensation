.class public Lcom/android/camera/widget/ScrollWheel;
.super Lcom/android/camera/widget/HorizontalEasingScrollView;
.source "ScrollWheel.java"

# interfaces
.implements Lcom/android/camera/widget/ScrollInterface;
.implements Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field public static final DPAD_STEPS_NUM:I = 0x5

#the value of this static final field might be set in the static constructor
.field public static final MARKER_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScrollWheel"

.field public static final WHEEL_BOUNCING_PADDING:I

.field public static final WHEEL_PADDING:I

.field public static final WHEEL_VSIBLE_AREA_PADDING:I


# instance fields
.field private bInverse:Z

.field private mCurPos:I

.field private mCurScrollState:I

.field private mDPadMovement:I

.field protected mMax:I

.field protected mMin:I

.field private mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

.field protected mProgToLengthRatio:D

.field private mWheel:Lcom/android/camera/widget/ShadowedWheel;

.field protected mWheelLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    sput v0, Lcom/android/camera/widget/ScrollWheel;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 39
    sget v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    sput v0, Lcom/android/camera/widget/ScrollWheel;->MARKER_HEIGHT:I

    .line 40
    sget v0, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    sput v0, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    .line 41
    sget v0, Lcom/android/camera/widget/ScrollWheel;->WHEEL_VSIBLE_AREA_PADDING:I

    sget v1, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/widget/ScrollWheel;->WHEEL_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v0, 0x64

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/widget/HorizontalEasingScrollView;-><init>(Landroid/content/Context;)V

    .line 27
    iput v2, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    .line 28
    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    .line 32
    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mWheelLength:I

    .line 35
    iput-boolean v2, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    .line 37
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/camera/widget/ScrollWheel;->mProgToLengthRatio:D

    .line 44
    iput v2, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mDPadMovement:I

    .line 47
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mCurScrollState:I

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ScrollWheel;->setupMemebers(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v0, 0x64

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/HorizontalEasingScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v2, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    .line 28
    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    .line 32
    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mWheelLength:I

    .line 35
    iput-boolean v2, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    .line 37
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/camera/widget/ScrollWheel;->mProgToLengthRatio:D

    .line 44
    iput v2, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mDPadMovement:I

    .line 47
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mCurScrollState:I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ScrollWheel;->setupMemebers(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v0, 0x64

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/widget/HorizontalEasingScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v2, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    .line 28
    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    .line 32
    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mWheelLength:I

    .line 35
    iput-boolean v2, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    .line 37
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/camera/widget/ScrollWheel;->mProgToLengthRatio:D

    .line 44
    iput v2, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mDPadMovement:I

    .line 47
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mCurScrollState:I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ScrollWheel;->setupMemebers(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private computePosition()I
    .locals 5

    .prologue
    .line 238
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    sget v2, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/android/camera/widget/ScrollWheel;->mProgToLengthRatio:D

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 239
    .local v0, result:I
    iget-boolean v1, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    if-nez v1, :cond_0

    .line 240
    iget v1, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    sub-int v0, v1, v0

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    iget v1, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private ensureBouncingBoundaries(I)V
    .locals 4
    .parameter "lastState"

    .prologue
    .line 334
    const/16 v1, 0xc9

    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    .line 337
    .local v0, finalX:I
    :goto_0
    sget v1, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    if-ge v0, v1, :cond_2

    .line 338
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    sget v2, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ScrollWheel;->smoothScrollTo(II)V

    .line 342
    :cond_0
    :goto_1
    return-void

    .line 334
    .end local v0           #finalX:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v1}, Lcom/android/camera/widget/ScrollWheelScroller;->getFinalX()I

    move-result v0

    goto :goto_0

    .line 339
    .restart local v0       #finalX:I
    :cond_2
    sget v1, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    iget v2, p0, Lcom/android/camera/widget/ScrollWheel;->mWheelLength:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 340
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    sget v2, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    iget v3, p0, Lcom/android/camera/widget/ScrollWheel;->mWheelLength:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ScrollWheel;->smoothScrollTo(II)V

    goto :goto_1
.end method

.method private setupMemebers(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 65
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ShadowedWheel;

    iput-object v1, p0, Lcom/android/camera/widget/ScrollWheel;->mWheel:Lcom/android/camera/widget/ShadowedWheel;

    .line 67
    iget-object v1, p0, Lcom/android/camera/widget/ScrollWheel;->mWheel:Lcom/android/camera/widget/ShadowedWheel;

    const v2, 0x7f0a000b

    const v3, 0x7f0201a7

    invoke-static {p1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ShadowedWheel;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p0, p0}, Lcom/android/camera/widget/ScrollWheel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/widget/ScrollWheel;->mWheel:Lcom/android/camera/widget/ShadowedWheel;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ScrollWheel;->addView(Landroid/view/View;)V

    .line 76
    sget v1, Lcom/android/camera/widget/ScrollWheel;->WHEEL_PADDING:I

    sget v2, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    sget v3, Lcom/android/camera/widget/ScrollWheel;->WHEEL_PADDING:I

    sget v4, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/widget/ScrollWheel;->setPadding(IIII)V

    .line 78
    invoke-virtual {p0, p0}, Lcom/android/camera/widget/ScrollWheel;->setOnScrollListener(Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected convertFromRangeToWheelLength(I)I
    .locals 8
    .parameter "pos"

    .prologue
    const-wide/high16 v6, 0x3fe0

    .line 224
    iget v2, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    if-ge v2, p1, :cond_0

    .line 225
    :goto_0
    iget-wide v2, p0, Lcom/android/camera/widget/ScrollWheel;->mProgToLengthRatio:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v0, p0, Lcom/android/camera/widget/ScrollWheel;->mProgToLengthRatio:D

    .line 226
    .local v0, ratio:D
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    if-nez v2, :cond_2

    .line 227
    iget v2, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    sub-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v2, v0

    add-double/2addr v2, v6

    double-to-int v2, v2

    sget v3, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    add-int/2addr v2, v3

    .line 229
    :goto_2
    return v2

    .line 224
    .end local v0           #ratio:D
    :cond_0
    iget p1, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    goto :goto_0

    .line 225
    :cond_1
    const-wide/high16 v0, 0x3ff0

    goto :goto_1

    .line 229
    .restart local v0       #ratio:D
    :cond_2
    iget v2, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    sub-int v2, p1, v2

    int-to-double v2, v2

    div-double/2addr v2, v0

    add-double/2addr v2, v6

    double-to-int v2, v2

    sget v3, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    add-int/2addr v2, v3

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 187
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 188
    .local v0, matrix:[F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 189
    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 191
    .local v1, tmpX:I
    iget-object v2, p0, Lcom/android/camera/widget/ScrollWheel;->mWheel:Lcom/android/camera/widget/ShadowedWheel;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ShadowedWheel;->setParentRectXInCanvas(I)V

    .line 192
    invoke-super {p0, p1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 193
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ScrollWheel;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x11

    const/4 v4, 0x1

    .line 267
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->canScroll()Z

    move-result v6

    if-nez v6, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 271
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {v6, p0, v0, v7}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 273
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->requestFocus(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 315
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v4

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v4, v5

    .line 273
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v4, v5

    .line 277
    goto :goto_0

    .line 280
    :cond_3
    const/4 v3, -0x1

    .line 281
    .local v3, sign:I
    iget-boolean v5, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    if-nez v5, :cond_4

    .line 282
    const/4 v3, 0x1

    .line 284
    :cond_4
    const/4 v1, 0x0

    .line 285
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_5
    :goto_1
    move v4, v1

    .line 315
    goto :goto_0

    .line 289
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 290
    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    iget v6, p0, Lcom/android/camera/widget/ScrollWheel;->mDPadMovement:I

    mul-int/2addr v6, v3

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5, v4}, Lcom/android/camera/widget/ScrollWheel;->scrollToPosition(IZ)Z

    move-result v1

    .line 293
    if-nez v1, :cond_5

    .line 294
    iget-boolean v5, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    :goto_2
    invoke-virtual {p0, v5, v4}, Lcom/android/camera/widget/ScrollWheel;->scrollToPosition(IZ)Z

    move-result v1

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    goto :goto_2

    .line 297
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ScrollWheel;->fullScroll(I)Z

    move-result v1

    .line 299
    goto :goto_1

    .line 301
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-nez v5, :cond_9

    .line 302
    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    iget v6, p0, Lcom/android/camera/widget/ScrollWheel;->mDPadMovement:I

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    invoke-virtual {p0, v5, v4}, Lcom/android/camera/widget/ScrollWheel;->scrollToPosition(IZ)Z

    move-result v1

    .line 305
    if-nez v1, :cond_5

    .line 306
    iget-boolean v5, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    :goto_3
    invoke-virtual {p0, v5, v4}, Lcom/android/camera/widget/ScrollWheel;->scrollToPosition(IZ)Z

    move-result v1

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    goto :goto_3

    .line 309
    :cond_9
    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ScrollWheel;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInverse()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    return v0
.end method

.method public increasePosition(I)V
    .locals 1
    .parameter "increase"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ScrollWheel;->setPosition(I)Z

    .line 166
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 212
    invoke-direct {p0}, Lcom/android/camera/widget/ScrollWheel;->computePosition()I

    move-result v0

    .line 213
    .local v0, newPos:I
    iget v2, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    if-eq v0, v2, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ScrollWheel;->silientlySetPosition(I)Z

    move-result v1

    .line 215
    .local v1, set:Z
    iget-object v2, p0, Lcom/android/camera/widget/ScrollWheel;->mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/camera/widget/ScrollWheel;->mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

    invoke-interface {v2, p0, v0}, Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;->onProgressChanged(Landroid/view/View;I)V

    .line 219
    .end local v1           #set:Z
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 174
    invoke-super/range {p0 .. p5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->onLayout(ZIIII)V

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/widget/ScrollWheel;->MARKER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/widget/ScrollWheel;->WHEEL_BOUNCING_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mWheelLength:I

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->updateProgToLengthRatio()V

    .line 182
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3
    .parameter "scrollState"

    .prologue
    const/16 v2, 0xc8

    .line 320
    iget v1, p0, Lcom/android/camera/widget/ScrollWheel;->mCurScrollState:I

    if-ne v1, p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mCurScrollState:I

    .line 324
    .local v0, lastState:I
    iput p1, p0, Lcom/android/camera/widget/ScrollWheel;->mCurScrollState:I

    .line 325
    if-eq v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 327
    invoke-direct {p0, v0}, Lcom/android/camera/widget/ScrollWheel;->ensureBouncingBoundaries(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ScrollWheel;->setFocusableInTouchMode(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->requestFocus()Z

    .line 350
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 352
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/ScrollWheel;->setFocusable(Z)V

    .line 353
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ScrollWheel;->setFocusable(Z)V

    .line 355
    :cond_2
    return v3
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ScrollWheel;->mWheel:Lcom/android/camera/widget/ShadowedWheel;

    .line 252
    return-void
.end method

.method public scrollToPosition(IZ)Z
    .locals 1
    .parameter "pos"
    .parameter "smoothScroll"

    .prologue
    .line 117
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/widget/ScrollWheel;->scrollToPosition(IZI)Z

    move-result v0

    return v0
.end method

.method public scrollToPosition(IZI)Z
    .locals 2
    .parameter "pos"
    .parameter "smoothScroll"
    .parameter "pixScrollSpeed"

    .prologue
    .line 121
    iget v1, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    if-ge p1, v1, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ScrollWheel;->convertFromRangeToWheelLength(I)I

    move-result v0

    .line 129
    .local v0, scrollX:I
    if-eqz p2, :cond_3

    .line 130
    if-lez p3, :cond_2

    .line 131
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/camera/widget/ScrollWheel;->smoothScrollTo(III)V

    .line 140
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/ScrollWheel;->smoothScrollTo(II)V

    goto :goto_1

    .line 136
    :cond_3
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/ScrollWheel;->scrollTo(II)V

    goto :goto_1
.end method

.method public setInverse(Z)V
    .locals 0
    .parameter "inverse"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/android/camera/widget/ScrollWheel;->bInverse:Z

    .line 368
    return-void
.end method

.method public setMinMax(II)Z
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 83
    if-le p1, p2, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 85
    :cond_0
    iput p1, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    .line 86
    iput p2, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    .line 87
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    iget v1, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    if-ne v0, v1, :cond_1

    .line 89
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    .line 92
    :cond_1
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/camera/widget/ScrollWheel;->mDPadMovement:I

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->updateProgToLengthRatio()V

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/widget/ScrollWheel;->invalidate()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnPositionChangeListner(Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/widget/ScrollWheel;->mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

    .line 170
    return-void
.end method

.method public setPosition(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/ScrollWheel;->scrollToPosition(IZ)Z

    move-result v0

    return v0
.end method

.method public setRotatePadding(I)V
    .locals 1
    .parameter "pandingLen"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheel;->mWheel:Lcom/android/camera/widget/ShadowedWheel;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/camera/widget/ScrollWheel;->mWheel:Lcom/android/camera/widget/ShadowedWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ShadowedWheel;->setRotatePadding(I)V

    .line 362
    :cond_0
    return-void
.end method

.method public silientlySetPosition(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    if-ge p1, v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 148
    :cond_1
    iput p1, p0, Lcom/android/camera/widget/ScrollWheel;->mCurPos:I

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateProgToLengthRatio()V
    .locals 4

    .prologue
    .line 247
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/android/camera/widget/ScrollWheel;->mWheelLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/widget/ScrollWheel;->mProgToLengthRatio:D

    .line 248
    return-void
.end method
