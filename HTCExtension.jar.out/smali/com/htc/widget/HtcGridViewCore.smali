.class public Lcom/htc/widget/HtcGridViewCore;
.super Lcom/htc/widget/HtcAbsListView;
.source "HtcGridViewCore.java"


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 46
    iput v1, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    .line 48
    iput v1, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcGridViewCore;->mStretchMode:I

    .line 54
    iput-object v2, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 55
    iput-object v2, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcGridViewCore;->mGravity:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcGridViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v8, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 46
    iput v7, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    .line 48
    iput v7, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    .line 49
    iput v9, p0, Lcom/htc/widget/HtcGridViewCore;->mStretchMode:I

    .line 54
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 55
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 57
    iput v11, p0, Lcom/htc/widget/HtcGridViewCore;->mGravity:I

    .line 59
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 72
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 77
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridViewCore;->setHorizontalSpacing(I)V

    .line 79
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 81
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridViewCore;->setVerticalSpacing(I)V

    .line 83
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 84
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 85
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->setStretchMode(I)V

    .line 88
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 89
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridViewCore;->setColumnWidth(I)V

    .line 93
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 94
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridViewCore;->setNumColumns(I)V

    .line 96
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 97
    if-ltz v3, :cond_2

    .line 98
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->setGravity(I)V

    .line 101
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 707
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 711
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 712
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 715
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 717
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 738
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 739
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 742
    .local v0, offset:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 744
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    .line 1393
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1481
    :goto_0
    return v2

    .line 1397
    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1398
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->layoutChildren()V

    .line 1401
    :cond_1
    const/4 v1, 0x0

    .line 1402
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1404
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 1405
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v4, :cond_2

    .line 1406
    sparse-switch p1, :sswitch_data_0

    .line 1419
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 1466
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 1467
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridViewCore;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1470
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 1471
    goto :goto_0

    .line 1414
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->resurrectSelection()Z

    move v2, v3

    .line 1415
    goto :goto_0

    .line 1421
    :sswitch_1
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridViewCore;->arrowScroll(I)Z

    move-result v1

    .line 1422
    goto :goto_1

    .line 1425
    :sswitch_2
    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridViewCore;->arrowScroll(I)Z

    move-result v1

    .line 1426
    goto :goto_1

    .line 1429
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1430
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1433
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridViewCore;->fullScroll(I)Z

    move-result v1

    .line 1435
    goto :goto_1

    .line 1438
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1439
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1441
    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->fullScroll(I)Z

    move-result v1

    .line 1443
    goto :goto_1

    .line 1447
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 1448
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->keyPressed()V

    :cond_7
    move v2, v3

    .line 1451
    goto :goto_0

    .line 1455
    :sswitch_6
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1456
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1457
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1459
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridViewCore;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1473
    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1475
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1477
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1479
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1406
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1419
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 1473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooLow(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 555
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 557
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 560
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 563
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getTopBoundary()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getTopBorderHeight()I

    move-result v9

    add-int v6, v8, v9

    .line 566
    .local v6, start:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getBottomBorderHeight()I

    move-result v9

    sub-int v0, v8, v9

    .line 570
    .local v0, end:I
    sub-int v7, v2, v6

    .line 571
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 572
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 573
    .local v3, lastBottom:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 577
    .local v5, lastPosition:I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 578
    :cond_0
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 580
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 584
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 585
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 588
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 591
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 595
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_3
    return-void
.end method

.method private determineColumns(I)V
    .locals 7
    .parameter "availableSpace"

    .prologue
    const/4 v6, 0x1

    .line 844
    iget v1, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedHorizontalSpacing:I

    .line 845
    .local v1, requestedHorizontalSpacing:I
    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mStretchMode:I

    .line 846
    .local v3, stretchMode:I
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedColumnWidth:I

    .line 848
    .local v0, requestedColumnWidth:I
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 849
    if-lez v0, :cond_1

    .line 851
    add-int v4, p1, v1

    add-int v5, v0, v1

    div-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 862
    :goto_0
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    if-gtz v4, :cond_0

    .line 863
    iput v6, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 866
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 874
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v5, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 876
    .local v2, spaceLeftOver:I
    packed-switch v3, :pswitch_data_1

    .line 908
    .end local v2           #spaceLeftOver:I
    :goto_1
    return-void

    .line 855
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    goto :goto_0

    .line 859
    :cond_2
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedNumColumns:I

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    goto :goto_0

    .line 869
    :pswitch_0
    iput v0, p0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    .line 870
    iput v1, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    goto :goto_1

    .line 879
    .restart local v2       #spaceLeftOver:I
    :pswitch_1
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    div-int v4, v2, v4

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    .line 880
    iput v1, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    goto :goto_1

    .line 885
    :pswitch_2
    iput v0, p0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    .line 886
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    if-le v4, v6, :cond_3

    .line 887
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    add-int/lit8 v4, v4, -0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    goto :goto_1

    .line 890
    :cond_3
    add-int v4, v1, v2

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    goto :goto_1

    .line 896
    :pswitch_3
    iput v0, p0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    .line 897
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    if-le v4, v6, :cond_4

    .line 898
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    goto :goto_1

    .line 901
    :cond_4
    add-int v4, v1, v2

    iput v4, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    goto :goto_1

    .line 866
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 876
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 218
    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_1

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge p1, v3, :cond_1

    .line 219
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 220
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 221
    move-object v1, v2

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 233
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    return-object v1

    .line 228
    .restart local v2       #temp:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 230
    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    add-int/2addr p1, v3

    .line 231
    goto :goto_0
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 346
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 347
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 349
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 350
    .local v0, invertedPosition:I
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 609
    .local v2, fadingEdgeLength:I
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 610
    .local v9, selectedPosition:I
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 611
    .local v4, numColumns:I
    iget v11, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    .line 614
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 616
    .local v6, rowEnd:I
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 617
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 628
    .local v7, rowStart:I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/htc/widget/HtcGridViewCore;->getTopSelectionPixel(III)I

    move-result v10

    .line 629
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/htc/widget/HtcGridViewCore;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 632
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 634
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 636
    iget-object v5, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 637
    .local v5, referenceView:Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Lcom/htc/widget/HtcGridViewCore;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 638
    invoke-direct {p0, v5, v10, v1}, Lcom/htc/widget/HtcGridViewCore;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 640
    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 641
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-virtual {p0, v12, v13}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    .line 642
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 643
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 651
    :goto_2
    return-object v8

    .line 619
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_0
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 621
    .local v3, invertedSelection:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 622
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_1
    move v12, v7

    .line 632
    goto :goto_1

    .line 645
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 646
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 647
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-virtual {p0, v12, v13}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 336
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 337
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 338
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 341
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 342
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->reconcileSelectedPosition()I

    move-result v10

    .line 357
    .local v10, selectedPosition:I
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 358
    .local v4, numColumns:I
    iget v12, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    .line 361
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 363
    .local v7, rowEnd:I
    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 364
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 372
    .local v8, rowStart:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 373
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/htc/widget/HtcGridViewCore;->getTopSelectionPixel(III)I

    move-result v11

    .line 375
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 376
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 378
    iget-object v6, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 380
    .local v6, referenceView:Landroid/view/View;
    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 381
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 382
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcGridViewCore;->pinToBottom(I)V

    .line 383
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {p0, v13, v14}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    .line 384
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 396
    :goto_2
    return-object v9

    .line 366
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_0
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 368
    .local v3, invertedSelection:I
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 369
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_1
    move v13, v8

    .line 375
    goto :goto_1

    .line 386
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/htc/widget/HtcGridViewCore;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 388
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 389
    .local v5, offset:I
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 390
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {p0, v13, v14}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    .line 391
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcGridViewCore;->pinToTop(I)V

    .line 392
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 393
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    .line 454
    iget v6, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 457
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 459
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 460
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 468
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 471
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 473
    iget-object v7, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 475
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_3

    .line 476
    const/4 v8, 0x0

    .line 509
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 462
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 464
    .local v3, invertedSelection:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 465
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_2
    move v10, v5

    .line 468
    goto :goto_1

    .line 479
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    .line 484
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 485
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 486
    .local v0, above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 487
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 489
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v2

    .line 490
    .local v2, childCount:I
    if-lez v2, :cond_4

    .line 491
    invoke-virtual {p0, v6, v9, v2}, Lcom/htc/widget/HtcGridViewCore;->correctTooHigh(III)V

    .line 504
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 506
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 507
    goto :goto_2

    .line 494
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 495
    .restart local v1       #below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 496
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 498
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v2

    .line 499
    .restart local v2       #childCount:I
    if-lez v2, :cond_4

    .line 500
    invoke-direct {p0, v6, v9, v2}, Lcom/htc/widget/HtcGridViewCore;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 509
    goto :goto_2
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 666
    move v0, p1

    .line 667
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 668
    sub-int/2addr v0, p2

    .line 670
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 683
    move v0, p1

    .line 684
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 685
    add-int/2addr v0, p2

    .line 687
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1655
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v0

    .line 1656
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1661
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 1662
    iget v6, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1663
    .local v3, rowStart:I
    iget v6, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1669
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1684
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1665
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1666
    .restart local v2       #rowEnd:I
    iget v6, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 1673
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 1682
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 1673
    goto :goto_1

    .line 1676
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 1679
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 1682
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 1669
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1211
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1214
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1217
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcGridViewCore;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1229
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 1224
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcGridViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1227
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcGridViewCore;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1229
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 237
    iget v8, p0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    .line 238
    .local v8, columnWidth:I
    iget v10, p0, Lcom/htc/widget/HtcGridViewCore;->mHorizontalSpacing:I

    .line 241
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    .line 244
    .local v4, nextLeft:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 245
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 255
    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 257
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->shouldShowSelector()Z

    move-result v9

    .line 258
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 259
    .local v11, inClick:Z
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 261
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 262
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 264
    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    .line 267
    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 268
    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcGridViewCore;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 270
    add-int/2addr v4, v8

    .line 271
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    .line 272
    add-int/2addr v4, v10

    .line 275
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 276
    :cond_2
    move-object v14, v7

    .line 262
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 248
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 250
    sub-int v0, v12, p1

    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    if-ge v0, v2, :cond_0

    .line 251
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    .line 264
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 267
    .restart local v5       #selected:Z
    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    .line 280
    .end local v5           #selected:Z
    :cond_8
    iput-object v7, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 282
    if-eqz v14, :cond_9

    .line 283
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 286
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 761
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 762
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 763
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 767
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 769
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 770
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 772
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 784
    .local v14, rowStart:I
    :goto_0
    sub-int v12, v14, v9

    .line 786
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/htc/widget/HtcGridViewCore;->getTopSelectionPixel(III)I

    move-result v17

    .line 787
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/htc/widget/HtcGridViewCore;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 791
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 796
    if-lez v12, :cond_3

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 804
    .local v8, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 805
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 807
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/widget/HtcGridViewCore;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 830
    .end local v8           #oldBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 831
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 833
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 840
    :goto_4
    return-object v15

    .line 774
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 776
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 777
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 779
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 781
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 801
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8       #oldBottom:I
    :cond_2
    move/from16 v19, v14

    .line 804
    goto/16 :goto_2

    .line 808
    .end local v8           #oldBottom:I
    :cond_3
    if-gez v12, :cond_6

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 815
    .local v10, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 816
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .line 818
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/widget/HtcGridViewCore;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 812
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10       #oldTop:I
    :cond_5
    move/from16 v19, v14

    .line 815
    goto :goto_6

    .line 823
    .end local v10           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 826
    .restart local v10       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 827
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 823
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridViewCore;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10       #oldTop:I
    :cond_8
    move/from16 v19, v14

    .line 826
    goto :goto_8

    .line 835
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 837
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v1

    .line 411
    .local v1, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 412
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 413
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 414
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 415
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 418
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 400
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 401
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 402
    .local v1, top:I
    sub-int v0, p1, v1

    .line 403
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 404
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 407
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 22
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1250
    if-eqz p6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v12, 0x1

    .line 1251
    .local v12, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v12, v0, :cond_6

    const/16 v17, 0x1

    .line 1252
    .local v17, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 1253
    .local v13, mode:I
    if-lez v13, :cond_7

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/4 v11, 0x1

    .line 1255
    .local v11, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_8

    const/16 v16, 0x1

    .line 1257
    .local v16, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_9

    :cond_0
    const/4 v14, 0x1

    .line 1261
    .local v14, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 1262
    .local v15, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1263
    new-instance v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v15           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 1266
    .restart local v15       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 1268
    if-eqz p7, :cond_a

    iget-boolean v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 1269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v15}, Lcom/htc/widget/HtcGridViewCore;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    :goto_5
    if-eqz v17, :cond_2

    .line 1276
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setSelected(Z)V

    .line 1277
    if-eqz v12, :cond_2

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->requestFocus()Z

    .line 1282
    :cond_2
    if-eqz v16, :cond_3

    .line 1283
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1286
    :cond_3
    if-eqz v14, :cond_b

    .line 1287
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1290
    .local v5, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1292
    .local v9, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5}, Landroid/view/View;->measure(II)V

    .line 1297
    .end local v5           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1298
    .local v18, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1301
    .local v10, h:I
    if-eqz p4, :cond_c

    move/from16 v8, p3

    .line 1303
    .local v8, childTop:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mGravity:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x7

    packed-switch v19, :pswitch_data_0

    .line 1314
    :pswitch_0
    move/from16 v6, p5

    .line 1318
    .local v6, childLeft:I
    :goto_8
    if-eqz v14, :cond_d

    .line 1319
    add-int v7, v6, v18

    .line 1320
    .local v7, childRight:I
    add-int v4, v8, v10

    .line 1321
    .local v4, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1327
    .end local v4           #childBottom:I
    .end local v7           #childRight:I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1328
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1330
    :cond_4
    return-void

    .line 1250
    .end local v6           #childLeft:I
    .end local v8           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v12           #isSelected:Z
    .end local v13           #mode:I
    .end local v14           #needToMeasure:Z
    .end local v15           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v16           #updateChildPressed:Z
    .end local v17           #updateChildSelected:Z
    .end local v18           #w:I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1251
    .restart local v12       #isSelected:Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1253
    .restart local v13       #mode:I
    .restart local v17       #updateChildSelected:Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1255
    .restart local v11       #isPressed:Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1257
    .restart local v16       #updateChildPressed:Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1271
    .restart local v14       #needToMeasure:Z
    .restart local v15       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_a
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 1272
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/htc/widget/HtcGridViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1294
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcGridViewCore;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_6

    .line 1301
    .restart local v10       #h:I
    .restart local v18       #w:I
    :cond_c
    sub-int v8, p3, v10

    goto :goto_7

    .line 1305
    .restart local v8       #childTop:I
    :pswitch_1
    move/from16 v6, p5

    .line 1306
    .restart local v6       #childLeft:I
    goto :goto_8

    .line 1308
    .end local v6           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v18

    div-int/lit8 v19, v19, 0x2

    add-int v6, p5, v19

    .line 1309
    .restart local v6       #childLeft:I
    goto :goto_8

    .line 1311
    .end local v6           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    move/from16 v19, v0

    add-int v19, v19, p5

    sub-int v6, v19, v18

    .line 1312
    .restart local v6       #childLeft:I
    goto :goto_8

    .line 1323
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1324
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_9

    .line 1303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v1

    .line 1790
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 1794
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 1797
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1798
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 1799
    .local v2, delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 1802
    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 1804
    :cond_0
    if-gez v2, :cond_1

    .line 1806
    const/4 v2, 0x0

    .line 1825
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1826
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 1829
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 1810
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1811
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 1813
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 1816
    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 1819
    :cond_4
    if-lez v2, :cond_1

    .line 1821
    const/4 v2, 0x0

    goto :goto_0
