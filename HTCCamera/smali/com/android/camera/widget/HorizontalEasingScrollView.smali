.class public Lcom/android/camera/widget/HorizontalEasingScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalEasingScrollView.java"

# interfaces
.implements Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field public static final PIX_SCROLL_FAST:I = 0x7

.field public static final PIX_SCROLL_MEDIUM:I = 0xf

.field public static final PIX_SCROLL_SLOW:I = 0x32

.field public static final SCROLL_STATE_DRAGGING:I = 0xc9

.field public static final SCROLL_STATE_FLINGING:I = 0xca

.field public static final SCROLL_STATE_IDLE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "HorizontalEasingScrollView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mDefaultPixScrollSpeed:I

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

.field private mPhysics:Lcom/htc/widget/EaseOutCubic;

.field private mScrollState:I

.field private mScrollViewMovedFocus:Z

.field protected mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 143
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 78
    new-instance v1, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v1}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    .line 79
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    .line 80
    iput-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    .line 84
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollState:I

    .line 102
    iput-boolean v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    .line 109
    iput-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 116
    iput-boolean v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    .line 148
    invoke-direct {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->initScrollView()V

    .line 150
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setFillViewport(Z)V

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    return-void
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1272
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1273
    :cond_0
    const/4 p1, 0x0

    .line 1278
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1275
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1276
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 853
    if-eqz p1, :cond_0

    .line 854
    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(II)V

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 596
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 597
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 606
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 608
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 609
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 610
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 611
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 612
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 614
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 620
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 623
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 625
    move-object v1, v5

    .line 626
    move v3, v7

    .line 609
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 628
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 632
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 633
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 639
    move-object v1, v5

    goto :goto_2

    .line 628
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 642
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 644
    move-object v1, v5

    .line 645
    const/4 v3, 0x1

    goto :goto_2

    .line 646
    :cond_7
    if-eqz v6, :cond_0

    .line 651
    move-object v1, v5

    goto :goto_2

    .line 658
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 567
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 568
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 570
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 576
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 198
    new-instance v1, Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/widget/ScrollWheelScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setFocusable(Z)V

    .line 200
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setDescendantFocusability(I)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setWillNotDraw(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 203
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTouchSlop:I

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMinimumVelocity:I

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMaximumVelocity:I

    .line 206
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 832
    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

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

    .line 1207
    if-ne p1, p2, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return v1

    .line 1211
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1212
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 841
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 843
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 741
    const/4 v4, 0x1

    .line 743
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v6

    .line 744
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v0

    .line 745
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 746
    .local v1, containerRight:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_2

    move v3, v7

    .line 748
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 749
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 750
    move-object v5, p0

    .line 753
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 754
    const/4 v4, 0x0

    .line 760
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 761
    iput-boolean v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    .line 762
    iput-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    .line 765
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 746
    goto :goto_0

    .line 756
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 757
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    goto :goto_1

    .line 756
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1010
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1012
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1014
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1015
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    .line 1017
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1028
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1029
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1030
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1031
    if-eqz p2, :cond_2

    .line 1032
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    .line 1037
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1029
    goto :goto_0

    .line 1034
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private updateScrollState(Ljava/lang/String;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 1321
    const/16 v0, 0xc8

    .line 1322
    .local v0, newState:I
    iget-boolean v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_2

    .line 1323
    const/16 v0, 0xc9

    .line 1331
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollState:I

    if-eq v0, v1, :cond_1

    .line 1333
    iput v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollState:I

    .line 1334
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    invoke-interface {v1, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;->onScrollStateChanged(I)V

    .line 1338
    :cond_1
    return-void

    .line 1324
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v1}, Lcom/android/camera/widget/ScrollWheelScroller;->isFlinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    const/16 v0, 0xca

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 224
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 777
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 778
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 780
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 782
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 784
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 785
    iget-object v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 786
    iget-object v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 787
    iget-object v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 788
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    .line 789
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 812
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 819
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getDescendantFocusability()I

    move-result v2

    .line 820
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setDescendantFocusability(I)V

    .line 821
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->requestFocus()Z

    .line 822
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->setDescendantFocusability(I)V

    .line 824
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 792
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 794
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 795
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v6

    .line 806
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 809
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    goto :goto_0

    .line 796
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 798
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 800
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 802
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 803
    sub-int v6, v1, v5

    goto :goto_1

    .line 809
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 253
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 255
    .end local v1           #childWidth:I
    :cond_0
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    .line 928
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 963
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v5}, Lcom/android/camera/widget/ScrollWheelScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 980
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    .line 981
    .local v1, oldX:I
    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    .line 982
    .local v2, oldY:I
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v5}, Lcom/android/camera/widget/ScrollWheelScroller;->getCurrX()I

    move-result v3

    .line 983
    .local v3, x:I
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v5}, Lcom/android/camera/widget/ScrollWheelScroller;->getCurrY()I

    move-result v4

    .line 984
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 985
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 986
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    .line 987
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    .line 992
    .end local v0           #child:Landroid/view/View;
    :goto_0
    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    if-eq v2, v5, :cond_1

    .line 993
    :cond_0
    iget v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->onScrollChanged(IIII)V

    .line 997
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->postInvalidate()V

    .line 999
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    return-void

    .line 989
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_3
    iput v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    .line 990
    iput v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1049
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1103
    :cond_0
    :goto_0
    return v5

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v6

    .line 1052
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v3

    .line 1053
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1055
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1058
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1059
    add-int/2addr v3, v1

    .line 1063
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1064
    sub-int/2addr v4, v1

    .line 1067
    :cond_3
    const/4 v5, 0x0

    .line 1069
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1074
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1076
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1083
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1084
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1085
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1087
    goto :goto_0

    .line 1079
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1087
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1092
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1094
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1101
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1097
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 330
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 331
    const/4 v1, 0x1

    .line 333
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x42

    const/16 v5, 0x11

    .line 345
    iget-object v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 347
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 351
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 353
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 382
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 359
    :cond_2
    const/4 v1, 0x0

    .line 360
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 361
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 382
    goto :goto_0

    .line 363
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 364
    invoke-virtual {p0, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 366
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->fullScroll(I)Z

    move-result v1

    .line 368
    goto :goto_1

    .line 370
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 371
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 373
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->fullScroll(I)Z

    move-result v1

    .line 375
    goto :goto_1

    .line 377
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 361
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityX"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 1223
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1224
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int v12, v0, v1

    .line 1225
    .local v12, width:I
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1227
    .local v11, right:I
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    sub-int v6, v11, v12

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/widget/ScrollWheelScroller;->fling(IIIIIIII)V

    .line 1229
    if-lez p1, :cond_3

    move v9, v13

    .line 1231
    .local v9, movingRight:Z
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1234
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_0

    .line 1235
    move-object v10, p0

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    iput-boolean v13, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    .line 1241
    iput-boolean v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->awakenScrollBars(I)Z

    .line 1245
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->invalidate()V

    .line 1247
    .end local v9           #movingRight:Z
    .end local v10           #newFocused:Landroid/view/View;
    .end local v11           #right:I
    .end local v12           #width:I
    :cond_2
    return-void

    .restart local v11       #right:I
    .restart local v12       #width:I
    :cond_3
    move v9, v4

    .line 1229
    goto :goto_0

    .line 1238
    .restart local v9       #movingRight:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 710
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 711
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    .line 713
    .local v3, width:I
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 714
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 716
    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    .line 718
    .local v0, count:I
    if-lez v0, :cond_0

    .line 719
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 720
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 721
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 725
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 710
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 169
    :goto_0
    return v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 165
    .local v0, length:I
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 166
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 169
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 193
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mRight:I

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 175
    const/4 v3, 0x0

    .line 185
    :goto_0
    return v3

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 179
    .local v0, length:I
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 180
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 181
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 182
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 185
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 934
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 939
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 942
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 944
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 945
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
    .line 950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 952
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 955
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 958
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 959
    return-void
.end method

.method public onFlingStateChanged(ZZ)V
    .locals 2
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollerStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    .line 1284
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
    .line 1173
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    .line 1176
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1182
    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollTo(II)V

    .line 1183
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 298
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 300
    iget-boolean v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 305
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 310
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getMeasuredWidth()I

    move-result v4

    .line 312
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 315
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 317
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 318
    iget v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 319
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 321
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1133
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1134
    const/16 p1, 0x42

    .line 1139
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1144
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1152
    :cond_1
    :goto_2
    return v1

    .line 1135
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1136
    const/16 p1, 0x11

    goto :goto_0

    .line 1139
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1148
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1189
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1190
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    iget v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mRight:I

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1195
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1196
    iget-object v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1197
    iget-object v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1198
    iget-object v3, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1199
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v10

    if-eqz v10, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v8

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->canScroll()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 466
    iget-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 467
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 469
    :cond_2
    iget-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 472
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 474
    .local v7, x:F
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v8, v9

    .line 540
    goto :goto_0

    .line 477
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    .line 478
    .local v4, isDragged:Z
    iget-object v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v10}, Lcom/android/camera/widget/ScrollWheelScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    move v8, v9

    :cond_4
    iput-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    .line 479
    iget-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-eq v4, v8, :cond_5

    .line 480
    const-string v8, "onInterceptTouchEvent action DOWN"

    invoke-direct {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    .line 487
    :cond_5
    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v8}, Lcom/android/camera/widget/ScrollWheelScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    .line 488
    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v8}, Lcom/android/camera/widget/ScrollWheelScroller;->abortAnimation()V

    .line 492
    :cond_6
    iput v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastMotionX:F

    goto :goto_1

    .line 496
    .end local v4           #isDragged:Z
    :pswitch_1
    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastMotionX:F

    sub-float/2addr v10, v7

    float-to-int v2, v10

    .line 497
    .local v2, deltaX:I
    iput v7, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastMotionX:F

    .line 499
    if-eqz v2, :cond_7

    .line 500
    iget-boolean v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-nez v10, :cond_7

    .line 501
    iput-boolean v9, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    .line 502
    const-string v10, "onInterceptTouchEvent action MOVE"

    invoke-direct {p0, v10}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    .line 506
    :cond_7
    if-gez v2, :cond_8

    .line 507
    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-lez v10, :cond_3

    .line 508
    invoke-virtual {p0, v2, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    goto :goto_1

    .line 510
    :cond_8
    if-lez v2, :cond_3

    .line 511
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int v5, v10, v11

    .line 512
    .local v5, rightEdge:I
    invoke-virtual {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget v11, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    sub-int/2addr v10, v11

    sub-int v1, v10, v5

    .line 513
    .local v1, availableToScroll:I
    if-lez v1, :cond_3

    .line 514
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v10, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollBy(II)V

    goto :goto_1

    .line 521
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v5           #rightEdge:I
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    if-eqz v10, :cond_9

    .line 522
    iput-boolean v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsBeingDragged:Z

    .line 523
    const-string v8, "onInterceptTouchEvent action UP"

    invoke-direct {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->updateScrollState(Ljava/lang/String;)V

    .line 527
    :cond_9
    iget-object v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 528
    .local v6, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v6, v8, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 529
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v3, v8

    .line 531
    .local v3, initialVelocity:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v10, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mMinimumVelocity:I

    if-le v8, v10, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a

    .line 532
    neg-int v8, v3

    invoke-virtual {p0, v8}, Lcom/android/camera/widget/HorizontalEasingScrollView;->fling(I)V

    .line 535
    :cond_a
    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_3

    .line 536
    iget-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 537
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 674
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 675
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v3

    .line 677
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 678
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 679
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v0

    .line 680
    .local v0, count:I
    if-lez v0, :cond_0

    .line 681
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 682
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 683
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 692
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 694
    iget-object v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 674
    goto :goto_0

    .line 687
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 688
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 689
    iget-object v5, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method protected printState(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1341
    packed-switch p1, :pswitch_data_0

    .line 1358
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1343
    :pswitch_0
    const-string v0, " easing IDLE"

    goto :goto_0

    .line 1345
    :pswitch_1
    const-string v0, " easing DRAGGING"

    goto :goto_0

    .line 1347
    :pswitch_2
    const-string v0, " easing FLINGING"

    goto :goto_0

    .line 1341
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1109
    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1110
    invoke-direct {p0, p2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1116
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1117
    return-void

    .line 1113
    :cond_1
    iput-object p2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1159
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

    .line 1162
    invoke-direct {p0, p2, p3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mIsLayoutDirty:Z

    .line 1168
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1169
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v1}, Lcom/android/camera/widget/ScrollWheelScroller;->abortAnimation()V

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1262
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1263
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result p1

    .line 1264
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/camera/widget/HorizontalEasingScrollView;->clamp(III)I

    move-result p2

    .line 1265
    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 1266
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1269
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setDefaultPixScrollSpeed(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 1287
    iput p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    .line 1288
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 276
    iput-boolean p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mFillViewport:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->requestLayout()V

    .line 279
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    if-eqz v0, :cond_0

    .line 1297
    iput-object p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mOnScrollListner:Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;

    .line 1298
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ScrollWheelScroller;->setScrollerStateListener(Lcom/android/camera/widget/ScrollWheelScroller$FlingStateListner;)V

    .line 1300
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mSmoothScrollingEnabled:Z

    .line 294
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 869
    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(III)V

    .line 871
    return-void
.end method

.method public final smoothScrollBy(III)V
    .locals 9
    .parameter "dx"
    .parameter "dy"
    .parameter "pixScrollSpeed"

    .prologue
    .line 882
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastScroll:J

    sub-long v7, v0, v2

    .line 884
    .local v7, duration:J
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->abortAnimation()V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int v5, v3, p3

    iget-object v6, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/widget/ScrollWheelScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    .line 889
    iget-object v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScroller:Lcom/android/camera/widget/ScrollWheelScroller;

    invoke-virtual {v0}, Lcom/android/camera/widget/ScrollWheelScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->awakenScrollBars(I)Z

    .line 890
    invoke-virtual {p0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->invalidate()V

    .line 897
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mLastScroll:J

    .line 898
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 907
    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mDefaultPixScrollSpeed:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollTo(III)V

    .line 908
    return-void
.end method

.method public final smoothScrollTo(III)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "pixScrollSpeed"

    .prologue
    .line 918
    iget v0, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/camera/widget/HorizontalEasingScrollView;->smoothScrollBy(III)V

    .line 919
    return-void
.end method
