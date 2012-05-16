.class public Lcom/htc/music/widget/StoreSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "StoreSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/StoreSwitcherAdapter$1;,
        Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;,
        Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;,
        Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[StoreSwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

.field private switchIconResId:I

.field private switchTagResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    .line 31
    iput v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    .line 40
    iput-object v1, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    .line 41
    iput-object v1, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;>;"
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 63
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.htc.music.online.strorefont"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, intent:Landroid/content/Intent;
    const-string v11, "InnerActivityType"

    const/4 v12, 0x5

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    new-instance v3, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "FrontStoreTagPlugin"

    const v12, 0xc351

    invoke-direct {v3, v11, v2, v12}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 70
    .local v3, listenSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #listenSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 75
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v11, "vfmusic://"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    new-instance v5, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "MMCStore"

    invoke-direct {v5, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 82
    .local v5, mmcSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #mmcSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    :cond_1
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 89
    .local v4, locale:Ljava/util/Locale;
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v12, 0xb

    if-eq v11, v12, :cond_2

    sget-object v11, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 91
    :cond_2
    const-string v7, "http://m.musicstore.orange.fr"

    .line 97
    .local v7, strLink:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    new-instance v6, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "OrangeStore"

    invoke-direct {v6, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 104
    .local v6, orangeSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #locale:Ljava/util/Locale;
    .end local v6           #orangeSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    .end local v7           #strLink:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 109
    const-string v8, "http://waprd.telstra.com/redirect?target=music-g"

    .line 110
    .local v8, strURL:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    new-instance v9, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "TelstraStore"

    invoke-direct {v9, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 117
    .local v9, telstraSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v2           #intent:Landroid/content/Intent;
    .end local v8           #strURL:Ljava/lang/String;
    .end local v9           #telstraSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    :cond_4
    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 122
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v2

    .line 124
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "AmazonStore"

    invoke-direct {v0, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 127
    .local v0, amazonSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    const v11, 0x7f0701ac

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0           #amazonSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 132
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v10, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    const-string v11, "VerizonStore"

    invoke-direct {v10, v11, v2}, Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 136
    .local v10, verizonSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    const v11, 0x7f0701ad

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v2           #intent:Landroid/content/Intent;
    .end local v10           #verizonSource:Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    iput-object v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    .line 141
    iget-object v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    iput-object v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    .line 145
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    .line 146
    :cond_7
    const v11, 0x208097e

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    .line 147
    const v11, 0x7f0700f5

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    .line 152
    :goto_1
    return-void

    .line 92
    .restart local v4       #locale:Ljava/util/Locale;
    :cond_8
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v12, 0x9

    if-ne v11, v12, :cond_9

    .line 93
    const-string v7, "http://mobile.orange.ch/MusicStore"

    .restart local v7       #strLink:Ljava/lang/String;
    goto/16 :goto_0

    .line 95
    .end local v7           #strLink:Ljava/lang/String;
    :cond_9
    const-string v7, "http://m.musicstore.orange.co.uk"

    .restart local v7       #strLink:Ljava/lang/String;
    goto/16 :goto_0

    .line 149
    .end local v4           #locale:Ljava/util/Locale;
    .end local v7           #strLink:Ljava/lang/String;
    :cond_a
    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreImageResId(Landroid/content/Context;)I

    move-result v11

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    .line 150
    invoke-static {p1}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreStringResId(Landroid/content/Context;)I

    move-result v11

    iput v11, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 172
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 183
    :cond_0
    const-wide/16 v0, -0x1

    .line 186
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSwitchIconResId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchIconResId:I

    return v0
.end method

.method public getSwitchTagResId()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->switchTagResId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 192
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    array-length v4, v4

    if-gt v4, p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v3

    .line 196
    :cond_1
    if-nez p2, :cond_2

    .line 197
    iget-object v4, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v5, 0x7f030066

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 199
    const v4, 0x7f0800fc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 200
    .local v1, image:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    new-instance v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/StoreSwitcherAdapter;Lcom/htc/music/widget/StoreSwitcherAdapter$1;)V

    .line 203
    .local v0, holder:Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;
    const v3, 0x7f0800fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 204
    iget-object v3, v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 206
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    .end local v0           #holder:Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;
    .end local v1           #image:Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;

    .line 211
    .restart local v0       #holder:Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;
    iget-object v3, p0, Lcom/htc/music/widget/StoreSwitcherAdapter;->mSources:[Lcom/htc/music/widget/StoreSwitcherAdapter$ResultSourceItem;

    aget-object v2, v3, p1

    .line 212
    .local v2, item:Lcom/htc/music/util/SourceItem;
    iget-object v3, v0, Lcom/htc/music/widget/StoreSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v3, p2

    .line 214
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
