.class public Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.super Lcom/htc/widget/HtcTabActivity1;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
    }
.end annotation


# static fields
.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field public static final LAUNCH_PARAMETER_NOT_SAVE_HISTORY:I = 0x3

.field public static final LAUNCH_PARAMETER_REMOVE_PREVIOUS:I = 0x0

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_INTENT:I = 0x1

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_VIEW:I = 0x2

.field private static final MAX_CONTENT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MusicBrowserTabActivity]"


# instance fields
.field private mArtistId:Ljava/lang/String;

.field private mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field private mComposer:Ljava/lang/String;

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mErrorView:Landroid/view/View;

.field protected mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

.field private mGenreId:Ljava/lang/String;

.field private mHandlingOptionsItemSelected:Z

.field private mHandlingPrepareOptionsMenu:Z

.field protected mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

.field private mHeaderDropdownIndicator:Landroid/widget/ImageView;

.field private mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

.field protected mHistoryManager:Lcom/htc/music/util/HistoryManager;

.field private mInternalEnough:Z

.field private mMimeType:Ljava/lang/String;

.field protected mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field public mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mPlaylistUri:Ljava/lang/String;

.field public mSearchAction:Landroid/view/View$OnClickListener;

.field private mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field protected mtabHost:Lcom/htc/widget/HtcTabHost1;

.field private progressOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/htc/widget/HtcTabActivity1;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 74
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 75
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 77
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 78
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 80
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 81
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 83
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    .line 85
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 87
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    .line 88
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    .line 89
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    .line 91
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    .line 97
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 98
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost1;

    .line 99
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 101
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 107
    iput v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 109
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 427
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 465
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 484
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 514
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    .line 983
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1450
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    .line 1462
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    .line 1471
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    .line 1496
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    .line 1506
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    .line 1541
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSearchAction:Landroid/view/View$OnClickListener;

    .line 1547
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startOnlineSearchPage()V

    return-void
.end method

.method private resetHeaderMiniPlayerButton(Z)V
    .locals 2
    .parameter "isLandscape"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 416
    if-eqz p1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetMiniPlayer(Z)V
    .locals 3
    .parameter "isHorizontal"

    .prologue
    const v2, 0x7f080035

    .line 388
    if-eqz p1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 391
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 393
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 412
    .end local v0           #container:Landroid/widget/LinearLayout;
    :cond_1
    :goto_0
    return-void

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_1

    .line 401
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 403
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 404
    .restart local v0       #container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0
.end method

.method private setDropDownEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const v3, 0x20d009e

    const/4 v2, 0x0

    .line 517
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    if-eqz p1, :cond_3

    .line 522
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setClickable(Z)V

    .line 525
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    if-gez v0, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarDropDown;->setClickable(Z)V

    .line 535
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    iget v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    if-gez v0, :cond_4

    .line 538
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    .line 540
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->progressOffset:I

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setTitleStyle(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->enableIndicatorOffset(Z)V

    .line 552
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 579
    :goto_0
    :pswitch_0
    return-void

    .line 555
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategorySwitcherStyleTitle()V

    goto :goto_0

    .line 559
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle()V

    goto :goto_0

    .line 563
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASourceSwitcherStyleTitle()V

    goto :goto_0

    .line 567
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASwitchStyleTitle()V

    goto :goto_0

    .line 571
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreSwitchStyleTitle()V

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showInternalStorageErrorMode()V
    .locals 6

    .prologue
    .line 430
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 432
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030059

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 434
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v5, 0x7f0800a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 435
    .local v0, errorIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 436
    const v4, 0x208086b

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 439
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 440
    .local v1, errorMessage:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 441
    const v4, 0x7f070040

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 445
    .end local v0           #errorIcon:Landroid/widget/ImageView;
    .end local v1           #errorMessage:Landroid/widget/TextView;
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    .line 446
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v4}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x208097e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 451
    .local v3, storeDisable:Landroid/graphics/drawable/Drawable;
    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 452
    const v4, 0x7f0700f5

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 455
    .end local v3           #storeDisable:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method private startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .parameter "mimeType"
    .parameter "intent"

    .prologue
    .line 1323
    if-nez p1, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    .line 1326
    const-string v1, "com.htc.media/dlna"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1327
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    const-string v2, "DlnaBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 1328
    .local v0, item:Lcom/htc/music/util/SourceItem;
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1340
    .end local v0           #item:Lcom/htc/music/util/SourceItem;
    :cond_2
    const/4 v0, 0x0

    .line 1341
    .restart local v0       #item:Lcom/htc/music/util/SourceItem;
    const-string v1, "com.htc.media/album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 1349
    :goto_1
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v2, "LaunchFromSwitcher"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1350
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1343
    :cond_3
    const-string v1, "com.htc.media/track"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1344
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "TrackBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    goto :goto_1

    .line 1346
    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    goto :goto_1
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 1439
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1443
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 1554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1556
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1557
    return-void
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 1290
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1292
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1295
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1297
    :cond_0
    return-void