.end method

.method arrowScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1548
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1549
    .local v4, selectedPosition:I
    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 1554
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1556
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1557
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1558
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1565
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1596
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1597
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->playSoundEffect(I)V

    .line 1598
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->invokeOnItemScrollListener()V

    .line 1601
    :cond_1
    if-eqz v2, :cond_2

    .line 1602
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->awakenScrollBars()Z

    .line 1605
    :cond_2
    return v2

    .line 1560
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1561
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1562
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1567
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1568
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1569
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->setSelectionInt(I)V

    .line 1570
    const/4 v2, 0x1

    goto :goto_1

    .line 1574
    :sswitch_1
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1575
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1576
    add-int v6, v4, v3

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->setSelectionInt(I)V

    .line 1577
    const/4 v2, 0x1

    goto :goto_1

    .line 1581
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1582
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1583
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->setSelectionInt(I)V

    .line 1584
    const/4 v2, 0x1

    goto :goto_1

    .line 1588
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1589
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1590
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->setSelectionInt(I)V

    .line 1591
    const/4 v2, 0x1

    goto :goto_1

    .line 1565
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 991
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 994
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 995
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 996
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 999
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1000
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1001
    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1002
    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1004
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1005
    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1006
    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1013
    :goto_0
    return-void

    .line 1008
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1010
    .local v1, invertedIndex:I
    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1011
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1833
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v1

    .line 1834
    .local v1, count:I
    if-lez v1, :cond_2

    .line 1835
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 1836
    .local v4, numColumns:I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 1838
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 1840
    .local v2, extent:I
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1841
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1842
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1843
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1844
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1847
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1848
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1849
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1850
    if-lez v3, :cond_1

    .line 1851
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1856
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1861
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 1862
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1863
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1864
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1865
    .local v0, height:I
    if-lez v0, :cond_0

    .line 1866
    iget v1, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 1867
    .local v1, numColumns:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    div-int v5, v7, v1

    .line 1868
    .local v5, whichRow:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v2, v7, v1

    .line 1869
    .local v2, rowCount:I
    mul-int/lit8 v7, v5, 0x64

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1873
    .end local v0           #height:I
    .end local v1           #numColumns:I
    .end local v2           #rowCount:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #whichRow:I
    :cond_0
    return v6
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 1879
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 1880
    .local v0, numColumns:I
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 1881
    .local v1, rowCount:I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method protected correctTooHigh(III)V
    .locals 9
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 515
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 516
    .local v6, lastPosition:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 518
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 521
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 523
    .local v4, lastBottom:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getBottomBoundary()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getBottomBorderHeight()I

    move-result v8

    sub-int v1, v7, v8

    .line 527
    .local v1, end:I
    sub-int v0, v1, v4

    .line 529
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 530
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 534
    .local v3, firstTop:I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 535
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 537
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 541
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewCore;->offsetChildrenTopAndBottom(I)V

    .line 542
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 545
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    .line 548
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    .line 552
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method fillGap(Z)V
    .locals 7
    .parameter "down"

    .prologue
    .line 174
    iget v1, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 175
    .local v1, numColumns:I
    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    .line 177
    .local v4, verticalSpacing:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v0

    .line 179
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 180
    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v3, v5, v4

    .line 182
    .local v3, startOffset:I
    :goto_0
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v2, v5, v0

    .line 183
    .local v2, position:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    .line 184
    add-int/lit8 v5, v1, -0x1

    add-int/2addr v2, v5

    .line 186
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcGridViewCore;->fillDown(II)Landroid/view/View;

    .line 187
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/htc/widget/HtcGridViewCore;->correctTooHigh(III)V

    .line 200
    :goto_1
    return-void

    .line 180
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getListPaddingTop()I

    move-result v3

    goto :goto_0

    .line 189
    :cond_2
    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v3, v5, v4

    .line 191
    .restart local v3       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 192
    .restart local v2       #position:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    .line 193
    sub-int/2addr v2, v1

    .line 197
    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    .line 198
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/htc/widget/HtcGridViewCore;->correctTooLow(III)V

    goto :goto_1

    .line 189
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getListPaddingBottom()I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_2

    .line 195
    .restart local v2       #position:I
    .restart local v3       #startOffset:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, selectedView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 304
    .local v0, end:I
    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 306
    invoke-direct {p0, p1, p2, v5}, Lcom/htc/widget/HtcGridViewCore;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 307
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 308
    move-object v1, v2

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 320
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    .line 321
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 324
    :cond_2
    return-object v1

    .line 313
    .restart local v2       #temp:Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcGridViewCore;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 315
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 317
    iget v3, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 318
    goto :goto_0
