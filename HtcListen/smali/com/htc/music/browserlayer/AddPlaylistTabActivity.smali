.class public Lcom/htc/music/browserlayer/AddPlaylistTabActivity;
.super Lcom/htc/widget/HtcTabActivity;
.source "AddPlaylistTabActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;


# static fields
.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field public static final LAUNCH_PARAMETER_NOT_SAVE_HISTORY:I = 0x3

.field private static final MAX_CONTENT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[AddPlaylistTabActivity]"


# instance fields
.field private mArtistId:Ljava/lang/String;

.field private mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field private mComposer:Ljava/lang/String;

.field protected mContentView:Landroid/widget/FrameLayout;

.field protected mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

.field private mGenreId:Ljava/lang/String;

.field private mHandlingOptionsItemSelected:Z

.field private mHandlingPrepareOptionsMenu:Z

.field protected mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mPlaylistUri:Ljava/lang/String;

.field protected mtabHost:Lcom/htc/widget/HtcTabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/htc/widget/HtcTabActivity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 49
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 50
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 52
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 54
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    .line 58
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost;

    .line 59
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 63
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mGenreId:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mComposer:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mArtistId:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 237
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 256
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    return-void
.end method

.method private resetBackgroundAsset()V
    .locals 5

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 296
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 297
    .local v1, resId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 299
    if-lez v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 220
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 222
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 227
    :cond_0
    return-void
.end method

.method public disableCategoryDropDown()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 395
    :cond_0
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 210
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 216
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 212
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 213
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 216
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0
.end method

.method protected initTitle()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 107
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 109
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, title:Landroid/view/View;
    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBar;

    iput-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 111
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f08004a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 112
    .local v0, headerLeftBtn:Lcom/htc/widget/HeaderBarImage;
    if-nez v0, :cond_0

    .line 113
    const-string v3, "[AddPlaylistTabActivity]"

    const-string v4, "can\'t find R.id.headerImgLeft!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 118
    new-instance v3, Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 119
    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct {v4, p0, v5}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 122
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 123
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-nez v3, :cond_1

    .line 124
    const-string v3, "[AddPlaylistTabActivity]"

    const-string v4, "can\'t find R.id.online_headerText!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v4, 0x7f070094

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 129
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f08004c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    .line 133
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_2

    .line 134
    const-string v3, "[AddPlaylistTabActivity]"

    const-string v4, "can\'t find R.id.online_headerImgRight3!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 138
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f070106

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 139
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x208089e

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 140
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderRightBtn:Lcom/htc/widget/HeaderBarImage;

    new-instance v4, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;-><init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcTabHost;->setCustomTabWidget(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 203
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->resetBackgroundAsset()V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 73
    const-string v2, "[AddPlaylistTabActivity]"

    const-string v3, "edit tab oncreate"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 88
    :goto_0
    const-string v2, "[AddPlaylistTabActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlaylistUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getTabHost()Lcom/htc/widget/HtcTabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost;

    .line 94
    const v2, 0x1020011

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 97
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->initTitle()V

    .line 101
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v3, "ArtistBrowserTabPlugin"

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 102
    .local v0, defaultSourec:Lcom/htc/music/util/SourceItem;
    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 104
    return-void

    .line 82
    .end local v0           #defaultSourec:Lcom/htc/music/util/SourceItem;
    :cond_0
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 83
    const-string v2, "genreid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mGenreId:Ljava/lang/String;

    .line 84
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mComposer:Ljava/lang/String;

    .line 85
    const-string v2, "artistid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mArtistId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 260
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    if-ne v4, v3, :cond_0

    move v1, v2

    .line 266
    :goto_0
    return v1

    .line 262
    :cond_0
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    .line 263
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 264
    .local v0, currentActivity:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 265
    .local v1, result:Z
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    if-ne v1, v3, :cond_0

    .line 252
    :goto_0
    return v1

    .line 242
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 243
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 244
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 245
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 247
    .local v1, result:Z
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 248
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0

    .line 251
    .end local v1           #result:Z
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    move v1, v2

    .line 252
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->resetBackgroundAsset()V

    .line 274
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity;->onResume()V

    .line 275
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity;->onStop()V

    .line 280
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    return-void
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 381
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 383
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 384
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 385
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 382
    return-void
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_0

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 375
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 377
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 378
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 379
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 376
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 369
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 371
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 372
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 373
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 370
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "mainTitle"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 322
    if-lez p1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 324
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 334
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 345
    if-eqz p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 159
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 160
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 2
    .parameter "tag"
    .parameter "intent"
    .parameter "saveHistory"

    .prologue
    .line 163
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 164
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 4
    .parameter "tag"
    .parameter "launchIntent"
    .parameter "saveHistory"
    .parameter "clearPreviousHistory"

    .prologue
    .line 167
    if-nez p2, :cond_0

    .line 168
    const-string v2, "[AddPlaylistTabActivity]"

    const-string v3, "shouldn\'t call startActivity without intent!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, window:Landroid/view/Window;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[AddPlaylistTabActivity]"

    const-string v3, "can\'t launch indicate activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "[AddPlaylistTabActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    iput-object p3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    return-void
.end method
