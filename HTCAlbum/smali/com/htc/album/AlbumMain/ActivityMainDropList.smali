.class public Lcom/htc/album/AlbumMain/ActivityMainDropList;
.super Lcom/htc/widget/HtcTabActivity;
.source "ActivityMainDropList.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DMCInfoBroadcaseReceiver;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainDropList"


# instance fields
.field private final LAST_FOCUSED_INDEX:Ljava/lang/String;

.field private mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

.field private mButtonCamera:Lcom/htc/widget/HeaderBarImage;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mCurrentView:Landroid/view/View;

.field private mDropDownButtonClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;

.field private mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

.field private mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

.field private mIntent:Landroid/content/Intent;

.field private mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

.field private mLastFocusedIndex:I

.field private mSaveFocusedIndex:I

.field private mTabHost:Lcom/htc/widget/HtcTabHost;

.field private mTabLaunchResource:I

.field private mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

.field private mTabWidget:Lcom/htc/widget/HtcTabWidget;

.field private mWindow:Landroid/view/Window;

.field private mbCheckLaunchDMC:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/htc/widget/HtcTabActivity;-><init>()V

    .line 55
    const-string v0, "last_focused_index"

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->LAST_FOCUSED_INDEX:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mSaveFocusedIndex:I

    .line 58
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabHost:Lcom/htc/widget/HtcTabHost;

    .line 59
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    .line 60
    iput v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 62
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 63
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

    .line 65
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    .line 66
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mContentView:Landroid/widget/FrameLayout;

    .line 69
    iput v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:I

    .line 70
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 71
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mCurrentView:Landroid/view/View;

    .line 73
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 74
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 75
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 186
    return-void
.end method

.method private InitializeTabPlugins()V
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getTabHost()Lcom/htc/widget/HtcTabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabHost:Lcom/htc/widget/HtcTabHost;

    .line 444
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabHost:Lcom/htc/widget/HtcTabHost;

    const v2, 0x1020012

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabHost;->findViewById(I)Landroid/view/View;

    .line 446
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v1}, Lcom/htc/widget/HtcTabHost;->getTabWidget()Lcom/htc/widget/HtcTabWidget;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    .line 448
    const v1, 0x1020011

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mContentView:Landroid/widget/FrameLayout;

    .line 452
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 453
    .local v0, actTop:Landroid/app/Activity;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 455
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    if-nez v1, :cond_1

    .line 462
    new-instance v1, Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    .line 463
    :cond_1
    return-void
.end method

