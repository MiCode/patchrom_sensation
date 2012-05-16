.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;
    }
.end annotation


# static fields
.field private static final DETAIL_PAGE:I = 0x4

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_LOADING:I = 0x0

.field private static final DIRECTION_DOWN:I = 0x1

.field private static final DIRECTION_UP:I = -0x1

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field public static final DLNA_CALLER_MUSIC_BROWSER:I = 0x10

.field private static final GETCURSOR:I = 0x3

.field private static final GET_THUMBNAIL:I = 0x5

.field public static final INTENT_BROWSERLAYER:I = 0x0

.field public static final INTENT_UPPER:I = 0x1

.field public static final MENU_PLAYALL:I = 0xf

.field public static final MENU_PLAYING:I = 0xd

.field public static final MENU_REFRESH:I = 0xa

.field public static final MENU_ROOT:I = 0xb

.field public static final MENU_SHUFFLE:I = 0xe

.field public static final MENU_UP:I = 0xc

.field public static final PRESSMENU_DETAILS:I = 0x2

.field public static final PRESSMENU_PLAY:I = 0x1

.field private static final QUERY_COUNT:I = 0xa

.field private static final QUERY_TIMER:I = 0x3

.field private static final REFRESH:I = 0x0

.field private static final REMOVE_DIALOG:I = 0x1

.field private static final REMOVE_SPINNER:I = 0x2

.field public static final RESULT_FINISH:I = 0x0

.field public static final RESULT_ROOT:I = 0x1

.field public static final RESULT_SERVER:I = 0x3

.field public static final RESULT_UPPER:I = 0x2

.field private static final SET_TITLE:I = 0x6

.field private static final SHOW_ERRDIALOG:I = 0x7

.field private static final ServiceError_ServerNotFound:I = -0x1f5

.field private static final TAG:Ljava/lang/String; = "[DMS]"

.field private static final UPnPError_AuthorizationFail:I = 0x321

.field private static final kUPnPError_ConnectionFailed:I = -0x1

.field private static mServerIcon:Landroid/graphics/Bitmap;

.field private static mTime:J


# instance fields
.field private mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

.field private mBrowsingComplete:Z

.field private mClearImageCache:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContainerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field mCursorCols:[Ljava/lang/String;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDestroy:Z

.field private mDetailIntent:Landroid/content/Intent;

.field private mDirection:I

.field private mDlnaMode:I

.field private mDmpListener:Landroid/content/BroadcastReceiver;

.field private mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

.field private mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIconPath:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIniContainerID:Ljava/lang/String;

.field private mIniContainerName:Ljava/lang/String;

.field private mIniServerID:Ljava/lang/String;

.field private mIniServerName:Ljava/lang/String;

.field private mInitial:Z

.field private mIsMusicExist:Z

.field private mIsScrolling:Z

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mLoadingNext:Z

.field private mLoadingPrev:Z

.field private mMediaService:Lcom/htc/music/IMediaPlaybackService;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

.field private mPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSelectedItem:I

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

.field private mWorkthread:Landroid/os/HandlerThread;

.field private mcurContent:Ljava/lang/String;

.field private mcurDMR:Ljava/lang/String;

.field private msc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mServerIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 144
    iput v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    .line 145
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    .line 146
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    .line 147
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    .line 148
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mClearImageCache:Z

    .line 153
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMediaService:Lcom/htc/music/IMediaPlaybackService;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    .line 155
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    .line 165
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    .line 166
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDestroy:Z

    .line 168
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    .line 169
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    .line 170
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    .line 230
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpListener:Landroid/content/BroadcastReceiver;

    .line 940
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    .line 1569
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    .line 1838
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 1879
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->msc:Landroid/content/ServiceConnection;

    .line 2416
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const-string v1, "content_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "container"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getDmpCurContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()J
    .locals 2

    .prologue
    .line 77
    sget-wide v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mTime:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-wide p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mTime:J

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/music/IDmpUiPlaybackService;)Lcom/htc/music/IDmpUiPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDestroy:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 2087
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2088
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2089
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2092
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2093
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2097
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 2098
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2099
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2103
    if-eqz v1, :cond_0

    .line 2104
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2105
    const/4 v1, 0x0

    .line 2107
    :cond_0
    if-eqz v0, :cond_1

    .line 2108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2109
    const/4 v0, 0x0

    .line 2111
    :cond_1
    return-object v2
.end method

