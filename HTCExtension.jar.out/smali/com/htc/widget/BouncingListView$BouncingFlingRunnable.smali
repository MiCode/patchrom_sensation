.class Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;
.super Lcom/htc/widget/HtcAbsListView$FlingRunnable;
.source "BouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/BouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BouncingFlingRunnable"
.end annotation


# instance fields
.field private isNeedCheckOverBottom:Z

.field private isNeedCheckOverLeft:Z

.field private isNeedCheckOverRight:Z

.field private isNeedCheckOverTop:Z

.field final synthetic this$0:Lcom/htc/widget/BouncingListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/BouncingListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 277
    iput-object p1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    .line 279
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 280
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 283
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 284
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;)V

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 438
    iget-boolean v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z
    invoke-static {v4}, Lcom/htc/widget/BouncingListView;->access$500(Lcom/htc/widget/BouncingListView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    iput-boolean v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 440
    iput-boolean v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 441
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    .line 466
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #setter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v4, v7}, Lcom/htc/widget/BouncingListView;->access$1002(Lcom/htc/widget/BouncingListView;Z)Z

    .line 469
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4, v7}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 471
    return-void

    .line 442
    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z
    invoke-static {v4}, Lcom/htc/widget/BouncingListView;->access$1100(Lcom/htc/widget/BouncingListView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    iput-boolean v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 445
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 447
    .local v0, distanceToBottom:I
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I
    invoke-static {v4}, Lcom/htc/widget/BouncingListView;->access$1200(Lcom/htc/widget/BouncingListView;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 450
    .local v1, distanceToTop:I
    if-ge v1, v0, :cond_2

    move v2, v1

    .line 452
    .local v2, scrollDistance:I
    :goto_1
    neg-int v4, v2

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v2           #scrollDistance:I
    :cond_2
    move v2, v0

    .line 450
    goto :goto_1

    .line 454
    .end local v0           #distanceToBottom:I
    .end local v1           #distanceToTop:I
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    const/4 v5, -0x1

    iput v5, v4, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 455
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/BouncingListView;->reportScrollStateChange(I)V

    .line 456
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/BouncingListView;->clearScrollingCache()V

    .line 457
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 458
    .local v3, topBound:I
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V
    invoke-static {v4}, Lcom/htc/widget/BouncingListView;->access$400(Lcom/htc/widget/BouncingListView;)V

    .line 459
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v4}, Lcom/htc/widget/BouncingListView;->access$1000(Lcom/htc/widget/BouncingListView;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v4, v4, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 461
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #setter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v4, v7}, Lcom/htc/widget/BouncingListView;->access$1002(Lcom/htc/widget/BouncingListView;Z)Z

    .line 462
    iget-object v4, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/BouncingListView;->smoothScrollToPosition(I)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 351
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v9, v9, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 434
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->endFling()V

    goto :goto_0

    .line 360
    :cond_2
    iget-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-nez v9, :cond_3

    .line 361
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/BouncingListView;->access$500(Lcom/htc/widget/BouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->endFling()V

    .line 367
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 368
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 370
    .local v3, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    .line 371
    .local v8, y:I
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    .line 377
    .local v7, x:I
    iget v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    .line 380
    .local v0, delta:I
    if-lez v0, :cond_6

    .line 383
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 384
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 385
    .local v1, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 388
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$600(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$700(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 405
    .end local v1           #firstView:Landroid/view/View;
    :goto_1
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v9, v9, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v9, :cond_4

    .line 406
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v9, v9, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    invoke-interface {v9, v11, v0, v11, v11}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 409
    :cond_4
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/BouncingListView;->trackMotionScroll(II)Z

    .line 412
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v11, v11, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 413
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_5

    .line 416
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_5

    .line 417
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    const/4 v10, 0x1

    #setter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v9, v10}, Lcom/htc/widget/BouncingListView;->access$1002(Lcom/htc/widget/BouncingListView;Z)Z

    .line 418
    const/4 v3, 0x0

    .line 422
    :cond_5
    if-eqz v3, :cond_7

    .line 423
    iput v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 424
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, p0}, Lcom/htc/widget/BouncingListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 393
    .end local v4           #motionView:Landroid/view/View;
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 394
    .local v5, offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 396
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 397
    .local v2, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 400
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$800(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$900(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 426
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x1

    .line 340
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 341
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 343
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V
    invoke-static {v0}, Lcom/htc/widget/BouncingListView;->access$400(Lcom/htc/widget/BouncingListView;)V

    .line 344
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    .line 346
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 348
    return-void
.end method

.method public startByDistance(I)V
    .locals 7
    .parameter "distance"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 289
    if-ltz p1, :cond_1

    .line 290
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 291
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 296
    :goto_0
    invoke-static {}, Lcom/htc/widget/BouncingListView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "HtcBouncingList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 299
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    const/16 v5, 0x1f4

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 300
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 301
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V
    invoke-static {v0, v6}, Lcom/htc/widget/BouncingListView;->access$200(Lcom/htc/widget/BouncingListView;Z)V

    .line 302
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V
    invoke-static {v0, v6}, Lcom/htc/widget/BouncingListView;->access$300(Lcom/htc/widget/BouncingListView;Z)V

    .line 304
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/BouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 313
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 315
    return-void

    .line 293
    :cond_1
    iput-boolean v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 294
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 7
    .parameter "distance"
    .parameter "velocity"

    .prologue
    const/4 v1, 0x0

    .line 319
    iput v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 320
    invoke-static {}, Lcom/htc/widget/BouncingListView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    .line 323
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 324
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/BouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 333
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 335
    return-void
.end method
