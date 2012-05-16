.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.super Lcom/htc/music/widget/MusicListActivity;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
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
.field private mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

.field private mBrowsingComplete:Z

.field private mClearImageCache:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContainerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;",
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

.field private mFileStartIdx:J

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

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

.field private mPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSelectedItem:I

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

.field private mWorkthread:Landroid/os/HandlerThread;

.field private mcurContent:Ljava/lang/String;

.field private mcurDMR:Ljava/lang/String;

.field private msc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mServerIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 146
    iput v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    .line 147
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    .line 148
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    .line 149
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    .line 150
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mClearImageCache:Z

    .line 155
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMediaService:Lcom/htc/music/IMediaPlaybackService;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    .line 157
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurDMR:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    .line 167
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    .line 168
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z

    .line 170
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    .line 171
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    .line 172
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    .line 233
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpListener:Landroid/content/BroadcastReceiver;

    .line 884
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    .line 1432
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    .line 1709
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$10;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    .line 1750
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->msc:Landroid/content/ServiceConnection;

    .line 2289
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const-string v1, "content_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "container"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getDmpCurContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setTitle()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()J
    .locals 2

    .prologue
    .line 78
    sget-wide v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mTime:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-wide p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mTime:J

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFileStartIdx:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIconPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IDmpUiPlaybackService;)Lcom/htc/music/IDmpUiPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 1960
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1961
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1962
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1965
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1966
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

    .line 1970
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1971
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1972
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

    .line 1976
    if-eqz v1, :cond_0

    .line 1977
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1978
    const/4 v1, 0x0

    .line 1980
    :cond_0
    if-eqz v0, :cond_1

    .line 1981
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1982
    const/4 v0, 0x0

    .line 1984
    :cond_1
    return-object v2
.end method

.method private getDmpCurContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    const-string v1, "[DMS]"

    const-string v2, "getDmpCurContent"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "DMP"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
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
    .line 856
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 858
    :cond_0
    const/4 v0, 0x0

    .line 866
    :cond_1
    :goto_0
    return-object v0

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, ID:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 866
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRandomContent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 870
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 872
    :cond_0
    const/4 v2, 0x0

    .line 881
    :goto_0
    return-object v2

    .line 875
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 876
    .local v1, size:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 878
    .local v0, list:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 879
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 881
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getRandomContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setTitle()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method


# virtual methods
.method public GetCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "serverID"
    .parameter "containerID"

    .prologue
    const/4 v2, 0x0

    .line 1766
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

    .line 1772
    .local v3, where:Ljava/lang/String;
    const-string v5, "index_id COLLATE NOCASE ASC"

    .line 1774
    .local v5, sort:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1776
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1784
    :cond_0
    :goto_0
    return-object v2

    .line 1779
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1780
    .local v6, count:I
    if-lez v6, :cond_0

    move-object v2, v7

    .line 1784
    goto :goto_0
.end method