.method private getDmpCurContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    const-string v1, "[DMS]"

    const-string v2, "getDmpCurContent"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "DMP"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    .local v0, Preferences:Landroid/content/SharedPreferences;
    const-string v1, "curContentId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFirstContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 912
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 914
    :cond_0
    const/4 v0, 0x0

    .line 922
    :cond_1
    :goto_0
    return-object v0

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, ID:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 922
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRandomContent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 926
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 928
    :cond_0
    const/4 v2, 0x0

    .line 937
    :goto_0
    return-object v2

    .line 931
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 932
    .local v1, size:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 934
    .local v0, list:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 935
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 937
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getRandomContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setTitle()V
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 260
    .local v1, rootParent:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 264
    check-cast v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 266
    .local v0, parent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public GetCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "serverID"
    .parameter "containerID"

    .prologue
    const/4 v2, 0x0

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serve_id = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1901
    .local v3, where:Ljava/lang/String;
    const-string v5, "index_id COLLATE NOCASE ASC"

    .line 1903
    .local v5, sort:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1905
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1913
    :cond_0
    :goto_0
    return-object v2

    .line 1908
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1909
    .local v6, count:I
    if-lez v6, :cond_0

    move-object v2, v7

    .line 1913
    goto :goto_0
.end method

.method public GetCursorIdx(Landroid/database/Cursor;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1917
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1919
    .local v0, count:I
    if-eqz p1, :cond_0

    if-gtz v0, :cond_2

    .line 1920
    :cond_0
    const/4 v4, 0x0

    .line 1977
    :cond_1
    :goto_0
    return-object v4

    .line 1922
    :cond_2
    new-instance v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    .line 1924
    .local v4, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    long-to-int v6, v7

    .line 1925
    .local v6, startID:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v7

    long-to-int v1, v7

    .line 1927
    .local v1, endID:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1928
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentstartIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentendIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    if-le v1, v10, :cond_1

    .line 1936
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1937
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1940
    const-string v7, "index_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1942
    .local v3, index:I
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v11, :cond_3

    if-lt v3, v6, :cond_6

    :cond_3
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v11, :cond_4

    if-gt v3, v1, :cond_6

    :cond_4
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v10, :cond_5

    if-gt v3, v6, :cond_6

    :cond_5
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v10, :cond_7

    if-ge v3, v1, :cond_7

    .line 1946
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1936
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1958
    :cond_7
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    if-ne v7, v11, :cond_8

    .line 1959
    add-int/lit8 v5, v6, 0x63

    .line 1963
    .local v5, middleIdx:I
    :goto_3
    if-ne v3, v5, :cond_9

    .line 1964
    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setMiddleIdx(J)V

    .line 1965
    const-string v7, "[DMS]"

    const-string v8, "DlnaUtils.MAX_QUERY_CONTENTS = 199"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    const-string v7, "[DMS]"

    const-string v8, "middle point is 99"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMiddleIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    .end local v5           #middleIdx:I
    :cond_8
    add-int/lit8 v5, v6, -0x63

    .restart local v5       #middleIdx:I
    goto :goto_3

    .line 1971
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public GetCursorInfo(Landroid/database/Cursor;)V
    .locals 23
    .parameter "cursor"

    .prologue
    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    const/4 v8, -0x1

    .line 1992
    .local v8, Pos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1993
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1996
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    if-nez v2, :cond_3

    .line 1998
    :cond_2
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    .line 1999
    .local v1, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    :cond_3
    const-string v2, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCursorInfo: Cursor length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 2005
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2051
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-nez v2, :cond_8

    .line 2054
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2055
    .local v11, endIdx:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 2057
    .local v17, startIdx:Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, -0x1

    cmp-long v2, v19, v21

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    if-eqz v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    .line 2061
    :cond_7
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    .line 2062
    .restart local v1       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    .end local v11           #endIdx:Ljava/lang/Long;
    .end local v17           #startIdx:Ljava/lang/Long;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mClearImageCache:Z

    if-eqz v2, :cond_9

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 2075
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mClearImageCache:Z

    .line 2077
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->notifyDataSetChanged()V

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 2080
    .local v16, msg:Landroid/os/Message;
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "NotRefresh"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2008
    .end local v16           #msg:Landroid/os/Message;
    :cond_a
    const-string v2, "content_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2009
    .local v3, contentID:Ljava/lang/String;
    const-string v2, "content_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2010
    .local v4, contentName:Ljava/lang/String;
    const-string v2, "index_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    .line 2011
    .local v14, index:J
    const-string v2, "file_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2019
    .local v6, fileType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v9

    .line 2020
    .local v9, boundary:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v11

    .line 2022
    .local v11, endIdx:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 2023
    cmp-long v2, v14, v9

    if-ltz v2, :cond_b

    cmp-long v2, v14, v11

    if-lez v2, :cond_e

    .line 2024
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2004
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2028
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    .line 2029
    cmp-long v2, v11, v14

    if-gtz v2, :cond_d

    cmp-long v2, v14, v9

    if-lez v2, :cond_e

    .line 2030
    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 2036
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    if-nez v2, :cond_f

    .line 2037
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2039
    .local v18, type:I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_f

    .line 2040
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    .line 2043
    .end local v18           #type:I
    :cond_f
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    const/4 v5, 0x0

    long-to-int v7, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2044
    .restart local v1       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2045
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 10
    .parameter "container"
    .parameter "startIdx"
    .parameter "boundary"

    .prologue
    const/4 v4, 0x1

    .line 1361
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1364
    :cond_0
    const-string v0, "[DMS]"

    const-string v1, "Browse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boundary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1369
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mBrowsingComplete:Z

    .line 1372
    :cond_1
    :try_start_0
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x1e

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, p1

    invoke-interface/range {v0 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v9

    .line 1376
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelBrowse(Ljava/lang/Long;)V
    .locals 8
    .parameter "startIdx"

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    const-string v0, "[DMS]"

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const/4 v6, 0x0

    .line 1389
    .local v6, bDone:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1391
    if-nez v6, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1393
    :catch_0
    move-exception v7

    .line 1395
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 18

    .prologue
    .line 836
    const/16 v16, 0x0

    .line 841
    .local v16, intent:Landroid/content/Intent;
    const-string v2, "[DMS]"

    const-string v3, "Playing All, save current info to DLNA.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DMR"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 844
    .local v13, CurrentDMR:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 852
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v14

    .line 859
    .local v14, dlnaMode:I
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dlnaMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1

    .line 872
    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v2, "[DMS]"

    const-string v3, "dmpPlayAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_0

    .line 881
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getFirstContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 888
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 889
    .local v17, intent_playall:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .end local v17           #intent_playall:Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v16, Landroid/content/Intent;

    .end local v16           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .restart local v16       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 902
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 908
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 893
    :catch_0
    move-exception v15

    .line 894
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->requestWindowFeature(I)Z

    .line 181
    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setVolumeControlStream(I)V

    .line 182
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setContentView(I)V

    .line 184
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 185
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "ServerName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    .line 186
    const-string v3, "ContainerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    .line 188
    const-string v3, "ServerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    .line 189
    const-string v3, "IconPath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIconPath:Ljava/lang/String;

    .line 191
    const-string v3, "FilePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    .line 192
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    .line 195
    :cond_0
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerName:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v1, iniInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 200
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-direct {v3, p0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    .line 201
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    .line 208
    const-string v3, "DLNA"

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 209
    iput-boolean v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    .line 210
    iput-boolean v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    .line 213
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 214
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 215
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 216
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 218
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "workThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    .line 219
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 221
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    .line 222
    iput v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    .line 224
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    .line 225
    .local v0, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->setStartIdx(J)V

    .line 226
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v2, 0x20c0162

    const v4, 0x20c013c

    const v3, 0x1080027

    .line 368
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 369
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 370
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 472
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 398
    :sswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700c3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 418
    :sswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$5;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$4;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 437
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$8;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0163

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 370
    :sswitch_data_0
    .sparse-switch
        -0x1f5 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x321 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 533
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 535
    const/16 v0, 0xd

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a3f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 537
    const/16 v0, 0xe

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 539
    const/16 v0, 0xf

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 541
    const/16 v0, 0xa

    const v1, 0x20c0202

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 545
    const/16 v0, 0xb

    const v1, 0x7f0700bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080aa0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 511
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 512
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 514
    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 520
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDestroy:Z

    .line 521
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    sput-object v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mServerIcon:Landroid/graphics/Bitmap;

    .line 529
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 15
    .parameter "id"

    .prologue
    .line 1435
    packed-switch p1, :pswitch_data_0

    .line 1527
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1438
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v0, :cond_1

    .line 1439
    const/4 v0, 0x0

    goto :goto_1

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    .line 1444
    .local v3, ContentID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "container"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filepath"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "startIdx"

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "endIdx"

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "direction"

    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1453
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v12

    .line 1455
    .local v12, dlnaMode:I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v0, :cond_2

    .line 1470
    const-string v0, "[DMS]"

    const-string v1, "enter click"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v6

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v0 .. v10}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 1479
    new-instance v14, Landroid/content/Intent;

    const-class v0, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v14, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1480
    .local v14, intent:Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "bindplugin"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const-string v0, "classname"

    const-string v1, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    invoke-virtual {p0, v14}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v14           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    new-instance v14, Landroid/content/Intent;

    const-string v0, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .restart local v14       #intent:Landroid/content/Intent;
    const/high16 v0, 0x400

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1494
    const/4 v0, -0x2

    invoke-virtual {p0, v14, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1484
    .end local v14           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 1485
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1501
    .end local v3           #ContentID:Ljava/lang/String;
    .end local v12           #dlnaMode:I
    .end local v13           #e:Landroid/os/RemoteException;
    :pswitch_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1502
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v0, "duration"

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    const-string v0, "filename"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    const-string v0, "trackname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string v0, "artistname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    const-string v0, "albumname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    const-string v0, "genre"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    const-string v0, "composer"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1509
    const-string v0, "location"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1512
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    const-string v1, "contentID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1513
    .local v11, ID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1515
    iget-object v14, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;

    .line 1519
    .end local v11           #ID:Ljava/lang/String;
    :cond_3
    const-class v0, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v14, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1521
    const/4 v0, -0x2

    invoke-virtual {p0, v14, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1523
    const-string v0, "DLNA"

    const-string v1, "PRESSMENU_DETAILS"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 24
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v6

    .line 1189
    .local v6, ContentID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v14

    .line 1192
    .local v14, ContentName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    .line 1194
    .local v20, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    const/16 v22, 0x0

    .line 1195
    .local v22, prevPage:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    if-lez v3, :cond_0

    .line 1196
    const/16 v22, 0x1

    .line 1198
    :cond_0
    if-nez v6, :cond_7

    if-nez v14, :cond_7

    .line 1199
    const/16 v23, 0x0

    .line 1200
    .local v23, start:Ljava/lang/Long;
    const/16 v17, 0x0

    .line 1202
    .local v17, boundary:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1203
    :cond_1
    const-string v3, "[DMS]"

    const-string v4, "user press next/prev page when it still loading, ignore..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    .end local v6           #ContentID:Ljava/lang/String;
    .end local v17           #boundary:Ljava/lang/Long;
    .end local v23           #start:Ljava/lang/Long;
    :cond_2
    :goto_0
    return-void

    .line 1207
    .restart local v6       #ContentID:Ljava/lang/String;
    .restart local v17       #boundary:Ljava/lang/Long;
    .restart local v23       #start:Ljava/lang/Long;
    :cond_3
    if-nez p3, :cond_5

    .line 1208
    const-string v3, "[DMS]"

    const-string v4, "Press Prev Page"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showContentLoading(IZ)V

    .line 1210
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->cancelBrowse(Ljava/lang/Long;)V

    .line 1213
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 1216
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 1220
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    .line 1221
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    .line 1222
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundary idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1254
    :goto_2
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundary idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_1

    .line 1231
    :cond_5
    const-string v3, "[DMS]"

    const-string v4, "Press Next Page"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showContentLoading(IZ)V

    .line 1234
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getMiddleIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 1237
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 1241
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    .line 1242
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    .line 1243
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundary idx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1240
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_3

    .line 1259
    .end local v17           #boundary:Ljava/lang/Long;
    .end local v23           #start:Ljava/lang/Long;
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->IsContainer()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1262
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 1263
    .local v16, bDone:Z
    if-nez v16, :cond_8

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    .end local v6           #ContentID:Ljava/lang/String;
    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    .end local v16           #bDone:Z
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    new-instance v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->switchFolder(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1265
    :catch_0
    move-exception v19

    .line 1267
    .local v19, e:Landroid/os/RemoteException;
    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 1284
    .end local v19           #e:Landroid/os/RemoteException;
    .restart local v6       #ContentID:Ljava/lang/String;
    :cond_9
    const-string v3, "[DMS]"

    const-string v4, "itemclick"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current DMR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "DMR"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "DMR"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1293
    .local v15, CurrentDMR:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "server"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "container"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "content"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "filepath"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "startIdx"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "endIdx"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v7

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "direction"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1302
    const-string v3, "[DMS]"

    const-string v4, "check DLNA mode first"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v18

    .line 1304
    .local v18, dlnaMode:I
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNA mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    .line 1318
    const-string v3, "[DMS]"

    const-string v4, "DLNA_DMP mode, modify DMP.xml info"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v3, "[DMS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v3, "[DMS]"

    const-string v4, "shufflemode = 0"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v3, "[DMS]"

    const-string v4, "dmsplayall"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v3, :cond_a

    .line 1327
    const-string v3, "[DMS]"

    const-string v4, "enter click"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v3 .. v13}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 1336
    new-instance v21, Landroid/content/Intent;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1337
    .local v21, intent:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "bindplugin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v3, "classname"

    const-string v4, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1349
    .end local v21           #intent:Landroid/content/Intent;
    :cond_a
    :goto_5
    new-instance v21, Landroid/content/Intent;

    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    .restart local v21       #intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1351
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1341
    .end local v21           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v19

    .line 1342
    .restart local v19       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1403
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p3, :cond_1

    :cond_0
    move v4, v5

    .line 1430
    :goto_0
    return v4

    .line 1406
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mSelectedItem:I

    .line 1407
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    .line 1409
    .local v2, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->IsContainer()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1412
    new-array v3, v7, [Ljava/lang/CharSequence;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const v5, 0x20c01fe

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1414
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 1417
    .local v1, ids:[I
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_2

    .line 1419
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    .line 1421
    :catch_0
    move-exception v0

    .line 1423
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1430
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #ids:[I
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/htc/music/widget/MusicListActivity;->onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    .line 1414
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onMaBackPressed()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1121
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    iget v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->cancelBrowse(Ljava/lang/Long;)V

    .line 1124
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1126
    .local v2, size:I
    if-le v2, v4, :cond_1

    .line 1127
    const-string v3, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBackPressed size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1131
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1132
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    .line 1133
    .local v1, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, Id:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1135
    const-string v3, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBackPressed id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->switchFolder(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v4

    .line 1149
    .end local v0           #Id:Ljava/lang/String;
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    :goto_1
    return v3

    .line 1140
    .restart local v0       #Id:Ljava/lang/String;
    .restart local v1       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    :cond_0
    const-string v3, "[DMS]"

    const-string v5, "onBackPressed id == null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    .end local v0           #Id:Ljava/lang/String;
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setResult(I)V

    .line 1149
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 24
    .parameter "item"

    .prologue
    .line 578
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 793
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 582
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 584
    const-wide/16 v13, 0x0

    .line 585
    .local v13, boundary:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v13

    .line 600
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 601
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    .line 602
    const v2, 0x7f0700be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    .line 603
    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 607
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z

    .line 609
    .end local v13           #boundary:J
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 590
    .restart local v13       #boundary:J
    :cond_1
    const-wide/16 v13, 0x0

    goto :goto_1

    .line 594
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v17

    .line 595
    .local v17, endIdx:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v22

    .line 597
    .local v22, startIdx:J
    cmp-long v2, v22, v17

    if-lez v2, :cond_3

    move-wide/from16 v13, v22

    :goto_2
    goto/16 :goto_1

    :cond_3
    move-wide/from16 v13, v17

    goto :goto_2

    .line 616
    .end local v13           #boundary:J
    .end local v17           #endIdx:J
    .end local v22           #startIdx:J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    .line 618
    .local v19, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    if-eqz v19, :cond_4

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->switchFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .end local v19           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 629
    :pswitch_3
    const-string v2, "[DMS]"

    const-string v3, "now Playing, check DLNA mode first"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v15

    .line 632
    .local v15, dlnaMode:I
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    packed-switch v15, :pswitch_data_1

    .line 643
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->cancelBrowse(Ljava/lang/Long;)V

    .line 645
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 637
    :pswitch_4
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v20, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 640
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 648
    .end local v15           #dlnaMode:I
    .end local v20           #intent:Landroid/content/Intent;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->categoryRightAction()Z

    .line 714
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 717
    :pswitch_6
    const-string v2, "[DMS]"

    const-string v3, "Shuffle All, save current info to DLNA.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getRandomContent()Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, randomContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shuffle"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 731
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v15

    .line 737
    .restart local v15       #dlnaMode:I
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v2, 0x1

    if-ne v15, v2, :cond_6

    .line 751
    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v2, "[DMS]"

    const-string v3, "shufflemode = 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v2, "[DMS]"

    const-string v3, "dmpPlayAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_5

    .line 761
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 768
    new-instance v21, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 769
    .local v21, intent_shuffle:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v21           #intent_shuffle:Landroid/content/Intent;
    :cond_5
    :goto_4
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .restart local v20       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 784
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 790
    .end local v20           #intent:Landroid/content/Intent;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 773
    :catch_0
    move-exception v16

    .line 774
    .local v16, e:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 578
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 633
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 553
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 556
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 557
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 558
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 560
    :cond_0
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_1

    .line 562
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 564
    :cond_1
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_2

    .line 566
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 568
    :cond_2
    return v2

    .line 566
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1556
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_0

    .line 1559
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    div-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    .line 1561
    .local v0, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
    if-eqz v0, :cond_0

    .line 1562
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    div-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetPosition()I
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;)I

    move-result v1

    .line 1563
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 1531
    packed-switch p2, :pswitch_data_0

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1533
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    .line 1534
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1537
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    goto :goto_0

    .line 1540
    :pswitch_2
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z

    .line 1542
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 1544
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1545
    :catch_0
    move-exception v0

    .line 1547
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1531
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 338
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStart()V

    .line 340
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 344
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 345
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 347
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 349
    :cond_0
    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    .line 352
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    .line 353
    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 354
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;

    .line 365
    :cond_2
    :goto_0
    return-void

    .line 356
    :cond_3
    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 357
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getDmpCurContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    .line 358
    const-string v1, "[DMS]"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "[DMS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v0, pluginIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 479
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    .line 481
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V

    .line 484
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverUnsubscribed(ILjava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 491
    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 497
    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    .line 501
    :cond_1
    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I

    if-ne v1, v4, :cond_2

    .line 502
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    :cond_2
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 7
    .parameter "setEnable"

    .prologue
    const v6, 0x7f070009

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 800
    :cond_0
    iput v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 802
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 803
    const-string v3, "[DMS]"

    const-string v4, "activity is paused, do not set category right button status"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 807
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 808
    .local v1, parent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 809
    check-cast v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 811
    .local v0, multiParent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    if-eqz v3, :cond_4

    .line 812
    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    .line 813
    if-eqz p1, :cond_3

    .line 814
    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    .line 815
    const v3, 0x20807e8

    invoke-virtual {v0, v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(II)V

    .line 818
    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 820
    :cond_3
    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    .line 821
    const v3, 0x20807e6

    invoke-virtual {v0, v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(II)V

    goto :goto_0

    .line 826
    :cond_4
    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    goto :goto_0
.end method

.method public showContentLoading(IZ)V
    .locals 5
    .parameter "position"
    .parameter "show"

    .prologue
    .line 1068
    const/4 v1, 0x0

    .line 1069
    .local v1, pb:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    .line 1070
    .local v2, tv:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 1072
    .local v0, fl:Landroid/widget/FrameLayout;
    if-nez p1, :cond_2

    .line 1073
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #fl:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1077
    .restart local v0       #fl:Landroid/widget/FrameLayout;
    :goto_0
    if-eqz v0, :cond_0

    .line 1078
    const v3, 0x7f080052

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #pb:Landroid/widget/ProgressBar;
    check-cast v1, Landroid/widget/ProgressBar;

    .line 1079
    .restart local v1       #pb:Landroid/widget/ProgressBar;
    const v3, 0x7f080053

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1082
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_3

    .line 1096
    :cond_1
    :goto_1
    return-void

    .line 1075
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #fl:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .restart local v0       #fl:Landroid/widget/FrameLayout;
    goto :goto_0

    .line 1085
    :cond_3
    if-eqz p2, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1087
    if-nez p1, :cond_6

    .line 1088
    if-eqz p2, :cond_5

    const v3, 0x7f0700c2

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1085
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 1088
    :cond_5
    const v3, 0x7f0700c1

    goto :goto_3

    .line 1091
    :cond_6
    if-eqz p2, :cond_7

    const v3, 0x7f0700c0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    const v3, 0x7f0700bf

    goto :goto_4
.end method

.method public switchFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ID"
    .parameter "Name"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1156
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;

    .line 1157
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerName:Ljava/lang/String;

    .line 1158
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->updateFilePath()V

    .line 1159
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1160
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setTitle()V

    .line 1161
    const v0, 0x7f0700be

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    .line 1162
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    .line 1163
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsMusicExist:Z

    .line 1165
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    .line 1166
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1167
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1168
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 1170
    iput v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mCurrentPage:I

    .line 1171
    iput v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDirection:I

    .line 1172
    return-void
.end method

.method public updateFilePath()V
    .locals 4

    .prologue
    .line 1175
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1177
    .local v1, size:I
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    .line 1179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    .line 1181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContainerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mFilePath:Ljava/lang/String;

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1183
    :cond_0
    return-void
.end method
