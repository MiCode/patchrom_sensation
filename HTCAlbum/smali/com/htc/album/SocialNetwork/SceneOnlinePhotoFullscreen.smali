.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlinePhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMENT_BAR_ONLINE_FULLFILM_VIEW:I = 0x1003

.field private static final FOOTER_BAR_ONLINE_FULLFILM_VIEW:I = 0x1001

.field private static final HEADER_BAR_ONLINE_FULLFILM_VIEW:I = 0x1002

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlinePhotoFullscreen"

.field private static final TAG_BAR_ONLINE_FULLFILM_VIEW:I = 0x1004


# instance fields
.field protected mAnimationState:I

.field private mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

.field private mCommentCount:I

.field private mControlBarVisible:Z

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

.field private mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

.field private mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

.field protected mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mHideAllControlView:Z

.field private mIsDelete:Z

.field private mIsDeleteAll:Z

.field private mIsNewAdapter:Z

.field private mIsPluginDelete:Z

.field private mLoadingText:Ljava/lang/String;

.field protected mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

.field private mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

.field protected mOrientationHasChanged:Z

.field protected mPrevPosition:I

.field protected mPrevScrollState:I

.field protected mProgressLoad:Lcom/htc/app/HtcProgressDialog;

.field protected mServiceType:Ljava/lang/String;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