.method private SyncAlbumTabPlugins()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 492
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainCarousel][SyncAlbumTabPlugins]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onUpdateDropList()V

    .line 495
    new-instance v1, Lcom/htc/widget/HeaderBarDropDown;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 496
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 497
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

    if-nez v1, :cond_0

    .line 501
    new-instance v1, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

    invoke-direct {v1, p0, v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 504
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    new-instance v2, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;

    invoke-direct {v2, p0, v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    new-instance v1, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    .line 507
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 508
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Capture_Rest(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 509
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 510
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/htc/album/AlbumMain/ActivityMainDropList$1;

    invoke-direct {v2, p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList$1;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    new-instance v1, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 520
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 521
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 522
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableTransparentBackground(Z)V

    .line 523
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addRightView(Landroid/view/View;)V

    .line 525
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcTabWidget;->addCustomView(Landroid/view/View;)V

    .line 528
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v2, "tab_default"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, tabdefault:Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:I

    .line 533
    .end local v0           #tabdefault:Ljava/lang/String;
    :cond_1
    return-void

    .line 531
    .restart local v0       #tabdefault:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/widget/HeaderBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/AlbumMain/AdapterDropList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/AlbumMain/ActivityMainDropList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/album/AlbumMain/ActivityMainDropList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onPrepareDropList()V

    return-void
.end method

.method private launchPluginActivity(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 6
    .parameter "plugin"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 163
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 164
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, viewLaunched:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mCurrentView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mCurrentView:Landroid/view/View;

    if-eq v3, v1, :cond_0

    .line 166
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mContentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 169
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    .local v0, parent:Landroid/view/ViewGroup;
    if-nez v0, :cond_2

    .line 171
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mContentView:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mCurrentView:Landroid/view/View;

    .line 180
    return-void

    .line 173
    :cond_2
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mContentView:Landroid/widget/FrameLayout;

    if-eq v0, v3, :cond_1

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mContentView:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private onPrepareDropList()V
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 479
    .local v0, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->setPreorderedPluginList(Ljava/util/List;)V

    .line 480
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onUpdateDropList()V

    goto :goto_0
.end method

.method private onUpdateDropList()V
    .locals 4

    .prologue
    .line 484
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->reorderPlugins(Landroid/content/Context;)V

    .line 485
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->removeDisabledPlugins(Landroid/content/Context;)V

    .line 486
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->getOrderedPluginList()Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1, v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->setAdapterList(Ljava/util/List;)V

    .line 488
    const-string v1, "ActivityMainDropList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainDropList][onUpdateDropList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isSynced()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 6
    .parameter "plugin"

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 133
    .local v3, intent:Landroid/content/Intent;
    const v4, 0x7f0b00b0

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 135
    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v5, "browse_info"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 136
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 137
    const-string v4, "browse_info"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x1

    .line 147
    .local v0, bIsSourceChange:Z
    const v4, 0x7f0b0028

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 149
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 150
    .local v2, childIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    const-string v4, "source_change"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-direct {p0, p1, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginActivity(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    .line 160
    .end local v2           #childIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v4, "source_change"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-direct {p0, p1, v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginActivity(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public enableAccessCamera(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/4 v3, 0x0

    .line 548
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    const-string v0, "ActivityMainDropList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainDropList][enableAccessCamera]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    if-eqz p1, :cond_2

    .line 554
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarDropDown;->enableIndicatorOffset(Z)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mButtonCamera:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->enableIndicatorOffset(Z)V

    goto :goto_0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 616
    :cond_0
    const-string v0, "ActivityMainDropList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainDropList][enableDataSourceUpdating]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public enableSourceContentPadding(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 626
    const-string v0, "ActivityMainDropList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainDropList][enableSourceContentPadding]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarMiddle;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/htc/album/Customizable/CustHtcDropList;->setTabContentMargin(Landroid/content/Context;Landroid/widget/FrameLayout;IZ)V

    .line 628
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 7
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 570
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    if-nez v2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTabWidget;->getVisibility()I

    move-result v1

    .line 574
    .local v1, nVisibility:I
    const-string v2, "ActivityMainDropList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainDropList][enableSourceSwitch]: enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    if-ne v5, p1, :cond_3

    if-eqz v1, :cond_3

    .line 577
    if-ne v5, p2, :cond_2

    .line 578
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 579
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 580
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 581
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcTabWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 583
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcTabWidget;->setVisibility(I)V

    goto :goto_0

    .line 585
    :cond_3
    if-nez p1, :cond_0

    if-eq v1, v6, :cond_0

    .line 605
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcTabWidget;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableTitleProgressBar(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public fullscreenMode(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 642
    invoke-static {p0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 643
    return-void
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, view:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    if-eqz v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabWidget:Lcom/htc/widget/HtcTabWidget;

    .line 636
    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 536
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 537
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 538
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 540
    .local v0, childActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/opensense2/widget/ActivityMainBase;

    if-eqz v1, :cond_0

    .line 541
    check-cast v0, Lcom/htc/opensense2/widget/ActivityMainBase;

    .end local v0           #childActivity:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/widget/ActivityMainBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 544
    :cond_0
    return-void
.end method

.method protected onAddPluginTabs()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onAddPluginTabs]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->SyncAlbumTabPlugins()V

    .line 440
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 190
    .local v0, child:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 192
    instance-of v1, v0, Lcom/htc/opensense2/widget/ActivityMainBase;

    if-eqz v1, :cond_1

    .line 194
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onBackPressed]: onBackPressedOverride"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 195
    check-cast v1, Lcom/htc/opensense2/widget/ActivityMainBase;

    invoke-virtual {v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBackPressedOverride()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onBackPressed]: onBackPressed..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 206
    :cond_2
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onBackPressed]: go to super..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 387
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 225
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onCreate]2: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->setContentView(I)V

    .line 228
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->checkAndLaunchDMC(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/AlbumMain/AdapterDropList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 233
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->onCreate()V

    .line 234
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->InitializeTabPlugins()V

    .line 235
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->SyncAlbumTabPlugins()V

    .line 237
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mWindow:Landroid/view/Window;

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 242
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onDestroy]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabHost:Lcom/htc/widget/HtcTabHost;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabHost:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->setLastTabTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    :cond_0
    iput-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabHost:Lcom/htc/widget/HtcTabHost;

    .line 374
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->onDestroy()V

    .line 378
    :cond_1
    iput-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 382
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity;->onDestroy()V

    .line 383
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 424
    .local v0, child:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    .line 428
    :cond_0
    if-nez v1, :cond_1

    .line 429
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcTabActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    .line 432
    :cond_1
    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "newIntent"

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v3, -0x1

    .line 245
    const-string v1, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][onNewIntent]: Begin"

    invoke-static {v1, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->setIntent(Landroid/content/Intent;)V

    .line 250
    iput v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 252
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 253
    .local v7, actTop:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p0

    .line 254
    :cond_0
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, action:Ljava/lang/String;
    const-string v1, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p0, v13}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->fullscreenMode(Z)V

    .line 265
    :cond_1
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->checkAndLaunchDMC(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v5, "tab_default"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, tabdefault:Ljava/lang/String;
    if-nez v12, :cond_4

    move v1, v3

    :goto_0
    iput v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:I

    .line 272
    .end local v12           #tabdefault:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:I

    if-eq v1, v3, :cond_6

    .line 274
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterDropList;->getCount()I

    move-result v9

    .line 275
    .local v9, count:I
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    if-ge v4, v9, :cond_3

    .line 277
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1, v4}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 278
    .local v11, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:I

    invoke-virtual {v11}, Lcom/htc/opensense/plugin/TabPluginRemote;->getIndicatorLabelRes()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 280
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

    const-wide/16 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 310
    .end local v4           #nIndex:I
    .end local v9           #count:I
    .end local v11           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_3
    :goto_2
    iput-boolean v13, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 312
    :goto_3
    return-void

    .line 269
    .restart local v12       #tabdefault:Ljava/lang/String;
    :cond_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 275
    .end local v12           #tabdefault:Ljava/lang/String;
    .restart local v4       #nIndex:I
    .restart local v9       #count:I
    .restart local v11       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 287
    .end local v4           #nIndex:I
    .end local v9           #count:I
    .end local v11           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_6
    const/4 v11, 0x0

    .line 288
    .local v11, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    move-object v11, v0

    .line 292
    invoke-virtual {v11}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_7
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v1, :cond_8

    .line 303
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v11}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 305
    :cond_8
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onItemClick]: back to default... "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v11, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginActivity(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_2

    .line 294
    :catch_0
    move-exception v10

    .line 296
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onNewIntent]: no plugin or plugin.getActivityIntent() fali"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-nez v11, :cond_7

    goto :goto_3
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity;->onPause()V

    .line 356
    iput-boolean v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    .line 360
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onPause]: Finish by called from main activity."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/album/helper/SyncControlManager;->syncAllServices(Landroid/content/Context;Z)V

    .line 366
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 390
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 392
    :cond_0
    const/4 v1, 0x0

    .line 394
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 396
    .local v0, child:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 398
    const-string v2, "ActivityMainDropList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainDropList][onPrepareOptionsMenu]: this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "ActivityMainDropList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainDropList][onPrepareOptionsMenu]: child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v2, "ActivityMainDropList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainDropList][onPrepareOptionsMenu]: child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-eq p0, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 404
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 412
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 413
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 416
    :cond_2
    return v1

    .line 408
    :cond_3
    const-string v2, "ActivityMainDropList"

    const-string v3, "[HTCAlbum][ActivityMainDropList][onPrepareOptionsMenu]: avoid loop..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 672
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onRestoreInstanceState]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 674
    const-string v0, "last_focused_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mSaveFocusedIndex:I

    .line 675
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 315
    const-string v0, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onResume]: Begin"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity;->onResume()V

    .line 318
    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mbCheckLaunchDMC:Z

    if-nez v0, :cond_0

    .line 320
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->checkAndLaunchDMC(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/album/helper/SyncControlManager;->syncAllServices(Landroid/content/Context;Z)V

    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v3, 0x0

    .line 327
    .local v3, nTabIndex:I
    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mSaveFocusedIndex:I

    if-eq v4, v0, :cond_2

    .line 329
    iget v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mSaveFocusedIndex:I

    .line 330
    iput v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mSaveFocusedIndex:I

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList$ItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 334
    :cond_2
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->getCount()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 336
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0, v6}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v7, Lcom/htc/opensense/plugin/TabPlugin;

    .line 337
    .restart local v7       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v7, :cond_4

    .line 334
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 340
    :cond_4
    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:I

    if-eq v4, v0, :cond_3

    .line 342
    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:I

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 343
    move v3, v6

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 663
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onSaveInstanceState]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 665
    const-string v0, "last_focused_index"

    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 666
    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mSaveFocusedIndex:I

    .line 667
    return-void
.end method

.method public setDropDownButtonClickListener(Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mDropDownButtonClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;

    .line 88
    return-void
.end method
