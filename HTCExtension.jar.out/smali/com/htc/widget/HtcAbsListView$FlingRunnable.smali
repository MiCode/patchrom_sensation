.class public Lcom/htc/widget/HtcAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingY:I

.field protected mScroller:Lcom/htc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 3102
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3103
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 3104
    return-void
.end method


# virtual methods
.method endFling()V
    .locals 2

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3136
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3137
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3139
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3141
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3142
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v1}, Lcom/htc/widget/HtcAbsListView;->access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3144
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3147
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v8, v8, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_0

    .line 3211
    :goto_0
    return-void

    .line 3152
    :pswitch_0
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v8, v8, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 3153
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 3157
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 3158
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v4

    .line 3159
    .local v4, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v7

    .line 3163
    .local v7, y:I
    iget v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v8, v7

    .line 3166
    .local v1, delta:I
    if-lez v1, :cond_3

    .line 3168
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3169
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3170
    .local v2, firstView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3173
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$900(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$1000(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3187
    .end local v2           #firstView:Landroid/view/View;
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v8, v8, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v8, :cond_2

    .line 3188
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v8, v8, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    invoke-interface {v8, v10, v1, v10, v10}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 3191
    :cond_2
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, v1, v1}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3193
    .local v0, atEnd:Z
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    .line 3194
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3195
    iput v7, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 3196
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3176
    .end local v0           #atEnd:Z
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 3177
    .local v5, offsetToLast:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3179
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3180
    .local v3, lastView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3183
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$1100(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$1200(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 3198
    .end local v3           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 3147
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 3110
    if-gez p1, :cond_0

    move v2, v6

    .line 3111
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 3112
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 3114
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3115
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3123
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3110
    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 3126
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 3127
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 3128
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 3129
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3130
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3131
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3126
    goto :goto_0
.end method
