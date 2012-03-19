.class Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;
.super Ljava/lang/Object;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/MoreExpandableHtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandReduceOtherRootRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightMovedDistance:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field private mReduceViewCount:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1455
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    .line 1462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 1463
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    .line 1464
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    .line 1465
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    .line 1466
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1467
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    .line 1468
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1455
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 5

    .prologue
    .line 1495
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    .line 1496
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1497
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1499
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->checkView(I)I
    invoke-static {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4000(Lcom/htc/widget/MoreExpandableHtcListView;I)I

    move-result v1

    .line 1500
    .local v1, top:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1501
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4200(Lcom/htc/widget/MoreExpandableHtcListView;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 1502
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 1503
    .local v0, newPosition:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1504
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V
    invoke-static {v2, v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4400(Lcom/htc/widget/MoreExpandableHtcListView;II)V

    .line 1505
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 1509
    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 1556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1557
    .local v0, now:J
    const/4 v2, 0x0

    .line 1559
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1560
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1564
    :goto_0
    return v2

    .line 1562
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    div-long v3, v4, v6

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1513
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    .line 1514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1515
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    .line 1516
    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    .line 1518
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 1521
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3400(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V

    .line 1522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1523
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    .line 1524
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1525
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-lt v0, v1, :cond_0

    .line 1526
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->end()V

    .line 1531
    :goto_0
    return-void

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1534
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1536
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 1537
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->init()V

    .line 1540
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->getTargetDistance()I

    move-result v1

    .line 1542
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 1543
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->nextView()V

    .line 1544
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1548
    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 1549
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mHeightMovedDistance:I

    .line 1550
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3500(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 1551
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 3
    .parameter "position"
    .parameter "self"

    .prologue
    .line 1472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mStartTime:J

    .line 1473
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mPosition:I

    .line 1474
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1476
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceOtherRootViewList()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1477
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    .line 1479
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-nez v1, :cond_0

    .line 1480
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->end()V

    .line 1491
    :goto_0
    return-void

    .line 1484
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mReduceViewCount:I

    if-ge v0, v1, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1488
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mMode:I

    .line 1489
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->mInit:Z

    .line 1490
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
