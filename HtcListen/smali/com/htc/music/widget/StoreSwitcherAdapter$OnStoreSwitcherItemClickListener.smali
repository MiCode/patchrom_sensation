.class public Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;
.super Ljava/lang/Object;
.source "StoreSwitcherAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/StoreSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnStoreSwitcherItemClickListener"
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "storeSwitcherAdapter"

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    .line 222
    iput-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 225
    iput-object p1, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    .line 226
    iput-object p2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 227
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
    .line 232
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v2, :cond_0

    .line 240
    if-ltz p3, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v2, v2

    if-gt v2, p3, :cond_3

    .line 241
    :cond_2
    const-string v2, "[StoreSwitcherAdapter]"

    const-string v3, "click position out of bound!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    aget-object v1, v2, p3

    .line 249
    .local v1, resultSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    const/4 v2, -0x1

    :try_start_0
    iget v3, v1, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;->mRequestCode:I

    if-eq v2, v3, :cond_5

    .line 252
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/OnlineMusicUtils;->isNoNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    const v3, 0xaae61

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "[StoreSwitcherAdapter]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    const/4 v3, 0x0

    const v4, 0xc351

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/OnlineMusicUtils;->showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 259
    :cond_5
    iget-object v2, p0, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
