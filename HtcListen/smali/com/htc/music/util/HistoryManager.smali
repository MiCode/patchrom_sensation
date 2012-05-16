.class public Lcom/htc/music/util/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/HistoryManager$HistoryArrayList;,
        Lcom/htc/music/util/HistoryManager$ActivityHistory;
    }
.end annotation


# static fields
.field private static final HISTORY_FILE_NAME:Ljava/lang/String; = "music_history.dat"

.field public static MAX_SOURCE_HISTORY:I = 0x0

.field private static final SELECTED_CATEGORY_TAG:Ljava/lang/String; = "SelectedCategory"

.field private static final SELECTED_SOURCE_TAG:Ljava/lang/String; = "SelectedSource"

.field private static final TAG:Ljava/lang/String; = "[HistoryManager]"


# instance fields
.field private mActivityGroup:Landroid/app/ActivityGroup;

.field private mEnableListen:Z

.field protected mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityGroup;)V
    .locals 1
    .parameter "activityGroup"

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/util/HistoryManager;-><init>(Landroid/app/ActivityGroup;Z)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityGroup;Z)V
    .locals 1
    .parameter "activityGroup"
    .parameter "enableListen"

    .prologue
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/HistoryManager;->mActivityGroup:Landroid/app/ActivityGroup;

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/HistoryManager;->mEnableListen:Z

    .line 276
    new-instance v0, Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-direct {v0, p0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;-><init>(Lcom/htc/music/util/HistoryManager;)V

    iput-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    .line 239
    iput-object p1, p0, Lcom/htc/music/util/HistoryManager;->mActivityGroup:Landroid/app/ActivityGroup;

    .line 242
    invoke-virtual {p0, p2}, Lcom/htc/music/util/HistoryManager;->enableHtcListen(Z)V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/util/HistoryManager;)Landroid/app/ActivityGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mActivityGroup:Landroid/app/ActivityGroup;

    return-object v0
.end method

.method private addRestoreHistoryItem(Lcom/htc/music/util/SourceItem;)V
    .locals 7
    .parameter "source"

    .prologue
    .line 495
    if-eqz p1, :cond_1

    .line 496
    iget-object v4, p1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v5, "InnerActivityType"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 498
    .local v0, innerType:I
    iget-object v4, p1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 501
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x2000

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    const-string v4, "LaunchFromSwitcher"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    new-instance v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    iget-object v4, p1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-direct {v2, v4, v1, v0}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 506
    .local v2, item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v4}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 507
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    iget-object v5, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v5}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 508
    .local v3, previousItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v4, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    iput-object v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    .line 509
    iget-object v4, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousTag:Ljava/lang/String;

    .line 511
    .end local v3           #previousItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v4, v2}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v0           #innerType:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_1
    return-void
.end method


# virtual methods
.method public addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V
    .locals 1
    .parameter "activityHistory"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0, p1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method public clearCategoryHistory()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->clearCategory()V

    .line 283
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->clear()V

    .line 291
    return-void
.end method

.method public clearStoreHistory()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->clearStore()V

    .line 287
    return-void
.end method

.method public clearTop(Ljava/lang/Class;)Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/music/util/HistoryManager$ActivityHistory;"
        }
    .end annotation

    .prologue
    .local p1, myClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    .line 352
    iget-object v3, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    .line 353
    .local v0, count:I
    const/4 v1, 0x0

    .line 354
    .local v1, history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    add-int/lit8 v2, v0, -0x1

    .line 355
    .local v2, index:I
    :goto_0
    if-le v2, v4, :cond_0

    .line 356
    iget-object v3, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v3, v2}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    check-cast v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 357
    .restart local v1       #history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v3, v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    :cond_0
    if-le v2, v4, :cond_2

    .line 363
    iget-object v3, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v3, v2}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 366
    :goto_1
    return-object v3

    .line 355
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 366
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public clearTop(Ljava/lang/String;)Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v4, -0x1

    .line 371
    iget-object v3, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    .line 372
    .local v0, count:I
    const/4 v1, 0x0

    .line 373
    .local v1, history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    add-int/lit8 v2, v0, -0x1

    .line 374
    .local v2, index:I
    :goto_0
    if-le v2, v4, :cond_0

    .line 375
    iget-object v3, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v3, v2}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    check-cast v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 376
    .restart local v1       #history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v3, v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    :cond_0
    if-ne v4, v2, :cond_2

    .line 382
    const/4 v1, 0x0

    .line 387
    :goto_1
    return-object v1

    .line 374
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 384
    :cond_2
    iget-object v3, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->removeRange(II)V

    goto :goto_1
.end method

.method public enableHtcListen(Z)V
    .locals 1
    .parameter "enableListen"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/htc/music/util/HistoryManager;->mEnableListen:Z

    .line 248
    iget-boolean v0, p0, Lcom/htc/music/util/HistoryManager;->mEnableListen:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    sput v0, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    goto :goto_0
.end method

.method public getHistorySize()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLastCategoryItem(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)Lcom/htc/music/util/SourceItem;
    .locals 4
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 268
    const-string v2, "music_history.dat"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    .local v0, shp:Landroid/content/SharedPreferences;
    const-string v2, "SelectedCategory"

    const-string v3, "ArtistBrowserTabPlugin"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, tag:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    return-object v2
