.class public Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;
.super Ljava/lang/Object;
.source "CategorySwitcherAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/CategorySwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCategorySwitcherItemClickListener"
.end annotation


# instance fields
.field mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field mContext:Landroid/content/Context;

.field protected mHistoryManager:Lcom/htc/music/util/HistoryManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "categorySwitcherAdapter"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V
    .locals 2
    .parameter "context"
    .parameter "categorySwitcherAdapter"
    .parameter "historyManager"

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    .line 254
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 255
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 265
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context and categorySwitcherAdapter shouldn\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iput-object p1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    .line 270
    iput-object p2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 271
    iput-object p3, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 272
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v2, :cond_0

    .line 285
    if-ltz p3, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v2, v2

    if-gt v2, p3, :cond_3

    .line 286
    :cond_2
    const-string v2, "[CategorySwitcherAdapter]"

    const-string v3, "click position out of bound!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v2, p3

    .line 292
    .local v1, source:Lcom/htc/music/util/SourceItem;
    iget-object v2, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v3, "StartNewActivity"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 293
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_4

    .line 294
    iget-object v2, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v3, "ShowActivityTitle"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_5

    .line 300
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-interface {v2, v3, v4}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 304
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v3, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/music/util/HistoryManager;->saveLastCategoryItemTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_5
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