.method public GetCursorIdx(Landroid/database/Cursor;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1788
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1790
    .local v0, count:I
    if-eqz p1, :cond_0

    if-gtz v0, :cond_2

    .line 1791
    :cond_0
    const/4 v4, 0x0

    .line 1848
    :cond_1
    :goto_0
    return-object v4

    .line 1793
    :cond_2
    new-instance v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 1795
    .local v4, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v7

    long-to-int v6, v7

    .line 1796
    .local v6, startID:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v7

    long-to-int v1, v7

    .line 1798
    .local v1, endID:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1799
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

    .line 1800
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

    .line 1805
    if-le v1, v10, :cond_1

    .line 1807
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1808
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1811
    const-string v7, "index_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1813
    .local v3, index:I
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v11, :cond_3

    if-lt v3, v6, :cond_6

    :cond_3
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v11, :cond_4

    if-gt v3, v1, :cond_6

    :cond_4
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v10, :cond_5

    if-gt v3, v6, :cond_6

    :cond_5
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v10, :cond_7

    if-ge v3, v1, :cond_7

    .line 1817
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1807
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1829
    :cond_7
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v11, :cond_8

    .line 1830
    add-int/lit8 v5, v6, 0x63

    .line 1834
    .local v5, middleIdx:I
    :goto_3
    if-ne v3, v5, :cond_9

    .line 1835
    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->setMiddleIdx(J)V

    .line 1836
    const-string v7, "[DMS]"

    const-string v8, "DlnaUtils.MAX_QUERY_CONTENTS = 199"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v7, "[DMS]"

    const-string v8, "middle point is 99"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
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

    .line 1832
    .end local v5           #middleIdx:I
    :cond_8
    add-int/lit8 v5, v6, -0x63

    .restart local v5       #middleIdx:I
    goto :goto_3

    .line 1842
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public GetCursorInfo(Landroid/database/Cursor;)V
    .locals 23
    .parameter "cursor"

    .prologue
    .line 1853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1956
    :cond_0
    :goto_0
    return-void

    .line 1861
    :cond_1
    const/4 v8, -0x1

    .line 1863
    .local v8, Pos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1864
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1867
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    if-nez v2, :cond_3

    .line 1869
    :cond_2
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 1870
    .local v1, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
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

    .line 1875
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 1876
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1924
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-nez v2, :cond_8

    .line 1927
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1928
    .local v11, endIdx:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 1930
    .local v17, startIdx:Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, -0x1

    cmp-long v2, v19, v21

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    if-eqz v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    .line 1934
    :cond_7
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 1935
    .restart local v1       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1946
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    .end local v11           #endIdx:Ljava/lang/Long;
    .end local v17           #startIdx:Ljava/lang/Long;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mClearImageCache:Z

    if-eqz v2, :cond_9

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 1948
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mClearImageCache:Z

    .line 1950
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1953
    .local v16, msg:Landroid/os/Message;
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "NotRefresh"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1879
    .end local v16           #msg:Landroid/os/Message;
    :cond_a
    const-string v2, "content_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1880
    .local v3, contentID:Ljava/lang/String;
    const-string v2, "content_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1881
    .local v4, contentName:Ljava/lang/String;
    const-string v2, "index_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    .line 1882
    .local v14, index:J
    const-string v2, "file_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1890
    .local v6, fileType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v9

    .line 1891
    .local v9, boundary:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v11

    .line 1893
    .local v11, endIdx:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 1894
    cmp-long v2, v14, v9

    if-ltz v2, :cond_b

    cmp-long v2, v14, v11

    if-lez v2, :cond_e

    .line 1895
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1875
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1899
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    .line 1900
    cmp-long v2, v11, v14

    if-gtz v2, :cond_d

    cmp-long v2, v14, v9

    if-lez v2, :cond_e

    .line 1901
    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1906
    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1907
    .local v18, type:I
    if-nez v18, :cond_f

    .line 1909
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1912
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_10

    .line 1913
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    .line 1916
    :cond_10
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    const/4 v5, 0x0

    long-to-int v7, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1917
    .restart local v1       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
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

    .line 1220
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1223
    :cond_0
    const-string v0, "[DMS]"

    const-string v1, "Browse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
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

    .line 1225
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

    .line 1227
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1228
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    .line 1231
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

    .line 1232
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

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

    .line 1233
    :catch_0
    move-exception v9

    .line 1235
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelBrowse(Ljava/lang/Long;)V
    .locals 8
    .parameter "startIdx"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    const-string v0, "[DMS]"

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v6, 0x0

    .line 1248
    .local v6, bDone:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1250
    if-nez v6, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v7

    .line 1254
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 18

    .prologue
    .line 779
    const-string v2, "[DMS]"

    const-string v3, "Playing All, save current info to DLNA.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DMR"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 783
    .local v13, CurrentDMR:Ljava/lang/String;
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v3, "[DMS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start idx = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v3, "[DMS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end idx = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 795
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v14

    .line 802
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

    .line 814
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1

    .line 815
    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contnet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getFirstContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v2, "[DMS]"

    const-string v3, "dmpPlayAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_0

    .line 824
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getFirstContent()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 831
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 832
    .local v17, intent_playall:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v17           #intent_playall:Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v16, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 845
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 852
    .end local v16           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 836
    :catch_0
    move-exception v15

    .line 837
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->requestWindowFeature(I)Z

    .line 183
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setVolumeControlStream(I)V

    .line 184
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setContentView(I)V

    .line 186
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 187
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "ServerName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerName:Ljava/lang/String;

    .line 188
    const-string v3, "ContainerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    .line 189
    const-string v3, "ContainerName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerName:Ljava/lang/String;

    .line 190
    const-string v3, "ServerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    .line 191
    const-string v3, "IconPath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIconPath:Ljava/lang/String;

    .line 192
    const-string v3, "startIdx"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFileStartIdx:J

    .line 194
    const-string v3, "FilePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 198
    :cond_0
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerName:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v1, iniInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;

    .line 203
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-direct {v3, p0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    .line 204
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    .line 211
    const-string v3, "DLNA"

    invoke-virtual {p0, v3, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    .line 212
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    .line 213
    iput-boolean v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    .line 216
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    .line 217
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 218
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 219
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 221
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "workThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    .line 222
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 224
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    .line 225
    iput v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    .line 227
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 228
    .local v0, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
    iget-wide v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFileStartIdx:J

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->setStartIdx(J)V

    .line 229
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v2, 0x20c0162

    const v4, 0x20c013c

    const v3, 0x1080027

    .line 366
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 367
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 368
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 475
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 396
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

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

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

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$5;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$4;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 439
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$8;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$8;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0163

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 368
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

    .line 536
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 538
    const/16 v0, 0xd

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a3f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 540
    const/16 v0, 0xe

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 542
    const/16 v0, 0xf

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 544
    const/16 v0, 0xa

    const v1, 0x20c0202

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 514
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 515
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 517
    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 523
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z

    .line 524
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    sput-object v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mServerIcon:Landroid/graphics/Bitmap;

    .line 532
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 15
    .parameter "id"

    .prologue
    .line 1294
    packed-switch p1, :pswitch_data_0

    .line 1386
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1297
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v0, :cond_1

    .line 1298
    const/4 v0, 0x0

    goto :goto_1

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    .line 1303
    .local v3, ContentID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "container"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filepath"

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "startIdx"

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "endIdx"

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "direction"

    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1312
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v12

    .line 1314
    .local v12, dlnaMode:I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v0, :cond_2

    .line 1329
    const-string v0, "[DMS]"

    const-string v1, "enter click"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v6

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v0 .. v10}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 1338
    new-instance v14, Landroid/content/Intent;

    const-class v0, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v14, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1339
    .local v14, intent:Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "bindplugin"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const-string v0, "classname"

    const-string v1, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    invoke-virtual {p0, v14}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    .end local v14           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    new-instance v14, Landroid/content/Intent;

    const-string v0, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1351
    .restart local v14       #intent:Landroid/content/Intent;
    const/high16 v0, 0x400

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1353
    const/4 v0, -0x2

    invoke-virtual {p0, v14, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1343
    .end local v14           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 1344
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1360
    .end local v3           #ContentID:Ljava/lang/String;
    .end local v12           #dlnaMode:I
    .end local v13           #e:Landroid/os/RemoteException;
    :pswitch_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1361
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v0, "duration"

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    const-string v0, "filename"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    const-string v0, "trackname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    const-string v0, "artistname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    const-string v0, "albumname"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    const-string v0, "genre"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    const-string v0, "composer"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    const-string v0, "location"

    const-string v1, ""

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1371
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    const-string v1, "contentID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1372
    .local v11, ID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    iget-object v14, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    .line 1378
    .end local v11           #ID:Ljava/lang/String;
    :cond_3
    const-class v0, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v14, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1380
    const/4 v0, -0x2

    invoke-virtual {p0, v14, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1382
    const-string v0, "DLNA"

    const-string v1, "PRESSMENU_DETAILS"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 22
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v5

    .line 1068
    .local v5, ContentID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v13

    .line 1071
    .local v13, ContentName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    .line 1073
    .local v18, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    const/16 v20, 0x0

    .line 1074
    .local v20, prevPage:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-lez v2, :cond_0

    .line 1075
    const/16 v20, 0x1

    .line 1077
    :cond_0
    if-nez v5, :cond_7

    if-nez v13, :cond_7

    .line 1078
    const/16 v21, 0x0

    .line 1079
    .local v21, start:Ljava/lang/Long;
    const/4 v15, 0x0

    .line 1081
    .local v15, boundary:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1082
    :cond_1
    const-string v2, "[DMS]"

    const-string v3, "user press next/prev page when it still loading, ignore..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    .end local v15           #boundary:Ljava/lang/Long;
    .end local v21           #start:Ljava/lang/Long;
    :cond_2
    :goto_0
    return-void

    .line 1086
    .restart local v15       #boundary:Ljava/lang/Long;
    .restart local v21       #start:Ljava/lang/Long;
    :cond_3
    if-nez p3, :cond_5

    .line 1087
    const-string v2, "[DMS]"

    const-string v3, "Press Prev Page"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showContentLoading(IZ)V

    .line 1089
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    .line 1092
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getMiddleIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 1095
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1100
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    .line 1101
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    .line 1102
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start idx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boundary idx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1, v15}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1134
    :goto_2
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start idx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boundary idx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1098
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto/16 :goto_1

    .line 1111
    :cond_5
    const-string v2, "[DMS]"

    const-string v3, "Press Next Page"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showContentLoading(IZ)V

    .line 1114
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getMiddleIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 1117
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1121
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    .line 1122
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    .line 1123
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start idx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boundary idx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1, v15}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1120
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_3

    .line 1139
    .end local v15           #boundary:Ljava/lang/Long;
    .end local v21           #start:Ljava/lang/Long;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->IsContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1143
    const-string v2, "[DMS]"

    const-string v3, "itemclick"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current DMR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "DMR"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DMR"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1152
    .local v14, CurrentDMR:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1161
    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode first"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v16

    .line 1163
    .local v16, dlnaMode:I
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 1177
    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml info"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v2, "[DMS]"

    const-string v3, "shufflemode = 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v2, "[DMS]"

    const-string v3, "dmsplayall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_8

    .line 1186
    const-string v2, "[DMS]"

    const-string v3, "enter click"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 1195
    new-instance v19, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1196
    .local v19, intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v19           #intent:Landroid/content/Intent;
    :cond_8
    :goto_4
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    .restart local v19       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1210
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1200
    .end local v19           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v17

    .line 1201
    .local v17, e:Landroid/os/RemoteException;
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
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

    .line 1262
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p3, :cond_1

    :cond_0
    move v4, v5

    .line 1289
    :goto_0
    return v4

    .line 1265
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mSelectedItem:I

    .line 1266
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    .line 1268
    .local v2, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->IsContainer()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1271
    new-array v3, v7, [Ljava/lang/CharSequence;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const v5, 0x20c01fe

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1273
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 1276
    .local v1, ids:[I
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_2

    .line 1278
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1282
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1289
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #ids:[I
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/htc/music/widget/MusicListActivity;->onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    .line 1273
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onMaBackPressed()Z
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    .line 1047
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setResult(I)V

    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 23
    .parameter "item"

    .prologue
    .line 581
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 729
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 585
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 587
    const-wide/16 v13, 0x0

    .line 588
    .local v13, boundary:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 589
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v13

    .line 603
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 604
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

    .line 605
    const v2, 0x7f0700be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    .line 606
    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 608
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    .line 610
    .end local v13           #boundary:J
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 593
    .restart local v13       #boundary:J
    :cond_1
    const-wide/16 v13, 0x0

    goto :goto_1

    .line 597
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v17

    .line 598
    .local v17, endIdx:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v21

    .line 600
    .local v21, startIdx:J
    cmp-long v2, v21, v17

    if-lez v2, :cond_3

    move-wide/from16 v13, v21

    :goto_2
    goto :goto_1

    :cond_3
    move-wide/from16 v13, v17

    goto :goto_2

    .line 630
    .end local v13           #boundary:J
    .end local v17           #endIdx:J
    .end local v21           #startIdx:J
    :pswitch_2
    const-string v2, "[DMS]"

    const-string v3, "now Playing, check DLNA mode first"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v15

    .line 633
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

    .line 634
    packed-switch v15, :pswitch_data_1

    .line 644
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    .line 646
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 638
    :pswitch_3
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v19, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 641
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 649
    .end local v15           #dlnaMode:I
    .end local v19           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->categoryRightAction()Z

    .line 650
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 653
    :pswitch_5
    const-string v2, "[DMS]"

    const-string v3, "Shuffle All, save current info to DLNA.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getRandomContent()Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, randomContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shuffle"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 667
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
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

    .line 671
    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v15

    .line 673
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

    .line 686
    const/4 v2, 0x1

    if-ne v15, v2, :cond_5

    .line 687
    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
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

    .line 692
    const-string v2, "[DMS]"

    const-string v3, "shufflemode = 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v2, "[DMS]"

    const-string v3, "dmpPlayAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_4

    .line 697
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 704
    new-instance v20, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .local v20, intent_shuffle:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v20           #intent_shuffle:Landroid/content/Intent;
    :cond_4
    :goto_4
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .restart local v19       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 720
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 726
    .end local v19           #intent:Landroid/content/Intent;
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 709
    :catch_0
    move-exception v16

    .line 710
    .local v16, e:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 634
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 556
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 559
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 560
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 561
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 563
    :cond_0
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_1

    .line 565
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1415
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v3, :cond_0

    .line 1419
    div-int/lit8 v3, p3, 0x2

    add-int v2, p2, v3

    .line 1420
    .local v2, position:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1423
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    .line 1425
    .local v0, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    if-eqz v0, :cond_0

    .line 1426
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetPosition()I
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;)I

    move-result v1

    .line 1427
    .local v1, pos:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v3, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 1390
    packed-switch p2, :pswitch_data_0

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1392
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    .line 1393
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1396
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    goto :goto_0

    .line 1399
    :pswitch_2
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    .line 1401
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 1403
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1404
    :catch_0
    move-exception v0

    .line 1406
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStart()V

    .line 330
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 331
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 334
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 335
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 337
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 339
    :cond_0
    const v2, 0x7f0700be

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    .line 342
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    .line 343
    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 344
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurDMR:Ljava/lang/String;

    .line 363
    :cond_2
    :goto_0
    return-void

    .line 346
    :cond_3
    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 347
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getDmpCurContent()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, content:Ljava/lang/String;
    const-string v2, "[DMS]"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 352
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    .line 354
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    if-eqz v2, :cond_4

    .line 355
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    .line 358
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v1, pluginIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 482
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    .line 484
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V

    .line 487
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverUnsubscribed(ILjava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 494
    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 500
    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    .line 504
    :cond_1
    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    if-ne v1, v4, :cond_2

    .line 505
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    :cond_2
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 7
    .parameter "setEnable"

    .prologue
    const v6, 0x7f070009

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 734
    const/4 v2, 0x0

    .line 735
    .local v2, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 737
    :cond_0
    iput v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 739
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 740
    const-string v3, "[DMS]"

    const-string v4, "activity is paused, do not set category right button status"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_1
    :goto_0
    return-void

    .line 745
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 746
    .local v1, parent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 747
    check-cast v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 749
    .local v0, multiParent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    if-eqz v3, :cond_4

    .line 750
    if-eqz p1, :cond_3

    .line 751
    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    .line 752
    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    .line 754
    const v3, 0x20807e8

    invoke-virtual {v0, v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(II)V

    .line 757
    iget-object v3, v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 760
    :cond_3
    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    .line 761
    const v3, 0x20807e6

    invoke-virtual {v0, v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(II)V

    .line 764
    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    goto :goto_0

    .line 767
    :cond_4
    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    goto :goto_0
.end method

.method public showContentLoading(IZ)V
    .locals 5
    .parameter "position"
    .parameter "show"

    .prologue
    .line 1012
    const/4 v1, 0x0

    .line 1013
    .local v1, pb:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    .line 1014
    .local v2, tv:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 1016
    .local v0, fl:Landroid/widget/FrameLayout;
    if-nez p1, :cond_2

    .line 1017
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #fl:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1021
    .restart local v0       #fl:Landroid/widget/FrameLayout;
    :goto_0
    if-eqz v0, :cond_0

    .line 1022
    const v3, 0x7f080052

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #pb:Landroid/widget/ProgressBar;
    check-cast v1, Landroid/widget/ProgressBar;

    .line 1023
    .restart local v1       #pb:Landroid/widget/ProgressBar;
    const v3, 0x7f080053

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1026
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_3

    .line 1040
    :cond_1
    :goto_1
    return-void

    .line 1019
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #fl:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .restart local v0       #fl:Landroid/widget/FrameLayout;
    goto :goto_0

    .line 1029
    :cond_3
    if-eqz p2, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1031
    if-nez p1, :cond_6

    .line 1032
    if-eqz p2, :cond_5

    const v3, 0x7f0700c2

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1029
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 1032
    :cond_5
    const v3, 0x7f0700c1

    goto :goto_3

    .line 1035
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

.method public updateFilePath()V
    .locals 4

    .prologue
    .line 1054
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1056
    .local v1, size:I
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 1058
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_0
    return-void
.end method
