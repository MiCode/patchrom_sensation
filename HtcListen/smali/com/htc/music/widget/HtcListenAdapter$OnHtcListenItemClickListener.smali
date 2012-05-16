.class public Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;
.super Ljava/lang/Object;
.source "HtcListenAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/HtcListenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnHtcListenItemClickListener"
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/music/widget/HtcListenAdapter;)V
    .locals 2
    .parameter "context"
    .parameter "listenAdapter"

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    .line 178
    iput-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    .line 181
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context and HtcListenAdapter shouldn\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    iput-object p1, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    .line 186
    iput-object p2, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    .line 187
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "clickPosition"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    if-nez v8, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    if-eqz v8, :cond_0

    .line 199
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    iget v8, v8, Lcom/htc/music/widget/HtcListenAdapter;->mHeaderCount:I

    sub-int v5, p3, v8

    .line 201
    .local v5, position:I
    if-ltz v5, :cond_2

    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    iget-object v8, v8, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v8, v8

    if-gt v8, v5, :cond_3

    .line 202
    :cond_2
    const-string v8, "[HtcListenAdapter]"

    const-string v9, "click position out of bound!!"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/OnlineMusicUtils;->isNoNetworkConnection(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 208
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v3

    .line 209
    .local v3, networkSetting:Landroid/app/Dialog;
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 214
    .end local v3           #networkSetting:Landroid/app/Dialog;
    :cond_4
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mListenAdapter:Lcom/htc/music/widget/HtcListenAdapter;

    iget-object v8, v8, Lcom/htc/music/widget/HtcListenAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v7, v8, v5

    .line 216
    .local v7, source:Lcom/htc/music/util/SourceItem;
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "StartNewActivity"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 217
    .local v1, forceStartNewActivity:Z
    if-eqz v1, :cond_7

    .line 218
    iget-object v2, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    .line 219
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "ShowActivityTitle"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const-string v8, "InnerActivityType"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 221
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    const v9, 0xc351

    invoke-static {v8, v2, v9}, Lcom/htc/music/util/OnlineMusicUtils;->showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 222
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    .line 223
    .local v4, parentActivity:Landroid/app/Activity;
    if-eqz v4, :cond_5

    .line 224
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 226
    :cond_5
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 232
    .end local v4           #parentActivity:Landroid/app/Activity;
    :cond_6
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    instance-of v8, v8, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v8, :cond_8

    .line 237
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    check-cast v8, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v10, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9, v10}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 241
    :cond_8
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    instance-of v8, v8, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v8, :cond_a

    .line 242
    iget-object v0, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    .line 243
    .local v0, activity:Lcom/htc/music/widget/MusicMaActivity;
    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    .line 244
    .local v6, root:Landroid/app/Activity;
    if-eqz v6, :cond_9

    instance-of v8, v6, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v8, :cond_9

    .line 245
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    check-cast v6, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v6           #root:Landroid/app/Activity;
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v6, v8, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 250
    .restart local v6       #root:Landroid/app/Activity;
    :cond_9
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    .end local v0           #activity:Lcom/htc/music/widget/MusicMaActivity;
    .end local v6           #root:Landroid/app/Activity;
    :cond_a
    iget-object v8, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v9, "ShowActivityTitle"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    iget-object v8, p0, Lcom/htc/music/widget/HtcListenAdapter$OnHtcListenItemClickListener;->mContext:Landroid/app/Activity;

    iget-object v9, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