.end method

.method public getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    iget-object v1, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 343
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;
    .locals 1
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 257
    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    return-object v0
.end method

.method public getLatestSourceItemHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    .line 325
    .local v0, index:I
    sget v1, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    if-lt v0, v1, :cond_0

    .line 326
    sget v1, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    add-int/lit8 v0, v1, -0x1

    .line 328
    if-gez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v1, v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 335
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHistory(I)Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .locals 1
    .parameter "index"

    .prologue
    .line 304
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0, p1}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    goto :goto_0
.end method

.method public removeHistory(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 298
    new-instance v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    const-string v3, ""

    const/4 v5, 0x3

    move-object v1, p1

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 300
    .local v0, tagHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v1, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v1, v0}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public removeRange(II)V
    .locals 1
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->removeRange(II)V

    .line 295
    return-void
.end method

.method public restoreHistoryInstanceState(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;)V
    .locals 7
    .parameter "context"
    .parameter "adapterSource"
    .parameter "adapterCategory"

    .prologue
    const/4 v6, 0x0

    .line 456
    const-string v4, "[HistoryManager]"

    const-string v5, "restoreHistoryInstanceState"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 458
    :cond_0
    const-string v4, "[HistoryManager]"

    const-string v5, "null check fail!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 464
    :cond_1
    const-string v4, "music_history.dat"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 465
    .local v1, shp:Landroid/content/SharedPreferences;
    const-string v4, "SelectedSource"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, sourceTag:Ljava/lang/String;
    const-string v4, "SelectedCategory"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, categoryTag:Ljava/lang/String;
    const-string v4, "[HistoryManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sourceTag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v4, "[HistoryManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "categoryTag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget v4, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    if-nez v4, :cond_4

    .line 471
    const/4 v2, 0x0

    .line 472
    .local v2, source:Lcom/htc/music/util/SourceItem;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    :cond_2
    invoke-virtual {p3, v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    .line 477
    :goto_1
    invoke-direct {p0, v2}, Lcom/htc/music/util/HistoryManager;->addRestoreHistoryItem(Lcom/htc/music/util/SourceItem;)V

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p2, v3}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    goto :goto_1

    .line 479
    .end local v2           #source:Lcom/htc/music/util/SourceItem;
    :cond_4
    const/4 v2, 0x0

    .line 480
    .restart local v2       #source:Lcom/htc/music/util/SourceItem;
    invoke-virtual {p2, v3}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    .line 481
    invoke-direct {p0, v2}, Lcom/htc/music/util/HistoryManager;->addRestoreHistoryItem(Lcom/htc/music/util/SourceItem;)V

    goto :goto_0
.end method

.method public saveHistoryInstanceState(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 396
    const-string v4, "[HistoryManager]"

    const-string v5, "saveHistoryInstanceState"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-nez p1, :cond_0

    .line 398
    const-string v4, "[HistoryManager]"

    const-string v5, "context is null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_0
    return-void

    .line 404
    :cond_0
    const-string v4, "music_history.dat"

    invoke-virtual {p1, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 405
    .local v3, shp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    sget v4, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    if-nez v4, :cond_3

    .line 408
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v4}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 409
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v4, v8}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 411
    .local v2, item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->style:I

    if-ne v9, v4, :cond_1

    .line 412
    const-string v4, "SelectedSource"

    iget-object v5, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    .end local v2           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 414
    .restart local v2       #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_1
    const-string v4, "SelectedCategory"

    iget-object v5, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v4, "SelectedSource"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 418
    .end local v2           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_2
    const-string v4, "SelectedSource"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    const-string v4, "SelectedCategory"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 423
    :cond_3
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v4}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->size()I

    move-result v1

    .line 424
    .local v1, historySize:I
    if-lez v1, :cond_7

    .line 425
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v4, v8}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 426
    .restart local v2       #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    const-string v4, "SelectedSource"

    iget-object v5, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 429
    iget v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->style:I

    if-ne v7, v4, :cond_6

    .line 430
    if-le v1, v7, :cond_5

    .line 431
    iget-object v4, p0, Lcom/htc/music/util/HistoryManager;->mHistoryActivity:Lcom/htc/music/util/HistoryManager$HistoryArrayList;

    invoke-virtual {v4, v7}, Lcom/htc/music/util/HistoryManager$HistoryArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    check-cast v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 432
    .restart local v2       #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    const/4 v4, 0x3

    iget v5, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->style:I

    if-ne v4, v5, :cond_4

    .line 433
    const-string v4, "SelectedCategory"

    iget-object v5, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 435
    :cond_4
    const-string v4, "SelectedCategory"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 438
    :cond_5
    const-string v4, "SelectedCategory"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 441
    :cond_6
    const-string v4, "SelectedCategory"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 445
    .end local v2           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_7
    const-string v4, "SelectedSource"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    const-string v4, "SelectedCategory"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public saveLastCategoryItemTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "tag"

    .prologue
    .line 261
    const-string v2, "music_history.dat"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, shp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SelectedCategory"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    return-void
.end method
