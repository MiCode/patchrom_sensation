.class public Lcom/htc/music/widget/SourceSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_DLNA_TAG:Ljava/lang/String; = "DlnaBrowserTabPlugin"

.field public static final CATEGORY_LISTEN_BROWSE_TAG:Ljava/lang/String; = "ListenBrowseTabPlugin"

.field public static final CATEGORY_VMM_TAG:Ljava/lang/String; = "VMMBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[SourceSwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

.field private mUIhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "enableHtcListen"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 51
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 184
    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/SourceSwitcherAdapter$1;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->initialSourceItems(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "enableListen"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 68
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 71
    .local v3, listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    if-eqz p2, :cond_1

    .line 72
    const-string v4, "android.intent.action.listenpage"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v3, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .end local v3           #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    const-string v4, "ListenBrowseTabPlugin"

    invoke-direct {v3, v4, v2, v7}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 83
    .restart local v3       #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    :goto_0
    const-string v4, "ShowActivityTitle"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const-string v4, "InnerActivityType"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v4, "LaunchFromSwitcher"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const v4, 0x7f0700ed

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 87
    const v4, 0x7f020036

    iput v4, v3, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 89
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/dlnaexp"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :goto_1
    const-string v4, "ShowActivityTitle"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v4, "InnerActivityType"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v4, "LaunchFromSwitcher"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const-string v4, "DlnaBrowserTabPlugin"

    invoke-direct {v1, v4, v2, v7}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 101
    .local v1, dlnaSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    const v4, 0x7f070026

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 102
    const v4, 0x7f020038

    iput v4, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/widget/SourceSwitcherAdapter;->loadVMMTab(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 123
    iget-object v4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 124
    return-void

    .line 75
    .end local v0           #arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;>;"
    .end local v1           #dlnaSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    :cond_1
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 76
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/artistalbumexp"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :goto_2
    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance v3, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .end local v3           #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    const-string v4, "ArtistBrowserTabPlugin"

    invoke-direct {v3, v4, v2, v6}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .restart local v3       #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    goto/16 :goto_0

    .line 78
    :cond_2
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/artistalbum"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 95
    :cond_3
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/dlna"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private loadVMMTab(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 202
    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;

    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 204
    .local v1, vmmRrunable:Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 136
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 146
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 147
    :cond_0
    const-wide/16 v0, -0x1

    .line 150
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 245
    const-string v0, "ListenBrowseTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    const-string v0, "DlnaBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 156
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v3, v3

    if-gt v3, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v2

    .line 160
    :cond_1
    if-nez p2, :cond_2

    .line 161
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f030066

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 162
    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/SourceSwitcherAdapter$1;)V

    .line 163
    .local v0, holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    const v2, 0x7f0800fc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->image:Lcom/htc/widget/HtcListItemColorIcon;

    .line 164
    const v2, 0x7f0800fd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 165
    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 167
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    .end local v0           #holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    .line 172
    .restart local v0       #holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v1, v2, p1

    .line 173
    .local v1, item:Lcom/htc/music/util/SourceItem;
    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->image:Lcom/htc/widget/HtcListItemColorIcon;

    iget v3, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 174
    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    .line 176
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
