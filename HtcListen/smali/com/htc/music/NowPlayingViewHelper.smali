.class public Lcom/htc/music/NowPlayingViewHelper;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;,
        Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    }
.end annotation


# static fields
.field protected static final ADD_NOW_PLAYING_TO_LIST:I = 0x29

.field protected static final CHANGE_NOW_PLAYING_ORDER:I = 0x2a

.field protected static final CREATE:I = 0x1

.field protected static final DESTROY:I = 0x0

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_SET_AS_RINGTONE:I = 0x8

.field public static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x9

.field public static final DIALOG_SHARETEXT:I = 0x5

.field public static final DIALOG_SHARETYPE:I = 0x4

.field public static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field public static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field private static final GET_ALBUM_ART:I = 0x1

.field protected static final PAUSE:I = 0x4

.field private static final QUEUE_UPDATE_COUNT:I = 0x12c

.field protected static final RESUME:I = 0x3

.field protected static final SETTING:I = 0x2b

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field protected static final START:I = 0x2

.field protected static final STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[NowPlayingViewHelper]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field protected mActivityStatus:I

.field private mAdapterSent:Z

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field protected mContext:Landroid/app/Activity;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentPosition:I

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDialog:Landroid/app/Dialog;

.field protected mDlnaMode:I

.field protected mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mFilter:Ljava/lang/String;

.field private mFilterPosToOldPosTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field private mIsEnhancerExist:Z

.field private mIsNeedToUpdateProperty:Z

.field protected mIsPluginModeNowPlaying:Z

.field private mIsQueueChanged:Z

.field private mIsScrolling:Z

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mMsg:Ljava/lang/String;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

.field private mNonUILooper:Landroid/os/Looper;

