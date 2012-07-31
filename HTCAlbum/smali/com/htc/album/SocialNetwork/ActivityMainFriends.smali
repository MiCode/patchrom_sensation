.class public Lcom/htc/album/SocialNetwork/ActivityMainFriends;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;
.source "ActivityMainFriends.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mButtonLogin:Landroid/widget/Button;

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutListView:Landroid/widget/RelativeLayout;

.field private mLayoutLoginView:Landroid/view/View;

.field private mTextViewLogin:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutLoginView:Landroid/view/View;

    .line 54
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 55
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutListView:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    .line 57
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    .line 59
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onLaunchSettings_Wireless()V

    return-void
.end method

.method private onLaunchSettings_Wireless()V
    .locals 2

    .prologue
    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 497
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    return-void
.end method

.method private setButtonOnClickListener()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    :cond_0
    return-void
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 6
    .parameter "nLayoutType"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 206
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainFriends][RelayoutPageView]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutLoginView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutListView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutLoginView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutListView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    :cond_6
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 231
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_LoginButton(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 241
    :cond_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->setActivityTitle()V

    .line 245
    if-nez p1, :cond_b

    .line 247
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->setButtonOnClickListener()V

    goto :goto_0

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 235
    :cond_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "opensense_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "login_btn_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 252
    :cond_b
    if-ne v5, p1, :cond_c

    .line 254
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->syncListViewLayout()V

    goto/16 :goto_0

    .line 257
    :cond_c
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLoadingText:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->enablePageLoading(Z)V

    goto/16 :goto_0
.end method

.method public enableAccessCamera(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 538
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    .line 540
    :cond_0
    return-void
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 554
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 556
    :cond_0
    return-void
.end method

.method protected enablePageLoading(Z)V
    .locals 5
    .parameter "bIsLoading"

    .prologue
    const/4 v4, 0x0

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, viewText_1:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 506
    .local v0, progressBar:Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewText_1:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 509
    .restart local v1       #viewText_1:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #progressBar:Landroid/widget/ProgressBar;
    check-cast v0, Landroid/widget/ProgressBar;

    .line 511
    .restart local v0       #progressBar:Landroid/widget/ProgressBar;
    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 513
    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 516
    :cond_1
    if-eqz v1, :cond_2

    .line 517
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    :cond_3
    :goto_0
    return-void

    .line 523
    :cond_4
    if-eqz v0, :cond_5

    .line 524
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 526
    :cond_5
    if-eqz v1, :cond_3

    .line 527
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enableSourceContentPadding(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 562
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 564
    :cond_0
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 546
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 548
    :cond_0
    return-void
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPageComponents()V
    .locals 5

    .prologue
    const v4, 0x7f0a0052

    .line 160
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 172
    :cond_1
    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/htc/album/SocialNetwork/ListViewFriends;-><init>(Lcom/htc/opensense2/album/AdapterBase;Lcom/htc/opensense2/album/DisplayManagerInterface;Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/DisplayManager;->setMainViewContainerId(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->addTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)Z

    .line 176
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/ViewTemplateBase;->getId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 183
    :cond_2
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutLoginView:Landroid/view/View;

    .line 184
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutListView:Landroid/widget/RelativeLayout;

    .line 185
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 186
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mButtonLogin:Landroid/widget/Button;

    .line 187
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    .line 188
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 111
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityMainFriends][onActivityResult]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/16 v1, 0x4e2a

    if-ne v1, p1, :cond_1

    if-eqz p3, :cond_1

    .line 114
    const-string v1, "contact_update"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    .local v0, bIsUpdate:Z
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 117
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityMainFriends][onActivityResult]: update contact list."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v2, 0x4e28

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 127
    .end local v0           #bIsUpdate:Z
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityMainFriends][onActivityResult]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityMainFriends][onActivityResult]: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onUIActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onButtonClickLogin()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 388
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 63
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ActivityMainFriends][onCreate]: Begin"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const v2, 0x7f030028

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->setContentView(I)V

    .line 65
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 69
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v1

    .line 70
    .local v1, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "service_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 71
    .local v0, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create opensense data plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {p0, v2, v3}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFriendListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 75
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->setDataPlugin(Lcom/htc/opensense/album/plugin/FriendListPluginBase;)V

    .line 77
    :cond_0
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ActivityMainFriends][onCreate]: End"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriends][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onDeInit()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 107
    :cond_0
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriends][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onMenuContactPicker()V
    .locals 5

    .prologue
    .line 352
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 353
    .local v1, adapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    if-nez v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getActiveUser()Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    move-result-object v0

    .line 357
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v0, :cond_0

    .line 360
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "service_name"

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v3, "user_id"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.SocialNetwork.ActivityMainFriendsPicker"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/16 v3, 0x4e2a

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onMenuRefresh(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/16 v3, 0x4e28

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    const/16 v0, 0x274c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 380
    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    .line 408
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 431
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onMessageHandler(Landroid/os/Message;)V

    .line 434
    :goto_0
    :sswitch_0
    return-void

    .line 411
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->RelayoutPageView(I)V

    goto :goto_0

    .line 414
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->RelayoutPageView(I)V

    goto :goto_0

    .line 419
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->RelayoutPageView(I)V

    goto :goto_0

    .line 424
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onSyncListComplete(Landroid/os/Message;)V

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->RelayoutPageView(I)V

    goto :goto_0

    .line 428
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onMenuRefresh(I)V

    goto :goto_0

    .line 408
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_3
        0x2728 -> :sswitch_0
        0x274f -> :sswitch_2
        0x2750 -> :sswitch_0
        0x4e84 -> :sswitch_1
        0x4e88 -> :sswitch_4
        0x10200001 -> :sswitch_5
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, -0x1

    .line 323
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v0

    .line 347
    :goto_0
    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 331
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    :goto_1
    :pswitch_0
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriends][onOptionsItemSelected]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onMenuContactPicker()V

    .line 336
    const/4 v0, 0x1

    .line 338
    goto :goto_1

    .line 341
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onMenuRefresh(I)V

    .line 342
    const/4 v0, 0x1

    goto :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriends][onPause]:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onPause()V

    .line 94
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 95
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ActivityMainFriends][onPrepareOptionsMenu]:... "

    invoke-static {v2, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 274
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 319
    :goto_0
    return v2

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 282
    :cond_1
    const/4 v2, 0x2

    const v5, 0x7f0b0024

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 283
    .local v0, itemContactPicker:Landroid/view/MenuItem;
    const/4 v2, 0x5

    const v5, 0x20c0202

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 285
    .local v1, itemRefresh:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 287
    if-eqz v0, :cond_2

    .line 289
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    :cond_2
    if-eqz v1, :cond_3

    .line 293
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    move v2, v4

    .line 319
    goto :goto_0

    .line 298
    :cond_4
    if-eqz v0, :cond_5

    .line 300
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getFriendsCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 302
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    const v2, 0x2080a40

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 311
    :cond_5
    :goto_2
    if-eqz v1, :cond_3

    .line 313
    const v2, 0x208033b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 314
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 307
    :cond_6
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainFriends][onResume]:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 87
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->enableSourceContentPadding(Z)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->enableAccessCamera(Z)V

    .line 89
    return-void
.end method

.method public onSyncListComplete(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 391
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityMainFriends][onSyncListComplete]:... "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listviewPos"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    instance-of v1, v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    if-eqz v1, :cond_0

    .line 395
    if-eq v0, v3, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listviewPos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v1, v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->setCurrPosition(I)V

    .line 401
    :cond_0
    const/16 v1, 0x272d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 402
    const/16 v1, 0x2728

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 405
    return-void
.end method

.method public setActivityTitle()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, viewText:Landroid/widget/TextView;
    const v1, 0x2020054

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #viewText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #viewText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #viewText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #viewText:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_1
    return-void
.end method

.method protected showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 456
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 461
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends$2;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 468
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 472
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c0162

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0156

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 477
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c0200

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends$3;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends$3;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 484
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends$4;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends$4;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 491
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    const-string v1, "service_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 153
    :goto_0
    sget-object v1, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriends][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    const-string v2, "service_display"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