.field private mTagManager:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    .line 79
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    .line 80
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 81
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOrientationHasChanged:Z

    .line 82
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 84
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    .line 85
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 86
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    .line 87
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 88
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    .line 89
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 90
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 91
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 92
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 93
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mControlBarVisible:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mHideAllControlView:Z

    .line 95
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    .line 96
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    .line 97
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    .line 98
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    .line 106
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    .line 108
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 282
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    .line 1063
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isHitIndicator(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsBound:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V
    .locals 10
    .parameter "moreBtn"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1153
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 1155
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "flag_genuine"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v8, v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "my_live_album"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v8, v6, :cond_0

    .line 1158
    const/16 v6, 0xa

    const v7, 0x7f0b011a

    invoke-virtual {p1, v6, v9, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1159
    const/4 v6, 0x2

    const v7, 0x7f0b010a

    invoke-virtual {p1, v6, v9, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1161
    :cond_0
    const/4 v6, 0x6

    const v7, 0x7f0b010b

    invoke-virtual {p1, v6, v9, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1163
    const-string v6, "showCaption"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1164
    .local v0, bShowCaption:Z
    const-string v6, "showTag"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1166
    .local v1, bShowTag:Z
    const/4 v4, 0x0

    .line 1167
    .local v4, showHideCaption:I
    if-eqz v1, :cond_1

    const v5, 0x7f0b0114

    .line 1169
    .local v5, showHideTag:I
    :goto_0
    if-eqz v1, :cond_2

    const/16 v3, 0x1f

    .line 1170
    .local v3, idshowHideTag:I
    :goto_1
    if-eqz v1, :cond_3

    const/16 v2, 0x22

    .line 1172
    .local v2, idshowHideCaption:I
    :goto_2
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "service_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1173
    if-eqz v0, :cond_4

    const v4, 0x7f0b0117

    .line 1177
    :goto_3
    invoke-virtual {p1, v2, v9, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1178
    invoke-virtual {p1, v3, v9, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1179
    return-void

    .line 1167
    .end local v2           #idshowHideCaption:I
    .end local v3           #idshowHideTag:I
    .end local v5           #showHideTag:I
    :cond_1
    const v5, 0x7f0b0113

    goto :goto_0

    .line 1169
    .restart local v5       #showHideTag:I
    :cond_2
    const/16 v3, 0x1e

    goto :goto_1

    .line 1170
    .restart local v3       #idshowHideTag:I
    :cond_3
    const/16 v2, 0x21

    goto :goto_2

    .line 1173
    .restart local v2       #idshowHideCaption:I
    :cond_4
    const v4, 0x7f0b0116

    goto :goto_3

    .line 1175
    :cond_5
    if-eqz v0, :cond_6

    const v4, 0x7f0b0119

    :goto_4
    goto :goto_3

    :cond_6
    const v4, 0x7f0b0118

    goto :goto_4
.end method

.method private enableProgressLoading(ZI)V
    .locals 3
    .parameter "bShow"
    .parameter "iResID"

    .prologue
    .line 1886
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1887
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->prepareLoadingText(I)V

    .line 1889
    :cond_0
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][enableProgressLoading]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableProgressLoading(Z)V

    .line 1891
    return-void
.end method

.method private getCommentsText()I
    .locals 1

    .prologue
    .line 1272
    const v0, 0x7f0b0110

    return v0
.end method

.method private getSharedPreferencesWithBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "shareKey"

    .prologue
    .line 1994
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1995
    .local v0, preference:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private hideAllControlBars()V
    .locals 1

    .prologue
    .line 565
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideControlBars()V

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mControlBarVisible:Z

    .line 567
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateTags(I)V

    .line 568
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateCaption(I)V

    .line 569
    return-void
.end method

.method private hideAllControlView()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mHideAllControlView:Z

    .line 560
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    .line 561
    return-void
.end method

.method private isHitIndicator(II)Z
    .locals 10
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 629
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x5

    .line 630
    .local v5, wSection:I
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    div-int/lit8 v0, v6, 0x5

    .line 631
    .local v0, hSection:I
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v4, v6

    .line 632
    .local v4, top:I
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v3, v6

    .line 634
    .local v3, left:I
    sub-int v6, p1, v3

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v5, :cond_0

    move v1, v7

    .line 635
    .local v1, hitX:Z
    :goto_0
    sub-int v6, p2, v4

    mul-int/lit8 v9, v0, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v0, :cond_1

    move v2, v7

    .line 637
    .local v2, hitY:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v7

    .end local v1           #hitX:Z
    .end local v2           #hitY:Z
    :cond_0
    move v1, v8

    .line 634
    goto :goto_0

    .restart local v1       #hitX:Z
    :cond_1
    move v2, v8

    .line 635
    goto :goto_1

    .restart local v2       #hitY:Z
    :cond_2
    move v7, v8

    .line 637
    goto :goto_2
.end method

.method private onErrorNoList(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 596
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    if-eq v3, v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    if-ne v3, v1, :cond_1

    .line 598
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 599
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 600
    .local v0, nBundle:Landroid/os/Bundle;
    const-string v1, "refresh_by_delete_all"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 601
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v2, "SceneOnlinePhotoThumbnail"

    invoke-interface {v1, v0, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 606
    .end local v0           #nBundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 605
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncList(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private onItemSelected(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/16 v4, 0x4e3c

    .line 573
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 574
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isControlBarShowing()Z

    move-result v0

    .line 576
    .local v0, bControlBarShowing:Z
    if-nez v0, :cond_0

    .line 578
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 581
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mControlBarVisible:Z

    .line 582
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->toggleControlBarsVisibility()V

    .line 583
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateTags(I)V

    .line 584
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateCaption(I)V

    .line 585
    return-void

    .line 581
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onOpenSenseControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v10, 0x0

    .line 1349
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1360
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v9, :cond_0

    .line 1362
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v7

    .line 1363
    .local v7, selid:I
    const/4 v5, 0x0

    .line 1364
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v9}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v8

    .local v8, size:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 1366
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v9, v3}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v2

    .line 1368
    .local v2, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v9

    if-ne v9, v7, :cond_2

    .line 1370
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v6

    .line 1371
    .local v6, pos:I
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v9, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1372
    .local v0, aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v0, :cond_1

    move-object v9, v10

    :goto_1
    invoke-virtual {v11, v2, v6, v9}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 1390
    .end local v0           #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v2           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v3           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    .end local v6           #pos:I
    .end local v7           #selid:I
    .end local v8           #size:I
    :cond_0
    :goto_2
    return-void

    .line 1352
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_2

    .line 1355
    :sswitch_1
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_2

    .line 1372
    .restart local v0       #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v2       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v3       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    .restart local v6       #pos:I
    .restart local v7       #selid:I
    .restart local v8       #size:I
    :cond_1
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1375
    .end local v0           #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v6           #pos:I
    :cond_2
    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v5

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    check-cast v5, Ljava/util/ArrayList;

    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v5, :cond_4

    .line 1377
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1379
    .local v1, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v9

    if-ne v9, v7, :cond_3

    .line 1381
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const/4 v11, -0x1

    invoke-virtual {v9, v1, v11, v10}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    goto :goto_2

    .line 1364
    .end local v1           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1349
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private onRefresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1433
    const v0, 0x7f0b012a

    invoke-direct {p0, v2, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 1434
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v1, 0x4e28

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1435
    return-void
.end method

.method private onShare(I)V
    .locals 7
    .parameter "selection"

    .prologue
    .line 1414
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1415
    .local v1, activity:Landroid/app/Activity;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1416
    .local v2, nIndex:I
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1417
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1419
    :cond_0
    const/4 v4, 0x0

    .line 1420
    .local v4, szUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1421
    .local v3, szLink:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1423
    .local v5, szWebLink:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 1424
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 1425
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v5, v4

    .line 1427
    :goto_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v6, v1, p1, v5}, Lcom/htc/album/helper/ShareMenuManager;->onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v3

    .line 1425
    goto :goto_1
.end method

.method private onSyncList(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 616
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 625
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    invoke-direct {p0, v2, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 621
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange()V

    .line 623
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0
.end method

.method private prepareLoadingText(I)V
    .locals 2
    .parameter "iResID"

    .prologue
    .line 1895
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1896
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1898
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1899
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    goto :goto_0

    .line 1901
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V
    .locals 3
    .parameter "shareKey"
    .parameter "enable"

    .prologue
    .line 1977
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1978
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1980
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1981
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1983
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v2, v2, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_0

    .line 1985
    const-string v2, "showTag"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1986
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    const-string v2, "showCaption"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1988
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method public checkIsNetworkConnection()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 412
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 414
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 415
    .local v1, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 419
    .end local v1           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_0
    :goto_0
    return v2

    .line 417
    .restart local v1       #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_1
    const/16 v3, 0x272c

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 1881
    const/4 v0, 0x1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 1116
    const/4 v0, 0x3

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1491
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 1495
    :goto_0
    return-object v0

    .line 1493
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, szSecondTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1481
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 1485
    :goto_0
    return-object v0

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, szPrimanyTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public hideTag()V
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 1595
    :cond_0
    return-void
.end method

.method public initCommentBar()V
    .locals 2

    .prologue
    .line 1784
    const/4 v0, 0x1

    const-string v1, "showCaption"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 1788
    :goto_0
    return-void

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public isShowCaption()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1530
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return v0

    .line 1533
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1536
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mControlBarVisible:Z

    if-ne v1, v2, :cond_2

    move v0, v1

    .line 1537
    goto :goto_0

    .line 1539
    :cond_2
    const-string v2, "showCaption"

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1542
    goto :goto_0
.end method

.method public isShowTag()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1599
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return v0

    .line 1602
    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mHideAllControlView:Z

    if-eq v1, v2, :cond_0

    .line 1605
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mControlBarVisible:Z

    if-ne v1, v2, :cond_2

    move v0, v1

    .line 1606
    goto :goto_0

    .line 1608
    :cond_2
    const-string v2, "showTag"

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1611
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "OnActivityResult: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 344
    packed-switch p1, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 348
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableHeaderTransparentBackground(Z)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    .line 192
    .local v0, bIsFullScreen:Z
    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDisableTransitionAnimation(Z)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onLastViewItemUpdate()V

    .line 197
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    if-ne v4, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 200
    .local v1, nBundle:Landroid/os/Bundle;
    const-string v2, "refresh_by_delete"

    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneOnlinePhotoThumbnail"

    invoke-interface {v2, v1, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 206
    .end local v1           #nBundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 185
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 220
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 228
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 229
    .local v2, index:I
    if-ne v2, v5, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoIndex()I

    move-result v2

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 235
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 237
    new-instance v4, Lcom/htc/album/helper/OnlineDeleteManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V

    invoke-direct {v4, v0, v3, v5}, Lcom/htc/album/helper/OnlineDeleteManager;-><init>(Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 240
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "index_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v4, 0x4e35

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 243
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 4

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1410
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1400
    return-void
.end method

.method public onComment()V
    .locals 4

    .prologue
    .line 1500
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v3, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1503
    .local v2, nIndex:I
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1504
    .local v1, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1505
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1507
    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1294
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1296
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlView()V

    .line 1297
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v1, 0x1

    .line 1301
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    .line 1303
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onOpenSenseControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 1309
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->checkIsNetworkConnection()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1311
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    goto :goto_0

    .line 1316
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1334
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1319
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1322
    :sswitch_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1325
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onComment()V

    goto :goto_0

    .line 1328
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 1331
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEdit()V

    goto :goto_0

    .line 1338
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption()V

    goto :goto_0

    .line 1342
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableTag()V

    goto :goto_0

    .line 1316
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_5
        0x13 -> :sswitch_1
        0x1e -> :sswitch_7
        0x1f -> :sswitch_7
        0x21 -> :sswitch_6
        0x22 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 308
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    .line 309
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 310
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 312
    :cond_0
    return-object v0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1470
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v1, :cond_0

    .line 1471
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1472
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1475
    .end local v0           #dlg:Landroid/app/Dialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1133
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1135
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 1136
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v9

    .line 1137
    .local v9, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getCommentsText()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v6

    check-cast v6, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1138
    .local v6, commentBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v8

    .line 1139
    .local v8, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1148
    .end local v0           #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_1
    :goto_0
    return-object v0

    .line 1141
    .restart local v0       #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_2
    invoke-direct {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 1143
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v7

    .line 1144
    .local v7, footer:Landroid/view/ViewGroup;
    instance-of v2, v7, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_1

    .line 1145
    check-cast v7, Lcom/htc/widget/HtcFooter;

    .end local v7           #footer:Landroid/view/ViewGroup;
    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    goto :goto_0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 4
    .parameter "id"

    .prologue
    .line 1278
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1279
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 1280
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 1281
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 1282
    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 1289
    return-object v1
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 7

    .prologue
    .line 440
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 441
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 442
    .local v1, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 443
    .local v3, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v0, v5, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 445
    .local v2, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v5, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 446
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v4, inValue:Landroid/os/Bundle;
    const-string v5, "TEXTURE_MAX_COUNT"

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const-string v5, "ENABLE_QUALITY_OPTIONS"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v0, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 451
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 452
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 453
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 454
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 455
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 456
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 458
    return-object v2
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 464
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v1, v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-eqz v1, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 1464
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteSingleMedia(I)V

    .line 1466
    .end local v0           #nIndex:I
    :cond_0
    return-void
.end method

.method public onEdit()V
    .locals 7

    .prologue
    .line 1439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    .local v3, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1442
    .local v2, nIndex:I
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1443
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1456
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "photo_list"

    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1458
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneOnlinePhotoTagEditor"

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 1459
    return-void
.end method

.method public onEnableTag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1911
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v0, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1917
    :cond_0
    const-string v0, "showTag"

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 1918
    const-string v0, "showTag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    .line 1922
    :goto_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateTags(I)V

    .line 1923
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 1920
    :cond_1
    const-string v0, "showTag"

    invoke-direct {p0, v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onEnterImageIHT(II)I
    .locals 5
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 642
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: begin"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    move v0, p1

    .line 646
    .local v0, nIndex:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    .line 648
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: no 3D barrier"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 662
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 652
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_0
    if-ne v0, p2, :cond_1

    .line 654
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_1
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: end "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 662
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0

    .line 658
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_1
    move v0, p2

    .line 659
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: mIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 1078
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    if-nez v1, :cond_0

    .line 1080
    new-instance v1, Lcom/htc/album/SocialNetwork/LiveTagBar;

    const/16 v2, 0x1004

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f030037

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/album/SocialNetwork/LiveTagBar;-><init>(ILandroid/content/Context;I)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    .line 1081
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1082
    .local v0, root:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    .end local v0           #root:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 1088
    const/16 v1, 0x1002

    invoke-virtual {p0, v1, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createHeaderBar(IZ)V

    .line 1089
    const/16 v1, 0x1001

    invoke-virtual {p0, v1, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    .line 1091
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v1, :cond_1

    .line 1093
    new-instance v1, Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v2, 0x1003

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f03002d

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/album/SocialNetwork/LiveCommentBar;-><init>(ILandroid/content/Context;I)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    .line 1094
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1095
    .restart local v0       #root:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_1

    .line 1097
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 1098
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1099
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    .end local v0           #root:Landroid/widget/RelativeLayout;
    :cond_1
    const-string v1, "service_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    .line 1104
    return-void
.end method

.method public onLeaveScene()V
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    .line 1111
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    .line 1112
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 507
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return v1

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 510
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 514
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 554
    const/4 v1, 0x0

    goto :goto_0

    .line 517
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    .line 520
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncList(Landroid/os/Message;)V

    goto :goto_0

    .line 523
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 526
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onScrollStateChange(Landroid/os/Message;)V

    goto :goto_0

    .line 529
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 532
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    goto :goto_0

    .line 535
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onItemSelected(Landroid/os/Message;)V

    goto :goto_0

    .line 538
    :sswitch_7
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0

    .line 541
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableTag()V

    goto :goto_0

    .line 544
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption()V

    goto :goto_0

    .line 547
    :sswitch_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_0

    .line 549
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    .line 550
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_6
        0x2761 -> :sswitch_0
        0x4e3c -> :sswitch_5
        0x4e88 -> :sswitch_1
        0x4e94 -> :sswitch_2
        0x4f4f -> :sswitch_3
        0x10200001 -> :sswitch_4
        0x10200003 -> :sswitch_9
        0x10200004 -> :sswitch_8
        0x10200007 -> :sswitch_a
        0x10200009 -> :sswitch_7
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 468
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 469
    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 470
    new-instance v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 471
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 472
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataRequest(Ljava/lang/Object;)V

    .line 473
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onCreate()V

    .line 475
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    .line 476
    .local v3, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v4, "service_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 478
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 481
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, pid:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoFullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create opensense data plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v0, v6, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 484
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 486
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v4, v4, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_0

    .line 488
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showTag"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 489
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showCaption"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    .line 492
    :cond_0
    const/16 v4, 0x1001

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    .line 495
    .end local v1           #pid:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v6, 0x4

    new-instance v7, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-direct {v7, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 499
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoIndex()I

    .line 501
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onResume()V

    .line 502
    const v4, 0x7f0b012a

    invoke-direct {p0, v8, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 503
    return-void

    .end local v0           #dataplugin:Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .line 478
    goto/16 :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 319
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 324
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableInvalidateWhenShow(Z)V

    .line 325
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableInvalidateWhenShow(Z)V

    .line 339
    return-void

    .line 334
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlView()V

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 289
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneOnlinePhotoThumbnail"

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v1

    .line 290
    .local v1, isFromGridView:Z
    if-nez v1, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 294
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return v0

    .line 298
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableHeaderTransparentBackground(Z)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1019
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1020
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1021
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onItemSelected(Landroid/os/Message;)V

    .line 1022
    const/4 v0, 0x1

    return v0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 22
    .parameter "footer"

    .prologue
    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 1186
    .local v9, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "opensense_pugin"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 1192
    new-instance v18, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct/range {v18 .. v18}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 1195
    const/4 v5, 0x0

    .line 1196
    .local v5, barSize:I
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v15

    .local v15, size:I
    :goto_1
    if-ge v11, v15, :cond_3

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 1196
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1198
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v5, v0, :cond_0

    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v5, v0, :cond_0

    .line 1200
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v13, v0, [[I

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, -0x1

    aput v21, v19, v20

    aput-object v19, v13, v18

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    aput v21, v19, v20

    aput-object v19, v13, v18

    const/16 v18, 0x2

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    aput-object v19, v13, v18

    const/16 v18, 0x3

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    aput-object v19, v13, v18

    .line 1201
    .local v13, indexTable:[[I
    aget-object v8, v13, v5

    .line 1203
    .local v8, btnIndexTable:[I
    const/4 v11, 0x0

    array-length v15, v8

    :goto_2
    if-ge v11, v15, :cond_0

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v18, v0

    aget v19, v8, v11

    invoke-virtual/range {v18 .. v19}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v6

    .line 1206
    .local v6, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    const/16 v18, 0x0

    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v10

    check-cast v10, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1207
    .local v10, footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1209
    .local v17, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v17, :cond_4

    .line 1211
    invoke-virtual {v10}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 1212
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1213
    .local v4, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v18

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_3

    .line 1203
    .end local v4           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1248
    .end local v5           #barSize:I
    .end local v6           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v8           #btnIndexTable:[I
    .end local v10           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v11           #i:I
    .end local v13           #indexTable:[[I
    .end local v15           #size:I
    .end local v17           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_5
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v14

    check-cast v14, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1249
    .local v14, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v14, :cond_6

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1252
    .local v3, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v18, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    .line 1257
    .end local v3           #activity:Landroid/app/Activity;
    :cond_6
    const/16 v18, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1258
    .local v7, btnComment:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getCommentsText()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1259
    .local v16, strComment:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 1261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1262
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 1265
    :cond_8
    const/16 v18, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v6

    check-cast v6, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1266
    .local v6, btn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v6, :cond_0

    .line 1267
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    goto/16 :goto_0

    .line 1200
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onScrollStateChange(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1806
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1807
    .local v4, scrollState:I
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1808
    .local v2, nIndex:I
    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    if-ne v5, v2, :cond_1

    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    if-ne v5, v4, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 1811
    .local v3, prevIndex:I
    iput v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    .line 1813
    if-nez v4, :cond_5

    .line 1815
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 1817
    if-eq v3, v2, :cond_2

    .line 1819
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateCaption(I)V

    .line 1820
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateCommentCount(I)V

    .line 1821
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateTags(I)V

    .line 1823
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1824
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "index_id"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1825
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v6, 0x4e35

    invoke-virtual {v5, v6, v1, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1830
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    if-eq v4, v9, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    if-ne v4, v8, :cond_4

    :cond_3
    const/16 v0, 0x4f4e

    .line 1835
    .local v0, adapterScrollState:I
    :goto_1
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setScrollState(II)V

    goto :goto_0

    .line 1830
    .end local v0           #adapterScrollState:I
    :cond_4
    const/16 v0, 0x4f4d

    goto :goto_1

    .line 1837
    :cond_5
    if-ne v9, v4, :cond_0

    .line 1839
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isControlBarShowing()Z

    move-result v5

    if-ne v8, v5, :cond_6

    .line 1841
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->toggleControlBarsVisibility()V

    .line 1842
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mControlBarVisible:Z

    .line 1845
    :cond_6
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 425
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSendToBackground]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 431
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 432
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 10
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 360
    const-string v4, "SceneOnlinePhotoFullscreen"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSendToForeground]: "

    invoke-static {v4, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 363
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setUIHandler(Landroid/os/Handler;)V

    .line 364
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    .line 367
    .local v3, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v4, "service_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 369
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 372
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, pid:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v0, v6, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 375
    const-string v4, "SceneOnlinePhotoFullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create opensense data plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/16 v4, 0x1001

    invoke-virtual {p0, v4, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    .line 381
    .end local v0           #dataplugin:Ljava/lang/String;
    .end local v1           #pid:Ljava/lang/String;
    .end local v2           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v3           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v4

    if-ne v9, v4, :cond_1

    .line 383
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->notifyUpdateDataPlugin()V

    .line 386
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v4, v4, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_2

    .line 388
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showTag"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 389
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showCaption"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    .line 392
    :cond_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 393
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    if-nez v4, :cond_3

    .line 395
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const-string v5, "index_id"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setPhotoPosition(I)V

    .line 397
    :cond_3
    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 401
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v4, :cond_4

    .line 402
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v4, v9}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 404
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->checkIsNetworkConnection()Z

    .line 406
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    .line 407
    return-void

    .restart local v2       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v3       #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_5
    move-object v0, v5

    .line 369
    goto/16 :goto_0
.end method

.method public onShowCaption(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1555
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    const/4 v0, 0x0

    .line 1558
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const-string v1, ""

    .line 1560
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1563
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1566
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1568
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1569
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1576
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 1578
    :cond_3
    const-string v1, ""

    .line 1579
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    .line 1585
    :goto_2
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateCaption]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setText(ILjava/lang/String;)V

    .line 1587
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 1570
    :cond_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1571
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1573
    :cond_5
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1583
    :cond_6
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_2
.end method

.method public onSyncPhotoDetail(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1792
    const/4 v1, 0x0

    .line 1793
    .local v1, nIndex:I
    const/4 v0, 0x0

    .line 1795
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #bundle:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 1796
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "index_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1797
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSyncPhotoDetail]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateCaption(I)V

    .line 1800
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateCommentCount(I)V

    .line 1801
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateTags(I)V

    .line 1802
    return-void
.end method

.method public onSyncPhotoIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1949
    const/4 v1, 0x0

    .line 1951
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1953
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    move v2, v1

    .line 1972
    .end local v1           #nIndex:I
    .local v2, nIndex:I
    :goto_0
    return v2

    .line 1955
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_0
    const-string v3, "from_outside"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1957
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1959
    if-ne v1, v5, :cond_1

    .line 1960
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getFocusedItem()I

    move-result v1

    .line 1962
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1963
    const/4 v1, 0x0

    .line 1970
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setPhotoPosition(I)V

    move v2, v1

    .line 1972
    .end local v1           #nIndex:I
    .restart local v2       #nIndex:I
    goto :goto_0

    .line 1967
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_3
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public onToggleCaption()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1932
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v0, :cond_0

    .line 1945
    :goto_0
    return-void

    .line 1936
    :cond_0
    const-string v0, "showCaption"

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 1937
    const-string v0, "showCaption"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    .line 1941
    :goto_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShowCaption(I)V

    .line 1942
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 1939
    :cond_1
    const-string v0, "showCaption"

    invoke-direct {p0, v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 248
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 250
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->release()V

    .line 251
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 253
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 254
    return-void
.end method

.method public onUpdateCaption(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isShowCaption()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    .line 1551
    :goto_0
    return-void

    .line 1550
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShowCaption(I)V

    goto :goto_0
.end method

.method public onUpdateCommentCount(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    const/4 v0, 0x0

    .line 1516
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1519
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getCommentCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    .line 1525
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0
.end method

.method public onUpdateTags(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 1616
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: onUpdateTags()+"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1620
    :cond_1
    const/4 v0, 0x0

    .line 1625
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    if-eq p1, v2, :cond_2

    .line 1627
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: nIndex != currentposition, skip UpdateTag"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1632
    :cond_2
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    if-eqz v2, :cond_3

    .line 1634
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: mLastScrollState != SCROLL_STATE_IDLE, skip UpdateTag"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 1640
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isShowTag()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1642
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: !isShowTag, skip UpdateTag"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    .line 1644
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mHideAllControlView:Z

    goto :goto_0

    .line 1649
    :cond_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1651
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: isZoomed, skip UpdateTag"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1663
    :cond_5
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1665
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: data not rdy, skip UpdateTag"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMediaQuality()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 1672
    :cond_7
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: IOnlineMediaData QUALITY_HIGH, skip UpdateTag"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1679
    :cond_8
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v1

    .line 1680
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-eqz v1, :cond_0

    .line 1684
    if-eqz v1, :cond_9

    iget v2, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 1688
    :cond_9
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: onUpdateTags()-, go showTag"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showTag(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1122
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "SceneOnlinePhotoFullscreen"

    return-object v0
.end method

.method public showCommentBar(Z)V
    .locals 4
    .parameter "bIsShow"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1851
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v0, :cond_1

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    if-eqz p1, :cond_4

    .line 1856
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isControlBarShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1858
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_0

    .line 1861
    :cond_2
    const/4 v0, 0x1

    const-string v1, "showCaption"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1863
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_0

    .line 1868
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v2}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_0

    .line 1874
    :cond_4
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v2}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTag(Ljava/util/ArrayList;)V
    .locals 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1696
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1698
    :cond_1
    const-string v5, "SceneOnlinePhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoFullscreen][showTag]: CurrPosition: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Size : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const/16 v20, 0x0

    .line 1701
    .local v20, nPhotoX:I
    const/16 v21, 0x0

    .line 1702
    .local v21, nPhotoY:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v19

    .line 1703
    .local v19, nPhotoW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v18

    .line 1704
    .local v18, nPhotoH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v14

    .line 1705
    .local v14, currentItemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-eqz v14, :cond_2

    .line 1707
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    move/from16 v20, v0

    .line 1708
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    move/from16 v21, v0

    .line 1709
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    move/from16 v19, v0

    .line 1710
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    move/from16 v18, v0

    .line 1712
    :cond_2
    const-string v4, "SceneOnlinePhotoFullscreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showTag image:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    if-eqz v19, :cond_3

    if-nez v18, :cond_4

    .line 1716
    :cond_3
    const-string v4, "SceneOnlinePhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][showTag]: Get Photo W: = 0 or H = 0, skip."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1720
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v23

    .line 1721
    .local v23, nScreenW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v22

    .line 1724
    .local v22, nScreenH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    .line 1725
    .local v13, activity:Landroid/app/Activity;
    const-string v4, "window"

    invoke-virtual {v13, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 1726
    .local v15, display:Landroid/view/Display;
    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v22

    .line 1727
    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v23

    .line 1731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v4, :cond_5

    .line 1733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeAllViews()V

    .line 1734
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager;->clearTagGroup()V

    .line 1735
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 1737
    :cond_5
    new-instance v4, Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {v4, v13}, Lcom/htc/album/TagUtils/TagViewManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 1738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Lcom/htc/album/TagUtils/TagViewManager;->setReferenceTagGroup(Landroid/widget/RelativeLayout;)V

    .line 1742
    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    .line 1743
    .local v24, newPhoto:Landroid/graphics/Point;
    move/from16 v0, v19

    move/from16 v1, v23

    if-gt v0, v1, :cond_6

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 1746
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->countPhotoSize(IIII)Landroid/graphics/Point;

    move-result-object v24

    .line 1748
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .line 1749
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 1753
    :cond_7
    sub-int v4, v23, v19

    div-int/lit8 v20, v4, 0x2

    .line 1754
    sub-int v4, v22, v18

    div-int/lit8 v21, v4, 0x2

    .line 1756
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1757
    .local v25, param:Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v23

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1758
    move/from16 v0, v22

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->init(IIII)Z

    .line 1764
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 1766
    .local v17, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    goto :goto_1

    .line 1770
    .end local v17           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Lcom/htc/album/TagUtils/TagViewManager;->addViewToTagGroup(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 1774
    const-string v4, "SceneOnlinePhotoFullscreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: Identity is not match, foreground scene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 1779
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    goto/16 :goto_0
.end method