.end method

.method protected findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v0

    .line 423
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 425
    iget v2, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 426
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 427
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 428
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 429
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 440
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 427
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 433
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 434
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 435
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 433
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 440
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1519
    const/4 v0, 0x0

    .line 1520
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1521
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1522
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridViewCore;->setSelectionInt(I)V

    .line 1523
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->invokeOnItemScrollListener()V

    .line 1524
    const/4 v0, 0x1

    .line 1532
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->awakenScrollBars()Z

    .line 1536
    :cond_1
    return v0

    .line 1525
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1526
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1527
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridViewCore;->setSelectionInt(I)V

    .line 1528
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->invokeOnItemScrollListener()V

    .line 1529
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 1885
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 1752
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 1889
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1017
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1018
    .local v3, blockLayoutRequests:Z
    if-nez v3, :cond_0

    .line 1019
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1023
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->invalidate()V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->resetList()V

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    if-nez v3, :cond_1

    .line 1187
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1190
    :cond_1
    :goto_0
    return-void

    .line 1033
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1034
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1036
    .local v6, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v5

    .line 1038
    .local v5, childCount:I
    const/4 v9, 0x0

    .line 1041
    .local v9, delta:I
    const/16 v16, 0x0

    .line 1042
    .local v16, oldSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1043
    .local v15, oldFirst:Landroid/view/View;
    const/4 v14, 0x0

    .line 1046
    .local v14, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1065
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1066
    .local v12, index:I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1067
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1071
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1074
    .end local v12           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1075
    .local v8, dataChanged:Z
    if-eqz v8, :cond_5

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->handleDataChanged()V

    .line 1081
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->resetList()V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    if-nez v3, :cond_1

    .line 1187
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1048
    .end local v8           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1049
    .restart local v12       #index:I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1050
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1059
    .end local v12           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1087
    .restart local v8       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridViewCore;->setSelectedPositionInt(I)V

    .line 1091
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1092
    .local v10, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1094
    .local v17, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1095
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1096
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1095
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1099
    .end local v11           #i:I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1104
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->detachAllViewsFromParent()V

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1134
    if-nez v5, :cond_12

    .line 1135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_e

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridViewCore;->setSelectedPositionInt(I)V

    .line 1138
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcGridViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1160
    .end local v7           #childrenTop:I
    .local v18, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1162
    if-eqz v18, :cond_17

    .line 1163
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridViewCore;->positionSelector(Landroid/view/View;)V

    .line 1164
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1173
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1174
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1175
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridViewCore;->setNextSelectedPositionInt(I)V

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->updateScrollIndicators()V

    .line 1180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_b

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->checkSelectionChanged()V

    .line 1184
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1186
    if-nez v3, :cond_1

    .line 1187
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1108
    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :pswitch_3
    if-eqz v14, :cond_c

    .line 1109
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->getTopBorderHeight()I

    move-result v20

    add-int v20, v20, v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v6}, Lcom/htc/widget/HtcGridViewCore;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1111
    .end local v18           #sel:Landroid/view/View;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->getTopBorderHeight()I

    move-result v19

    add-int v19, v19, v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/htc/widget/HtcGridViewCore;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1113
    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1115
    .end local v18           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1116
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcGridViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1117
    .restart local v18       #sel:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1186
    .end local v5           #childCount:I
    .end local v6           #childrenBottom:I
    .end local v7           #childrenTop:I
    .end local v8           #dataChanged:Z
    .end local v9           #delta:I
    .end local v10           #firstPosition:I
    .end local v14           #newSel:Landroid/view/View;
    .end local v15           #oldFirst:Landroid/view/View;
    .end local v16           #oldSel:Landroid/view/View;
    .end local v17           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v18           #sel:Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_d

    .line 1187
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_d
    throw v19

    .line 1120
    .restart local v5       #childCount:I
    .restart local v6       #childrenBottom:I
    .restart local v7       #childrenTop:I
    .restart local v8       #dataChanged:Z
    .restart local v9       #delta:I
    .restart local v10       #firstPosition:I
    .restart local v14       #newSel:Landroid/view/View;
    .restart local v15       #oldFirst:Landroid/view/View;
    .restart local v16       #oldSel:Landroid/view/View;
    .restart local v17       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcGridViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1121
    .restart local v18       #sel:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1124
    .end local v18           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1125
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1127
    .end local v18           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1128
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1131
    .end local v18           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/htc/widget/HtcGridViewCore;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1132
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1136
    .end local v18           #sel:Landroid/view/View;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1140
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1141
    .local v13, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_10
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridViewCore;->setSelectedPositionInt(I)V

    .line 1143
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/htc/widget/HtcGridViewCore;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1144
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    :cond_11
    move/from16 v19, v13

    .line 1141
    goto :goto_6

    .line 1146
    .end local v13           #last:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_13

    .end local v7           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_13
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1149
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 1150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_15

    .end local v7           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_15
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1153
    :cond_16
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1165
    .end local v7           #childrenTop:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1167
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcGridViewCore;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1169
    .end local v4           #child:Landroid/view/View;
    :cond_18
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 159
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 166
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 163
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 164
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1610
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1612
    const/4 v1, -0x1

    .line 1613
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1614
    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1618
    iget-object v6, p0, Lcom/htc/widget/HtcGridViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 1619
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1620
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v0

    .line 1621
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1623
    invoke-direct {p0, v3, p2}, Lcom/htc/widget/HtcGridViewCore;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1621
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1627
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1628
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1629
    invoke-virtual {p0, v5, v6}, Lcom/htc/widget/HtcGridViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1630
    invoke-static {p3, v6, p2}, Lcom/htc/widget/HtcGridViewCore;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1632
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 1633
    move v4, v2

    .line 1634
    move v1, v3

    goto :goto_1

    .line 1639
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1640
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridViewCore;->setSelection(I)V

    .line 1644
    :goto_2
    return-void

    .line 1642
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1379
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcGridViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1384
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1389
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcGridViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 913
    invoke-super/range {p0 .. p2}, Lcom/htc/widget/HtcAbsListView;->onMeasure(II)V

    .line 915
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 916
    .local v15, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 917
    .local v9, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 918
    .local v16, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 920
    .local v10, heightSize:I
    if-nez v15, :cond_0

    .line 921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 926
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->getVerticalScrollbarWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 929
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 930
    .local v6, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcGridViewCore;->determineColumns(I)V

    .line 932
    const/4 v4, 0x0

    .line 934
    .local v4, childHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 935
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 936
    .local v8, count:I
    if-lez v8, :cond_2

    .line 937
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 939
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 940
    .local v14, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v14, :cond_1

    .line 941
    new-instance v14, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v14           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 943
    .restart local v14       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 946
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 948
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/widget/HtcGridViewCore;->getChildMeasureSpec(III)I

    move-result v5

    .line 950
    .local v5, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mColumnWidth:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/widget/HtcGridViewCore;->getChildMeasureSpec(III)I

    move-result v7

    .line 952
    .local v7, childWidthSpec:I
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    .line 954
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 961
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childHeightSpec:I
    .end local v7           #childWidthSpec:I
    .end local v14           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_2
    if-nez v9, :cond_3

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v17, v17, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridViewCore;->getVerticalFadingEdgeLength()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    add-int v10, v17, v18

    .line 966
    :cond_3
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 969
    .local v13, ourSize:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    .line 970
    .local v12, numColumns:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v8, :cond_5

    .line 971
    add-int/2addr v13, v4

    .line 972
    add-int v17, v11, v12

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 975
    :cond_4
    if-lt v13, v10, :cond_9

    .line 976
    move v13, v10

    .line 980
    :cond_5
    move v10, v13

    .line 983
    .end local v11           #i:I
    .end local v12           #numColumns:I
    .end local v13           #ourSize:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/htc/widget/HtcGridViewCore;->setMeasuredDimension(II)V

    .line 984
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 985
    return-void

    .line 924
    .end local v4           #childHeight:I
    .end local v6           #childWidth:I
    .end local v8           #count:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v17, v18

    goto/16 :goto_0

    .line 934
    .restart local v4       #childHeight:I
    .restart local v6       #childWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    goto/16 :goto_1

    .line 970
    .restart local v8       #count:I
    .restart local v11       #i:I
    .restart local v12       #numColumns:I
    .restart local v13       #ourSize:I
    :cond_9
    add-int/2addr v11, v12

    goto :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1493
    const/4 v0, -0x1

    .line 1495
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1496
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1501
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1502
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewCore;->setSelectionInt(I)V

    .line 1503
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->invokeOnItemScrollListener()V

    .line 1504
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->awakenScrollBars()Z

    .line 1505
    const/4 v1, 0x1

    .line 1508
    :cond_1
    return v1

    .line 1497
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1498
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridViewCore;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->resetList()V

    .line 121
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 122
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 125
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 127
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 128
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 129
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 130
    iput-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 131
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->checkFocus()V

    .line 133
    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 134
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 136
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 139
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 140
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcGridViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 144
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewCore;->setSelectedPositionInt(I)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewCore;->setNextSelectedPositionInt(I)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->checkSelectionChanged()V

    .line 153
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayout()V

    .line 154
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcGridViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 148
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->checkFocus()V

    .line 150
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 1763
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 1764
    iput p1, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedColumnWidth:I

    .line 1765
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayoutIfNecessary()V

    .line 1767
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1697
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1698
    iput p1, p0, Lcom/htc/widget/HtcGridViewCore;->mGravity:I

    .line 1699
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayoutIfNecessary()V

    .line 1701
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 1713
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1714
    iput p1, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedHorizontalSpacing:I

    .line 1715
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayoutIfNecessary()V

    .line 1717
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 1777
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 1778
    iput p1, p0, Lcom/htc/widget/HtcGridViewCore;->mRequestedNumColumns:I

    .line 1779
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayoutIfNecessary()V

    .line 1781
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1343
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridViewCore;->setNextSelectedPositionInt(I)V

    .line 1347
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1348
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayout()V

    .line 1349
    return-void

    .line 1345
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1358
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 1360
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridViewCore;->setNextSelectedPositionInt(I)V

    .line 1361
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->layoutChildren()V

    .line 1363
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1365
    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1368
    .local v2, previous:I
    :goto_1
    iget v5, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    div-int v1, v0, v5

    .line 1369
    .local v1, nextRow:I
    iget v5, p0, Lcom/htc/widget/HtcGridViewCore;->mNumColumns:I

    div-int v3, v2, v5

    .line 1371
    .local v3, previousRow:I
    if-eq v1, v3, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->awakenScrollBars()Z

    .line 1375
    :cond_0
    return-void

    .line 1363
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0       #next:I
    :cond_2
    move v2, v4

    .line 1365
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 1745
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 1746
    iput p1, p0, Lcom/htc/widget/HtcGridViewCore;->mStretchMode:I

    .line 1747
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayoutIfNecessary()V

    .line 1749
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 1730
    iget v0, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1731
    iput p1, p0, Lcom/htc/widget/HtcGridViewCore;->mVerticalSpacing:I

    .line 1732
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridViewCore;->requestLayoutIfNecessary()V

    .line 1734
    :cond_0
    return-void
.end method
