.class public Lcom/android/camera/widget/ModifiedScrollView;
.super Landroid/widget/FrameLayout;
.source "ModifiedScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field protected mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field protected mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/ModifiedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 136
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/ModifiedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 83
    iput-boolean v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 97
    iput-boolean v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    .line 123
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    .line 141
    invoke-direct {p0}, Lcom/android/camera/widget/ModifiedScrollView;->initScrollView()V

    .line 143
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setFillViewport(Z)V

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1315
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1331
    :cond_0
    const/4 p1, 0x0

    .line 1341
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1333
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1339
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 909
    if-eqz p1, :cond_0

    .line 910
    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/widget/ModifiedScrollView;->smoothScrollBy(II)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 649
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/camera/widget/ModifiedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 650
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 659
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 661
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 662
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 663
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 664
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 665
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 667
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 673
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 676
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 678
    move-object v1, v5

    .line 679
    move v3, v8

    .line 662
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 681
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 686
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 687
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 693
    move-object v1, v5

    goto :goto_2

    .line 681
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 696
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 698
    move-object v1, v5

    .line 699
    const/4 v3, 0x1

    goto :goto_2

    .line 700
    :cond_7
    if-eqz v7, :cond_0

    .line 705
    move-object v1, v5

    goto :goto_2

    .line 712
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 619
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 620
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 622
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 628
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 585
    const/4 v1, 0x0

    .line 586
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 587
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 588
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 591
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 388
    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    .line 389
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 395
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 191
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    .line 192
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setFocusable(Z)V

    .line 193
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setDescendantFocusability(I)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->setWillNotDraw(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 196
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTouchSlop:I

    .line 197
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMinimumVelocity:I

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMaximumVelocity:I

    .line 199
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1255
    if-ne p1, p2, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return v1

    .line 1259
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1260
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/android/camera/widget/ModifiedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 897
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 899
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 570
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 571
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 575
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 576
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    .line 577
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    .line 578
    iget-object v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 582
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 575
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 796
    const/4 v3, 0x1

    .line 798
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v4

    .line 799
    .local v4, height:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v1

    .line 800
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 801
    .local v0, containerBottom:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_2

    move v6, v7

    .line 803
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/android/camera/widget/ModifiedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 804
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 805
    move-object v5, p0

    .line 808
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 809
    const/4 v3, 0x0

    .line 815
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 816
    iput-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    .line 817
    iput-boolean v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    .line 820
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 801
    goto :goto_0

    .line 811
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 812
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    goto :goto_1

    .line 811
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1057
    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1059
    iget-object v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1061
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1062
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    .line 1064
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1076
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1077
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1078
    if-eqz p2, :cond_2

    .line 1079
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    .line 1084
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1076
    goto :goto_0

    .line 1081
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/widget/ModifiedScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 208
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 217
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 833
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 835
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 837
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 839
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/android/camera/widget/ModifiedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 840
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 841
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 842
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 843
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    .line 844
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 868
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ModifiedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 875
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getDescendantFocusability()I

    move-result v2

    .line 876
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->setDescendantFocusability(I)V

    .line 877
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->requestFocus()Z

    .line 878
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->setDescendantFocusability(I)V

    .line 880
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 847
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 849
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 850
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v6

    .line 862
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 865
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    goto :goto_0

    .line 851
    :cond_5
    if-ne p1, v10, :cond_4

    .line 852
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 853
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 855
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v9

    add-int v5, v8, v9

    .line 857
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 858
    sub-int v6, v1, v5

    goto :goto_1

    .line 865
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 244
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 246
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1009
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1026
    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    .line 1027
    .local v1, oldX:I
    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    .line 1028
    .local v2, oldY:I
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1029
    .local v3, x:I
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1031
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1032
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1033
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result v3

    .line 1034
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result v4

    .line 1035
    if-ne v3, v1, :cond_0

    if-eq v4, v2, :cond_1

    .line 1036
    :cond_0
    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    .line 1037
    iput v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    .line 1038
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/camera/widget/ModifiedScrollView;->onScrollChanged(IIII)V

    .line 1041
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->awakenScrollBars()Z

    .line 1044
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->postInvalidate()V

    .line 1046
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1096
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1150
    :cond_0
    :goto_0
    return v6

    .line 1098
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    .line 1099
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v5

    .line 1100
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1102
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1105
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1106
    add-int/2addr v5, v2

    .line 1110
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1111
    sub-int/2addr v4, v2

    .line 1114
    :cond_3
    const/4 v6, 0x0

    .line 1116
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1121
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1123
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1130
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1131
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1132
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1134
    goto :goto_0

    .line 1126
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1134
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1139
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1141
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1148
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1144
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 975
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v1

    .line 965
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int v0, v2, v3

    .line 966
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    .line 970
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .restart local v0       #contentHeight:I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/16 v2, 0x82

    const/16 v1, 0x21

    .line 333
    iget-object v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 354
    const/4 v0, 0x1

    .line 355
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 358
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->fullScroll(I)Z

    move-result v0

    .line 363
    goto :goto_0

    .line 365
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->fullScroll(I)Z

    move-result v0

    .line 370
    goto :goto_0

    .line 372
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 378
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityY"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1271
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1272
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int v10, v0, v1

    .line 1273
    .local v10, height:I
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 1275
    .local v9, bottom:I
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    sub-int v4, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1278
    if-lez p1, :cond_3

    move v11, v13

    .line 1280
    .local v11, movingDown:Z
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1282
    .local v12, newFocused:Landroid/view/View;
    if-nez v12, :cond_0

    .line 1283
    move-object v12, p0

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    if-eqz v11, :cond_4

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    iput-boolean v13, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    .line 1289
    iput-boolean v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    .line 1292
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->invalidate()V

    .line 1294
    .end local v9           #bottom:I
    .end local v10           #height:I
    .end local v11           #movingDown:Z
    .end local v12           #newFocused:Landroid/view/View;
    :cond_2
    return-void

    .restart local v9       #bottom:I
    .restart local v10       #height:I
    :cond_3
    move v11, v3

    .line 1278
    goto :goto_0

    .line 1286
    .restart local v11       #movingDown:Z
    .restart local v12       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 764
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 765
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v2

    .line 767
    .local v2, height:I
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 768
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 770
    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    .line 772
    .local v0, count:I
    if-lez v0, :cond_0

    .line 773
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 774
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 775
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 779
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/ModifiedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 764
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 168
    const/4 v3, 0x0

    .line 178
    :goto_0
    return v3

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 172
    .local v1, length:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 173
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 174
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 175
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 178
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 186
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mBottom:I

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 158
    .local v0, length:I
    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 159
    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 162
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 980
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 985
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 988
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 990
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 991
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 998
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1001
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1004
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1005
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 412
    .local v0, action:I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 481
    :goto_0
    return v5

    .line 416
    :cond_0
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 481
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 427
    :pswitch_1
    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    .line 428
    .local v1, activePointerId:I
    if-eq v1, v8, :cond_1

    .line 433
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 434
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 435
    .local v3, y:F
    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 436
    .local v4, yDiff:I
    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTouchSlop:I

    if-le v4, v6, :cond_1

    .line 437
    iput-boolean v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    .line 438
    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    goto :goto_1

    .line 444
    .end local v1           #activePointerId:I
    .end local v2           #pointerIndex:I
    .end local v3           #y:F
    .end local v4           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 445
    .restart local v3       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    float-to-int v8, v3

    invoke-direct {p0, v7, v8}, Lcom/android/camera/widget/ModifiedScrollView;->inChild(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 446
    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 454
    :cond_2
    iput v3, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    .line 455
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    .line 462
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    iput-boolean v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    .line 469
    .end local v3           #y:F
    :pswitch_3
    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    .line 470
    iput v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    goto :goto_1

    .line 473
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1220
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    .line 1223
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/camera/widget/ModifiedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ModifiedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1226
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1229
    iget v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->scrollTo(II)V

    .line 1230
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 291
    iget-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 296
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 301
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getMeasuredHeight()I

    move-result v3

    .line 303
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 306
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/android/camera/widget/ModifiedScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 308
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 309
    iget v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 310
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 313
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1180
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1181
    const/16 p1, 0x82

    .line 1186
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1191
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1199
    :cond_1
    :goto_2
    return v1

    .line 1182
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1183
    const/16 p1, 0x21

    goto :goto_0

    .line 1186
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1195
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/widget/ModifiedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1199
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1236
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1237
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/android/camera/widget/ModifiedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1244
    iget-object v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1245
    iget-object v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1246
    iget-object v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ModifiedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1247
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v7

    if-eqz v7, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v6

    .line 493
    :cond_1
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 494
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 496
    :cond_2
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 500
    .local v0, action:I
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 564
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    .line 502
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 503
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    float-to-int v8, v5

    invoke-direct {p0, v7, v8}, Lcom/android/camera/widget/ModifiedScrollView;->inChild(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 511
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 512
    iget-object v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 516
    :cond_4
    iput v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    .line 517
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    goto :goto_1

    .line 521
    .end local v5           #y:F
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    .line 523
    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 524
    .local v1, activePointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 525
    .restart local v5       #y:F
    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    sub-float/2addr v7, v5

    float-to-int v2, v7

    .line 526
    .local v2, deltaY:I
    iput v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastMotionY:F

    .line 528
    invoke-virtual {p0, v6, v2}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    goto :goto_1

    .line 532
    .end local v1           #activePointerIndex:I
    .end local v2           #deltaY:I
    .end local v5           #y:F
    :pswitch_3
    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    .line 533
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 534
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 535
    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    invoke-virtual {v4, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v3, v7

    .line 537
    .local v3, initialVelocity:I
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mMinimumVelocity:I

    if-le v7, v8, :cond_5

    .line 538
    neg-int v7, v3

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/ModifiedScrollView;->fling(I)V

    .line 541
    :cond_5
    iput v9, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    .line 542
    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    .line 544
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 545
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 546
    iput-object v10, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 551
    .end local v3           #initialVelocity:I
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    iget-boolean v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 552
    iput v9, p0, Lcom/android/camera/widget/ModifiedScrollView;->mActivePointerId:I

    .line 553
    iput-boolean v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsBeingDragged:Z

    .line 554
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 555
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 556
    iput-object v10, p0, Lcom/android/camera/widget/ModifiedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 561
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ModifiedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 728
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 729
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v2

    .line 731
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 732
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 733
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v0

    .line 734
    .local v0, count:I
    if-lez v0, :cond_0

    .line 735
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 736
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 737
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 746
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 748
    iget-object v4, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/ModifiedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 728
    goto :goto_0

    .line 741
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 742
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 743
    iget-object v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1156
    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1157
    invoke-direct {p0, p2}, Lcom/android/camera/widget/ModifiedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1163
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1164
    return-void

    .line 1160
    :cond_1
    iput-object p2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1209
    invoke-direct {p0, p2, p3}, Lcom/android/camera/widget/ModifiedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mIsLayoutDirty:Z

    .line 1215
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1216
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1305
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1306
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result p1

    .line 1307
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/camera/widget/ModifiedScrollView;->clamp(III)I

    move-result p2

    .line 1308
    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1309
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1312
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 267
    iput-boolean p1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mFillViewport:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->requestLayout()V

    .line 270
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mSmoothScrollingEnabled:Z

    .line 285
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 925
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 946
    :goto_0
    return-void

    .line 929
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 930
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 932
    .local v3, height:I
    invoke-virtual {p0, v10}, Lcom/android/camera/widget/ModifiedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 933
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 934
    .local v4, maxY:I
    iget v5, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    .line 935
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 937
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 938
    invoke-virtual {p0}, Lcom/android/camera/widget/ModifiedScrollView;->invalidate()V

    .line 945
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mLastScroll:J

    goto :goto_0

    .line 940
    :cond_1
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 941
    iget-object v6, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 943
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/widget/ModifiedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 955
    iget v0, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/camera/widget/ModifiedScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/ModifiedScrollView;->smoothScrollBy(II)V

    .line 956
    return-void
.end method
