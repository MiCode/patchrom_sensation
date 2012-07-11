.class public Lcom/htc/widget/HBouncingListView;
.super Lcom/htc/widget/HtcListViewCore2;
.source "HBouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HBouncingListView$1;,
        Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_OVER_BOUNDARY_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcBouncingList"

.field private static localLOGV:Z


# instance fields
.field private mAutoRelayoutOnActionCancel:Z

.field protected mBouncingEnabled:Z

.field private mChildrenTotalHeight:I

.field private mChildrenTotalWidth:I

.field private final mDeceleration:F

.field private mEnableScrollOverBottomBoundary:Z

.field private mEnableScrollOverLeftBoundary:Z

.field private mEnableScrollOverRightBoundary:Z

.field private mEnableScrollOverTopBoundary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;)V

    .line 36
    iput v3, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    .line 39
    iput v3, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 45
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 54
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 104
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HBouncingListView;->mDeceleration:F

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v3, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    .line 39
    iput v3, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 45
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 54
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 95
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HBouncingListView;->mDeceleration:F

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v3, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    .line 39
    iput v3, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 45
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 54
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 86
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/HBouncingListView;->mDeceleration:F

    .line 90
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HBouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView;->enableScrollOverLeftBoundary(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HBouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/HBouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HBouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView;->enableScrollOverRightBoundary(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HBouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView;->enableScrollOverTopBoundary(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/HBouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView;->enableScrollOverBottomBoundary(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/HBouncingListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/HBouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HBouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HBouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method private disableScrollOverBoundary()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 846
    invoke-direct {p0, v0}, Lcom/htc/widget/HBouncingListView;->enableScrollOverTopBoundary(Z)V

    .line 847
    invoke-direct {p0, v0}, Lcom/htc/widget/HBouncingListView;->enableScrollOverBottomBoundary(Z)V

    .line 849
    invoke-direct {p0, v0}, Lcom/htc/widget/HBouncingListView;->enableScrollOverLeftBoundary(Z)V

    .line 850
    invoke-direct {p0, v0}, Lcom/htc/widget/HBouncingListView;->enableScrollOverRightBoundary(Z)V

    .line 852
    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const v12, 0x7fffffff

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 673
    .local v0, action:I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    .line 674
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 676
    .local v5, x:I
    iget v7, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    if-le v7, v5, :cond_5

    iget-boolean v7, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverLeftBoundary:Z

    if-eqz v7, :cond_5

    .line 677
    invoke-direct {p0, v10}, Lcom/htc/widget/HBouncingListView;->enableScrollOverLeftBoundary(Z)V

    .line 768
    .end local v5           #x:I
    :cond_0
    :goto_0
    if-ne v0, v11, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 771
    :cond_1
    const/4 v7, 0x3

    if-ne v0, v7, :cond_4

    .line 772
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 773
    sget-boolean v7, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcBouncingList"

    const-string v8, "dispatchTouchEvent(ACTION_CANCEL)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 777
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isAutoRelayoutOnActionCancel()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 778
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->requestLayout()V

    .line 788
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 678
    .restart local v5       #x:I
    :cond_5
    iget v7, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    if-ge v7, v5, :cond_0

    iget-boolean v7, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverRightBoundary:Z

    if-eqz v7, :cond_0

    .line 679
    invoke-direct {p0, v10}, Lcom/htc/widget/HBouncingListView;->enableScrollOverRightBoundary(Z)V

    goto :goto_0

    .line 682
    .end local v5           #x:I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 683
    .local v6, y:I
    iget v7, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    if-le v7, v6, :cond_7

    iget-boolean v7, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverTopBoundary:Z

    if-eqz v7, :cond_7

    .line 684
    invoke-direct {p0, v10}, Lcom/htc/widget/HBouncingListView;->enableScrollOverTopBoundary(Z)V

    goto :goto_0

    .line 685
    :cond_7
    iget v7, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    if-ge v7, v6, :cond_0

    iget-boolean v7, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v7, :cond_0

    .line 686
    invoke-direct {p0, v10}, Lcom/htc/widget/HBouncingListView;->enableScrollOverBottomBoundary(Z)V

    goto :goto_0

    .line 689
    .end local v6           #y:I
    :cond_8
    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 692
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_a

    .line 695
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 696
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v3, v7, v8

    .line 697
    .local v3, spaceAbove:I
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    sub-int v4, v7, v8

    .line 700
    .local v4, spaceBelow:I
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v7

    if-nez v7, :cond_9

    if-gtz v3, :cond_9

    .line 701
    invoke-direct {p0, v11}, Lcom/htc/widget/HBouncingListView;->enableScrollOverLeftBoundary(Z)V

    .line 703
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_a

    if-gtz v4, :cond_a

    .line 704
    invoke-direct {p0, v11}, Lcom/htc/widget/HBouncingListView;->enableScrollOverRightBoundary(Z)V

    .line 723
    .end local v3           #spaceAbove:I
    .end local v4           #spaceBelow:I
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 724
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v7, :cond_e

    .line 725
    iput v12, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    .line 740
    :goto_3
    sget-boolean v7, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v7, :cond_b

    .line 741
    const-string v7, "HtcBouncingList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mChildrenTotalHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", childrenCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_b
    :goto_4
    sget-boolean v7, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcBouncingList"

    const-string v8, "dispatchTouchEvent(ACTION_DOWN)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 707
    :cond_c
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v3, v7, v8

    .line 708
    .restart local v3       #spaceAbove:I
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int v4, v7, v8

    .line 711
    .restart local v4       #spaceBelow:I
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v7

    if-nez v7, :cond_d

    if-gtz v3, :cond_d

    .line 712
    invoke-direct {p0, v11}, Lcom/htc/widget/HBouncingListView;->enableScrollOverTopBoundary(Z)V

    .line 714
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_a

    if-gtz v4, :cond_a

    .line 715
    invoke-direct {p0, v11}, Lcom/htc/widget/HBouncingListView;->enableScrollOverBottomBoundary(Z)V

    goto/16 :goto_2

    .line 727
    .end local v3           #spaceAbove:I
    .end local v4           #spaceBelow:I
    :cond_e
    const/4 v2, 0x0

    .line 728
    .local v2, childrenWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_f

    .line 729
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p0, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .line 732
    :cond_f
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v7

    if-ge v2, v7, :cond_10

    .line 734
    iput v2, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    goto/16 :goto_3

    .line 736
    :cond_10
    iput v12, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    goto/16 :goto_3

    .line 744
    .end local v2           #childrenWidth:I
    :cond_11
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v7, :cond_12

    .line 745
    iput v12, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    .line 760
    :goto_5
    sget-boolean v7, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v7, :cond_b

    .line 761
    const-string v7, "HtcBouncingList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mChildrenTotalWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", childrenCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 747
    :cond_12
    const/4 v1, 0x0

    .line 748
    .local v1, childrenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_13

    .line 749
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v1, v7, v8

    .line 752
    :cond_13
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v7

    if-ge v1, v7, :cond_14

    .line 754
    iput v1, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    goto :goto_5

    .line 756
    :cond_14
    iput v12, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    goto :goto_5

    .line 781
    .end local v1           #childrenHeight:I
    :cond_15
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isAutoRelayoutOnActionCancel()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 782
    :cond_16
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->requestLayout()V

    goto/16 :goto_1
.end method

.method private doTrackMotionScrollWithConstrain(II)V
    .locals 2
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 155
    if-nez p2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->trackMotionScrollWithConstrain(II)V

    goto :goto_0

    .line 162
    :cond_1
    if-gez p1, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->trackMotionScrollWithConstrain(II)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore2;->trackMotionScrollWithConstrain(II)V

    goto :goto_0

    .line 169
    :cond_3
    if-lez p1, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->trackMotionScrollWithConstrain(II)V

    goto :goto_0

    .line 172
    :cond_4
    if-gez p1, :cond_5

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->trackMotionScrollWithConstrain(II)V

    goto :goto_0

    .line 176
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore2;->trackMotionScrollWithConstrain(II)V

    goto :goto_0
.end method

.method private enableScrollOverBottomBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 841
    sget-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 843
    return-void
.end method

.method private enableScrollOverLeftBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 825
    sget-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 827
    return-void
.end method

.method private enableScrollOverRightBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 830
    sget-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 832
    return-void
.end method

.method private enableScrollOverTopBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 836
    sget-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 838
    return-void
.end method

.method private getEstimateDistance(F)I
    .locals 16
    .parameter "initialVelocity"

    .prologue
    .line 306
    sget-boolean v13, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v13, :cond_0

    const-string v13, "HtcBouncingList"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initialVelocity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 310
    const/4 v9, 0x0

    .line 311
    .local v9, largestChildWidth:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v13

    if-ge v7, v13, :cond_2

    .line 312
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 313
    .local v2, childWidth:I
    if-le v2, v9, :cond_1

    .line 314
    move v9, v2

    .line 311
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 317
    .end local v2           #childWidth:I
    :cond_2
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-ltz v13, :cond_3

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v6

    .line 319
    .local v6, firstVisibleChildPosition:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 320
    .local v4, firstChildLeft:I
    add-int/lit8 v13, v9, 0x1

    mul-int/2addr v13, v6

    sub-int/2addr v13, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int v3, v13, v14

    .line 356
    .end local v4           #firstChildLeft:I
    .end local v6           #firstVisibleChildPosition:I
    .end local v7           #i:I
    .end local v9           #largestChildWidth:I
    :goto_1
    return v3

    .line 324
    .restart local v7       #i:I
    .restart local v9       #largestChildWidth:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v12

    .line 325
    .local v12, lastVisibleChildPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v11, v13, v14

    .line 327
    .local v11, lastChildRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v12

    add-int/lit8 v14, v9, 0x1

    mul-int/2addr v13, v14

    add-int v3, v13, v11

    .line 328
    .local v3, estimateDistance:I
    goto :goto_1

    .line 332
    .end local v3           #estimateDistance:I
    .end local v7           #i:I
    .end local v9           #largestChildWidth:I
    .end local v11           #lastChildRight:I
    .end local v12           #lastVisibleChildPosition:I
    :cond_4
    const/4 v8, 0x0

    .line 333
    .local v8, largestChildHeight:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v13

    if-ge v7, v13, :cond_6

    .line 334
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 335
    .local v1, childHeight:I
    if-le v1, v8, :cond_5

    .line 336
    move v8, v1

    .line 333
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 339
    .end local v1           #childHeight:I
    :cond_6
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-ltz v13, :cond_7

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v6

    .line 341
    .restart local v6       #firstVisibleChildPosition:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v5

    .line 342
    .local v5, firstChildTop:I
    add-int/lit8 v13, v8, 0x1

    mul-int/2addr v13, v6

    sub-int/2addr v13, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int v3, v13, v14

    .line 344
    .restart local v3       #estimateDistance:I
    goto :goto_1

    .line 346
    .end local v3           #estimateDistance:I
    .end local v5           #firstChildTop:I
    .end local v6           #firstVisibleChildPosition:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v12

    .line 347
    .restart local v12       #lastVisibleChildPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int v10, v13, v14

    .line 349
    .local v10, lastChildBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HBouncingListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v12

    add-int/lit8 v14, v8, 0x1

    mul-int/2addr v13, v14

    add-int v3, v13, v10

    .line 350
    .restart local v3       #estimateDistance:I
    goto/16 :goto_1

    .line 356
    .end local v3           #estimateDistance:I
    .end local v7           #i:I
    .end local v8           #largestChildHeight:I
    .end local v10           #lastChildBottom:I
    .end local v12           #lastVisibleChildPosition:I
    :cond_8
    const v3, 0x7fffffff

    goto/16 :goto_1
.end method

.method private getTotalDistance(F)I
    .locals 3
    .parameter "initialVelocity"

    .prologue
    .line 296
    mul-float v0, p1, p1

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/htc/widget/HBouncingListView;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isOverBottomBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverLeftBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverRightBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverTopBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 668
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 793
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->enableStopScrollNow()Z

    move-result v0

    return v0
.end method

.method getBottomBoundary()I
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
    .locals 2

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/HBouncingListView;Lcom/htc/widget/HBouncingListView$1;)V

    .line 649
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    goto :goto_0
.end method

.method getLeftBoundary()I
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverLeftBoundary:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getRightBoundary()I
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverRightBoundary:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getTopBoundary()I
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mEnableScrollOverTopBoundary:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBoundary()I

    move-result v0

    goto :goto_0
.end method

.method public isAutoRelayoutOnActionCancel()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mAutoRelayoutOnActionCancel:Z

    return v0
.end method

.method onFling(I)V
    .locals 5
    .parameter "initialVelocity"

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->onUp()V

    .line 293
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-nez v2, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    .line 277
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HBouncingListView;->reportScrollStateChange(I)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 279
    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/HBouncingListView;->getTotalDistance(F)I

    move-result v1

    .line 280
    .local v1, totalDistance:I
    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/HBouncingListView;->getEstimateDistance(F)I

    move-result v0

    .line 281
    .local v0, estimateDistance:I
    if-le v1, v0, :cond_4

    .line 282
    if-gtz p1, :cond_3

    .line 283
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    check-cast v2, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    check-cast v2, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;

    neg-int v3, v0

    neg-int v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    .line 291
    .end local v0           #estimateDistance:I
    .end local v1           #totalDistance:I
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method public onResumeRequestLayout()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->requestLayout()V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->requestLayout()V

    goto :goto_0
.end method

.method onScrollToBoundary()V
    .locals 2

    .prologue
    .line 798
    sget-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    const-string v1, "onScrollToBoundary()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_2

    .line 800
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->onScrollToBoundary()V

    .line 801
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 802
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->endFling()V

    .line 803
    sget-boolean v0, Lcom/htc/widget/HBouncingListView;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcBouncingList"

    const-string v1, "onScrollToBoundary()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1
    :goto_0
    return-void

    .line 806
    :cond_2
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->onScrollToBoundary()V

    goto :goto_0
.end method

.method onUp()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 216
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-nez v5, :cond_0

    .line 217
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->onUp()V

    .line 265
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-nez v5, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    check-cast v5, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;

    invoke-virtual {p0, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v6

    sub-int v2, v5, v6

    .line 233
    .local v2, distanceToRight:I
    iget v5, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v6

    add-int v1, v5, v6

    .line 236
    .local v1, distanceToLeft:I
    if-ge v1, v2, :cond_3

    move v4, v1

    .line 238
    .local v4, scrollDistance:I
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    check-cast v5, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v4           #scrollDistance:I
    :cond_3
    move v4, v2

    .line 236
    goto :goto_1

    .line 241
    .end local v1           #distanceToLeft:I
    .end local v2           #distanceToRight:I
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 242
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->onUp()V

    goto/16 :goto_0

    .line 245
    :cond_5
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 246
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    check-cast v5, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;

    invoke-virtual {p0, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .line 248
    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 250
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v6

    sub-int v0, v5, v6

    .line 252
    .local v0, distanceToBottom:I
    iget v5, p0, Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 255
    .local v3, distanceToTop:I
    if-ge v3, v0, :cond_7

    move v4, v3

    .line 257
    .restart local v4       #scrollDistance:I
    :goto_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    check-cast v5, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .end local v4           #scrollDistance:I
    :cond_7
    move v4, v0

    .line 255
    goto :goto_2

    .line 260
    .end local v0           #distanceToBottom:I
    .end local v3           #distanceToTop:I
    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 261
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->onUp()V

    goto/16 :goto_0
.end method

.method resurrectSelection()Z
    .locals 1

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 857
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore2;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setAutoRelayoutOnActionCancel(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/widget/HBouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 58
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    .line 81
    return-void
.end method

.method public setSelectionFromLeft(II)V
    .locals 0
    .parameter "position"
    .parameter "x"

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 821
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromLeft(II)V

    .line 822
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 0
    .parameter "position"
    .parameter "y"

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V

    .line 814
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    .line 815
    return-void
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 1
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/widget/HBouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HBouncingListView;->doTrackMotionScrollWithConstrain(II)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore2;->trackMotionScrollWithConstrain(II)V

    goto :goto_0
.end method