.field private mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mPlaylistContent:[I

.field private mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

.field private mPluginListener:Landroid/content/BroadcastReceiver;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRefreshListHandler:Landroid/os/Handler;

.field private mRefreshListRunnable:Ljava/lang/Runnable;

.field private mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mShareText:Ljava/lang/String;

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStopped:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field protected mViewGroup:Landroid/view/ViewGroup;

.field protected mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    .line 80
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 82
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 83
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 85
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    .line 88
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 90
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    .line 92
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    .line 93
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mcurDMR:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 96
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 98
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    .line 102
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    .line 104
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 107
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 116
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 118
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    .line 120
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    .line 122
    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    .line 123
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    .line 124
    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 126
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    .line 128
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 130
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    .line 132
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    .line 138
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 878
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$2;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 889
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$3;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$3;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 1123
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    .line 1124
    iput-wide v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    .line 1126
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 1127
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 1128
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    .line 1130
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    .line 1472
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    .line 1599
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 1647
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$9;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$9;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    .line 2103
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 2104
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 2226
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$10;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$10;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    .line 2240
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$11;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$11;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2281
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$12;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$12;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 2304
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$13;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$13;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    .line 2452
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    .line 2453
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    .line 2498
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    .line 2500
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;

    .line 2501
    iput-wide v5, p0, Lcom/htc/music/NowPlayingViewHelper;->preSearchTime:J

    .line 2503
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$14;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$14;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    .line 2556
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    .line 2558
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$15;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$15;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 3709
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$16;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$16;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 144
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 146
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/NowPlayingViewHelper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/NowPlayingViewHelper;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->notifyProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/music/NowPlayingViewHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/music/NowPlayingViewHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/htc/music/NowPlayingViewHelper;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/NowPlayingViewHelper;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions_plugin(IJ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/NowPlayingViewHelper;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions(IJ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/NowPlayingViewHelper;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 11
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1797
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1799
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1800
    .local v5, status:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 1801
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1833
    :goto_0
    return-void

    .line 1802
    :cond_0
    if-nez v5, :cond_3

    .line 1803
    const/4 v7, 0x1

    invoke-static {v4, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1804
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 1805
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-static {v7, v8, p2, v9, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 1807
    :cond_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    .line 1808
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1810
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1812
    :cond_2
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-static {v7, v8, p2, v9, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 1816
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1817
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v8, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1818
    const-string v7, "drmtargettomain"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1821
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1823
    .local v2, id_idx:I
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1824
    .local v6, trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    .end local v2           #id_idx:I
    :goto_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1825
    .end local v6           #trackId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1826
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1827
    .restart local v6       #trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 1668
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1669
    return-void
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "filter"

    .prologue
    .line 2030
    const/4 v8, 0x0

    .line 2031
    .local v8, ret:Landroid/database/Cursor;
    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    .line 2032
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2033
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    const/4 v4, 0x0

    .line 2037
    .local v4, keywords:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2051
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 2052
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2053
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    const-string v0, "title LIKE ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_3

    .line 2059
    if-eqz p1, :cond_5

    .line 2060
    const/4 v7, 0x0

    .line 2062
    .local v7, nowplaying:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v7

    .line 2063
    const-string v0, " AND _id IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_2

    .line 2065
    aget v0, v7, v6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2066
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_1

    .line 2067
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2070
    :cond_2
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2094
    .end local v6           #i:I
    .end local v7           #nowplaying:[I
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 2095
    invoke-virtual {p0, v8}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    .line 2097
    :cond_4
    return-object v8

    .line 2079
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 2080
    .local v9, status:Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2081
    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    .end local v8           #ret:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v8, p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;-><init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .restart local v8       #ret:Landroid/database/Cursor;
    goto :goto_1

    .line 2084
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 2075
    .end local v9           #status:Ljava/lang/String;
    .restart local v7       #nowplaying:[I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 1982
    if-nez p1, :cond_0

    .line 1983
    const/4 v0, 0x0

    .line 2024
    :goto_0
    return-object v0

    .line 1985
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1986
    goto :goto_0

    .line 1988
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1989
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1990
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 1995
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1997
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1998
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1999
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2000
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2006
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2007
    const/4 p1, 0x0

    .line 2008
    const/4 v0, 0x0

    goto :goto_0

    .line 2011
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2012
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2013
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2014
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2015
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2016
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2017
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 2023
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2024
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 1839
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 1840
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1842
    .local v0, i:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1844
    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1847
    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1848
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1849
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1853
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "icicle"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 530
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    .line 555
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 556
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 558
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    .line 568
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 569
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    .line 596
    :goto_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 598
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 600
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 601
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    .line 608
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 610
    :cond_0
    return-void

    .line 562
    .end local v9           #f:Landroid/content/IntentFilter;
    :catch_0
    move-exception v8

    .line 563
    .local v8, e:Ljava/lang/ClassCastException;
    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    goto :goto_0

    .line 576
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_1
    const/4 v10, 0x0

    .line 577
    .local v10, hideSelected:Z
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-ne v0, v5, :cond_3

    .line 578
    :cond_2
    const/4 v10, 0x1

    .line 581
    :cond_3
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03000e

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 589
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    .line 591
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 593
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method private onCreate_Plugin(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5
    .parameter "intent"
    .parameter "icicle"

    .prologue
    .line 493
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "== onCreatePlugin() =="

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 498
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 499
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 500
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    .line 512
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 518
    :goto_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 521
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "[NowPlayingViewHelper]"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 522
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 523
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    .line 524
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    .line 526
    return-void

    .line 504
    .end local v1           #thread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    goto :goto_0

    .line 514
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_0
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03000e

    invoke-direct {v2, p0, v3, p0, v4}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;I)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    .line 515
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private onDestroy_Local()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 684
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 686
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 688
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 694
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 696
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 699
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 707
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 710
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 711
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 714
    :cond_2
    return-void
.end method

.method private onDestroy_Plugin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 718
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "== onDestroy() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 721
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 724
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 726
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 732
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    .line 733
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 736
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    .line 737
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 744
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 747
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 748
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 751
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 754
    :cond_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHtcContextItemSelected_Local(I)Z
    .locals 13
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1329
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v7, v8

    .line 1437
    :goto_1
    return v7

    .line 1332
    :sswitch_0
    iget v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 1335
    .local v6, position:I
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1337
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v9, "content://drm/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1338
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1356
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    .line 1358
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v8, :cond_2

    .line 1359
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v8}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1340
    :cond_1
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    const/4 v12, 0x0

    new-array v8, v8, [I

    invoke-static {v9, v10, v11, v12, v8}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_2

    .line 1361
    :cond_2
    const-string v8, "[NowPlayingViewHelper]"

    const-string v9, "onHtcContextItemSelected_Local(), listAdapter is null."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1367
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #position:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1368
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1369
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v10, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1370
    const-string v9, "pickermode"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1371
    new-array v0, v7, [I

    iget-wide v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v9, v9

    aput v9, v0, v8

    .line 1372
    .local v0, addToPlaylistData:[I
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1373
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1379
    .end local v0           #addToPlaylistData:[I
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1380
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1381
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v9, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1382
    const-string v8, "track"

    iget-wide v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1388
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1389
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1394
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1395
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->setRingtone()V

    goto/16 :goto_1

    .line 1400
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1402
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v10, "_data"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1404
    .restart local v5       #path:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v9, v9

    invoke-static {v8, v5, v9}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1405
    .local v1, canShare:I
    if-eq v1, v7, :cond_3

    .line 1406
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1409
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->chooseShareType()V

    goto/16 :goto_1

    .line 1416
    .end local v1           #canShare:I
    .end local v5           #path:Ljava/lang/String;
    :sswitch_6
    new-array v6, v7, [I

    .line 1417
    .local v6, position:[I
    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    aput v7, v6, v8

    .line 1420
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7, v6}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I

    .line 1422
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v4

    .line 1424
    .local v4, nowPlayingArray:[I
    if-eqz v4, :cond_4

    array-length v7, v4

    if-nez v7, :cond_0

    .line 1425
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1426
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v9, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1427
    const/high16 v7, 0x2400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1428
    const-string v7, "KeepHistory"

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1429
    const-string v7, "RemoveStoreHistory"

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1430
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1432
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #nowPlayingArray:[I
    :catch_0
    move-exception v2

    .line 1433
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1329
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x5 -> :sswitch_0
        0xa -> :sswitch_6
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_5
    .end sparse-switch
.end method

.method private onHtcContextItemSelected_Plugin(I)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 1441
    sparse-switch p1, :sswitch_data_0

    .line 1466
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1444
    :sswitch_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->playPlug(I)V

    goto :goto_0

    .line 1450
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1451
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showProperty(I)V

    goto :goto_0

    .line 1456
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1461
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1462
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1441
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_1
        0x12 -> :sswitch_3
        0x2b -> :sswitch_2
    .end sparse-switch
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 903
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iput p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 912
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 943
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    .line 945
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_3

    .line 946
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 920
    :cond_2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v1, v2, p3, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 948
    :cond_3
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "onListItemClick_Local(), listAdapter is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 953
    const-string v2, "PluginNowPlayingListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 957
    iput p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 972
    :goto_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->playPlug(I)V

    .line 974
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 975
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 976
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    .line 977
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    .end local v0           #conf:Landroid/content/res/Configuration;
    :cond_0
    :goto_1
    return-void

    .line 961
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 962
    .local v1, pos:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 963
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    goto :goto_0

    .line 966
    :cond_2
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "pos is null in onListItemClick_Plugin"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 985
    const-string v0, "[NowPlayingViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions(IJ)V

    .line 989
    const/4 v0, 0x1

    return v0
.end method

.method private onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1033
    const-string v0, "PluginNowPlayingListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions_plugin(IJ)V

    .line 1037
    const/4 v0, 0x1

    return v0
.end method

.method private onPause_Local()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 665
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 667
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 671
    :cond_1
    return-void
.end method

.method private onPause_Plugin()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method private onResume_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 629
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 631
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    .line 649
    :cond_2
    return-void
.end method

.method private onResume_Plugin()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1492
    packed-switch p2, :pswitch_data_0

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1494
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 1495
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1501
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 1502
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(Z)V

    .line 1503
    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1508
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 1509
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1510
    :cond_3
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x1

    .line 1518
    packed-switch p2, :pswitch_data_0

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1520
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    .line 1523
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :goto_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    .line 1528
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1524
    :catch_0
    move-exception v1

    .line 1525
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1531
    .end local v1           #e1:Landroid/os/RemoteException;
    :pswitch_1
    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    goto :goto_0

    .line 1535
    :pswitch_2
    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    .line 1538
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1539
    :catch_1
    move-exception v0

    .line 1540
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 793
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 794
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "onServiceConnected_Local, mContext is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v0, :cond_1

    .line 799
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03000e

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 806
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 807
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 816
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 826
    :cond_3
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v5, 0x1

    .line 842
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 843
    const-string v3, "[NowPlayingViewHelper]"

    const-string v4, "onServiceConnected_Plugin, mContext is null!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :goto_0
    return-void

    .line 850
    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v4, 0x12c

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V

    .line 851
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v3

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    .line 853
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 854
    .local v0, curPos:I
    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    if-ne v3, v5, :cond_1

    .line 855
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    .line 857
    :cond_1
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    .line 859
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v0           #curPos:I
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 866
    .local v2, pluginIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.music.artpathupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v3, "com.htc.music.nowplayingqueueupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v3, "com.htc.music.trackdetailsupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 860
    .end local v2           #pluginIntentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 861
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private onStart_Local()V
    .locals 5

    .prologue
    .line 615
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 616
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 618
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 619
    .local v0, nowPlayingEvent:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 622
    return-void
.end method

.method private setRingtone()V
    .locals 5

    .prologue
    .line 1603
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1606
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1611
    .local v0, currentAudioType:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v2, :cond_0

    .line 1612
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-wide v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioId(I)V

    .line 1613
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1614
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioType(I)V

    .line 1615
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 1672
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1674
    .local v3, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v0, v4

    .line 1675
    .local v0, audioId:I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v4, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1677
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 1690
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1693
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1680
    :pswitch_0
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normal file case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1685
    :pswitch_1
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD DRM case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 1696
    const-string v0, ""

    .line 1697
    .local v0, trackName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1698
    move-object v0, p1

    .line 1700
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    .line 1702
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1703
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    .line 1706
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1707
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1643
    :cond_0
    return-void
.end method

.method private showTrackOptions(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x5

    .line 994
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 996
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 998
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1000
    .local v1, id_idx:I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v1           #id_idx:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "title"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 1007
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 1009
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "album"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 1012
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentAlbumName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    new-array v3, v7, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f07004f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x20c01f7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f07004c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f070060

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x20c01fe

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1021
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 1029
    .local v2, ids:[I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/music/NowPlayingViewHelper;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1030
    return-void

    .line 1001
    .end local v2           #ids:[I
    .end local v3           #items:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 1002
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    goto/16 :goto_0

    .line 1021
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions_plugin(IJ)V
    .locals 10
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x2

    .line 1042
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 1044
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 1060
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    .line 1061
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-interface {v6, v7}, Lcom/htc/music/IMediaPlaybackService;->getTrackDetails(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1068
    const-string v6, "[NowPlayingViewHelper]"

    const-string v7, "onListItemLongClick()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :goto_2
    return-void

    .line 1048
    :cond_0
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1049
    .local v3, pos:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 1050
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    goto :goto_0

    .line 1052
    :cond_1
    const-string v6, "[NowPlayingViewHelper]"

    const-string v7, "pos is null in onListItemLongClick_Plugin."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1062
    .end local v3           #pos:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1063
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1073
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "artist"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1074
    .local v4, tempArtist:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1075
    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 1084
    :goto_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1085
    .local v5, tempTitle:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1086
    iput-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 1092
    :goto_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 1093
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 1095
    :cond_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 1097
    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v8, 0x20c01f7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v8, 0x20c01fe

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1101
    .local v2, items:[Ljava/lang/CharSequence;
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 1106
    .local v1, ids:[I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v6, v2, v1}, Lcom/htc/music/NowPlayingViewHelper;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto/16 :goto_2

    .line 1078
    .end local v1           #ids:[I
    .end local v2           #items:[Ljava/lang/CharSequence;
    .end local v5           #tempTitle:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 1079
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 1081
    :cond_5
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_3

    .line 1089
    .restart local v5       #tempTitle:Ljava/lang/String;
    :cond_6
    const-string v6, ""

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    goto :goto_4

    .line 1101
    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 1878
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    :goto_0
    return-void

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1879
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public destroyNowPlayingView()V
    .locals 0

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 1576
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1577
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 1578
    return-void
.end method

.method public enableNowPlayingWithGlance()V
    .locals 4

    .prologue
    .line 317
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NOW_PLAYING_SWITCH"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 319
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 305
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 306
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    .line 311
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 312
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 313
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 314
    return-void
.end method

.method public generateNowPlayingView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hideEmptyErrorView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2133
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 2134
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2137
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 2142
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2145
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2146
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2149
    :cond_2
    return-void
.end method

.method protected hideHtcContextMenu()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 761
    return-void
.end method

.method protected init(Landroid/database/Cursor;)V
    .locals 10
    .parameter "newCursor"

    .prologue
    const/4 v7, 0x1

    .line 1900
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v6, :cond_1

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v6, :cond_2

    .line 1905
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 1907
    :cond_2
    instance-of v6, p1, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v6, :cond_3

    .line 1908
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1914
    :goto_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-nez v6, :cond_4

    .line 1916
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->showDatabaseError()V

    .line 1917
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->closeContextMenu()V

    .line 1918
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1910
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1911
    .local v0, c:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1925
    .end local v0           #c:Landroid/database/Cursor;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 1926
    const v6, 0x7f070030

    invoke-virtual {p0, v6}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    goto :goto_0

    .line 1930
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->hideEmptyErrorView()V

    .line 1933
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 1937
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1938
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1948
    const/4 v1, 0x0

    .line 1949
    .local v1, cur:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 1950
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 1951
    .local v5, shufflePos:I
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v5}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    .line 1956
    .end local v5           #shufflePos:I
    :goto_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1958
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.music.metachanged"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :goto_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 1964
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    .line 1965
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1967
    .local v4, keyidx:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1968
    const/4 v2, 0x0

    .line 1969
    .local v2, i:I
    :goto_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1970
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1971
    .local v3, id:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    aput v3, v6, v2

    .line 1972
    add-int/lit8 v2, v2, 0x1

    .line 1973
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 1953
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #keyidx:I
    :cond_6
    :try_start_1
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    .line 1959
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public initListPos()V
    .locals 4

    .prologue
    .line 1888
    const/4 v0, 0x0

    .line 1890
    .local v0, cur:I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 1891
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1892
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1896
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->setSelection(I)V

    .line 1897
    return-void

    .line 1893
    :catch_0
    move-exception v1

    .line 1894
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlugNowPlayingMode()Z
    .locals 1

    .prologue
    .line 1591
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 436
    sparse-switch p1, :sswitch_data_0

    move v5, v6

    .line 485
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 438
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 439
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 440
    .local v0, list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 441
    .local v1, playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 443
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 449
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_2
    if-ne p2, v7, :cond_0

    .line 450
    new-array v0, v5, [I

    iget-wide v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v7, v7

    aput v7, v0, v6

    .line 453
    .restart local v0       #list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 454
    .restart local v1       #playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 461
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-ne p2, v7, :cond_0

    .line 462
    move-object v2, p3

    .line 463
    .local v2, resultIntent:Landroid/content/Intent;
    new-instance v3, Lcom/htc/music/NowPlayingViewHelper$1;

    invoke-direct {v3, p0, v2}, Lcom/htc/music/NowPlayingViewHelper$1;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Intent;)V

    .line 479
    .local v3, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 480
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x13 -> :sswitch_3
        0x29 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .parameter "intent"
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 155
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eqz v2, :cond_0

    .line 191
    :goto_0
    return-void

    .line 157
    :cond_0
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 159
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    .line 161
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 164
    .local v1, mode:I
    if-ne v3, v1, :cond_1

    .line 165
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    .line 170
    .end local v1           #mode:I
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    .line 172
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 175
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03003a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 176
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 182
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 186
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v2, :cond_3

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate_Plugin(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    const v13, 0x1080027

    const v12, 0x1040013

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1156
    sparse-switch p1, :sswitch_data_0

    .line 1264
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 1158
    :sswitch_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v9, Lcom/htc/music/NowPlayingViewHelper$4;

    invoke-direct {v9, p0}, Lcom/htc/music/NowPlayingViewHelper$4;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1171
    :sswitch_1
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07005d

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$5;

    invoke-direct {v8, p0}, Lcom/htc/music/NowPlayingViewHelper$5;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v12, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1180
    :sswitch_2
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$7;

    invoke-direct {v8, p0}, Lcom/htc/music/NowPlayingViewHelper$7;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v12, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, Lcom/htc/music/NowPlayingViewHelper$6;

    invoke-direct {v9, p0}, Lcom/htc/music/NowPlayingViewHelper$6;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1196
    :sswitch_3
    new-array v0, v9, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07010d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    .line 1201
    .local v0, items:[Ljava/lang/CharSequence;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$8;

    invoke-direct {v8, p0}, Lcom/htc/music/NowPlayingViewHelper$8;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual {v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1217
    .local v5, shareTypeDialog:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 1220
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v5           #shareTypeDialog:Landroid/app/AlertDialog;
    :sswitch_4
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v6

    .local v6, textDialog:Landroid/app/Dialog;
    move-object v5, v6

    .line 1221
    goto/16 :goto_0

    .line 1225
    .end local v6           #textDialog:Landroid/app/Dialog;
    :sswitch_5
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v8, v8

    invoke-static {v7, v8, v1, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .local v4, shareNormaldialog:Landroid/app/Dialog;
    move-object v5, v4

    .line 1227
    goto/16 :goto_0

    .line 1231
    .end local v1           #path:Ljava/lang/String;
    .end local v4           #shareNormaldialog:Landroid/app/Dialog;
    :sswitch_6
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1232
    .restart local v1       #path:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v8, v8

    invoke-static {v7, v8, v1, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v3

    .local v3, shareDRMDialog:Landroid/app/Dialog;
    move-object v5, v3

    .line 1233
    goto/16 :goto_0

    .line 1238
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #shareDRMDialog:Landroid/app/Dialog;
    :sswitch_7
    const/16 v7, 0x8

    if-ne p1, v7, :cond_2

    .line 1239
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700aa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v9

    .line 1251
    .restart local v0       #items:[Ljava/lang/CharSequence;
    :goto_1
    const/4 v2, 0x0

    .line 1252
    .local v2, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-nez v7, :cond_0

    .line 1253
    new-instance v7, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v7, p0, v8}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 1254
    const-string v7, "[NowPlayingViewHelper]"

    const-string v8, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :cond_0
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v7, :cond_1

    .line 1257
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/16 v8, 0x13

    invoke-virtual {v7, v0, v8}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    :cond_1
    move-object v5, v2

    .line 1261
    goto/16 :goto_0

    .line 1245
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v2           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_2
    new-array v0, v9, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700aa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    .restart local v0       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 1156
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 340
    const/16 v0, 0x2a

    const v1, 0x7f07000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a5e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 343
    const/16 v0, 0x29

    const v1, 0x7f07004f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a69

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 346
    const/16 v0, 0x2b

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 294
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy_Plugin()V

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy_Local()V

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1321
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onHtcContextItemSelected_Local(I)Z

    move-result v0

    .line 1323
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onHtcContextItemSelected_Plugin(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 194
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v0

    .line 196
    .local v0, isPluginModeNowPlaying:Z
    if-nez v0, :cond_0

    .line 198
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 199
    .local v1, mode:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 204
    .end local v1           #mode:I
    :cond_0
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eq v2, v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 206
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 207
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 209
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 211
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 214
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 403
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 431
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 405
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 408
    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 410
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x29

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 414
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x2a

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 425
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 251
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause_Plugin()V

    goto :goto_0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause_Local()V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)Z
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v3, 0x1

    .line 1268
    sparse-switch p1, :sswitch_data_0

    .line 1308
    const/4 v2, 0x0

    .end local p2
    :goto_0
    return v2

    .line 1270
    .restart local p2
    :sswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1271
    goto :goto_0

    .line 1273
    .restart local p2
    :sswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1274
    goto :goto_0

    .line 1277
    .restart local p2
    :sswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1278
    goto :goto_0

    .line 1281
    .restart local p2
    :sswitch_3
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v0

    .line 1282
    .local v0, adapter:Lcom/htc/music/widget/SharedAdapter;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    invoke-static {v2, v4, v0, p2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    .local v1, listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v2, p2

    .line 1283
    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1284
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v2, v3

    .line 1285
    goto :goto_0

    .line 1268
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 361
    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 362
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 363
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    :cond_0
    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_2

    .line 368
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 371
    :cond_2
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_3

    .line 373
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    :cond_3
    return v2

    :cond_4
    move v1, v3

    .line 363
    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eq v0, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 240
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume_Plugin()V

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume_Local()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 273
    .local v0, a:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    .line 274
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 281
    const-string v0, "isnowplayinglist"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1484
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/NowPlayingViewHelper;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1487
    :goto_0
    return-void

    .line 1486
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/NowPlayingViewHelper;->onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1476
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    .line 1479
    :goto_0
    return-void

    .line 1478
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V

    goto :goto_0
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1549
    move v1, p2

    .line 1550
    .local v1, start:I
    add-int v0, p2, p3

    .line 1551
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1552
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1554
    :cond_0
    return-void
.end method

.method public onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1557
    move v1, p2

    .line 1558
    .local v1, start:I
    add-int v0, p2, p3

    .line 1560
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 1561
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1563
    :cond_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    .line 1564
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    .line 1566
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 768
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_0

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 776
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "NowPlayingView onServiceConnected error:"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 779
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "nowplayingViewHelper call finish at service disconnected!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 783
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 221
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_2

    .line 228
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStart_Local()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 259
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 269
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 262
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public playPlug(I)V
    .locals 3
    .parameter "listItemPos"

    .prologue
    .line 1738
    if-gez p1, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1745
    move v0, p1

    .line 1747
    .local v0, realPos:I
    :try_start_0
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1748
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/htc/music/IMediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    .line 1750
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 1751
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1753
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected resetNowIndicator()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1721
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v2, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1723
    :cond_0
    const/4 v0, 0x0

    .line 1725
    .local v0, setInVisible:Z
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    .line 1726
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I
    invoke-static {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    .line 1728
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    .line 1730
    :goto_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-boolean v0, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    goto :goto_0

    .line 1728
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 1868
    :goto_0
    return-void

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2153
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2154
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 2160
    :cond_0
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    .line 2161
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2165
    :cond_1
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x20201ba

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2166
    if-eqz v4, :cond_2

    .line 2167
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    :cond_2
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x20201c0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2174
    if-nez v4, :cond_3

    .line 2175
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800a6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2179
    :cond_3
    if-eqz v4, :cond_4

    .line 2180
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    :cond_4
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v5, :cond_5

    .line 2185
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f08006f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 2188
    :cond_5
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_7

    .line 2189
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2191
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800e3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2192
    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f080070

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2193
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2196
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 2197
    .local v2, status:Ljava/lang/String;
    const v1, 0x20c00a1

    .line 2198
    .local v1, message:I
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800a2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2200
    .local v0, iv:Landroid/widget/ImageView;
    const-string v5, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2201
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2202
    const v1, 0x7f07003f

    .line 2206
    :goto_0
    if-eqz v0, :cond_8

    .line 2207
    const v5, 0x20802c6

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2214
    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 2215
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 2217
    :cond_9
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v6, 0x7f0800a3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2218
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_a

    .line 2219
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2221
    :cond_a
    return-void

    .line 2204
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_b
    const v1, 0x7f07003e

    goto :goto_0

    .line 2208
    :cond_c
    const-string v5, "removed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2209
    const v1, 0x20c00a1

    goto :goto_1

    .line 2210
    :cond_d
    const-string v5, "unmounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2211
    const v1, 0x20c01e2

    goto :goto_1
.end method

.method protected showDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(ILandroid/os/Bundle;)V

    .line 1134
    return-void
.end method

.method protected showDialog(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    .line 1141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    .line 1142
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 1146
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareDialog(ILandroid/app/Dialog;)Z

    .line 1145
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showEmptyView(I)V
    .locals 4
    .parameter "rid"

    .prologue
    .line 2107
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2108
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2113
    :cond_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 2118
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2121
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v2, :cond_2

    .line 2122
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 2124
    :cond_2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2126
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2127
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 2128
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2129
    :cond_3
    return-void
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .parameter "title"
    .parameter "items"
    .parameter "ids"

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 1150
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 1151
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    .line 1152
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1153
    return-void
.end method

.method public showProperty(I)V
    .locals 6
    .parameter "listItemPos"

    .prologue
    .line 1760
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1761
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1763
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1764
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, artistName:Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 1768
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 1770
    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1772
    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1774
    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1793
    :goto_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1794
    return-void

    .line 1779
    :cond_0
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1781
    const-string v3, "trackname"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1782
    const-string v3, "artistname"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1785
    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    goto :goto_0
.end method

.method protected showSpinner(Z)V
    .locals 0
    .parameter "setSpinnerVisible"

    .prologue
    .line 1857
    return-void
.end method