.end method

.method public disableCategoryDropDown()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 1053
    :cond_0
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 1405
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 1407
    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1580
    .local v0, result:Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1583
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1279
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1280
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 1286
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 1282
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1283
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1284
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1285
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 1286
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0
.end method

.method protected initMiniPlayer()V
    .locals 2

    .prologue
    .line 376
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 383
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initTitle()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 267
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 269
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v3, 0x7f030009

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 270
    .local v2, title:Landroid/view/View;
    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBar;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 271
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 273
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    .line 274
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_0

    .line 275
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgLeft!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 279
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f020036

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 282
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarDropDown;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 283
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-nez v3, :cond_1

    .line 284
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerDropDown!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v4, 0x7f0700ed

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 288
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 289
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    .line 298
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f08003b

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    .line 299
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_2

    .line 300
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgRight1!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 304
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f070105

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 305
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x20808fb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 306
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn1:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f08003a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    .line 309
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_3

    .line 310
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgRight2!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 315
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    .line 316
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-nez v3, :cond_4

    .line 317
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find R.id.headerImgRight3!! should never happen!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 323
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v4, 0x2020256

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    .line 324
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropdownIndicator:Landroid/widget/ImageView;

    if-nez v3, :cond_5

    .line 325
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "can\'t find com.htc.R.id.indicator!!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_5
    new-instance v3, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 330
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 331
    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v4, p0, v5}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 338
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreRightBtn()V

    .line 345
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    .line 346
    .local v0, enableHtcListen:Z
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v3, :cond_6

    .line 347
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v3

    if-eq v6, v3, :cond_6

    .line 348
    const/4 v0, 0x0

    .line 351
    :cond_6
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3, v0}, Lcom/htc/music/util/HistoryManager;->enableHtcListen(Z)V

    .line 353
    new-instance v3, Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 354
    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 361
    new-instance v3, Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-direct {v3, p0, v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 362
    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 370
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost1;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcTabHost1;->setCustomTabWidget(Landroid/view/View;)V

    goto/16 :goto_0

    .line 335
    .end local v0           #enableHtcListen:Z
    :cond_7
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    .line 336
    iput-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 995
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startListenStore()V

    .line 1004
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1003
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, childhandled:Z
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1012
    .local v0, child:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/app/ActivityGroup;

    if-eqz v3, :cond_0

    .line 1013
    check-cast v0, Landroid/app/ActivityGroup;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1016
    .restart local v0       #child:Landroid/app/Activity;
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v3, :cond_1

    .line 1017
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->onMaBackPressed()Z

    move-result v1

    .line 1020
    :cond_1
    if-eqz v1, :cond_2

    .line 1038
    :goto_0
    return-void

    .line 1022
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1023
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    .line 1029
    .local v2, lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 1030
    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 1032
    :cond_3
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "intent and cached view are null!! should never happen!! "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    .end local v2           #lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_4
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 848
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 849
    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 853
    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v5, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 854
    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v5, v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetHeaderMiniPlayerButton(Z)V

    .line 856
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 857
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    move v1, v3

    .line 853
    goto :goto_1

    :cond_3
    move v2, v3

    .line 854
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 189
    const-string v8, "[MusicBrowserTabActivity]"

    const-string v11, "tab oncreate"

    invoke-static {v8, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->requestWindowFeature(I)Z

    .line 193
    const-string v8, "[MusicBrowserTabActivity]"

    const-string v11, "Send a FOTA broadcast"

    invoke-static {v8, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.updater.FOTA_SETTING_INDIVIDUAL"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, fotaIntent:Landroid/content/Intent;
    const-string v8, "package_name"

    const-string v11, "com.htc.music"

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v8, "show_download_dialog"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v8, "update_type"

    const-string v11, "individual_appupdate"

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 203
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "SaveRender"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 204
    .local v4, nSaveDMR:I
    const-string v8, "Render"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, szDMR:Ljava/lang/String;
    const-string v8, "Server"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, szDMS:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "DLNA"

    invoke-virtual {v8, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v11, "Render"

    invoke-interface {v8, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v11, "server"

    invoke-interface {v8, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    .end local v0           #Preferences:Landroid/content/SharedPreferences;
    :cond_0
    if-eqz p1, :cond_2

    .line 225
    :goto_0
    const v8, 0x7f030008

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setContentView(I)V

    .line 228
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getTabHost()Lcom/htc/widget/HtcTabHost1;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mtabHost:Lcom/htc/widget/HtcTabHost1;

    .line 229
    const v8, 0x2020246

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 231
    new-instance v8, Lcom/htc/music/util/HistoryManager;

    invoke-direct {v8, p0}, Lcom/htc/music/util/HistoryManager;-><init>(Landroid/app/ActivityGroup;)V

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 233
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 235
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initTitle()V

    .line 236
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initMiniPlayer()V

    .line 238
    const/4 v8, 0x2

    iget v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v8, v11, :cond_3

    move v8, v9

    :goto_1
    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetHeaderMiniPlayerButton(Z)V

    .line 240
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 246
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v8, ""

    iget-object v9, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 247
    :cond_1
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v9, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v8, p0, v9, v10}, Lcom/htc/music/util/HistoryManager;->restoreHistoryInstanceState(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;)V

    .line 248
    const/4 v3, 0x0

    .line 249
    .local v3, lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v8}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v3

    .line 250
    if-eqz v3, :cond_4

    .line 251
    iget-object v8, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v9, v3, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    invoke-virtual {p0, v8, v9, v12}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 264
    .end local v3           #lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :goto_2
    return-void

    .line 218
    :cond_2
    const-string v8, "playlisturi"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 219
    const-string v8, "genreid"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 220
    const-string v8, "composer"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 221
    const-string v8, "artistid"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 222
    invoke-virtual {v2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move v8, v10

    .line 238
    goto :goto_1

    .line 253
    .restart local v3       #lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_4
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v9, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v8, p0, v9}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v5

    .line 254
    .local v5, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v8, v5, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v9, v5, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v8, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2

    .line 261
    .end local v3           #lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v5           #selectedSourceItem:Lcom/htc/music/util/SourceItem;
    :cond_5
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v8, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "params"

    .prologue
    .line 502
    packed-switch p1, :pswitch_data_0

    .line 507
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcTabActivity1;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 504
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 799
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onDestroy()V

    .line 801
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 802
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 803
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 805
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    .line 807
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    .line 812
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;->releaseAdapter()V

    .line 817
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;->releaseAdapter()V

    .line 822
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 825
    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    .line 118
    const-string v7, "[MusicBrowserTabActivity]"

    const-string v8, "tab receive new intent"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onNewIntent(Landroid/content/Intent;)V

    .line 122
    const-string v7, "SaveRender"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 123
    .local v3, nSaveDMR:I
    const-string v7, "Render"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, szDMR:Ljava/lang/String;
    const-string v7, "Server"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, szDMS:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "DLNA"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "Render"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "server"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    .end local v0           #Preferences:Landroid/content/SharedPreferences;
    :cond_0
    const-string v7, "playlisturi"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 136
    const-string v7, "genreid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 137
    const-string v7, "composer"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 138
    const-string v7, "artistid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 139
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 141
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 148
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string v7, ""

    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 155
    .local v1, currentActivity:Landroid/app/Activity;
    if-nez v1, :cond_4

    .line 156
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v7}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    .line 157
    .local v2, item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v2, :cond_3

    .line 158
    iget-object v7, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v8, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 185
    .end local v1           #currentActivity:Landroid/app/Activity;
    .end local v2           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_2
    :goto_0
    return-void

    .line 160
    .restart local v1       #currentActivity:Landroid/app/Activity;
    .restart local v2       #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v7, p0, v8}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v4

    .line 161
    .local v4, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v7, v4, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v8, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    .end local v2           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v4           #selectedSourceItem:Lcom/htc/music/util/SourceItem;
    :cond_4
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v7, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    goto :goto_0

    .line 181
    .end local v1           #currentActivity:Landroid/app/Activity;
    :cond_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v7}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 183
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 488
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    if-ne v4, v3, :cond_0

    move v1, v2

    .line 494
    :goto_0
    return v1

    .line 490
    :cond_0
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 491
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 492
    .local v0, currentActivity:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 493
    .local v1, result:Z
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    if-ne v1, v3, :cond_0

    .line 480
    :goto_0
    return v1

    .line 470
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 471
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 472
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 473
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 475
    .local v1, result:Z
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 476
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0

    .line 479
    .end local v1           #result:Z
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    move v1, v2

    .line 480
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1570
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1572
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1361
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onResume()V

    .line 1363
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    .line 1367
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1563
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-super {p0, p1}, Lcom/htc/widget/HtcTabActivity1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1565
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 1566
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1372
    :try_start_0
    invoke-super {p0}, Lcom/htc/widget/HtcTabActivity1;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1380
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 1381
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 1386
    :cond_0
    return-void

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 1119
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 1
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1134
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1136
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 2
    .parameter "setVisibile"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1123
    if-eqz p1, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1105
    if-eqz p1, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 1243
    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 1
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1258
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1260
    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 1267
    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    :cond_0
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 2
    .parameter "setVisibile"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1247
    if-eqz p1, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 1205
    :cond_0
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 1
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1220
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1222
    :cond_0
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 1229
    :cond_0
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    :cond_0
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 2
    .parameter "setVisibile"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1209
    if-eqz p1, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategorySwitcherStyleTitle()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 649
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    sget v1, Lcom/htc/music/util/HistoryManager;->MAX_SOURCE_HISTORY:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_4

    .line 656
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 667
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 674
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 677
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 705
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 706
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 707
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 708
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 710
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 711
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 717
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v2, :cond_7

    .line 719
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 725
    :cond_3
    :goto_3
    return-void

    .line 658
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 662
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208089e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 663
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 680
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 681
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_1

    .line 713
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_2

    .line 721
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    goto :goto_3
.end method

.method public setDLNASourceSwitcherStyleTitle()V
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle()V

    .line 586
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 596
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->enableIndicatorOffset(Z)V

    .line 599
    :cond_1
    return-void
.end method

.method public setDLNASwitchStyleTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 761
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setDLNASwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 772
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 782
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 783
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 785
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 792
    :cond_3
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 1061
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "mainTitle"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 1067
    :cond_0
    return-void
.end method

.method public setOnlineSearchRightBtn()V
    .locals 2

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f0700e9

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x2080954

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1170
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 1171
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    :cond_0
    return-void
.end method

.method public setSearchRightBtn()V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f0700e9

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x2080954

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1158
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 1159
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSearchAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1071
    if-lez p1, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryText(I)V

    .line 1073
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1082
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 1093
    if-eqz p1, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSourceSwitcherStyleTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 604
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setSourceSwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 614
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 615
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 617
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208089e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 618
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 624
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 625
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 639
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 646
    :cond_3
    return-void
.end method

.method public setStoreRightBtn()V
    .locals 3

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1180
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1181
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1182
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 1183
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1184
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v0

    .line 1185
    .local v0, storeCount:I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1186
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    .end local v0           #storeCount:I
    :cond_0
    :goto_0
    return-void

    .line 1188
    .restart local v0       #storeCount:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1189
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1190
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1193
    .end local v0           #storeCount:I
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStoreSwitchStyleTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 728
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setStoreSwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderDropDown:Lcom/htc/widget/HeaderBarDropDown;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 740
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 749
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 750
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 752
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 758
    :cond_3
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 876
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 877
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1
    .parameter "tag"
    .parameter "intent"
    .parameter "saveHistory"

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 882
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 15
    .parameter "tag"
    .parameter "launchIntent"
    .parameter "saveHistory"
    .parameter "clearPreviousHistory"

    .prologue
    .line 885
    if-nez p2, :cond_0

    .line 886
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v14, "shouldn\'t call startActivity without intent!!"

    invoke-static {v2, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :goto_0
    return-void

    .line 890
    :cond_0
    if-eqz p4, :cond_1

    .line 892
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 895
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 899
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x400

    and-int/2addr v2, v14

    if-lez v2, :cond_7

    const/4 v7, 0x1

    .line 900
    .local v7, clearTop:Z
    :goto_1
    if-eqz v7, :cond_2

    .line 901
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/music/util/HistoryManager;->clearTop(Ljava/lang/String;)Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 902
    const/16 p3, 0x3

    .line 905
    :cond_2
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 906
    .local v10, launchFromSwitcher:Z
    const-string v2, "InnerActivityType"

    const/4 v14, 0x3

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 907
    .local v6, innerType:I
    const/4 v2, 0x3

    if-ne v2, v6, :cond_3

    .line 909
    if-eqz v10, :cond_3

    .line 910
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearCategoryHistory()V

    .line 915
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x2000

    or-int/2addr v2, v14

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 919
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    .line 920
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v2, :cond_8

    const/4 v2, 0x2

    if-eq v2, v6, :cond_8

    const/4 v2, 0x6

    if-eq v2, v6, :cond_8

    .line 924
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    .line 937
    :goto_2
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 939
    const/4 v4, 0x0

    .line 940
    .local v4, lastActivityTag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 941
    .local v5, lastActivityIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v9

    .line 942
    .local v9, lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v9, :cond_4

    .line 943
    iget-object v4, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    .line 944
    iget-object v5, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    .line 947
    :cond_4
    const/4 v11, 0x0

    .line 948
    .local v11, onlyDestroyLastActivity:Z
    const/4 v12, 0x0

    .line 949
    .local v12, removeFromHistory:Z
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v2, v0, :cond_9

    .line 955
    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 957
    .local v1, previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 972
    .end local v1           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_5
    :goto_3
    if-eqz v11, :cond_b

    if-eqz v4, :cond_b

    .line 973
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const/4 v14, 0x1

    invoke-virtual {v2, v4, v14}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 978
    :cond_6
    :goto_4
    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setTitleStyle(I)V

    goto/16 :goto_0

    .line 899
    .end local v4           #lastActivityTag:Ljava/lang/String;
    .end local v5           #lastActivityIntent:Landroid/content/Intent;
    .end local v6           #innerType:I
    .end local v7           #clearTop:Z
    .end local v9           #lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v10           #launchFromSwitcher:Z
    .end local v11           #onlyDestroyLastActivity:Z
    .end local v12           #removeFromHistory:Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 926
    .restart local v6       #innerType:I
    .restart local v7       #clearTop:Z
    .restart local v10       #launchFromSwitcher:Z
    :cond_8
    const/4 v13, 0x0

    .line 928
    .local v13, window:Landroid/view/Window;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 934
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_2

    .line 929
    :catch_0
    move-exception v8

    .line 930
    .local v8, ex:Ljava/lang/Exception;
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v14, "can\'t launch indicate activity!!"

    invoke-static {v2, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 958
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v13           #window:Landroid/view/Window;
    .restart local v4       #lastActivityTag:Ljava/lang/String;
    .restart local v5       #lastActivityIntent:Landroid/content/Intent;
    .restart local v9       #lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .restart local v11       #onlyDestroyLastActivity:Z
    .restart local v12       #removeFromHistory:Z
    :cond_9
    if-nez p3, :cond_a

    .line 960
    const/4 v12, 0x1

    goto :goto_3

    .line 963
    :cond_a
    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v2, v0, :cond_5

    .line 965
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v2, v0, :cond_5

    .line 966
    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 968
    .restart local v1       #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 969
    const/4 v11, 0x1

    goto :goto_3

    .line 974
    .end local v1           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_b
    if-eqz v12, :cond_6

    if-eqz v4, :cond_6

    .line 975
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v4}, Lcom/htc/music/util/HistoryManager;->removeHistory(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 986
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_0
    iput-object p3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 990
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 991
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1304
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcTabActivity1;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1318
    return-void
.end method
