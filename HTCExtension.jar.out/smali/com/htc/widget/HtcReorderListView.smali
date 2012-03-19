.class public Lcom/htc/widget/HtcReorderListView;
.super Lcom/htc/widget/HtcListView;
.source "HtcReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;,
        Lcom/htc/widget/HtcReorderListView$TangentInterpolator;,
        Lcom/htc/widget/HtcReorderListView$WaveRunnable;,
        Lcom/htc/widget/HtcReorderListView$DragWindowMove;,
        Lcom/htc/widget/HtcReorderListView$MovingItem;,
        Lcom/htc/widget/HtcReorderListView$RemoveListener;,
        Lcom/htc/widget/HtcReorderListView$DropListener;,
        Lcom/htc/widget/HtcReorderListView$DragListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final DRAG_MODE_DRAG:I = 0x1

.field protected static final DRAG_MODE_REST:I = 0x0

.field protected static final DRAG_MODE_SCROLL:I = 0x3

.field protected static final DRAG_MODE_WAVE:I = 0x2

.field protected static final INVALID_DRAG_POS:I = -0x2

.field private static final TAG:Ljava/lang/String; = "HtcReorderListView"


# instance fields
.field private isLowerAlpha:Z

.field private mAllItemFocusable:Z

.field private mBoundPaint:Landroid/graphics/Paint;

