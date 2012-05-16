.class public Lcom/htc/music/browserlayer/TrackBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x258

.field private static final ANIMATION_START_OFFSET:I = 0xc8

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x4

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final INVALIDATE_LISTVIEW:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "[TrackBrowser]"

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[PluginNowPlayingListActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final CHANGE_ORDER:I

.field private final CLEAR_PLAYLIST:I

.field private final DELETE_SONGS:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final EDIT_PLAYLIST:I

.field private final GET_ALBUM_ART:I

.field private NPoptionButtonClick:Landroid/view/View$OnClickListener;

.field private final PLAY_ALL:I

.field private final QUEUE_UPDATE_COUNT:I

.field private final Q_ALL:I

.field private final Q_SELECTED:I

.field private final REMOVE:I

.field private final RENAME_PLAYLIST:I

.field private final SAVE_AS_PLAYLIST:I

.field private final SEARCH:I

.field private final SELECT_ALL:I

.field private final SETTING:I

.field private final SET_RINGTONE:I

.field private final SHARE:I

.field private final SHARE_PLUGIN:I

.field private final UNSELECT_ALL:I

.field private final UPLOAD:I

.field mActivityTitle:Ljava/lang/String;

.field private mActivity_height:I

.field private mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field mAsyncQuerying:Z

.field private mButtonPanel:Landroid/view/ViewStub;

.field private mCategory:S

.field private mComposer:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentPosition:I

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDescription:Ljava/lang/String;

.field mDestroyed:Z

.field private mDlnaMode:I

.field private mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDlnaServiceConn:Z

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mEditMode:Z

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

.field private mGenre:Ljava/lang/String;

.field private mIsDrmList:Z

.field private mIsNeedToUpdateProperty:Ljava/lang/Boolean;

.field public mIsNowPlayinglist:Z

.field private mIsPluginModeNowPlaying:Z

.field private mIsQueueChanged:Z

.field private mIsScrolling:Z

.field private mItemClicked:Z

.field private mLibraryButton:Landroid/widget/ImageButton;

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mMsg:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private volatile mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

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

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPickerMode:I

.field mPlaybackServiceConnected:Z

.field private mPlayerPanel:Landroid/view/ViewStub;

.field private mPlaylistAudioId:[I

.field private mPlaylistContent:[I

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

.field private mPluginListener:Landroid/content/BroadcastReceiver;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mQueueTitle:Lcom/htc/widget/HeaderBarText;

.field private mQueueTitle_height:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedListener:Landroid/content/BroadcastReceiver;

.field private mRecentPlayedPlaylist:Z

.field private mRecommendButton:Landroid/widget/ImageButton;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRefreshListHandler:Landroid/os/Handler;

.field private mRefreshListRunnable:Ljava/lang/Runnable;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSelectedPlaylistName:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mShareText:Ljava/lang/String;

.field private mShowPlayerPanel:Z

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

.field private mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 263
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 147
    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_SELECTED:I

    .line 149
    const/16 v0, 0x18

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_ALL:I

    .line 151
    const/16 v0, 0x19

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SAVE_AS_PLAYLIST:I

    .line 153
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->PLAY_ALL:I

    .line 155
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CLEAR_PLAYLIST:I

    .line 157
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->REMOVE:I

    .line 159
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SEARCH:I

    .line 162
    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->ADD_SONGS:I

    .line 164
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DELETE_SONGS:I

    .line 166
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CHANGE_ORDER:I

    .line 168
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->RENAME_PLAYLIST:I

    .line 170
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SELECT_ALL:I

    .line 172
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UNSELECT_ALL:I

    .line 174
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE:I

    .line 176
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 178
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->EDIT_PLAYLIST:I

    .line 180
    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE_PLUGIN:I

    .line 182
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UPLOAD:I

    .line 184
    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SETTING:I

    .line 186
    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE:I

    .line 188
    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SET_RINGTONE:I

    .line 205
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 207
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    .line 219
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 221
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    .line 237
    iput-short v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    .line 249
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    .line 251
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    .line 253
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    .line 255
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 257
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 590
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 695
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 728
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    .line 818
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    .line 1045
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1073
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 1086
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1104
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    .line 1552
    const/16 v0, 0x4ce

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivity_height:I

    .line 1553
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle_height:I

    .line 1620
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 1636
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 1740
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 1780
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1799
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2264
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->NPoptionButtonClick:Landroid/view/View$OnClickListener;

    .line 3623
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$21;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$21;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 3639
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 3650
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 3656
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$24;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$24;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 3668
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$25;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$25;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 5265
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    .line 5268
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPrevButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 5270
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecommendButton:Landroid/widget/ImageButton;

    .line 5272
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 5273
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    .line 5279
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    .line 5281
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 5283
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 5285
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    .line 5286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    .line 5287
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 5339
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 5345
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->QUEUE_UPDATE_COUNT:I

    .line 5347
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    .line 5349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    .line 5351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    .line 5353
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    .line 5357
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    .line 5359
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    .line 5362
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-direct {v0, v4}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 5366
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 5368
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    .line 5370
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    .line 5373
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    .line 5376
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->GET_ALBUM_ART:I

    .line 5424
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    .line 5426
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 5708
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    .line 5952
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    .line 6005
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 6018
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-short v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$5702(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$5900(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions_plugin(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$6000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->notifyProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$6600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onClickMusicStore()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideHtcContextMenu()V

    return-void
.end method

.method private canShare()I
    .locals 1

    .prologue
    .line 3401
    const/4 v0, 0x0

    return v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 13
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2190
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 2191
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    .line 2192
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 2244
    :goto_0
    return-void

    .line 2193
    :cond_0
    if-nez v8, :cond_5

    .line 2194
    const/4 v5, 0x0

    .line 2195
    .local v5, msg:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v7, p1, v10}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v1

    .line 2196
    .local v1, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v1, :cond_2

    .line 2197
    const/4 v0, 0x0

    .line 2198
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v10, :cond_1

    .line 2201
    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    .line 2204
    :cond_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 2206
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_2
    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    .line 2207
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2208
    move v6, p2

    .line 2209
    .local v6, pos:I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 2211
    .end local v6           #pos:I
    :cond_3
    const/4 v0, 0x0

    .line 2212
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v10, :cond_4

    .line 2215
    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    .line 2218
    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 2222
    .end local v0           #category:Lcom/htc/music/NpCategory;
    .end local v1           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v5           #msg:Ljava/lang/String;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2223
    .local v4, intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2224
    const-string v10, "drmtargettomain"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2227
    const/4 v3, 0x0

    .line 2229
    .local v3, id_idx:I
    :try_start_0
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v10, :cond_6

    .line 2230
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "audio_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2236
    :goto_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2237
    .local v9, trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    :goto_2
    const/4 v10, -0x2

    invoke-virtual {p0, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2233
    .end local v9           #trackId:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 2238
    :catch_0
    move-exception v2

    .line 2239
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2240
    .restart local v9       #trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 5977
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 5978
    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 3677
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 3678
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3679
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 3684
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    .line 3688
    :cond_0
    :goto_1
    return-void

    .line 3681
    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3686
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 14

    .prologue
    .line 3712
    const/4 v11, 0x0

    .line 3713
    .local v11, fancyName:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 3714
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3822
    :cond_0
    :goto_0
    if-nez v11, :cond_1

    .line 3823
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3825
    :cond_1
    return-object v11

    .line 3715
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 3716
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 3717
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 3719
    :cond_4
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v0, v1, :cond_5

    .line 3720
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 3721
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3722
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3723
    .local v6, albunId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_6

    .line 3724
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 3726
    :cond_6
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album"

    aput-object v1, v2, v0

    .line 3729
    .local v2, cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3732
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 3733
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    .line 3734
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3735
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3736
    const-string v0, "<unknown>"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3737
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3740
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3744
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #albunId:J
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_8
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 3745
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3746
    .local v8, artistId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_9

    .line 3747
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 3749
    :cond_9
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "artist"

    aput-object v1, v2, v0

    .line 3752
    .restart local v2       #cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3755
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 3756
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 3757
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3758
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3759
    const-string v0, "<unknown>"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3760
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3762
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3766
    .end local v2           #cols:[Ljava/lang/String;
    .end local v8           #artistId:J
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_b
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v0, v1, :cond_d

    .line 3767
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 3768
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 3773
    :cond_c
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 3775
    :cond_d
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 3776
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v0, :cond_f

    .line 3777
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 3778
    .restart local v2       #cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3784
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 3785
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_e

    .line 3786
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3787
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3789
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3793
    .end local v2           #cols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_f
    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 3796
    :cond_10
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 3797
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 3798
    .local v12, genreId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-nez v0, :cond_11

    .line 3799
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 3801
    :cond_11
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 3804
    .restart local v2       #cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3807
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 3808
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 3809
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3810
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3812
    :cond_12
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3816
    .end local v2           #cols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #genreId:J
    :cond_13
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 3817
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    goto/16 :goto_0

    :cond_14
    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    goto :goto_1

    .line 3820
    :cond_15
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 3413
    const/16 v17, 0x0

    .line 3414
    .local v17, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 3415
    const-string v2, "title COLLATE NOCASE ASC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3416
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 3417
    .local v22, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3420
    const/4 v8, 0x0

    .line 3421
    .local v8, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3435
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 3436
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 3437
    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    const-string v2, "title LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3441
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 3443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3450
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 3451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3454
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v12, v2

    .line 3455
    .local v12, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_7

    .line 3456
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3458
    if-eqz p1, :cond_6

    .line 3459
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    const/16 v17, 0x0

    .line 3614
    .end local v12           #genreId:J
    :cond_3
    :goto_1
    if-eqz v17, :cond_4

    if-eqz p1, :cond_4

    .line 3615
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 3618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 3620
    :cond_4
    return-object v17

    .line 3414
    .end local v8           #keywords:[Ljava/lang/String;
    .end local v22           #where:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3463
    .restart local v8       #keywords:[Ljava/lang/String;
    .restart local v12       #genreId:J
    .restart local v22       #where:Ljava/lang/StringBuilder;
    :cond_6
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_1

    .line 3467
    :cond_7
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    if-eqz p1, :cond_8

    .line 3469
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3473
    :cond_8
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_1

    .line 3475
    .end local v12           #genreId:J
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_e

    .line 3476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 3477
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_3

    .line 3478
    if-eqz p2, :cond_c

    .line 3479
    const/4 v15, 0x0

    .line 3481
    .local v15, nowplaying:[I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v15

    .line 3482
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    array-length v2, v15

    if-ge v14, v2, :cond_b

    .line 3484
    aget v2, v15, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3485
    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_a

    .line 3486
    const-string v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 3489
    :cond_b
    const-string v2, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    goto/16 :goto_1

    .line 3498
    .end local v14           #i:I
    .end local v15           #nowplaying:[I
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 3499
    .local v19, status:Ljava/lang/String;
    const-string v2, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3500
    new-instance v17, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .end local v17           #ret:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .restart local v17       #ret:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 3503
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3507
    .end local v19           #status:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 3508
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_10

    .line 3510
    const-string v2, "play_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3512
    if-eqz p1, :cond_f

    .line 3513
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    const/16 v17, 0x0

    .line 3530
    :goto_3
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    goto/16 :goto_1

    .line 3523
    :cond_f
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_3

    .line 3533
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 3534
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_3

    .line 3535
    const/16 v16, 0x0

    .line 3537
    .local v16, recentPlayed:[I
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v16

    .line 3538
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3539
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v14, v2, :cond_12

    .line 3540
    aget v2, v16, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3541
    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_11

    .line 3542
    const-string v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3539
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 3545
    :cond_12
    const-string v2, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3547
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 3549
    .local v20, tempCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_14

    .line 3550
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v20

    .line 3551
    if-eqz v20, :cond_13

    .line 3552
    new-instance v18, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;-><init>(Landroid/database/Cursor;[ILcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    .end local v17           #ret:Landroid/database/Cursor;
    .local v18, ret:Landroid/database/Cursor;
    move-object/from16 v17, v18

    .end local v18           #ret:Landroid/database/Cursor;
    .restart local v17       #ret:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 3555
    :cond_13
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "Recently played cursor became null after joinAlbumArt."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3560
    .end local v14           #i:I
    .end local v20           #tempCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 3561
    .local v11, ex:Landroid/os/RemoteException;
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v2, v3, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3558
    .end local v11           #ex:Landroid/os/RemoteException;
    .restart local v14       #i:I
    .restart local v20       #tempCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_2
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "Recently played cursor is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3567
    .end local v14           #i:I
    .end local v16           #recentPlayed:[I
    .end local v20           #tempCursor:Landroid/database/Cursor;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 3568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3569
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3571
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 3572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3574
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 3575
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 3576
    .local v10, composer:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v21

    .line 3577
    .local v21, unknown:Z
    if-eqz v21, :cond_19

    .line 3578
    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    invoke-static/range {v22 .. v22}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 3588
    .end local v10           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    :cond_18
    :goto_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v2, v3, :cond_1b

    .line 3593
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3594
    const-string v2, " AND (is_music>1 OR mime_type = \'audio/x-wma-drm\' )"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3600
    :goto_6
    if-eqz p1, :cond_1c

    .line 3601
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3582
    .restart local v10       #composer:Ljava/lang/String;
    .restart local v21       #unknown:Z
    :cond_19
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND composer = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3596
    .end local v10           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    :cond_1a
    const-string v2, " AND is_music>1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3598
    :cond_1b
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3605
    :cond_1c
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_1

    .line 3494
    .restart local v15       #nowplaying:[I
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 5196
    if-nez p1, :cond_0

    .line 5197
    const/4 v0, 0x0

    .line 5239
    :goto_0
    return-object v0

    .line 5199
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 5200
    goto :goto_0

    .line 5203
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5204
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5205
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5206
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 5210
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5212
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 5213
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5214
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5215
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5216
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 5221
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 5222
    const/4 p1, 0x0

    .line 5223
    const/4 v0, 0x0

    goto :goto_0

    .line 5226
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5227
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5228
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5229
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5230
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 5231
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 5232
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5233
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5234
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5235
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 5238
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5239
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private moveItem(Z)V
    .locals 13
    .parameter "up"

    .prologue
    .line 2071
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 2072
    .local v3, curcount:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 2073
    .local v4, curpos:I
    if-eqz p1, :cond_0

    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    :cond_0
    if-nez p1, :cond_2

    add-int/lit8 v10, v3, -0x1

    if-lt v4, v10, :cond_2

    .line 2113
    :cond_1
    :goto_0
    return-void

    .line 2077
    :cond_2
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v10, v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v10, :cond_5

    .line 2078
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .line 2079
    .local v1, c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    if-eqz p1, :cond_3

    add-int/lit8 v10, v4, -0x1

    :goto_1
    invoke-virtual {v1, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 2080
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 2081
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 2082
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 2083
    if-eqz p1, :cond_4

    .line 2084
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 2079
    :cond_3
    add-int/lit8 v10, v4, 0x1

    goto :goto_1

    .line 2086
    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 2089
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "play_order"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2091
    .local v2, colidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2092
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2093
    .local v5, currentplayidx:I
    const-string v10, "external"

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 2094
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2095
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_id=?"

    .line 2096
    .local v8, where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 2097
    .local v9, wherearg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2098
    .local v6, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_6

    .line 2099
    const-string v10, "play_order"

    add-int/lit8 v11, v5, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2100
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2101
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2102
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2109
    :goto_2
    const-string v10, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2110
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2111
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2104
    :cond_6
    const-string v10, "play_order"

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2105
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2106
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2107
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 5692
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 5693
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5695
    .local v0, i:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5697
    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5698
    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5699
    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5700
    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5701
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5702
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5704
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5706
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onClickMusicStore()V
    .locals 8

    .prologue
    .line 6025
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6027
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "vfmusic://"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6074
    :goto_0
    return-void

    .line 6029
    :catch_0
    move-exception v0

    .line 6030
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6032
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6033
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 6035
    .local v2, locale:Ljava/util/Locale;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6037
    :cond_1
    const-string v3, "http://m.musicstore.orange.fr"

    .line 6043
    .local v3, strLink:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6045
    :catch_1
    move-exception v0

    .line 6046
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6038
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #strLink:Ljava/lang/String;
    :cond_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 6039
    const-string v3, "http://mobile.orange.ch/MusicStore"

    .restart local v3       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 6041
    .end local v3           #strLink:Ljava/lang/String;
    :cond_3
    const-string v3, "http://m.musicstore.orange.co.uk"

    .restart local v3       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 6048
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #strLink:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6049
    const-string v4, "http://waprd.telstra.com/redirect?target=music-g"

    .line 6051
    .local v4, strURL:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 6053
    :catch_2
    move-exception v0

    .line 6054
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6056
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #strURL:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6057
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6059
    .local v1, intent:Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 6060
    :catch_3
    move-exception v0

    .line 6061
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6062
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->forceReloadAmazonSetting()V

    goto/16 :goto_0

    .line 6064
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6065
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6067
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 6068
    :catch_4
    move-exception v0

    .line 6069
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6072
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "there is no music store available, but image button is visible."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onCreate_Local(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 381
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 382
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    .line 383
    invoke-virtual {p0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 384
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 388
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "title_key"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

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

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 398
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "title_key"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

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

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 432
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_a

    .line 433
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 442
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 443
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 444
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 446
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_d

    .line 447
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 449
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 450
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 473
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 474
    .local v11, hideSelected:Z
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-eq v0, v12, :cond_2

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-ne v0, v4, :cond_3

    .line 475
    :cond_2
    const/4 v11, 0x1

    .line 478
    :cond_3
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_f

    const v3, 0x7f030024

    :goto_2
    const/4 v4, 0x0

    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_4

    if-eqz v11, :cond_5

    :cond_4
    move v8, v12

    :cond_5
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 486
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I

    .line 488
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 490
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 491
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 494
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 497
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_6

    .line 498
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HeaderBar;

    .line 499
    .local v10, header:Lcom/htc/widget/HeaderBar;
    if-eqz v10, :cond_6

    .line 500
    invoke-virtual {v10, v12}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 503
    .end local v10           #header:Lcom/htc/widget/HeaderBar;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 504
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

    .line 506
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 507
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 513
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v0, :cond_7

    .line 514
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.recentplayedchanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    :cond_7
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v12, v0, :cond_10

    .line 518
    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    .line 519
    iput-short v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    .line 523
    :goto_3
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_8

    .line 524
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->enableSearch()V

    .line 525
    :cond_8
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_9

    .line 526
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 529
    :cond_9
    return-void

    .line 434
    .end local v9           #f:Landroid/content/IntentFilter;
    .end local v11           #hideSelected:Z
    :cond_a
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_b

    .line 435
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 436
    :cond_b
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_c

    .line 438
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 440
    :cond_c
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 454
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 456
    :cond_e
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    goto/16 :goto_1

    .line 478
    .restart local v11       #hideSelected:Z
    :cond_f
    const v3, 0x7f03000e

    goto/16 :goto_2

    .line 522
    .restart local v9       #f:Landroid/content/IntentFilter;
    :cond_10
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    goto :goto_3
.end method

.method private onCreate_Plugin(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 532
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "== onCreatePlugin() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 535
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 536
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 538
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_1

    .line 539
    const v1, 0x7f030057

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 547
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 548
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 549
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 550
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 554
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 560
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f03000e

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 561
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 564
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 566
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 568
    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 569
    const v1, 0x7f0700a0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    .line 571
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->enableSearch()V

    .line 576
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[PluginNowPlayingListActivity]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 577
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 578
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    .line 579
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    .line 581
    return-void

    .line 540
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_2

    .line 541
    const v1, 0x7f030056

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto :goto_0

    .line 542
    :cond_2
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_3

    .line 543
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 545
    :cond_3
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method private onDestroy_Local()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 855
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 857
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 859
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 861
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 863
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 865
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 869
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v1, v2, :cond_4

    .line 870
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 882
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 883
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 886
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 887
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 892
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 893
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 899
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_3

    .line 900
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 902
    :cond_3
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 903
    return-void

    .line 872
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 874
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onDestroy_Plugin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 907
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "== onDestroy() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    .line 910
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 911
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 913
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 915
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 917
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 923
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 924
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 925
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 928
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    .line 929
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 936
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 939
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 940
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_1

    .line 942
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 943
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 946
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 948
    return-void

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHtcContextItemSelected_Local(I)Z
    .locals 20
    .parameter "id"

    .prologue
    .line 1836
    sparse-switch p1, :sswitch_data_0

    .line 1977
    :sswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v3

    :goto_0
    return v3

    .line 1839
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move/from16 v18, v0

    .line 1842
    .local v18, position:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1844
    .local v17, path:Ljava/lang/String;
    if-eqz v17, :cond_0

    const-string v3, "content://drm/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1845
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1877
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1847
    :cond_0
    const/4 v2, 0x0

    .line 1848
    .local v2, category:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v3, :cond_1

    .line 1849
    new-instance v2, Lcom/htc/music/NpCategory;

    .end local v2           #category:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    .restart local v2       #category:Lcom/htc/music/NpCategory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    const/4 v5, 0x0

    new-array v5, v5, [I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v2, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 1881
    .end local v2           #category:Lcom/htc/music/NpCategory;
    .end local v17           #path:Ljava/lang/String;
    .end local v18           #position:I
    :sswitch_2
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1882
    .local v16, intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1883
    const-string v3, "pickermode"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1884
    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v4, v4

    aput v4, v9, v3

    .line 1885
    .local v9, addToPlaylistData:[I
    const-string v3, "AddToPlaylistData"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1886
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1887
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1891
    .end local v9           #addToPlaylistData:[I
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_3
    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_TO_QUEUE, mSelectedId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1894
    :catch_0
    move-exception v13

    .line 1895
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1901
    .end local v13           #e:Landroid/os/RemoteException;
    :sswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 1902
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1906
    :sswitch_5
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1907
    .restart local v16       #intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1908
    const-string v3, "track"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    const/4 v3, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1911
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1915
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1918
    .restart local v17       #path:Ljava/lang/String;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1919
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1921
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 1923
    .local v10, currentAudioType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v3, :cond_4

    .line 1924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioId(I)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-virtual {v3, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioType(I)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->useAsRingtone(Z)V

    .line 1930
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1934
    .end local v10           #currentAudioType:I
    .end local v17           #path:Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->doSearch()V

    .line 1935
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1939
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->chooseShareType()V

    .line 1940
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1947
    :sswitch_9
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v15

    .line 1948
    .local v15, index:I
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    .line 1949
    .local v12, dataPathArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v11

    .line 1950
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 1951
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1952
    const/4 v3, 0x0

    const-string v4, "_data"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 1953
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1954
    const/4 v11, 0x0

    .line 1956
    :cond_5
    new-instance v19, Ljava/lang/String;

    const-string v3, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1958
    .local v19, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "upload"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1964
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1959
    :catch_1
    move-exception v14

    .line 1961
    .local v14, ex:Ljava/lang/SecurityException;
    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We do not have permission to start the service :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1836
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_6
        0x5 -> :sswitch_1
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x10 -> :sswitch_5
        0x15 -> :sswitch_9
        0x1d -> :sswitch_7
        0x27 -> :sswitch_0
        0x2a -> :sswitch_8
    .end sparse-switch
.end method

.method private onHtcContextItemSelected_Plugin(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 1981
    sparse-switch p1, :sswitch_data_0

    .line 1996
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v0

    :goto_0
    return v0

    .line 1984
    :sswitch_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->play(I)V

    goto :goto_0

    .line 1990
    :sswitch_1
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showProperty(I)V

    goto :goto_0

    .line 1981
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 2273
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

    .line 2275
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2351
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2280
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 2281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    .line 2282
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto :goto_0

    .line 2284
    :cond_2
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v1, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2290
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v1, "content://drm/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2291
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 2348
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_0

    .line 2349
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidate()V

    goto :goto_0

    .line 2304
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v1, :cond_4

    .line 2305
    new-instance v0, Lcom/htc/music/NpCategory;

    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    new-array v2, v8, [I

    invoke-static {p0, v1, p3, v0, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 2311
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    new-array v3, v8, [I

    invoke-static {p0, v1, p3, v2, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1
.end method

.method private onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2354
    const-string v1, "PluginNowPlayingListActivity"

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

    .line 2356
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2358
    iput p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2373
    :goto_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->play(I)V

    .line 2374
    :goto_1
    return-void

    .line 2362
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2363
    .local v0, pos:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 2364
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    goto :goto_0

    .line 2367
    :cond_1
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "pos is null in onListItemClick_Plugin"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2404
    const/4 v0, 0x0

    .line 2405
    .local v0, result:Z
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

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

    .line 2406
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2408
    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJ)V

    .line 2409
    const/4 v0, 0x1

    .line 2411
    :cond_0
    return v0
.end method

.method private onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2609
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

    .line 2611
    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions_plugin(IJ)V

    .line 2613
    const/4 v0, 0x1

    return v0
.end method

.method private onPause_Local()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1016
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1021
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1022
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 1024
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 1026
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 1030
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 1031
    return-void
.end method

.method private onPause_Plugin()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1038
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 1039
    return-void
.end method

.method private onResume_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 976
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 978
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 980
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 994
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 995
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    .line 997
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    .line 998
    return-void
.end method

.method private onResume_Plugin()V
    .locals 0

    .prologue
    .line 1001
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 1003
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    .line 1004
    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 5140
    packed-switch p2, :pswitch_data_0

    .line 5163
    :cond_0
    :goto_0
    return-void

    .line 5142
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 5143
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 5144
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    .line 5145
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 5149
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 5150
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(Z)V

    .line 5151
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    .line 5152
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 5156
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 5157
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 5158
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5159
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 5140
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

    .line 5166
    packed-switch p2, :pswitch_data_0

    .line 5193
    :cond_0
    :goto_0
    return-void

    .line 5168
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    .line 5171
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5175
    :goto_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    .line 5176
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 5172
    :catch_0
    move-exception v1

    .line 5173
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5179
    .end local v1           #e1:Landroid/os/RemoteException;
    :pswitch_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    goto :goto_0

    .line 5183
    :pswitch_2
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    .line 5186
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5187
    :catch_1
    move-exception v0

    .line 5189
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 603
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 605
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 642
    :goto_0
    return-void

    .line 609
    :cond_0
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 611
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_3

    .line 613
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    const v3, 0x7f030024

    :goto_1
    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v9, :cond_2

    :goto_2
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 621
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 623
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 624
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 613
    :cond_1
    const v3, 0x7f03000e

    goto :goto_1

    :cond_2
    move v8, v2

    goto :goto_2

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 633
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 634
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 637
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 638
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v6, 0x1

    .line 649
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 651
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 687
    :goto_0
    return-void

    .line 655
    :cond_0
    iput-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 657
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    if-nez v3, :cond_1

    .line 658
    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f03000e

    invoke-direct {v3, p0, v4, p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 659
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 663
    :cond_1
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v4, 0x12c

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V

    .line 664
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v3

    iput v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    .line 666
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 667
    .local v0, curPos:I
    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    if-ne v3, v6, :cond_2

    .line 668
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    .line 670
    :cond_2
    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    .line 672
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v0           #curPos:I
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 680
    .local v2, pluginIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.music.artpathupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v3, "com.htc.music.nowplayingqueueupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v3, "com.htc.music.trackdetailsupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 673
    .end local v2           #pluginIntentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 675
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private removeItem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 2031
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2032
    .local v1, curcount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v2

    .line 2033
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    .line 2068
    .end local v2           #curpos:I
    :cond_0
    :goto_0
    return-void

    .line 2037
    .restart local v2       #curpos:I
    :cond_1
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v8, v7, :cond_3

    .line 2043
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 2044
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2049
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2050
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 2051
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 2052
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2053
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 2056
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2057
    .local v0, colidx:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2058
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2059
    .local v3, id:J
    const-string v7, "external"

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 2060
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2061
    add-int/lit8 v1, v1, -0x1

    .line 2062
    if-nez v1, :cond_4

    .line 2063
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 2065
    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-ge v2, v1, :cond_5

    .end local v2           #curpos:I
    :goto_2
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .restart local v2       #curpos:I
    :cond_5
    move v2, v1

    goto :goto_2

    .line 2046
    .end local v0           #colidx:I
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 10
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1747
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1749
    .local v5, v:Landroid/view/View;
    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_0

    .line 1750
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    :cond_0
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1758
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_1

    .line 1759
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 1767
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1769
    return-void

    .line 1752
    :catch_0
    move-exception v1

    .line 1754
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_0

    .line 1761
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1762
    .local v0, colidx:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1763
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1764
    .local v2, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1765
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removePlaylistItem([I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1772
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_0

    .line 1778
    :cond_0
    return-void
.end method

.method private setNPtitle()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1417
    const v4, 0x7f0800cf

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarText;

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    .line 1418
    const v4, 0x7f0800d0

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 1419
    .local v1, playerButton:Lcom/htc/widget/HeaderBarImage;
    const v4, 0x7f0800d1

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 1420
    .local v0, libraryButton:Lcom/htc/widget/HeaderBarImage;
    const v4, 0x7f0800d3

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 1421
    .local v2, storeButton:Lcom/htc/widget/HeaderBarImage;
    const v4, 0x7f0800d2

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    .line 1423
    .local v3, volumeButton:Lcom/htc/widget/HeaderBarImage;
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v4, :cond_0

    .line 1424
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    const v5, 0x7f07001b

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 1425
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 1426
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 1429
    :cond_0
    if-eqz v1, :cond_1

    .line 1430
    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1431
    const v4, 0x7f070105

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1432
    const v4, 0x2080910

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1433
    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    :cond_1
    if-eqz v0, :cond_2

    .line 1443
    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1444
    const-string v4, "Library"

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 1445
    const v4, 0x20808ea

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1446
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1449
    :cond_2
    if-eqz v2, :cond_3

    .line 1450
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1451
    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1452
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreStringResId(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1453
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreImageResId(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1454
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1457
    if-eqz v3, :cond_3

    .line 1458
    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1459
    const/4 v3, 0x0

    .line 1467
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 1468
    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1469
    const v4, 0x7f0700e0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1470
    const v4, 0x2080971

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1471
    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V

    .line 1497
    return-void

    .line 1462
    :cond_5
    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 3

    .prologue
    .line 3692
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 3709
    :goto_0
    return-void

    .line 3695
    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3699
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_pause_slideshow"

    const v2, 0x208003a

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3707
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3704
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_play"

    const v2, 0x208003b

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 22

    .prologue
    .line 1279
    const/16 v16, 0x0

    .line 1280
    .local v16, fancyName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 1282
    .local v19, numresults:I
    :goto_0
    if-lez v19, :cond_3

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1285
    .local v18, idx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1300
    .local v5, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1304
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 1305
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-eq v2, v0, :cond_0

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1309
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 1311
    :cond_1
    if-eqz v16, :cond_2

    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1312
    :cond_2
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1409
    .end local v5           #where:Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v18           #idx:I
    .end local v19           #numresults:I
    :cond_3
    :goto_1
    if-eqz v16, :cond_16

    .line 1410
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1414
    :goto_2
    return-void

    .line 1281
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1315
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1317
    .local v12, artistId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_6

    .line 1318
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 1320
    :cond_6
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v8, v2

    .line 1323
    .local v8, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1326
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 1327
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1328
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1329
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1330
    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1331
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1333
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1337
    .end local v8           #cols:[Ljava/lang/String;
    .end local v12           #artistId:J
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_b

    .line 1338
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 1339
    const v2, 0x7f07001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    .line 1340
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_a

    .line 1341
    const v2, 0x7f07000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_1

    .line 1343
    :cond_a
    const v2, 0x7f07001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1347
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setNPtitle()V

    goto/16 :goto_1

    .line 1349
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 1350
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_10

    .line 1351
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1353
    .restart local v8       #cols:[Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 1355
    .local v20, playlistId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1356
    .local v17, id:Ljava/lang/Long;
    if-eqz v17, :cond_c

    .line 1357
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 1364
    .end local v17           #id:Ljava/lang/Long;
    :cond_c
    :goto_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1367
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_e

    .line 1368
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1369
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1370
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1373
    :cond_d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1374
    const/4 v14, 0x0

    .line 1377
    :cond_e
    if-eqz v16, :cond_f

    .line 1378
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1360
    .end local v14           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 1361
    .local v15, ex:Ljava/lang/Exception;
    const-string v2, "[TrackBrowser]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(null != mSelectedPlaylistId), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1380
    .end local v15           #ex:Ljava/lang/Exception;
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_f
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "setTitle(), fancyName is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1383
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v20           #playlistId:J
    :cond_10
    const v2, 0x7f070102

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1385
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 1386
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1389
    .restart local v8       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1392
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 1393
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_12

    .line 1394
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1395
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1398
    :cond_12
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1401
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v2, v3, :cond_14

    .line 1402
    const v2, 0x7f070025

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1403
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_15

    .line 1404
    const v2, 0x7f070065

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1406
    :cond_15
    const v2, 0x7f070020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1412
    :cond_16
    const v2, 0x7f07001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(I)V

    goto/16 :goto_2
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 5981
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5983
    .local v3, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v0, v4

    .line 5984
    .local v0, audioId:I
    invoke-static {p0, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 5986
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 5999
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6000
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 6002
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 5989
    :pswitch_0
    const-string v4, "[PluginNowPlayingListActivity]"

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

    .line 5990
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 5994
    :pswitch_1
    const-string v4, "[PluginNowPlayingListActivity]"

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

    .line 5995
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 5986
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 6008
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 6009
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 6010
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 6013
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 6014
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v0, :cond_0

    .line 3406
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 3408
    :cond_0
    return-void
.end method

.method private showTrackOptions(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2415
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2417
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2419
    const/4 v2, 0x0

    .line 2421
    .local v2, id_idx:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v5, :cond_0

    .line 2422
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "audio_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2428
    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "album"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 2434
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 2436
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 2444
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v5, :cond_1

    .line 2447
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070060

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2454
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 2605
    .local v3, ids:[I
    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v5, v4, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2606
    return-void

    .line 2425
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 2429
    :catch_0
    move-exception v1

    .line 2430
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    goto/16 :goto_1

    .line 2461
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v5, :cond_2

    .line 2463
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2469
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_2

    .line 2476
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2477
    .local v0, dlnaMode:I
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2478
    if-nez v0, :cond_3

    .line 2480
    const/16 v5, 0x9

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2494
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/16 v5, 0x9

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2510
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_3
    const/16 v5, 0x8

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2523
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/16 v5, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2539
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_4
    if-nez v0, :cond_5

    .line 2541
    const/16 v5, 0x8

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2554
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/16 v5, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2569
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_5
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f07004c

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x20c01fc

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2581
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2454
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2469
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2494
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2523
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2554
    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2581
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions_plugin(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x2

    .line 2616
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 2618
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2634
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    .line 2635
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-interface {v5, v6}, Lcom/htc/music/IMediaPlaybackService;->getTrackDetails(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2642
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "onListItemLongClick()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    :goto_2
    return-void

    .line 2622
    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2623
    .local v3, pos:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 2624
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    goto :goto_0

    .line 2626
    :cond_1
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "pos is null in onListItemLongClick_Plugin."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2636
    .end local v3           #pos:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 2637
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2646
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2648
    .local v4, trackName:Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x20c01f7

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const v6, 0x20c01fe

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2652
    .local v2, items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 2657
    .local v1, ids:[I
    invoke-virtual {p0, v4, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_2

    .line 2652
    :array_0
    .array-data 0x4
        0x27t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 959
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateQueueTitle()V
    .locals 0

    .prologue
    .line 1522
    return-void
.end method


# virtual methods
.method canRewind()Z
    .locals 1

    .prologue
    .line 5243
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 5244
    const/4 v0, 0x0

    .line 5247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 7

    .prologue
    .line 3164
    const/4 v0, 0x0

    .line 3165
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3166
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 3170
    const/4 v1, 0x1

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2011
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2014
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2027
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2016
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 2019
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 2022
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removeItem()V

    goto :goto_0

    .line 2014
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method doSearch()V
    .locals 3

    .prologue
    .line 2000
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2001
    .local v0, rootContext:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    return-void
.end method

.method getCheckedItemCount()I
    .locals 4

    .prologue
    .line 2132
    const/4 v0, 0x0

    .line 2134
    .local v0, count:I
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    .line 2135
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2145
    :cond_0
    return v0

    .line 2136
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_0

    .line 2137
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 2138
    .local v2, items:Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_0

    .line 2139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2140
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2141
    add-int/lit8 v0, v0, 0x1

    .line 2139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 2247
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2249
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2250
    const-string v0, "MM-dd-yyyy"

    .line 2251
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HH:mm:ss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPickerMode()J
    .locals 2

    .prologue
    .line 5083
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 16
    .parameter "newCursor"

    .prologue
    .line 1135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v12, :cond_1

    .line 1136
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1137
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v12, :cond_2

    .line 1143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 1145
    :cond_2
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v12, :cond_3

    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    if-eqz v12, :cond_4

    .line 1147
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1153
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v12, :cond_5

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDatabaseError()V

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->closeContextMenu()V

    .line 1157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    const-wide/16 v14, 0x3e8

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1149
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 1150
    .local v3, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v12, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1164
    .end local v3           #c:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_7

    .line 1165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v12, :cond_6

    .line 1166
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 1169
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 1170
    const v12, 0x7f070029

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    .line 1174
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideEmptyErrorView()V

    .line 1176
    const v12, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_f

    .line 1177
    const v12, 0x7f03002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v12

    const-wide/16 v14, 0x2

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v12

    const-wide/16 v14, 0x3

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    cmp-long v12, v12, v14

    if-nez v12, :cond_9

    .line 1181
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 1184
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v12, :cond_e

    .line 1185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v12, v12, Lcom/htc/widget/HtcReorderListView;

    if-eqz v12, :cond_a

    .line 1186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v12, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v12, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v12, Lcom/htc/widget/HtcReorderListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 1190
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 1195
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

    .line 1201
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 1205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 1211
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1212
    .local v5, f:Landroid/content/IntentFilter;
    const-string v12, "com.htc.music.metachanged"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1213
    const-string v12, "com.htc.music.queuechanged"

    invoke-virtual {v5, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1214
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v12, v13, :cond_11

    .line 1216
    const/4 v4, 0x0

    .line 1217
    .local v4, cur:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1218
    sget-object v12, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v11

    .line 1219
    .local v11, shufflePos:I
    sget-object v12, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12, v11}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v4

    .line 1223
    .end local v11           #shufflePos:I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13, v5}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.htc.music.metachanged"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    .end local v4           #cur:I
    :goto_5
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1246
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v12, :cond_0

    .line 1247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 1248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v13, "_id"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1251
    .local v10, keyidx:I
    const/4 v9, -0x1

    .line 1252
    .local v9, keyAudioIdidx:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v13, "audio_id"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1254
    const/4 v12, -0x1

    if-le v9, v12, :cond_c

    .line 1255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    .line 1258
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1259
    const/4 v6, 0x0

    .line 1260
    .local v6, i:I
    const/4 v2, -0x1

    .line 1261
    .local v2, audioId:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1263
    .local v7, id:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    aput v7, v12, v6

    .line 1264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    if-eqz v12, :cond_d

    .line 1265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    aput v2, v12, v6

    .line 1269
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 1270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 1192
    .end local v2           #audioId:I
    .end local v5           #f:Landroid/content/IntentFilter;
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v9           #keyAudioIdidx:I
    .end local v10           #keyidx:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_2

    .line 1198
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto/16 :goto_3

    .line 1221
    .restart local v4       #cur:I
    .restart local v5       #f:Landroid/content/IntentFilter;
    :cond_10
    :try_start_1
    sget-object v12, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_4

    .line 1229
    .end local v4           #cur:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "artistid"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1230
    .local v8, key:Ljava/lang/String;
    if-eqz v8, :cond_12

    .line 1231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v13, "artist_id"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1232
    .restart local v10       #keyidx:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1233
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_12

    .line 1234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, artist:Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 1242
    .end local v1           #artist:Ljava/lang/String;
    .end local v10           #keyidx:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13, v5}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.htc.music.metachanged"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1239
    .restart local v1       #artist:Ljava/lang/String;
    .restart local v10       #keyidx:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .line 1226
    .end local v1           #artist:Ljava/lang/String;
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #keyidx:I
    .restart local v4       #cur:I
    :catch_0
    move-exception v12

    goto/16 :goto_5
.end method

.method initButtonsPanel()V
    .locals 4

    .prologue
    .line 5043
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 5048
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    if-nez v2, :cond_1

    .line 5050
    const v2, 0x7f080093

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    .line 5052
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 5055
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 5056
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x20c0130

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 5057
    new-instance v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$26;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$26;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5064
    const v2, 0x7f08003d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 5065
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x20c013d

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 5066
    new-instance v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$27;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$27;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5079
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    .line 5080
    return-void

    .line 5073
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 5075
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListPos()V
    .locals 4

    .prologue
    .line 5851
    const/4 v0, 0x0

    .line 5853
    .local v0, cur:I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 5854
    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5855
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5859
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 5860
    return-void

    .line 5856
    :catch_0
    move-exception v1

    .line 5857
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method initPlayerPanel()V
    .locals 0

    .prologue
    .line 4944
    return-void
.end method

.method isEditMode()Z
    .locals 1

    .prologue
    .line 5087
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method isPickerMode()Z
    .locals 4

    .prologue
    .line 5091
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 31
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 3175
    sparse-switch p1, :sswitch_data_0

    .line 3397
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3177
    :sswitch_1
    if-nez p2, :cond_1

    .line 3178
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 3180
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 3187
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 3188
    .local v23, uri:Landroid/net/Uri;
    if-eqz v23, :cond_0

    .line 3189
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    .line 3190
    .local v14, list:[I
    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v14, v25

    .line 3191
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 3192
    .local v16, playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 3197
    .end local v14           #list:[I
    .end local v16           #playlist:I
    .end local v23           #uri:Landroid/net/Uri;
    :sswitch_3
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v14

    .line 3199
    .restart local v14       #list:[I
    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3200
    .restart local v16       #playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 3201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 3208
    .end local v14           #list:[I
    .end local v16           #playlist:I
    :sswitch_4
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3209
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 3210
    .local v15, name:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 3211
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 3216
    .end local v15           #name:Ljava/lang/String;
    :sswitch_5
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3217
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 3225
    .restart local v15       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 3229
    .end local v15           #name:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 3230
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 3232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->requery()Z

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 3236
    const-string v25, "[TrackBrowser]"

    const-string v26, "Bad! I don\'t want to see this!"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3241
    .local v13, keyidx:I
    const/4 v12, -0x1

    .line 3243
    .local v12, keyAudioIdidx:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "audio_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 3247
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3248
    const/4 v5, -0x1

    .line 3249
    .local v5, audioId:I
    const/4 v9, 0x0

    .line 3250
    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-nez v25, :cond_0

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 3252
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    aput v11, v25, v9

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    if-lez v12, :cond_3

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    aput v5, v25, v9

    .line 3257
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 3245
    .end local v5           #audioId:I
    .end local v9           #i:I
    .end local v11           #id:I
    :catch_0
    move-exception v8

    .local v8, ex:Ljava/lang/Exception;
    const/4 v12, -0x1

    goto :goto_1

    .line 3264
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v12           #keyAudioIdidx:I
    .end local v13           #keyidx:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 3265
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 3267
    .local v17, resolver:Landroid/content/ContentResolver;
    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "playlist_id="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    goto/16 :goto_0

    .line 3287
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v25

    goto/16 :goto_0

    .line 3273
    :cond_5
    const-string v25, "[PluginNowPlayingListActivity]"

    const-string v26, "using old logic!! this could need a lot of time"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    new-instance v24, Landroid/content/ContentValues;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    .line 3275
    .local v24, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 3276
    .restart local v17       #resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_0

    .line 3277
    const-string v25, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3279
    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    const-string v26, "_id=?"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v29, v0

    aget v29, v29, v9

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3276
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3294
    .end local v9           #i:I
    .end local v17           #resolver:Landroid/content/ContentResolver;
    .end local v24           #values:Landroid/content/ContentValues;
    :sswitch_7
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3295
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    aput v26, v14, v25

    .line 3298
    .restart local v14       #list:[I
    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3299
    .restart local v16       #playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 3305
    .end local v14           #list:[I
    .end local v16           #playlist:I
    :sswitch_8
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3306
    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3307
    .local v19, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    .line 3308
    .restart local v14       #list:[I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v14}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J[I)V

    .line 3309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 3316
    .end local v14           #list:[I
    .end local v19           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    .line 3317
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3318
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3319
    .restart local v19       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    .line 3320
    .restart local v14       #list:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 3321
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 3330
    .end local v14           #list:[I
    .end local v19           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a
    invoke-static/range {p2 .. p2}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyStatus(I)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto/16 :goto_0

    .line 3337
    :sswitch_b
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3338
    const-string v25, "[PluginNowPlayingListActivity]"

    const-string v26, "receive set contact ringtone activity result"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    move-object/from16 v18, p3

    .line 3340
    .local v18, resultIntent:Landroid/content/Intent;
    new-instance v20, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Intent;)V

    .line 3350
    .local v20, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v22, Ljava/lang/Thread;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3351
    .local v22, thread:Ljava/lang/Thread;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3355
    .end local v18           #resultIntent:Landroid/content/Intent;
    .end local v20           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v22           #thread:Ljava/lang/Thread;
    :sswitch_c
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3356
    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3357
    .restart local v19       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_0

    .line 3360
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3361
    .local v10, iCount:I
    new-array v7, v10, [Ljava/lang/String;

    .line 3362
    .local v7, dataPathArray:[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    if-ge v9, v10, :cond_7

    .line 3363
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v6

    .line 3364
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 3365
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3366
    const-string v25, "_data"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v9

    .line 3367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3362
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3371
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_7
    new-instance v21, Ljava/lang/String;

    const-string v25, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3373
    .local v21, szAction:Ljava/lang/String;
    :try_start_2
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v26, "upload"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3374
    :catch_2
    move-exception v8

    .line 3376
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v25, "[PluginNowPlayingListActivity]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "We do not have permission to start the service :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3175
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_7
        0x4 -> :sswitch_2
        0xb -> :sswitch_1
        0x13 -> :sswitch_b
        0x19 -> :sswitch_3
        0x1e -> :sswitch_9
        0x1f -> :sswitch_8
        0x20 -> :sswitch_6
        0x21 -> :sswitch_5
        0x26 -> :sswitch_4
        0x28 -> :sswitch_c
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method onCancelClick()V
    .locals 6

    .prologue
    .line 5033
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 5034
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 5035
    .local v1, items:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5036
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 5035
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5038
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    .line 5040
    .end local v0           #i:I
    .end local v1           #items:Landroid/util/SparseBooleanArray;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 377
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "albumid"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "artistid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 314
    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    .line 315
    const-string v2, "playlist"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    .line 316
    const-string v2, "isrecentplayedplaylist"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    .line 317
    const-string v2, "genreid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 318
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    .line 320
    :cond_0
    const-string v2, "isshowplayerpanel"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    .line 321
    const-string v2, "composer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 322
    const-string v2, "isdrmlist"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    .line 323
    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    .line 324
    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    .line 325
    const-string v2, "playlisturi"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 328
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    .line 330
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    .line 331
    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 332
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 335
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    .line 338
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v2, :cond_3

    .line 339
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreate_Local(Landroid/os/Bundle;)V

    .line 344
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 345
    .local v1, rootContext:Landroid/app/Activity;
    new-instance v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-direct {v2, p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 350
    return-void

    .end local v1           #rootContext:Landroid/app/Activity;
    :cond_2
    move v2, v4

    .line 328
    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreate_Plugin(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    .line 2673
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 2674
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    move-object v1, p0

    .line 2675
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2811
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    :goto_0
    return-object v7

    .line 2678
    :sswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2679
    const v9, 0x7f070011

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2683
    .local v3, f:Ljava/lang/String;
    :goto_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2684
    .local v2, desc:Ljava/lang/String;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x20c01fc

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto :goto_0

    .line 2681
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/String;
    :cond_1
    const v9, 0x7f070010

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #f:Ljava/lang/String;
    goto :goto_1

    .line 2710
    .end local v3           #f:Ljava/lang/String;
    :sswitch_1
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f07005d

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2719
    :sswitch_2
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2742
    :sswitch_3
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0700a9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0700aa

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const v10, 0x7f0700ab

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 2747
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v9, :cond_2

    .line 2748
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2751
    :cond_2
    const-string v9, "[PluginNowPlayingListActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_4
    const-string v9, "Soar"

    const-string v10, "DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0700a9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0700aa

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 2761
    .restart local v4       #items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v9, :cond_3

    .line 2762
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2765
    :cond_3
    const-string v9, "[PluginNowPlayingListActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f07010d

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f07010e

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 2775
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;

    invoke-direct {v10, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v9, v4, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 2791
    .local v7, shareTypeDialog:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 2794
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v7           #shareTypeDialog:Landroid/app/AlertDialog;
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2795
    .local v0, activity:Landroid/app/Activity;
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v8

    .local v8, textDialog:Landroid/app/Dialog;
    move-object v7, v8

    .line 2796
    goto/16 :goto_0

    .line 2800
    .end local v0           #activity:Landroid/app/Activity;
    .end local v8           #textDialog:Landroid/app/Dialog;
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2801
    .restart local v0       #activity:Landroid/app/Activity;
    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x0

    invoke-static {v0, v9, v10, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v6

    .local v6, shareNormaldialog:Landroid/app/Dialog;
    move-object v7, v6

    .line 2802
    goto/16 :goto_0

    .line 2806
    .end local v0           #activity:Landroid/app/Activity;
    .end local v6           #shareNormaldialog:Landroid/app/Dialog;
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2807
    .restart local v0       #activity:Landroid/app/Activity;
    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v5

    .local v5, shareDRMDialog:Landroid/app/Dialog;
    move-object v7, v5

    .line 2808
    goto/16 :goto_0

    .line 2675
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x24 -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0x29

    const/16 v7, 0x1a

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2874
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2875
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 2877
    :cond_0
    const/16 v0, 0x22

    const v1, 0x20c013a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2879
    const/16 v0, 0x23

    const v1, 0x20c013b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2934
    :cond_1
    :goto_0
    return v5

    .line 2881
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2884
    const v0, 0x7f070008

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2886
    const v0, 0x7f070009

    invoke-interface {p1, v4, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2887
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2888
    const/16 v0, 0x28

    const v1, 0x7f07000a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080aa0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2890
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2892
    const v0, 0x20c0200

    invoke-interface {p1, v4, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 2900
    :cond_4
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v5, v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_1

    .line 2903
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v5, v0, :cond_6

    .line 2904
    const/16 v0, 0x20

    const v1, 0x7f07000b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a5e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2906
    const/16 v0, 0x19

    const v1, 0x7f07004f

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a69

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2910
    const v0, 0x20c0200

    invoke-interface {p1, v4, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2914
    :cond_6
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v0, :cond_1

    .line 2924
    const v0, 0x7f070008

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2926
    const v0, 0x7f070009

    invoke-interface {p1, v4, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809be

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2929
    const/16 v0, 0x26

    const v1, 0x7f070094

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a5e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 822
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    .line 823
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v1, :cond_3

    .line 824
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onDestroy_Local()V

    .line 828
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    if-ne v1, v4, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 838
    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 839
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 844
    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 846
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v1, :cond_2

    .line 847
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 850
    :cond_2
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void

    .line 826
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onDestroy_Plugin()V

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1828
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1829
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onHtcContextItemSelected_Local(I)Z

    move-result v0

    .line 1831
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onHtcContextItemSelected_Plugin(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2258
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 2259
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 2262
    :goto_0
    return-void

    .line 2261
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2397
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 2398
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 2400
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v3, 0x3

    const/4 v12, 0x1

    .line 3009
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3158
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 3011
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->categoryRightAction()Z

    move v1, v12

    .line 3018
    goto :goto_0

    .line 3037
    :sswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 3038
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-ne v1, v3, :cond_0

    .line 3039
    const-string v1, "DLNA"

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 3040
    .local v10, pref:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shuffle"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3043
    .end local v10           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, 0x0

    .line 3044
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3045
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_2
    move v1, v12

    .line 3049
    goto :goto_0

    .line 3052
    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3053
    .local v8, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3054
    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3055
    const/16 v1, 0x19

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3056
    goto :goto_0

    .line 3060
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearQueue()V

    move v1, v12

    .line 3061
    goto :goto_0

    .line 3064
    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3065
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "playlisturi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3067
    const-class v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3069
    const/16 v1, 0x1e

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3070
    goto/16 :goto_0

    .line 3073
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3074
    .restart local v8       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3075
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3076
    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3077
    const/16 v1, 0x1f

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3078
    goto/16 :goto_0

    .line 3081
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3082
    .restart local v8       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3084
    const-string v1, "isnowplayinglist"

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3086
    const/16 v1, 0x20

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3088
    goto/16 :goto_0

    .line 3091
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3092
    .restart local v8       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3093
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3094
    const-string v1, "playlistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3095
    :cond_3
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3096
    const/16 v1, 0x26

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3097
    goto/16 :goto_0

    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_8
    move v1, v12

    .line 3104
    goto/16 :goto_0

    .line 3107
    :sswitch_9
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_5

    .line 3108
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 3109
    .local v11, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v11, :cond_4

    .line 3110
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3109
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3113
    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    move v1, v12

    .line 3114
    goto/16 :goto_0

    .line 3117
    .end local v7           #i:I
    .end local v11           #size:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_6

    .line 3118
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v7, v12}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 3117
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3121
    :cond_6
    iput-boolean v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    .line 3122
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    move v1, v12

    .line 3124
    goto/16 :goto_0

    .line 3127
    .end local v7           #i:I
    :sswitch_a
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_7

    .line 3128
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3129
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    move v1, v12

    .line 3130
    goto/16 :goto_0

    .line 3133
    :cond_7
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 3134
    .local v9, items:Landroid/util/SparseBooleanArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    .line 3135
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 3134
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3137
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    move v1, v12

    .line 3138
    goto/16 :goto_0

    .line 3141
    .end local v7           #i:I
    .end local v9           #items:Landroid/util/SparseBooleanArray;
    :sswitch_b
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3142
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3143
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3144
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3145
    const-string v1, "pickermode"

    const/4 v2, 0x4

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3146
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3147
    const/16 v1, 0x28

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3148
    goto/16 :goto_0

    .line 3152
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_c
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3153
    .restart local v8       #intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3154
    goto/16 :goto_0

    .line 3009
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_0
        0x1b -> :sswitch_3
        0x1e -> :sswitch_4
        0x1f -> :sswitch_5
        0x20 -> :sswitch_6
        0x21 -> :sswitch_8
        0x22 -> :sswitch_9
        0x23 -> :sswitch_a
        0x26 -> :sswitch_7
        0x28 -> :sswitch_b
        0x29 -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    .line 1009
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onPause_Local()V

    .line 1013
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onPause_Plugin()V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 12
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 2816
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2817
    packed-switch p1, :pswitch_data_0

    .line 2864
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 2820
    .restart local p2
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2821
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2825
    .local v7, f:Ljava/lang/String;
    :goto_1
    new-array v1, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2826
    .local v6, desc:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v6}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2823
    .end local v6           #desc:Ljava/lang/String;
    .end local v7           #f:Ljava/lang/String;
    .restart local p2
    :cond_0
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #f:Ljava/lang/String;
    goto :goto_1

    .line 2829
    .end local v7           #f:Ljava/lang/String;
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2832
    .restart local p2
    :pswitch_3
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2836
    .restart local p2
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2837
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .line 2838
    .local v4, adapter:Lcom/htc/music/widget/SharedAdapter;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v0, v1, v4, p2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    .local v8, listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v1, p2

    .line 2839
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2840
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 2845
    .end local v0           #activity:Landroid/app/Activity;
    .end local v4           #adapter:Lcom/htc/music/widget/SharedAdapter;
    .end local v8           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    .restart local p2
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2846
    .restart local v0       #activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2847
    .local v2, path:Ljava/lang/String;
    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .line 2848
    .restart local v4       #adapter:Lcom/htc/music/widget/SharedAdapter;
    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    .restart local v8       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v1, p2

    .line 2849
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2850
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 2855
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #path:Ljava/lang/String;
    .end local v4           #adapter:Lcom/htc/music/widget/SharedAdapter;
    .end local v8           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    .restart local p2
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2856
    .restart local v0       #activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_data"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2857
    .restart local v2       #path:Ljava/lang/String;
    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    invoke-static {v0, v1, v2, v11}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .line 2858
    .restart local v4       #adapter:Lcom/htc/music/widget/SharedAdapter;
    iget-wide v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v9

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    .restart local v8       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v1, p2

    .line 2859
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2860
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 2817
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    .line 2941
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v7, :cond_4

    .line 2942
    const/16 v7, 0x20

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2943
    .local v3, item:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 2944
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2945
    :cond_0
    const/16 v7, 0x19

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2946
    if-eqz v3, :cond_1

    .line 2947
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2950
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v7

    .line 3002
    .end local v3           #item:Landroid/view/MenuItem;
    :goto_2
    return v7

    .line 2944
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 2947
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2953
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v7, :cond_5

    .line 2954
    const/4 v7, 0x0

    goto :goto_2

    .line 2956
    :cond_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2957
    .local v6, num_tracks:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2958
    .local v4, not_one_song:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_11

    if-lez v6, :cond_11

    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2961
    .local v2, enabled:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v7, :cond_8

    .line 2963
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v0

    .line 2964
    .local v0, checkedCount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v7, :cond_12

    const/4 v1, 0x0

    .line 2965
    .local v1, count:I
    :goto_5
    const/16 v7, 0x22

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2966
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_7

    .line 2967
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13

    if-eq v1, v0, :cond_13

    const/4 v7, 0x1

    :goto_6
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2968
    :cond_7
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2969
    if-eqz v3, :cond_8

    .line 2970
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_14

    if-lez v0, :cond_14

    const/4 v7, 0x1

    :goto_7
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2976
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_8
    const/16 v7, 0x9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2977
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_9

    .line 2978
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2979
    :cond_9
    const/16 v7, 0x1a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2980
    if-eqz v3, :cond_a

    .line 2981
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2982
    :cond_a
    const/16 v7, 0x19

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2983
    if-eqz v3, :cond_b

    .line 2984
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2985
    :cond_b
    const/16 v7, 0x20

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2986
    if-eqz v3, :cond_c

    .line 2987
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v7, v8, :cond_15

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v7, :cond_15

    const/4 v7, 0x1

    :goto_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2988
    .local v5, nowplayingSearch:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    :goto_9
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2990
    .end local v5           #nowplayingSearch:Ljava/lang/Boolean;
    :cond_c
    const/16 v7, 0x1f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2991
    if-eqz v3, :cond_d

    .line 2992
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2993
    :cond_d
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2994
    const/16 v7, 0x28

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2995
    if-eqz v3, :cond_e

    .line 2996
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2998
    :cond_e
    const/16 v7, 0x29

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2999
    if-eqz v3, :cond_f

    .line 3000
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3002
    :cond_f
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v7

    goto/16 :goto_2

    .line 2957
    .end local v2           #enabled:Ljava/lang/Boolean;
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v4           #not_one_song:Ljava/lang/Boolean;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2958
    .restart local v4       #not_one_song:Ljava/lang/Boolean;
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2964
    .restart local v0       #checkedCount:I
    .restart local v2       #enabled:Ljava/lang/Boolean;
    :cond_12
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto/16 :goto_5

    .line 2967
    .restart local v1       #count:I
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 2970
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 2987
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    :cond_15
    const/4 v7, 0x0

    goto :goto_8

    .line 2988
    .restart local v5       #nowplayingSearch:Ljava/lang/Boolean;
    :cond_16
    const/4 v7, 0x0

    goto :goto_9
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    .line 968
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 969
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 970
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onResume_Local()V

    .line 973
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onResume_Plugin()V

    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 18

    .prologue
    .line 4947
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v14, :cond_7

    .line 4949
    const/4 v8, 0x0

    .line 4950
    .local v8, nowPlayingArray:[I
    const/4 v2, 0x0

    .line 4952
    .local v2, deleteArray:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v14, v14, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v14, :cond_3

    .line 4953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .line 4954
    .local v1, c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 4957
    :try_start_0
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->getNowPlayingQueue()[I

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/htc/music/IMediaPlaybackService;->syncNowPlayingQueue([I)V

    .line 4959
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 4960
    .local v13, totalCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 4961
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v15, 0x0

    add-int/lit8 v16, v13, -0x1

    invoke-interface/range {v14 .. v16}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    .line 4974
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v14, :cond_1

    .line 4978
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 4982
    :cond_1
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v8

    .line 4984
    if-eqz v8, :cond_2

    array-length v14, v8

    if-nez v14, :cond_3

    .line 4985
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 4986
    .local v6, intent:Landroid/content/Intent;
    const-class v14, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4987
    const/high16 v14, 0x2400

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4988
    const-string v14, "KeepHistory"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4989
    const-string v14, "RemoveStoreHistory"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4990
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5001
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v13           #totalCount:I
    :cond_3
    :goto_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 5002
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v14, "NOW_PLAYING_LIST"

    invoke-virtual {v6, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5003
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 5028
    .end local v2           #deleteArray:[I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #nowPlayingArray:[I
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    .line 5029
    return-void

    .line 4962
    .restart local v1       #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .restart local v2       #deleteArray:[I
    .restart local v8       #nowPlayingArray:[I
    .restart local v13       #totalCount:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 4963
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 4964
    .local v11, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    .line 4966
    .local v12, temp:[Ljava/lang/Object;
    array-length v14, v12

    new-array v2, v14, [I

    .line 4967
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v14, v12

    if-ge v3, v14, :cond_6

    .line 4968
    aget-object v14, v12, v3

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v2, v3

    .line 4969
    const-string v14, "[PluginNowPlayingListActivity]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete position = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v2, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4967
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4972
    :cond_6
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14, v2}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4995
    .end local v3           #i:I
    .end local v11           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v12           #temp:[Ljava/lang/Object;
    .end local v13           #totalCount:I
    :catch_0
    move-exception v14

    goto :goto_1

    .line 5005
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .end local v2           #deleteArray:[I
    .end local v8           #nowPlayingArray:[I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 5006
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5007
    .local v10, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 5008
    .local v7, items:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v15, "_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 5009
    .local v5, idx:I
    const/4 v4, 0x0

    .line 5010
    .local v4, id:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    if-ge v3, v14, :cond_9

    .line 5011
    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5012
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5013
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    long-to-int v4, v14

    .line 5014
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5010
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 5018
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 5019
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v14, "playlisturi"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5020
    .local v9, playlisturi:Ljava/lang/String;
    if-nez v9, :cond_a

    .line 5021
    const-string v14, "selectedlist"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5026
    :goto_5
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 5023
    :cond_a
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    .line 5024
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 1116
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1117
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v0, "isnowplayinglist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1120
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v0, "isrecentplayedplaylist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1122
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v0, "isdrmlist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1126
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1128
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v0, "isshowplayerpanel"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1130
    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1131
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1132
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 5113
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 5114
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    .line 5117
    :goto_0
    return-void

    .line 5116
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 5104
    const-string v0, "[TrackBrowser]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 5106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    .line 5109
    :goto_0
    return-void

    .line 5108
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V

    goto :goto_0
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 5120
    move v1, p2

    .line 5121
    .local v1, start:I
    add-int v0, p2, p3

    .line 5122
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5123
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 5125
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
    .line 5128
    move v1, p2

    .line 5129
    .local v1, start:I
    add-int v0, p2, p3

    .line 5131
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 5132
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 5134
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    .line 5135
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    .line 5137
    :cond_1
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 5096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    .line 5097
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    .line 5098
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5101
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    .line 693
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 280
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    return-void
.end method

.method public play(I)V
    .locals 3
    .parameter "listItemPos"

    .prologue
    .line 5865
    if-gez p1, :cond_1

    .line 5885
    :cond_0
    :goto_0
    return-void

    .line 5870
    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 5872
    move v0, p1

    .line 5874
    .local v0, realPos:I
    :try_start_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5875
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/htc/music/IMediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    .line 5877
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 5878
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 5879
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5882
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected resetBackground()V
    .locals 2

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1540
    :goto_0
    return-void

    .line 1530
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetBackground()V

    goto :goto_0
.end method

.method public setCheckedView(Landroid/view/View;JZ)V
    .locals 7
    .parameter "view"
    .parameter "checkType"
    .parameter "checked"

    .prologue
    const-wide/16 v5, 0x4

    const-wide/16 v3, 0x2

    .line 2116
    const v2, 0x202001a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    .line 2117
    .local v0, checkbox:Lcom/htc/widget/HtcListItemImageButton;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2118
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_2

    .line 2119
    cmp-long v2, p2, v3

    if-eqz v2, :cond_0

    cmp-long v2, p2, v5

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_checkbox_on"

    const v4, 0x208019f

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2128
    :goto_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemImageButton;->invalidate()V

    .line 2129
    return-void

    .line 2119
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_delete_on"

    const v4, 0x20801aa

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 2124
    :cond_2
    cmp-long v2, p2, v3

    if-eqz v2, :cond_3

    cmp-long v2, p2, v5

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_checkbox_off"

    const v4, 0x208019d

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_delete_off"

    const v4, 0x20801a8

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_2
.end method

.method public showProperty(I)V
    .locals 6
    .parameter "listItemPos"

    .prologue
    .line 5889
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5890
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5892
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5893
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5895
    .local v0, artistName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    .line 5897
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 5899
    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5901
    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5902
    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5903
    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5904
    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5905
    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5906
    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5921
    :goto_0
    const/4 v3, -0x2

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5922
    return-void

    .line 5909
    :cond_0
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5911
    const-string v3, "trackname"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5912
    const-string v3, "artistname"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5913
    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5914
    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5915
    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5916
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5917
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method updateButtonCounter()V
    .locals 11

    .prologue
    const v10, 0x7f08003e

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2149
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 2185
    :goto_0
    return-void

    .line 2152
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v1

    .line 2154
    .local v1, count:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2155
    .local v2, text:Ljava/lang/String;
    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2157
    :pswitch_0
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2158
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 2159
    if-lez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 2160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07005f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2161
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2158
    goto :goto_1

    :cond_2
    move v4, v5

    .line 2159
    goto :goto_2

    .line 2165
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_1
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2166
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 2167
    if-lez v1, :cond_4

    :goto_4
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 2168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2169
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v3, v5

    .line 2166
    goto :goto_3

    :cond_4
    move v4, v5

    .line 2167
    goto :goto_4

    .line 2176
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f070060

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2177
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2178
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 2179
    if-lez v1, :cond_5

    move v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 2180
    if-lez v1, :cond_6

    :goto_6
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 2179
    goto :goto_5

    :cond_6
    move v4, v5

    .line 2180
    goto :goto_6

    .line 2155
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
