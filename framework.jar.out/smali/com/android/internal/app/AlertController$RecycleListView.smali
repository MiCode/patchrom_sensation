.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 762
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 764
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 766
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 769
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 771
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/AlertController$RecycleListView;->skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 773
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 776
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 778
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 780
    return-void
.end method

.method private skinSelector(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 789
    if-eqz p1, :cond_1

    .line 790
    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 792
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 794
    .local v1, selectorId:I
    const v2, 0x1080062

    if-ne v1, v2, :cond_2

    .line 795
    const-string/jumbo v2, "list_selector_background"

    invoke-static {p1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 799
    :goto_0
    if-eqz v1, :cond_0

    .line 800
    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$802(Z)Z

    .line 801
    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$902(Z)Z

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setSelector(I)V

    .line 805
    .end local v1           #selectorId:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 807
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 797
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #selectorId:I
    :cond_2
    const-string/jumbo v2, "list_selector_holo_dark"

    invoke-static {p1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