.field mCacheItemPadding:[I

.field mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragItemCache:Landroid/widget/ImageView;

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field protected mDragMode:I

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragViewWithFrame:Landroid/view/View;

.field private mDraggerId:I

.field private mDraggerId2:I

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mFrameCornerHeight:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLastDragPos:I

.field mLastY:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mUpperBound:I

.field private mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v9, 0x20804c6

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput v8, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 76
    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 87
    const/4 v6, 0x4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    .line 100
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 106
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    .line 108
    const/16 v6, 0x32

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    .line 109
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    .line 114
    const v6, 0x202001a

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    .line 115
    const v6, 0x202001b

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId2:I

    .line 821
    iput-boolean v8, p0, Lcom/htc/widget/HtcReorderListView;->isLowerAlpha:Z

    .line 120
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 122
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x2090093

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    .line 123
    iget-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const v7, 0x2020146

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 124
    .local v1, frame:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 125
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v7, "common_rearrange_frame"

    invoke-static {v6, v7, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, frameRes:I
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, rearrangeFrameHeight:I
    const/4 v5, 0x0

    .line 134
    .local v5, rearrangeFrameOffset:I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20804c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205017d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 140
    :goto_0
    if-eqz v5, :cond_0

    .line 141
    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    .line 142
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v7, v4, v5

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    .end local v2           #frameRes:I
    .end local v4           #rearrangeFrameHeight:I
    .end local v5           #rearrangeFrameOffset:I
    :cond_0
    return-void

    .line 136
    .restart local v2       #frameRes:I
    .restart local v4       #rearrangeFrameHeight:I
    .restart local v5       #rearrangeFrameOffset:I
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcReorderListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcReorderListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcReorderListView;->moveDragView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcReorderListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcReorderListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcReorderListView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcReorderListView;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcReorderListView;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcReorderListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/widget/HtcReorderListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcReorderListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    return v0
.end method

.method private adjustScrollBounds()V
    .locals 3

    .prologue
    .line 306
    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    div-int/lit8 v0, v1, 0xa

    .line 307
    .local v0, range:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    .line 308
    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    .line 309
    return-void
.end method

.method private dragView(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 876
    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 877
    .local v0, adjY:I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 878
    .local v1, location:[I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    .line 879
    const/4 v3, 0x1

    aget v3, v1, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 881
    .local v2, topBound:I
    if-ge v0, v2, :cond_0

    .line 882
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 888
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    return-void

    .line 883
    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v0, v3, :cond_1

    .line 884
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 886
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private expandItem()V
    .locals 17

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v12, :cond_5

    .line 378
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v12, v13, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 380
    .local v2, drag:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 381
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 389
    .end local v2           #drag:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-lt v12, v13, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 396
    .local v3, expand:I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    add-int/lit8 v9, v12, -0x1

    .line 398
    .local v9, shrink:I
    :goto_1
    if-ne v9, v3, :cond_4

    .line 471
    .end local v3           #expand:I
    .end local v9           #shrink:I
    :cond_1
    :goto_2
    return-void

    .line 392
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v3, v12, -0x1

    .restart local v3       #expand:I
    goto :goto_0

    .line 396
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    goto :goto_1

    .line 407
    .restart local v9       #shrink:I
    :cond_4
    new-instance v7, Lcom/htc/widget/HtcReorderListView$MovingItem;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9, v3}, Lcom/htc/widget/HtcReorderListView$MovingItem;-><init>(Lcom/htc/widget/HtcReorderListView;II)V

    .line 408
    .local v7, item:Lcom/htc/widget/HtcReorderListView$MovingItem;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v12, v12, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 413
    .end local v3           #expand:I
    .end local v7           #item:Lcom/htc/widget/HtcReorderListView$MovingItem;
    .end local v9           #shrink:I
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int v1, v12, v13

    .line 414
    .local v1, childnum:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_6

    .line 415
    add-int/lit8 v1, v1, -0x1

    .line 422
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 424
    .local v4, firstDrag:Landroid/view/View;
    const/4 v6, 0x0

    .line 425
    .local v6, i:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 426
    .local v11, vv:Landroid/view/View;
    if-eqz v11, :cond_1

    .line 430
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 431
    .local v5, height:I
    const/4 v10, 0x0

    .line 433
    .local v10, visibility:I
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 435
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcReorderListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_9

    .line 437
    :cond_7
    const/4 v10, 0x4

    .line 456
    :cond_8
    :goto_4
    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_c

    const/4 v12, -0x1

    if-ne v1, v12, :cond_c

    .line 457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 459
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    .line 465
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 466
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 467
    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 424
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 443
    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    .line 445
    :cond_a
    if-ne v6, v1, :cond_b

    .line 446
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-gt v12, v13, :cond_8

    .line 447
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

    .line 449
    :cond_b
    if-nez v6, :cond_8

    const/4 v12, -0x1

    if-ne v1, v12, :cond_8

    .line 450
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_8

    .line 451
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

    .line 461
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5
.end method

.method private forceDrop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 956
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 957
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 958
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 959
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 962
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    .line 965
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    .line 967
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 968
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 969
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 970
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 972
    :cond_1
    return-void
.end method

.method private getItemForPosition(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 264
    move v0, p2

    .line 265
    .local v0, adjY:I
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    if-lt v2, p2, :cond_2

    .line 266
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 274
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v1

    .line 276
    .local v1, pos:I
    if-ltz v1, :cond_3

    if-ltz v0, :cond_3

    .line 277
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v1, v2, :cond_1

    .line 278
    add-int/lit8 v1, v1, 0x1

    .line 299
    :cond_1
    :goto_1
    return v1

    .line 267
    .end local v1           #pos:I
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v2, :cond_0

    .line 271
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    goto :goto_0

    .line 280
    .restart local v1       #pos:I
    :cond_3
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_1

    .line 284
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private moveDragView(I)V
    .locals 3
    .parameter "deltaY"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 896
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 242
    if-gez p2, :cond_0

    .line 245
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v4

    .line 246
    .local v4, pos:I
    if-ltz v4, :cond_0

    .line 260
    .end local v4           #pos:I
    :goto_0
    return v4

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 252
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v1

    .line 253
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 254
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 256
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v4, v5, v3

    goto :goto_0

    .line 253
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 260
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private scrollList(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, speed:I
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p2, v4, :cond_3

    .line 753
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 755
    .local v1, threshold:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 756
    if-le p2, v1, :cond_2

    const/16 v0, 0x18

    .line 771
    .end local v1           #threshold:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 773
    const/16 v3, 0x1e

    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    .line 774
    const/4 v3, 0x1

    .line 776
    :cond_1
    return v3

    .line 756
    .restart local v1       #threshold:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 758
    .end local v1           #threshold:I
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p2, v4, :cond_0

    .line 760
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p2, v4, :cond_4

    const/16 v0, -0x18

    .line 761
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    .line 762
    .local v2, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 767
    const/4 v0, 0x0

    goto :goto_0

    .line 760
    .end local v2           #top:I
    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 831
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 833
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 834
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 835
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 836
    .local v0, listLoc:[I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    .line 837
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    aget v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 838
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 839
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 840
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 841
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 846
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 847
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x2030096

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 849
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const v2, 0x2020145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    .line 850
    iget-boolean v1, p0, Lcom/htc/widget/HtcReorderListView;->isLowerAlpha:Z

    if-eqz v1, :cond_3

    .line 851
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 852
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const v2, -0x51000001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 859
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 863
    iput-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 867
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 868
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_2

    .line 869
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 871
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    return-void

    .line 854
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 855
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const v2, -0x19000001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 835
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 900
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 905
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 910
    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 912
    :cond_2
    return-void
.end method

.method private stopMoving()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1127
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 1130
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    .line 1134
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    .line 1136
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 1137
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 1138
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 1139
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 1144
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 12
    .parameter "deletion"

    .prologue
    const/4 v11, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 320
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 321
    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v2

    .line 324
    .local v2, position:I
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 325
    .local v5, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcReorderListView;->setSelectionFromTop(II)V

    .line 330
    .end local v2           #position:I
    .end local v5           #y:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->layoutChildren()V

    .line 331
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 337
    :goto_1
    if-nez v3, :cond_1

    .line 338
    return-void

    .line 341
    :cond_1
    instance-of v6, v3, Lcom/htc/widget/HtcListItem;

    if-eqz v6, :cond_3

    move-object v4, v3

    .line 342
    check-cast v4, Lcom/htc/widget/HtcListItem;

    .line 343
    .local v4, viewTarget:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v6, v7, :cond_2

    .line 344
    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 345
    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 358
    .end local v4           #viewTarget:Lcom/htc/widget/HtcListItem;
    :cond_2
    :goto_2
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 349
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v6, v7, :cond_4

    .line 350
    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    :cond_4
    iget-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 332
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public OnMyPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 953
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 477
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v7

    .line 478
    .local v7, childcount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 479
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 480
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_1

    .line 478
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 483
    .local v8, height:I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    if-eqz v9, :cond_0

    .line 487
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 492
    .end local v6           #child:Landroid/view/View;
    .end local v8           #height:I
    :cond_2
    return-void
.end method

.method drawBounds(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, -0x1

    const v8, -0xffff01

    const/4 v1, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getWidth()I

    move-result v7

    .line 559
    .local v7, w:I
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 562
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v6, v0, 0x2

    .line 564
    .local v6, bound:I
    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 566
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 569
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    .line 571
    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 572
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    if-nez v0, :cond_0

    .line 1315
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method isRunningExitAnim()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveItems(III)V
    .locals 17
    .parameter "expandIndex"
    .parameter "shrinkIndex"
    .parameter "delta"

    .prologue
    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v6

    .line 1016
    .local v6, firstVisible:I
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    const/4 v11, 0x0

    .line 1017
    .local v11, shrinkI:I
    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    const/4 v5, 0x0

    .line 1019
    .local v5, expandI:I
    :goto_1
    sub-int v13, v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1020
    .local v10, shrink:Landroid/view/View;
    sub-int v13, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1025
    .local v4, expand:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 1026
    instance-of v13, v10, Lcom/htc/widget/HtcListItem;

    if-eqz v13, :cond_6

    move-object v13, v10

    .line 1027
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    sub-int v13, v13, p3

    if-ltz v13, :cond_4

    move-object v13, v10

    .line 1028
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    sub-int v3, v13, p3

    .local v3, bottomSpace:I
    move-object v13, v10

    .line 1029
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1040
    .end local v3           #bottomSpace:I
    :goto_2
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    move-object v13, v10

    .line 1041
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v12

    .local v12, topSpace:I
    move-object v13, v10

    .line 1042
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    .line 1043
    .restart local v3       #bottomSpace:I
    sub-int v12, v12, p3

    .line 1044
    add-int v3, v3, p3

    move-object v13, v10

    .line 1045
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1046
    check-cast v10, Lcom/htc/widget/HtcListItem;

    .end local v10           #shrink:Landroid/view/View;
    invoke-virtual {v10, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1070
    .end local v3           #bottomSpace:I
    .end local v12           #topSpace:I
    :cond_0
    :goto_3
    if-eqz v4, :cond_1

    .line 1071
    instance-of v13, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v13, :cond_b

    move-object v13, v4

    .line 1072
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v13, v13, p3

    if-gtz v13, :cond_8

    move-object v13, v4

    .line 1073
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v12, v13, p3

    .restart local v12       #topSpace:I
    move-object v13, v4

    .line 1074
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1085
    .end local v12           #topSpace:I
    :goto_4
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    move-object v13, v4

    .line 1086
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v12

    .restart local v12       #topSpace:I
    move-object v13, v4

    .line 1087
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    .line 1088
    .restart local v3       #bottomSpace:I
    add-int v12, v12, p3

    .line 1089
    sub-int v3, v3, p3

    move-object v13, v4

    .line 1090
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1091
    check-cast v4, Lcom/htc/widget/HtcListItem;

    .end local v4           #expand:Landroid/view/View;
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1124
    .end local v3           #bottomSpace:I
    .end local v12           #topSpace:I
    :cond_1
    :goto_5
    return-void

    .end local v5           #expandI:I
    .end local v11           #shrinkI:I
    :cond_2
    move/from16 v11, p2

    .line 1016
    goto/16 :goto_0

    .restart local v11       #shrinkI:I
    :cond_3
    move/from16 v5, p1

    .line 1017
    goto/16 :goto_1

    .restart local v4       #expand:Landroid/view/View;
    .restart local v5       #expandI:I
    .restart local v10       #shrink:Landroid/view/View;
    :cond_4
    move-object v13, v10

    .line 1031
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    if-lez v13, :cond_5

    move-object v13, v10

    .line 1032
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    sub-int v14, v13, p3

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v12, v14, v13

    .restart local v12       #topSpace:I
    move-object v13, v10

    .line 1033
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    move-object v13, v10

    .line 1034
    check-cast v13, Lcom/htc/widget/HtcListItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_2

    .end local v12           #topSpace:I
    :cond_5
    move-object v13, v10

    .line 1036
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    sub-int v2, v13, p3

    .local v2, TopSpace:I
    move-object v13, v10

    .line 1037
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_2

    .line 1050
    .end local v2           #TopSpace:I
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1051
    .local v9, params:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1052
    .local v7, height:I
    if-gez v7, :cond_7

    .line 1053
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1055
    :cond_7
    sub-int v7, v7, p3

    .line 1056
    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1058
    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    .line 1062
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1063
    .local v8, paddingTop:I
    sub-int v8, v8, p3

    .line 1064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v10, v13, v8, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .end local v7           #height:I
    .end local v8           #paddingTop:I
    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #shrink:Landroid/view/View;
    :cond_8
    move-object v13, v4

    .line 1076
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    if-gez v13, :cond_9

    move-object v13, v4

    .line 1077
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v14, v13, p3

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v3, v14, v13

    .restart local v3       #bottomSpace:I
    move-object v13, v4

    .line 1078
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    move-object v13, v4

    .line 1079
    check-cast v13, Lcom/htc/widget/HtcListItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_4

    .end local v3           #bottomSpace:I
    :cond_9
    move-object v13, v4

    .line 1081
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v3, v13, p3

    .restart local v3       #bottomSpace:I
    move-object v13, v4

    .line 1082
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_4

    .line 1092
    .end local v3           #bottomSpace:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 1093
    const/16 v13, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5

    .line 1097
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1098
    .restart local v9       #params:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1099
    .restart local v7       #height:I
    if-gez v7, :cond_c

    .line 1100
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1102
    :cond_c
    add-int v7, v7, p3

    .line 1103
    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1105
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    .line 1109
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1110
    .restart local v8       #paddingTop:I
    add-int v8, v8, p3

    .line 1111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v4, v13, v8, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 1114
    .end local v8           #paddingTop:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 1120
    const/16 v13, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 495
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 496
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v1

    .line 497
    .local v1, childcount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v3

    .line 498
    .local v3, first:I
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 553
    :cond_0
    return-void

    .line 501
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 502
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 503
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_3

    .line 501
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 506
    .local v4, height:I
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 507
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 508
    const/4 v9, 0x0

    .line 510
    .local v9, r2:Landroid/graphics/Rect;
    const/4 v10, 0x1

    if-eq v4, v10, :cond_2

    .line 514
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    sub-int/2addr v10, v3

    if-ne v5, v10, :cond_6

    .line 515
    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 542
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/high16 v11, -0x100

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 544
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 545
    .local v7, path:Landroid/graphics/Path;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 546
    if-eqz v9, :cond_5

    .line 547
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 549
    :cond_5
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 516
    .end local v7           #path:Landroid/graphics/Path;
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-le v4, v10, :cond_4

    .line 517
    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 518
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v10, :cond_9

    if-nez v5, :cond_9

    .line 520
    instance-of v10, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v10, :cond_7

    move-object v10, v0

    .line 521
    check-cast v10, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v6

    .line 524
    .local v6, paddingTop:I
    :goto_3
    if-eqz v6, :cond_8

    .line 525
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getTopBorderHeight()I

    move-result v10

    add-int/2addr v10, v6

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 528
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v2, v4, v10

    .line 529
    .local v2, extra:I
    if-le v2, v6, :cond_4

    .line 530
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #r2:Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 531
    .restart local v9       #r2:Landroid/graphics/Rect;
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 532
    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v2, v6

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 523
    .end local v2           #extra:I
    .end local v6           #paddingTop:I
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .restart local v6       #paddingTop:I
    goto :goto_3

    .line 535
    :cond_8
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 538
    .end local v6           #paddingTop:I
    :cond_9
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->top:I

    goto :goto_2
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    .line 944
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    .line 946
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onFocusLost()V

    .line 947
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v10, :cond_0

    .line 153
    :cond_0
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v10, :cond_2

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 230
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_3
    :goto_0
    return v8

    .line 157
    :pswitch_0
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v10

    if-nez v10, :cond_3

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 167
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 168
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->pointToPosition(II)I

    move-result v5

    .line 169
    .local v5, itemnum:I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 173
    .local v4, item:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointX:I

    .line 174
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v7, v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mXOffset:I

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v7

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    .line 177
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId2:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, dragger:Landroid/view/View;
    if-nez v1, :cond_4

    .line 180
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_3

    .line 184
    :cond_4
    new-array v2, v12, [I

    fill-array-data v2, :array_0

    .line 185
    .local v2, draggerLoc:[I
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 192
    const/16 v3, 0xa

    .line 193
    .local v3, extand:I
    aget v10, v2, v8

    sub-int/2addr v10, v3

    if-le v6, v10, :cond_2

    aget v10, v2, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    if-ge v6, v10, :cond_2

    .line 195
    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 196
    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 197
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 198
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 200
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    .line 202
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    .line 204
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 205
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    .line 206
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    aput v11, v10, v8

    .line 207
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    aput v10, v8, v9

    .line 208
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    aput v10, v8, v12

    .line 209
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    aput v11, v8, v10

    .line 211
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->adjustScrollBounds()V

    .line 212
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 213
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 216
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/htc/widget/HtcReorderListView;->startDragging(Landroid/graphics/Bitmap;I)V

    move v8, v9

    .line 224
    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 184
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    .line 744
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    .line 745
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onSizeChanged(IIII)V

    .line 746
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x3

    const/4 v8, 0x1

    .line 576
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 577
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 580
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v9, :cond_12

    :cond_1
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-eqz v9, :cond_12

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 582
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 690
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v8

    .line 585
    .restart local v0       #action:I
    :pswitch_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_3

    .line 586
    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    .line 589
    :cond_3
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 590
    .local v1, destLoc:[I
    const/4 v2, 0x0

    .line 591
    .local v2, destView:Landroid/view/View;
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_4

    .line 592
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 597
    :goto_1
    if-eqz v2, :cond_6

    .line 598
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 600
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_5

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 602
    .local v4, distOffset:I
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aget v10, v1, v8

    add-int/2addr v10, v4

    sub-int v3, v9, v10

    .line 603
    .local v3, dist:I
    const-string v9, "HtcReorderListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "distance for dragging window = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDragPos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " destLoc.y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v1, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " window y = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    new-instance v10, Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    invoke-direct {v10, p0, v3}, Lcom/htc/widget/HtcReorderListView$DragWindowMove;-><init>(Lcom/htc/widget/HtcReorderListView;I)V

    iput-object v10, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    .line 607
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 594
    .end local v3           #dist:I
    .end local v4           #distOffset:I
    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 600
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v4, v9, v10

    goto :goto_2

    .line 609
    :cond_6
    const-string v9, "HtcReorderListView"

    const-string v10, "onTouchEvent UP/CANCEL destView = null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    .line 615
    .end local v1           #destLoc:[I
    .end local v2           #destView:Landroid/view/View;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    .line 621
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 622
    const-string v9, "HtcReorderListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouchEvent.MOVE still running exit anim mDragMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 626
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 627
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 629
    .local v7, y:I
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v11, :cond_8

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 633
    :cond_8
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_9

    .line 634
    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    .line 637
    :cond_9
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-lt v9, v8, :cond_2

    .line 639
    invoke-direct {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->dragView(II)V

    .line 641
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-direct {p0, v9, v7}, Lcom/htc/widget/HtcReorderListView;->getItemForPosition(II)I

    move-result v5

    .line 643
    .local v5, itemnum:I
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v7, v9, :cond_a

    const/4 v9, -0x1

    if-ne v5, v9, :cond_a

    .line 644
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v5

    .line 649
    :cond_a
    if-ltz v5, :cond_e

    .line 650
    invoke-virtual {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->updateStateOrScroll(II)V

    .line 652
    if-eqz v0, :cond_b

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-eq v5, v9, :cond_11

    .line 653
    :cond_b
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-eqz v9, :cond_c

    .line 654
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v5}, Lcom/htc/widget/HtcReorderListView$DragListener;->drag(II)V

    .line 658
    :cond_c
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ge v9, v11, :cond_f

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 659
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-gez v9, :cond_d

    .line 663
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 665
    :cond_d
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 666
    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 667
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->expandItem()V

    .line 684
    :cond_e
    :goto_3
    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    goto/16 :goto_0

    .line 668
    :cond_f
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ge v9, v11, :cond_10

    .line 670
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v9, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 671
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 672
    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    .line 676
    :cond_10
    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    .line 678
    :cond_11
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ne v5, v9, :cond_e

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v9, v11, :cond_e

    .line 680
    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    .line 690
    .end local v0           #action:I
    .end local v5           #itemnum:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1308
    new-instance v0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;-><init>(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    .line 1309
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1310
    return-void
.end method

.method public setAllItemFocusable(Z)V
    .locals 0
    .parameter "itemFocusable"

    .prologue
    .line 1303
    iput-boolean p1, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    .line 1304
    return-void
.end method

.method public setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 915
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 916
    return-void
.end method

.method public setDraggerId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1321
    iput p1, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    .line 1322
    return-void
.end method

.method public setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 919
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 920
    return-void
.end method

.method public setLowerAlpha(Z)V
    .locals 0
    .parameter "enableLowerAlpha"

    .prologue
    .line 828
    iput-boolean p1, p0, Lcom/htc/widget/HtcReorderListView;->isLowerAlpha:Z

    .line 829
    return-void
.end method

.method public setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V
    .locals 0
    .parameter "l"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 924
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 925
    return-void
.end method

.method shouldScroll(I)Z
    .locals 6
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, speed:I
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p1, v4, :cond_3

    .line 714
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 716
    .local v1, threshold:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 717
    if-le p1, v1, :cond_2

    const/16 v0, 0x18

    .line 732
    .end local v1           #threshold:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 733
    const-string v3, "HtcReorderListView"

    const-string v4, "should scroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v3, 0x1

    .line 736
    :cond_1
    return v3

    .line 717
    .restart local v1       #threshold:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 719
    .end local v1           #threshold:I
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p1, v4, :cond_0

    .line 721
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_4

    const/16 v0, -0x18

    .line 722
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    .line 723
    .local v2, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 728
    const/4 v0, 0x0

    goto :goto_0

    .line 721
    .end local v2           #top:I
    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method unExpand()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 780
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v0

    .line 781
    .local v0, first:I
    const/4 v1, 0x0

    .line 782
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 783
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 784
    return-void

    .line 786
    :cond_0
    instance-of v5, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 787
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 788
    .local v3, targetView:Lcom/htc/widget/HtcListItem;
    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_2

    .line 789
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v5

    if-eq v5, v11, :cond_1

    .line 790
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    rsub-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 791
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 792
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 781
    .end local v3           #targetView:Lcom/htc/widget/HtcListItem;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .restart local v3       #targetView:Lcom/htc/widget/HtcListItem;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_1

    .line 795
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 796
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 797
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 800
    .end local v3           #targetView:Lcom/htc/widget/HtcListItem;
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 801
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_5

    .line 802
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v11, :cond_4

    .line 803
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 804
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 807
    :cond_5
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_4

    .line 809
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 810
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method updateStateOrScroll(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 695
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 702
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_2

    .line 709
    :goto_1
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_0

    .line 704
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcReorderListView;->scrollList(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1

    .line 707
    :cond_3
    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1
.end method
