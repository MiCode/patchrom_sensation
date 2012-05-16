.class public Lcom/htc/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackService$PublicServiceStub;,
        Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;,
        Lcom/htc/music/MediaPlaybackService$LocalPlayer;,
        Lcom/htc/music/MediaPlaybackService$MultiPlayer;,
        Lcom/htc/music/MediaPlaybackService$Shuffler;,
        Lcom/htc/music/MediaPlaybackService$DockEventListener;,
        Lcom/htc/music/MediaPlaybackService$NonUiHandler;,
        Lcom/htc/music/MediaPlaybackService$ORIENTATION;
    }
.end annotation


# static fields
.field private static final ACTION_A2DP_PLUG:Ljava/lang/String; = "android.intent.action.A2DP_PLUG"

.field public static final ALBUMID:I = 0x0

.field public static final AND_NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final AND_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final AND_PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final AND_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field public static final ANIMATION_CHANGE_ART:Ljava/lang/String; = "com.htc.music.changeart"

.field public static final ANIMATION_COMPLETE:Ljava/lang/String; = "com.htc.music.animationcomplete"

.field private static final ANIMATION_ENDED:I = 0x1

.field public static final ANIMATION_MOVE_NEXT:Ljava/lang/String; = "com.htc.music.rotateright"

.field public static final ANIMATION_MOVE_PREV:Ljava/lang/String; = "com.htc.music.rotateleft"

.field public static final ANIMATION_QUICKLY:Ljava/lang/String; = "com.htc.music.rotatequickly"

.field public static final ANIMATION_REFRESH:Ljava/lang/String; = "com.htc.music.refresh"

.field public static final ANIMATION_ROTATE_SELF_NEXT:Ljava/lang/String; = "com.htc.music.rotatecircle_next"

.field public static final ANIMATION_ROTATE_SELF_PREV:Ljava/lang/String; = "com.htc.music.rotatecircle_previous"

.field public static final ANIMATION_SHUFFLE:Ljava/lang/String; = "com.htc.music.shuffle"

.field public static final ARTISTID:I = 0x1

.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.htc.music.asyncopencomplete"

.field private static final BINDPLUGIN_ON_BIND_COMPLETE:I = 0x4

.field private static final BOOKMARKCOLIDX:I = 0x9

.field public static final CMDBINDPLUGIN:Ljava/lang/String; = "bindplugin"

.field public static final CMDFFSTART:Ljava/lang/String; = "ffstart"

.field public static final CMDFFSTOP:Ljava/lang/String; = "ffstop"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPNEXT:I = 0x4

.field public static final CMDPPAUSE:I = 0x2

.field public static final CMDPPLAY:I = 0x0

.field public static final CMDPPREV:I = 0x3

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDPSTOP:I = 0x1

.field public static final CMDP_APPLY_SOUNDEFFECT:I = 0xb

.field public static final CMDP_RESTORE_SOUNDEFFECT:I = 0xc

.field public static final CMDRESUME:Ljava/lang/String; = "resume"

.field public static final CMDRWSTART:Ljava/lang/String; = "rwstart"

.field public static final CMDRWSTOP:Ljava/lang/String; = "rwstop"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMD_A2DP_ON:I = 0x13

.field public static final CMD_DECODE_NOTIFICATION_ALBUMART:I = 0x10

.field public static final CMD_NOTIFY_CHANGE_FOR_RELOAD_QUEUE:I = 0xf

.field public static final CMD_PLAY_FOR_RELOAD_QUEUE:I = 0xe

.field public static final CMD_REFRESH_PLAYLIST:I = 0x12

.field public static final CMD_RELOAD_QUEUE:I = 0xd

.field public static final CMD_USER_PROFILING_LOG:I = 0x11

.field private static final FADEIN:I = 0x4

.field private static final FFRW_REPEAT_FF:I = 0x1

.field private static final FFRW_REPEAT_NONE:I = 0x0

.field private static final FFRW_REPEAT_RW:I = 0x2

.field private static final FF_RW:I = 0x5

.field public static final GENREID:I = 0x2

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LICENSE_EXPIRED:I = 0x6

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field public static final OS_ART_PATH_SHUFFLE_UPDATED:Ljava/lang/String; = "com.htc.music.artpathshuffleupdated"

.field public static final OS_ART_PATH_UPDATED:Ljava/lang/String; = "com.htc.music.artpathupdated"

.field public static final OS_NOWPLAYING_QUEUE_UPDATED:Ljava/lang/String; = "com.htc.music.nowplayingqueueupdated"

.field public static final OS_ON_ERROR:Ljava/lang/String; = "com.htc.music.onerror"

.field public static final OS_TRACK_DETAILS_UPDATED:Ljava/lang/String; = "com.htc.music.trackdetailsupdated"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.playbackcomplete"

.field public static final PLAYBACK_RINGTONE:Ljava/lang/String; = "android.htc.intent.action.PLAYBACK_RINGTONE"

.field public static final PLAYLISTID:I = 0x3

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field public static final PLAY_STARTED:Ljava/lang/String; = "com.htc.music.playstarted"

.field private static final PLUGIN_NOTIFY_CHANGE:I = 0x3

.field private static final PLUGIN_UPDATE_NOTIFICATION:I = 0x2

.field private static final PODCASTCOLIDX:I = 0x8

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.queuechanged"

.field public static final RECENT_PLAYED_CHANGED:Ljava/lang/String; = "com.htc.music.recentplayedchanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SAVE_STATUS_NONE:I = 0x0

.field public static final SAVE_STATUS_PERMANENT:I = 0x2

.field public static final SAVE_STATUS_TEMP:I = 0x1

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MediaPlaybackService]"

.field private static final TOAST_WARNING:I = 0x6

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.togglepause"

.field public static final TRACKID:I = 0x4

.field private static final TRACK_ENDED:I = 0x1

.field private static final ULOG_MUSIC_COUNT:I = 0x1

.field private static final UNBINDPLUGIN_ON_BIND_COMPLETE:I = 0x5

.field private static final UPDATE_NOTIFICATION_ALBUMART:I = 0x7

.field private static final mDoAnimationViaHeadset:Z = false

.field private static final mMaxNotifyAlbumArtSideLen:I = 0x48


# instance fields
.field private final MAX_RECENT_TRACK_LIST_SIZE:I

.field private final NO_ANIMATION:I

.field private final PLAY_NEXT_ANIMATION:I

.field private final PLAY_PREV_ANIMATION:I

.field private final RECENT_ALBUM_LIST_COUNT:I

.field private final hexdigits:[C

.field private mA2DPReceiver:Landroid/content/BroadcastReceiver;

.field private mActivityIsLive:Z

.field private mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

.field private mAlbumList:[I

.field private mAlbumListLen:I

.field private mAnimation:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[I

.field private mBindFailedCounter:I

.field private final mBinder:Landroid/os/IBinder;

.field private mCAlbumId:I

.field private mCArtistId:I

.field private mCComposer:Ljava/lang/StringBuilder;

.field private mCGenreId:I

.field private mCPlaylistId:I

.field private mCardId:I

.field private mCategory:I

.field private mCurrSkin:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDockEventListener:Landroid/content/BroadcastReceiver;

.field private mDrmConsumed:Z

.field private mFFRWRepeat:I

.field private mFFToEndIsPlaying:Z

.field private mFileToPlay:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mIsReloadingQueue:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsSystemReady:Z

.field private volatile mIsWaitAnimation:Z

.field private mLastAlbumPos:I

.field private mLastRepeatTime:J

.field private mLastSeekEventTime:J

.field private mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

.field private mLocalRecentAlbumId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private mNonShuffleAlbumList:[I

.field private mNonShufflePlayList:[I

.field private mNonShuffleShrinkAlbumList:[I

.field private mNonShuffleShrinkAlbumListLen:I

.field private mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationLock:Ljava/lang/Object;

.field private mOpenFailedCounter:I

.field private mOpts:Landroid/graphics/BitmapFactory$Options;

.field private mOrientation:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayOnNextPrev:Z

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mPublicBinder:Landroid/os/IBinder;

.field private mQueueModified:Z

.field private mQuietMode:Z

.field private final mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

.field private mRecentPlayTrackId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPlayList:Z

.field private mRepcnt:I

.field private mRepeatMode:I

.field private mSdCardRemoved:Z

.field private mSeeking:Z

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mShrinkAlbumList:[I

.field private mShrinkAlbumListLen:I

.field private mShuffleAlbumList:[I

.field private mShuffleMode:I

.field private mShufflePlayList:[I

.field mShuffleSeq:[I

.field private mShuffleSeqLen:I

.field private mShuffleShrinkAlbumList:[I

.field private mShuffleShrinkAlbumListLen:I

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mStartSeekPos:J

.field mTest:Z

.field private mToast:Landroid/widget/Toast;

.field private mUiHandler:Landroid/os/Handler;

.field private mUnbindFailedCounter:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWakeLockAcquired:Z

.field private m_bUpdateBeatsLogo:Z

.field private noisy_action_time:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1147
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 222
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 223
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 224
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 225
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 226
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 227
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    .line 232
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 234
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 235
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 236
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 237
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 238
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 239
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 240
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 241
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 242
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 244
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 245
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 247
    new-instance v0, Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$Shuffler;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    .line 248
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 256
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    .line 263
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 265
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 268
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 286
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 291
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 294
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 295
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 296
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 299
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 300
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 317
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 318
    iput-wide v7, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 319
    iput-wide v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    .line 321
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 322
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    .line 323
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 328
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 331
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 334
    iput-wide v7, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    .line 337
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 341
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 343
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 345
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCategory:I

    .line 346
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCArtistId:I

    .line 347
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCAlbumId:I

    .line 348
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mCGenreId:I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCComposer:Ljava/lang/StringBuilder;

    .line 350
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCPlaylistId:I

    .line 354
    new-instance v0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 356
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 358
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 360
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 362
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 364
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    .line 366
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    .line 368
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 369
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 370
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 371
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 372
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    .line 373
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    .line 374
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 375
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    .line 379
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->RECENT_ALBUM_LIST_COUNT:I

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    .line 382
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->MAX_RECENT_TRACK_LIST_SIZE:I

    .line 384
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 385
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    .line 387
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 389
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    .line 391
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 392
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    .line 394
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 625
    new-instance v0, Lcom/htc/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$1;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 730
    new-instance v0, Lcom/htc/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$2;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    .line 828
    new-instance v0, Lcom/htc/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$3;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 997
    new-instance v0, Lcom/htc/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$4;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    .line 1064
    new-instance v0, Lcom/htc/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$5;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1130
    new-instance v0, Lcom/htc/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$6;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1333
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    .line 2361
    new-instance v0, Lcom/htc/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$7;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2544
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->NO_ANIMATION:I

    .line 2545
    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->PLAY_PREV_ANIMATION:I

    .line 2546
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->PLAY_NEXT_ANIMATION:I

    .line 3527
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 5328
    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    .line 6833
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 6834
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 1148
    return-void

    .line 1333
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static Search([III)I
    .locals 3
    .parameter "array"
    .parameter "value"
    .parameter "len"

    .prologue
    .line 3139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3140
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 3145
    .end local v0           #i:I
    :goto_1
    return v0

    .line 3139
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3144
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Bad thing ! I don\'t want to see this"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    return-void
.end method

.method static synthetic access$10000(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10200(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10400(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V

    return-void
.end method

.method static synthetic access$10800(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V

    return-void
.end method

.method static synthetic access$10900(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return p1
.end method

.method static synthetic access$2208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$2902(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return p1
.end method

.method static synthetic access$2908(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return p1
.end method

.method static synthetic access$3008(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$3702(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    return p1
.end method

.method static synthetic access$5108(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$5202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentAlbumList()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentPlayedPlaylist()V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$7208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7210(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$7300(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/music/MediaPlaybackService;[II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    return v0
.end method

.method static synthetic access$7602(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    return p1
.end method

.method static synthetic access$7700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/htc/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$8308(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$8400(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$8500(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    return-void
.end method

.method static synthetic access$8600(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->openWithoutCategory([II)V

    return-void
.end method

.method static synthetic access$8800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    return v0
.end method

.method private addRecentAlbumList()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 7461
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7482
    :goto_0
    return-void

    .line 7463
    :cond_0
    monitor-enter p0

    .line 7464
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 7465
    .local v0, currAlbumId:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 7466
    .local v1, indexOfAlbumId:I
    if-nez v1, :cond_1

    .line 7467
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "current album is recently album"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7468
    monitor-exit p0

    goto :goto_0

    .line 7481
    .end local v0           #currAlbumId:I
    .end local v1           #indexOfAlbumId:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7470
    .restart local v0       #currAlbumId:I
    .restart local v1       #indexOfAlbumId:I
    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayList"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7472
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 7473
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7476
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7478
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 7479
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7481
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private addRecentPlayedPlaylist()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 7637
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7658
    :goto_0
    return-void

    .line 7639
    :cond_0
    monitor-enter p0

    .line 7640
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 7641
    .local v0, currAudioId:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 7642
    .local v1, indexOfAudioId:I
    if-nez v1, :cond_1

    .line 7643
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Current track is the most recent track."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7644
    monitor-exit p0

    goto :goto_0

    .line 7657
    .end local v0           #currAudioId:I
    .end local v1           #indexOfAudioId:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7646
    .restart local v0       #currAudioId:I
    .restart local v1       #indexOfAudioId:I
    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayedPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7648
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 7649
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7652
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7654
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 7655
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7657
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private addToAlbumList([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2749
    array-length v0, p1

    .line 2750
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 2751
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2752
    const/4 p2, 0x0

    .line 2754
    :cond_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 2755
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-le p2, v3, :cond_1

    .line 2756
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2760
    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    sub-int v2, v3, p2

    .line 2761
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 2762
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 2761
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2766
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2767
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 2766
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2769
    :cond_3
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2770
    return-void
.end method

.method private addToPlayList([II)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 2618
    array-length v0, p1

    .line 2619
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 2620
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reset PlayList Length."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2622
    const/4 p2, 0x0

    .line 2624
    :cond_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2625
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v4, :cond_1

    .line 2626
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2630
    :cond_1
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v3, v4, p2

    .line 2631
    .local v3, tailsize:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 2632
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v7, p2, v1

    sub-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 2631
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2636
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2637
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    aget v6, p1, v1

    aput v6, v4, v5

    .line 2636
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2639
    :cond_3
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2640
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, mPlayListLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v8, :cond_5

    .line 2643
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v2

    .line 2644
    .local v2, shufflePlayList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 2645
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2650
    .end local v2           #shufflePlayList:[I
    :goto_2
    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v4, :cond_4

    .line 2651
    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 2653
    :cond_4
    return-void

    .line 2647
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private addToQueue(II)V
    .locals 5
    .parameter "type"
    .parameter "id"

    .prologue
    .line 7759
    const/4 v1, 0x0

    .line 7760
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 7762
    .local v0, albumList:[I
    monitor-enter p0

    .line 7763
    packed-switch p1, :pswitch_data_0

    .line 7810
    :goto_0
    :try_start_0
    monitor-exit p0

    .line 7811
    return-void

    .line 7766
    :pswitch_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 7767
    const/4 v2, 0x0

    aput p2, v0, v2

    .line 7768
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 7770
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 7771
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 7810
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7775
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;I)[I

    move-result-object v0

    .line 7776
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 7778
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v1

    .line 7779
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 7783
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 7784
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 7786
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v1

    .line 7787
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 7791
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getAlbumListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 7792
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 7794
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v1

    .line 7795
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 7799
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/music/util/MusicUtils;->getAlbumListForSong(Landroid/content/Context;I)[I

    move-result-object v0

    .line 7800
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 7802
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 7803
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 7804
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addToQueue([I)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7814
    array-length v2, p1

    if-gtz v2, :cond_1

    .line 7815
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToQueue size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7837
    :cond_0
    :goto_0
    return-void

    .line 7819
    :cond_1
    const/4 v0, 0x0

    .line 7822
    .local v0, combineId:[I
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_2

    .line 7823
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [I

    .line 7824
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7825
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    invoke-static {p1, v7, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7826
    invoke-virtual {p0, v0, v8}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 7831
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    array-length v4, p1

    new-array v5, v8, [Ljava/lang/Object;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7832
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    .line 7834
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v2, :cond_0

    .line 7835
    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    goto :goto_0

    .line 7829
    .end local v1           #message:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1, v8}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_1
.end method

.method private addToQueueForMultiConditions(III)V
    .locals 3
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 7744
    const/4 v1, 0x0

    .line 7745
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 7748
    .local v0, albumList:[I
    monitor-enter p0

    .line 7749
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [I

    .line 7750
    const/4 v2, 0x0

    aput p3, v0, v2

    .line 7751
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 7753
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;III)[I

    move-result-object v1

    .line 7754
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    .line 7755
    monitor-exit p0

    .line 7756
    return-void

    .line 7755
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private applyShuffleSeq([II)[I
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 4222
    if-nez p1, :cond_1

    .line 4223
    const/4 p1, 0x0

    .line 4244
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4225
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4232
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    if-eq p2, v2, :cond_2

    .line 4233
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 4236
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 4240
    new-array v1, p2, [I

    .line 4241
    .local v1, rList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 4242
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 4241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 4244
    goto :goto_0
.end method

.method private bindPluginService(Ljava/lang/String;)V
    .locals 6
    .parameter "className"

    .prologue
    const/4 v5, 0x0

    .line 5189
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 5215
    :cond_0
    :goto_0
    return-void

    .line 5191
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5192
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 5193
    .local v0, bindedClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5194
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 5195
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3, p1, v5, v5}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    goto :goto_0

    .line 5198
    .end local v0           #bindedClass:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getBindingClass()Ljava/lang/String;

    move-result-object v1

    .line 5199
    .local v1, bindingClass:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 5200
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5201
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 5202
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5203
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5204
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 5209
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v3, :cond_4

    .line 5210
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 5212
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3, p1, v5, v5}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    goto :goto_0
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 4788
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4789
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4798
    :goto_0
    return v0

    .line 4793
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4794
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4798
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIfStopFFRWRepeat()V
    .locals 1

    .prologue
    .line 4661
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez v0, :cond_0

    .line 4662
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 4663
    :cond_0
    return-void
.end method

.method private clearRecentAlbumList()V
    .locals 1

    .prologue
    .line 7552
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7553
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7554
    :cond_0
    return-void
.end method

.method private clearRecentPlayedPlaylist()V
    .locals 1

    .prologue
    .line 7729
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7730
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7731
    :cond_0
    return-void
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4806
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 4807
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 4808
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "consumeRights: drmCursor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4818
    :goto_0
    return v4

    .line 4813
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4814
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4816
    .local v2, filepath:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p0, p1, v2, v5}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 4817
    .local v1, error:I
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumeRights(uri) error code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4818
    if-nez v1, :cond_1

    .line 4820
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4821
    const/4 v0, 0x0

    move v4, v3

    .line 4818
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 4820
    .end local v1           #error:I
    .end local v2           #filepath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4821
    const/4 v0, 0x0

    .line 4820
    throw v3
.end method

.method private doAutoShuffleUpdate()V
    .locals 8

    .prologue
    .line 3819
    const/4 v2, 0x0

    .line 3821
    .local v2, notify:Z
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 3822
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    .line 3823
    const/4 v2, 0x1

    .line 3826
    :cond_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v3, v5, 0x7

    .line 3827
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 3829
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 3830
    .local v1, idx:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3831
    .local v4, which:Ljava/lang/Integer;
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3832
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 3833
    const/4 v2, 0x1

    .line 3827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3826
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v3           #to_add:I
    .end local v4           #which:Ljava/lang/Integer;
    :cond_1
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 3835
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_2
    if-eqz v2, :cond_3

    .line 3836
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3838
    :cond_3
    return-void
.end method

.method private ensureAlbumListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 2689
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 2693
    :cond_0
    shl-int/lit8 v4, p1, 0x1

    new-array v2, v4, [I

    .line 2694
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2695
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_1

    .line 2696
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2697
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 2696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2700
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 2702
    shl-int/lit8 v4, p1, 0x1

    new-array v3, v4, [I

    .line 2703
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_2

    .line 2704
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2705
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 2704
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2708
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 2710
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 2711
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2718
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 2713
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_2
.end method

.method private ensurePlayListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 2585
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 2589
    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [I

    .line 2590
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2591
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_1

    .line 2592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2593
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 2592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2596
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 2598
    mul-int/lit8 v4, p1, 0x2

    new-array v3, v4, [I

    .line 2599
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_2

    .line 2600
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2601
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 2600
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2604
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 2606
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 2607
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2614
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 2609
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private ensureShrinkAlbumListCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 2657
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 2661
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    .line 2662
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 2663
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_1

    .line 2664
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2665
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 2664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2668
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    .line 2670
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    :cond_2
    return-void
.end method

.method private ensureShuffleSeqCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 2722
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 2726
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    .line 2727
    .local v2, newlist:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 2728
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_1

    .line 2729
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2730
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 2729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2733
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 2737
    .end local v1           #len:I
    .end local v2           #newlist:[I
    :cond_2
    return-void
.end method

.method private ensureShuffleShrinkAlbumListCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 2673
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 2677
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    .line 2678
    .local v2, shuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 2679
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    if-eqz v3, :cond_1

    .line 2680
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2681
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 2680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2684
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    .line 2686
    .end local v1           #len:I
    .end local v2           #shuffleNewList:[I
    :cond_2
    return-void
.end method

.method private forcePlay()V
    .locals 3

    .prologue
    .line 3798
    monitor-enter p0

    .line 3799
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    .line 3800
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3801
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcePlay mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_0

    .line 3803
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3804
    :cond_0
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 3806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 3807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 3808
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 3809
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3810
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3813
    :cond_1
    monitor-exit p0

    .line 3814
    return-void

    .line 3813
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAlbumPos([II)I
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 2776
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 2796
    :cond_0
    :goto_0
    return v2

    .line 2781
    :cond_1
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v6, :cond_2

    move v2, v5

    .line 2782
    goto :goto_0

    .line 2785
    :cond_2
    const/4 v2, 0x0

    .line 2786
    .local v2, pos:I
    aget v3, p1, v4

    .line 2787
    .local v3, prealbum:I
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lt p2, v4, :cond_3

    move v2, v5

    .line 2788
    goto :goto_0

    .line 2789
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, p2, :cond_0

    .line 2790
    aget v1, p1, v0

    .line 2791
    .local v1, id:I
    if-eq v1, v3, :cond_4

    .line 2792
    add-int/lit8 v2, v2, 0x1

    .line 2793
    move v3, v1

    .line 2789
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7888
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 4474
    monitor-enter p0

    .line 4475
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 4476
    const-wide/16 v0, 0x0

    monitor-exit p0

    .line 4478
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 4479
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultTracks()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 4779
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4784
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private getLastAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7896
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextAlbumPos([II)I
    .locals 3
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2801
    aget v1, p1, p2

    .line 2802
    .local v1, prealbum:I
    add-int/lit8 v0, p2, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-ge v0, v2, :cond_1

    .line 2804
    aget v2, p1, v0

    if-eq v2, v1, :cond_0

    .line 2809
    .end local v0           #i:I
    :goto_1
    return v0

    .line 2802
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2809
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getNowplaying()[I
    .locals 4

    .prologue
    .line 5316
    monitor-enter p0

    .line 5317
    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    .line 5324
    :goto_0
    return-object v2

    .line 5319
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 5320
    .local v1, len:I
    new-array v2, v1, [I

    .line 5321
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 5322
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 5321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5324
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 5325
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getPluginClass(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5218
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5219
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 5221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginCount()I
    .locals 1

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5227
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginCount()I

    move-result v0

    .line 5229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5256
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5257
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 5259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5248
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5249
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5234
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5235
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    .line 5237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5283
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5284
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    .line 5286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginUpdateNotification()Landroid/app/Notification;
    .locals 17

    .prologue
    .line 7004
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 7005
    .local v8, status:Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 7006
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f03005e

    invoke-direct {v11, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7015
    .local v11, views:Landroid/widget/RemoteViews;
    const v12, 0x7f0800e7

    const-string v13, "common_icon_glance_pause_on"

    const v14, 0x2080915

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7021
    const/4 v2, 0x0

    .local v2, artist:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, album:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, track:Ljava/lang/String;
    const/4 v7, 0x0

    .line 7023
    .local v7, salbumartpath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v7

    .line 7024
    if-nez v7, :cond_5

    .line 7026
    const v12, 0x7f080071

    const v13, 0x7f020057

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7085
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 7086
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    .line 7087
    const v12, 0x7f0800e8

    invoke-virtual {v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7088
    if-eqz v2, :cond_0

    const-string v12, "<unknown>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 7089
    :cond_0
    const v12, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7091
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 7092
    if-eqz v1, :cond_2

    const-string v12, "<unknown>"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 7093
    :cond_2
    const v12, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7096
    :cond_3
    const v12, 0x7f0800e9

    const v13, 0x7f070215

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7101
    iput-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7102
    iget v12, v8, Landroid/app/Notification;->flags:I

    const/high16 v13, 0x4

    or-int/2addr v12, v13

    iput v12, v8, Landroid/app/Notification;->flags:I

    .line 7103
    const v12, 0x7f02006b

    iput v12, v8, Landroid/app/Notification;->icon:I

    .line 7105
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7106
    .local v9, statusintent:Landroid/content/Intent;
    const/4 v12, 0x0

    const/high16 v13, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    iput-object v12, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7108
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 7109
    .local v5, pauseIntent:Landroid/content/Intent;
    const-string v12, "command"

    const-string v13, "pause"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7110
    const-string v12, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7112
    iget-object v12, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f0800e7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7115
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v12

    if-ltz v12, :cond_4

    .line 7116
    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_track"

    invoke-virtual {v12, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7117
    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_artist"

    invoke-virtual {v12, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7118
    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_album"

    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7119
    iget-object v12, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "music_albumid"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7125
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v5           #pauseIntent:Landroid/content/Intent;
    .end local v7           #salbumartpath:Ljava/lang/String;
    .end local v9           #statusintent:Landroid/content/Intent;
    .end local v10           #track:Ljava/lang/String;
    .end local v11           #views:Landroid/widget/RemoteViews;
    :cond_4
    return-object v8

    .line 7029
    .restart local v1       #album:Ljava/lang/String;
    .restart local v2       #artist:Ljava/lang/String;
    .restart local v7       #salbumartpath:Ljava/lang/String;
    .restart local v10       #track:Ljava/lang/String;
    .restart local v11       #views:Landroid/widget/RemoteViews;
    :cond_5
    const/16 v4, 0x48

    .line 7031
    .local v4, maxSideLen:I
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7033
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_6

    .line 7035
    const-string v12, "[MediaPlaybackService]"

    const-string v13, " bitmap is null..."

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7036
    const v12, 0x7f080071

    const v13, 0x7f020057

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 7082
    :goto_1
    const-string v12, "[MediaPlaybackService]"

    invoke-static {v12, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7048
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-gt v12, v4, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-le v12, v4, :cond_8

    .line 7050
    :cond_7
    const/4 v12, 0x0

    invoke-static {v3, v4, v4, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 7051
    .local v6, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 7052
    const/4 v3, 0x0

    .line 7053
    const v12, 0x7f080071

    invoke-virtual {v11, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 7067
    .end local v6           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_8
    const v12, 0x7f080071

    invoke-virtual {v11, v12, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private getPrevAlbumPos([II)I
    .locals 4
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2814
    aget v1, p1, p2

    .line 2815
    .local v1, prealbum:I
    add-int/lit8 v0, p2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2817
    aget v2, p1, v0

    if-eq v2, v1, :cond_0

    .line 2818
    if-eqz v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aget v3, p1, v0

    if-ne v2, v3, :cond_2

    .line 2815
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2824
    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/lit8 v0, v2, -0x1

    .end local v0           #i:I
    :cond_2
    return v0
.end method

.method private getRecentAlbumId()[I
    .locals 3

    .prologue
    .line 7557
    monitor-enter p0

    .line 7558
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 7559
    .local v1, recentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 7560
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 7559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7562
    :cond_0
    monitor-exit p0

    return-object v1

    .line 7563
    .end local v0           #i:I
    .end local v1           #recentAlbumId:[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getRecentAlbumartPath([I)[Ljava/lang/String;
    .locals 14
    .parameter "albumIds"

    .prologue
    const/4 v13, 0x0

    .line 7567
    if-nez p1, :cond_1

    move-object v11, v13

    .line 7631
    :cond_0
    :goto_0
    return-object v11

    .line 7569
    :cond_1
    const/16 v0, 0x8

    new-array v11, v0, [Ljava/lang/String;

    .line 7570
    .local v11, recentAlbumartpath:[Ljava/lang/String;
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7571
    const/4 v7, 0x0

    .line 7573
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 7574
    .local v12, where:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 7576
    .local v4, recentAlbumId:[Ljava/lang/String;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7577
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_1
    array-length v0, p1

    if-ge v9, v0, :cond_3

    .line 7578
    const-string v0, "_id = ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7579
    aget v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 7580
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v9, v0, :cond_2

    .line 7581
    const-string v0, " OR "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7577
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 7583
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7585
    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7586
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7590
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 7591
    :cond_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7625
    if-eqz v7, :cond_5

    .line 7626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7627
    const/4 v7, 0x0

    :cond_5
    move-object v11, v13

    .line 7592
    goto :goto_0

    .line 7583
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 7622
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 7623
    .local v8, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 7625
    if-eqz v7, :cond_0

    .line 7626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7627
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 7595
    .restart local v4       #recentAlbumId:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v12       #where:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7596
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 7598
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 7599
    :cond_7
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 7625
    if-eqz v7, :cond_8

    .line 7626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7627
    const/4 v7, 0x0

    :cond_8
    move-object v11, v13

    .line 7600
    goto/16 :goto_0

    .line 7604
    :cond_9
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 7605
    const/4 v9, 0x0

    :goto_3
    :try_start_8
    array-length v0, p1

    if-ge v9, v0, :cond_c

    .line 7606
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7607
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 7608
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 7611
    .local v6, currentAlbumId:I
    aget v0, p1, v9

    if-ne v6, v0, :cond_b

    .line 7612
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    .line 7615
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recentAlbumartpath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7605
    .end local v6           #currentAlbumId:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 7618
    .restart local v6       #currentAlbumId:I
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 7607
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 7621
    .end local v6           #currentAlbumId:I
    .end local v10           #j:I
    :cond_c
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 7625
    if-eqz v7, :cond_0

    .line 7626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 7621
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 7625
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_d

    .line 7626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7627
    const/4 v7, 0x0

    .line 7625
    :cond_d
    throw v0
.end method

.method private getRecentPlayedPlaylist()[I
    .locals 3

    .prologue
    .line 7734
    monitor-enter p0

    .line 7735
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 7736
    .local v1, recentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 7737
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 7736
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7739
    :cond_0
    monitor-exit p0

    return-object v1

    .line 7740
    .end local v0           #i:I
    .end local v1           #recentAlbumId:[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private gotoIdleState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3567
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 3568
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoIdleState: mPlayOnNextPrev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3572
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3573
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3576
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 3577
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 3580
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3581
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    if-eqz v2, :cond_0

    .line 3582
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v5}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    .line 3585
    :cond_0
    return-void
.end method

.method private isDmcOrPushMode()Z
    .locals 2

    .prologue
    .line 5264
    monitor-enter p0

    .line 5265
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 5266
    .local v0, mode:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5267
    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    .line 5269
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5271
    .end local v0           #mode:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isPluginMode()Z
    .locals 1

    .prologue
    .line 4987
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 4988
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginMode()Z

    move-result v0

    .line 4990
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginReady()Z
    .locals 1

    .prologue
    .line 5275
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5276
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginReady()Z

    move-result v0

    .line 5278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4465
    monitor-enter p0

    .line 4466
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 4467
    monitor-exit p0

    .line 4469
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 4470
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isServiceConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4994
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4995
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5001
    :cond_0
    :goto_0
    return v0

    .line 4998
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, mService:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/music/MediaPlaybackService;>;"
    const/4 v0, 0x0

    .line 7161
    if-eqz p0, :cond_1

    .line 7162
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7163
    const/4 v0, 0x1

    .line 7170
    :goto_0
    return v0

    .line 7165
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7169
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadRecentAlbumList(Landroid/content/SharedPreferences;Z)V
    .locals 11
    .parameter "preferences"
    .parameter "newstyle"

    .prologue
    .line 7515
    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "localrecentalbumid"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7516
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 7517
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7518
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 7519
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 7520
    if-eqz p2, :cond_3

    .line 7521
    aget-object v7, v1, v2

    .line 7522
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 7523
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 7524
    shl-int/lit8 v5, v5, 0x4

    .line 7525
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7526
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 7527
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 7523
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 7528
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 7529
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 7532
    :cond_1
    const/4 v4, 0x0

    .line 7536
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    .line 7519
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7538
    :cond_3
    aget-object v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    goto :goto_3

    .line 7543
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    return-void
.end method

.method private loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V
    .locals 11
    .parameter "preferences"
    .parameter "newstyle"

    .prologue
    .line 7691
    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "recentplayedplaylist"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7692
    .local v6, q:Ljava/lang/String;
    const-string v8, "[MediaPlaybackService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadRecentPlayedPlaylist:newstyle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7693
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 7694
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7695
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 7696
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 7697
    if-eqz p2, :cond_3

    .line 7698
    aget-object v7, v1, v2

    .line 7699
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 7700
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 7701
    shl-int/lit8 v5, v5, 0x4

    .line 7702
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 7703
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 7704
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 7700
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 7705
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 7706
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 7709
    :cond_1
    const/4 v4, 0x0

    .line 7713
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    .line 7696
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7715
    :cond_3
    aget-object v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    goto :goto_3

    .line 7719
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    return-void
.end method

.method private makeAutoShuffleList()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 3857
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 3858
    .local v11, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 3860
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3863
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 3877
    :cond_0
    if-eqz v6, :cond_1

    .line 3878
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v13

    .line 3881
    :goto_0
    return v0

    .line 3866
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 3867
    .local v9, len:I
    new-array v10, v9, [I

    .line 3868
    .local v10, list:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 3869
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 3870
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 3868
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3872
    :cond_3
    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3877
    if-eqz v6, :cond_4

    .line 3878
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    .line 3873
    goto :goto_0

    .line 3874
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_0
    move-exception v7

    .line 3875
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception in makeAutoShuffleList. Ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3877
    if-eqz v6, :cond_5

    .line 3878
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v13

    .line 3881
    goto :goto_0

    .line 3877
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 3878
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3877
    :cond_6
    throw v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 3
    .parameter "what"

    .prologue
    .line 2503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2504
    .local v0, i:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2505
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2506
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2507
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2508
    const-string v1, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2509
    const-string v1, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2510
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2516
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2531
    :cond_0
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2532
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "notifyChange: QUEUE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2541
    :goto_0
    return-void

    .line 2535
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .parameter "what"
    .parameter "bundle"

    .prologue
    const/4 v6, 0x0

    .line 2553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2554
    .local v0, i:Landroid/content/Intent;
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2555
    const-string v3, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2556
    const-string v3, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2557
    const-string v3, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2558
    const-string v3, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2559
    const-string v3, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2560
    if-eqz p2, :cond_2

    .line 2561
    const-string v3, "animationtype"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2562
    .local v1, type:I
    if-ltz v1, :cond_0

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 2563
    :cond_0
    const/4 v1, 0x0

    .line 2565
    :cond_1
    const-string v3, "animationtype"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2566
    const-string v3, "updatewidget"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2567
    .local v2, updateWidget:Z
    const-string v3, "updatewidget"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2569
    .end local v1           #type:I
    .end local v2           #updateWidget:Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2571
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!=== notifyChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2574
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2582
    :goto_0
    return-void

    .line 2576
    :cond_3
    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0
.end method

.method private openCurrent()V
    .locals 11

    .prologue
    .line 3164
    monitor-enter p0

    .line 3165
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3166
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 3169
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 3170
    monitor-exit p0

    .line 3219
    :goto_0
    return-void

    .line 3172
    :cond_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_3

    .line 3173
    :cond_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    monitor-exit p0

    goto :goto_0

    .line 3218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3176
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3178
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 3180
    .local v9, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 3181
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 3185
    :cond_4
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 3187
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 3188
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3191
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 3192
    .local v8, colCount:I
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 3193
    .local v10, position:I
    if-lez v8, :cond_5

    if-gez v10, :cond_7

    .line 3195
    :cond_5
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent: cols count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 3197
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 3200
    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    .line 3204
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 3206
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3207
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v6

    .line 3210
    .local v6, bookmark:J
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v1, 0x1388

    sub-long v1, v6, v1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 3218
    .end local v6           #bookmark:J
    .end local v8           #colCount:I
    .end local v10           #position:I
    :cond_8
    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    .line 3213
    :cond_9
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    .line 3214
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private openWithCategory([IILcom/htc/music/NpCategory;)V
    .locals 2
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 5297
    monitor-enter p0

    .line 5300
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 5304
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 5305
    monitor-exit p0

    .line 5306
    return-void

    .line 5305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openWithoutCategory([II)V
    .locals 2
    .parameter "list"
    .parameter "position"

    .prologue
    .line 5309
    monitor-enter p0

    .line 5310
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 5311
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 5312
    monitor-exit p0

    .line 5313
    return-void

    .line 5312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pauseOtherPlayer()V
    .locals 3

    .prologue
    .line 4834
    new-instance v0, Landroid/content/Intent;

    const-string v2, "kkbox.media.action.pause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4835
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4837
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/music/MediaPlaybackService$9;

    invoke-direct {v2, p0}, Lcom/htc/music/MediaPlaybackService$9;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4847
    .local v1, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4848
    return-void
.end method

.method private pluginUpdateNotification(Landroid/app/Notification;)V
    .locals 5
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7129
    invoke-virtual {p0, v3, p1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 7134
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 7135
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7136
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7137
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v0

    .line 7138
    .local v0, bBeatsOn:Z
    if-eqz v0, :cond_1

    .line 7139
    invoke-static {v1, v3, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    .line 7158
    .end local v0           #bBeatsOn:Z
    :cond_0
    :goto_0
    return-void

    .line 7142
    .restart local v0       #bBeatsOn:Z
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7143
    invoke-static {v1, v4, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 7145
    :cond_2
    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7146
    invoke-static {v1, v3, v3, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    goto :goto_0

    .line 7149
    :cond_3
    invoke-static {v1, v4, v4}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 7154
    .end local v0           #bBeatsOn:Z
    :cond_4
    invoke-static {v1, v4, v4}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method private refreshPlaylist()V
    .locals 18

    .prologue
    .line 2068
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "refreshPlaylist"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_5

    .line 2070
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2071
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    const-string v1, " AND _id IN ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 2074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_0

    .line 2076
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2079
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2087
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2089
    .local v7, audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_6

    .line 2090
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist: cursor count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 2095
    :cond_2
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2096
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2097
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2098
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 2099
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 2100
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 2103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v16

    .line 2104
    .local v16, status:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist: mediascanning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    const-string v1, "mounted"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2109
    :cond_4
    if-eqz v10, :cond_5

    .line 2110
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2111
    const/4 v10, 0x0

    .line 2175
    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #where:Ljava/lang/StringBuilder;
    :cond_5
    :goto_2
    return-void

    .line 2092
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v17       #where:Ljava/lang/StringBuilder;
    :cond_6
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "refreshPlaylist: cursor = null "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2116
    .restart local v16       #status:Ljava/lang/String;
    :cond_7
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist, cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reset PlayList Length."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    const-string v1, "com.htc.music.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2119
    if-eqz v10, :cond_5

    .line 2120
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2121
    const/4 v10, 0x0

    goto :goto_2

    .line 2126
    .end local v16           #status:Ljava/lang/String;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2127
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ne v9, v1, :cond_9

    .line 2130
    if-eqz v10, :cond_5

    .line 2131
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2132
    const/4 v10, 0x0

    goto :goto_2

    .line 2137
    :cond_9
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v13

    .line 2138
    .local v13, list:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    new-array v15, v1, [I

    .line 2140
    .local v15, removePosition:[I
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2141
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    :goto_3
    array-length v1, v13

    if-ge v11, v1, :cond_a

    .line 2142
    aget v1, v13, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, v13, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2145
    :cond_a
    const/4 v12, 0x0

    .line 2146
    .local v12, j:I
    const/4 v8, 0x0

    .line 2147
    .local v8, bRemoved:Z
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v11, v1, :cond_b

    .line 2148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    if-lt v12, v1, :cond_d

    .line 2150
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "CMD_REFRESH_PLAYLIST, list length is wrong!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    :cond_b
    if-eqz v8, :cond_c

    .line 2162
    new-array v14, v12, [I

    .line 2163
    .local v14, removeArray:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v15, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2165
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 2166
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    .line 2169
    .end local v14           #removeArray:[I
    :cond_c
    if-eqz v10, :cond_5

    .line 2170
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2154
    :cond_d
    aput v11, v15, v12

    .line 2155
    add-int/lit8 v12, v12, 0x1

    .line 2156
    const/4 v8, 0x1

    .line 2147
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method private refreshPlugin()V
    .locals 1

    .prologue
    .line 5242
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5243
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 5245
    :cond_0
    return-void
.end method

.method private reloadQueueImpl()V
    .locals 24

    .prologue
    .line 1614
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl +"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const/16 v18, 0x0

    .line 1616
    .local v18, q:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1617
    .local v16, newstyle:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentAlbumList()V

    .line 1618
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentPlayedPlaylist()V

    .line 1619
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 1620
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1621
    const/16 v16, 0x1

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1624
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    if-ne v12, v2, :cond_1

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1628
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: card id is the same."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_1
    if-eqz v18, :cond_38

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    .line 1632
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: q != null && q.length() > 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 1646
    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1647
    .local v10, entries:[Ljava/lang/String;
    array-length v14, v10

    .line 1648
    .local v14, len:I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1649
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_6

    .line 1650
    if-eqz v16, :cond_5

    .line 1651
    aget-object v20, v10, v11

    .line 1652
    .local v20, revhex:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1653
    .local v15, n:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, j:I
    :goto_1
    if-ltz v13, :cond_4

    .line 1654
    shl-int/lit8 v15, v15, 0x4

    .line 1655
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1656
    .local v9, c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_2

    const/16 v2, 0x39

    if-gt v9, v2, :cond_2

    .line 1657
    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    .line 1653
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 1658
    :cond_2
    const/16 v2, 0x61

    if-lt v9, v2, :cond_3

    const/16 v2, 0x66

    if-gt v9, v2, :cond_3

    .line 1659
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_2

    .line 1662
    :cond_3
    const/4 v14, 0x0

    .line 1666
    .end local v9           #c:C
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aput v15, v2, v11

    .line 1649
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1668
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_3

    .line 1671
    :cond_6
    const/4 v8, 0x0

    .line 1673
    .local v8, bRecoverQueue:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v14, v2, :cond_7

    .line 1675
    const/4 v8, 0x1

    .line 1677
    :cond_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queuealbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1681
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    .line 1682
    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1683
    array-length v14, v10

    .line 1684
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 1685
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v14, :cond_c

    .line 1686
    if-eqz v16, :cond_b

    .line 1687
    aget-object v20, v10, v11

    .line 1688
    .restart local v20       #revhex:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1689
    .restart local v15       #n:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .restart local v13       #j:I
    :goto_5
    if-ltz v13, :cond_a

    .line 1690
    shl-int/lit8 v15, v15, 0x4

    .line 1691
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1692
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_8

    const/16 v2, 0x39

    if-gt v9, v2, :cond_8

    .line 1693
    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    .line 1689
    :goto_6
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 1694
    :cond_8
    const/16 v2, 0x61

    if-lt v9, v2, :cond_9

    const/16 v2, 0x66

    if-gt v9, v2, :cond_9

    .line 1695
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_6

    .line 1698
    :cond_9
    const/4 v14, 0x0

    .line 1702
    .end local v9           #c:C
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aput v15, v2, v11

    .line 1685
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1704
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_7

    .line 1707
    :cond_c
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 1712
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queueshrinkalbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1713
    if-eqz v18, :cond_16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    .line 1714
    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1715
    array-length v14, v10

    .line 1716
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    .line 1717
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v14, :cond_12

    .line 1718
    if-eqz v16, :cond_11

    .line 1719
    aget-object v20, v10, v11

    .line 1720
    .restart local v20       #revhex:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1721
    .restart local v15       #n:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .restart local v13       #j:I
    :goto_a
    if-ltz v13, :cond_10

    .line 1722
    shl-int/lit8 v15, v15, 0x4

    .line 1723
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1724
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_e

    const/16 v2, 0x39

    if-gt v9, v2, :cond_e

    .line 1725
    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    .line 1721
    :goto_b
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 1710
    .end local v9           #c:C
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_8

    .line 1726
    .restart local v9       #c:C
    .restart local v13       #j:I
    .restart local v15       #n:I
    .restart local v20       #revhex:Ljava/lang/String;
    :cond_e
    const/16 v2, 0x61

    if-lt v9, v2, :cond_f

    const/16 v2, 0x66

    if-gt v9, v2, :cond_f

    .line 1727
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_b

    .line 1730
    :cond_f
    const/4 v14, 0x0

    .line 1734
    .end local v9           #c:C
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aput v15, v2, v11

    .line 1717
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1736
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_c

    .line 1739
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 1740
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 1741
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 1749
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 1750
    .local v19, repmode:I
    const/4 v2, 0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_13

    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_13

    .line 1751
    const/16 v19, 0x0

    .line 1753
    :cond_13
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 1756
    .local v23, shufmode:I
    const/4 v2, 0x2

    move/from16 v0, v23

    if-eq v0, v2, :cond_14

    const/4 v2, 0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_14

    .line 1757
    const/16 v23, 0x0

    .line 1759
    :cond_14
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_15

    .line 1760
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1761
    const/16 v23, 0x0

    .line 1764
    :cond_15
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 1765
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeue"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1767
    if-eqz v18, :cond_1c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    .line 1768
    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1769
    array-length v14, v10

    .line 1770
    const/4 v11, 0x0

    :goto_e
    if-ge v11, v14, :cond_1b

    .line 1771
    if-eqz v16, :cond_1a

    .line 1772
    aget-object v20, v10, v11

    .line 1773
    .restart local v20       #revhex:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1774
    .restart local v15       #n:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .restart local v13       #j:I
    :goto_f
    if-ltz v13, :cond_19

    .line 1775
    shl-int/lit8 v15, v15, 0x4

    .line 1776
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1777
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_17

    const/16 v2, 0x39

    if-gt v9, v2, :cond_17

    .line 1778
    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    .line 1774
    :goto_10
    add-int/lit8 v13, v13, -0x1

    goto :goto_f

    .line 1743
    .end local v9           #c:C
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v19           #repmode:I
    .end local v20           #revhex:Ljava/lang/String;
    .end local v23           #shufmode:I
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_d

    .line 1779
    .restart local v9       #c:C
    .restart local v13       #j:I
    .restart local v15       #n:I
    .restart local v19       #repmode:I
    .restart local v20       #revhex:Ljava/lang/String;
    .restart local v23       #shufmode:I
    :cond_17
    const/16 v2, 0x61

    if-lt v9, v2, :cond_18

    const/16 v2, 0x66

    if-gt v9, v2, :cond_18

    .line 1780
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_10

    .line 1783
    :cond_18
    const/4 v14, 0x0

    .line 1787
    .end local v9           #c:C
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aput v15, v2, v11

    .line 1770
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 1789
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_11

    .line 1792
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 1797
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeuealbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1798
    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_22

    .line 1799
    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1800
    array-length v14, v10

    .line 1801
    const/4 v11, 0x0

    :goto_13
    if-ge v11, v14, :cond_21

    .line 1802
    if-eqz v16, :cond_20

    .line 1803
    aget-object v20, v10, v11

    .line 1804
    .restart local v20       #revhex:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1805
    .restart local v15       #n:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .restart local v13       #j:I
    :goto_14
    if-ltz v13, :cond_1f

    .line 1806
    shl-int/lit8 v15, v15, 0x4

    .line 1807
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1808
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_1d

    const/16 v2, 0x39

    if-gt v9, v2, :cond_1d

    .line 1809
    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    .line 1805
    :goto_15
    add-int/lit8 v13, v13, -0x1

    goto :goto_14

    .line 1794
    .end local v9           #c:C
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_12

    .line 1810
    .restart local v9       #c:C
    .restart local v13       #j:I
    .restart local v15       #n:I
    .restart local v20       #revhex:Ljava/lang/String;
    :cond_1d
    const/16 v2, 0x61

    if-lt v9, v2, :cond_1e

    const/16 v2, 0x66

    if-gt v9, v2, :cond_1e

    .line 1811
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_15

    .line 1814
    :cond_1e
    const/4 v14, 0x0

    .line 1818
    .end local v9           #c:C
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aput v15, v2, v11

    .line 1801
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 1820
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_16

    .line 1823
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 1827
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeueshrinkalbum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1828
    if-eqz v18, :cond_2f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2f

    .line 1829
    const-string v2, ";"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1830
    array-length v14, v10

    .line 1831
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/MediaPlaybackService;->ensureShuffleShrinkAlbumListCapacity(I)V

    .line 1832
    const/4 v11, 0x0

    :goto_18
    if-ge v11, v14, :cond_27

    .line 1833
    if-eqz v16, :cond_26

    .line 1834
    aget-object v20, v10, v11

    .line 1835
    .restart local v20       #revhex:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1836
    .restart local v15       #n:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .restart local v13       #j:I
    :goto_19
    if-ltz v13, :cond_25

    .line 1837
    shl-int/lit8 v15, v15, 0x4

    .line 1838
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1839
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_23

    const/16 v2, 0x39

    if-gt v9, v2, :cond_23

    .line 1840
    add-int/lit8 v2, v9, -0x30

    add-int/2addr v15, v2

    .line 1836
    :goto_1a
    add-int/lit8 v13, v13, -0x1

    goto :goto_19

    .line 1825
    .end local v9           #c:C
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_17

    .line 1841
    .restart local v9       #c:C
    .restart local v13       #j:I
    .restart local v15       #n:I
    .restart local v20       #revhex:Ljava/lang/String;
    :cond_23
    const/16 v2, 0x61

    if-lt v9, v2, :cond_24

    const/16 v2, 0x66

    if-gt v9, v2, :cond_24

    .line 1842
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v15, v2

    goto :goto_1a

    .line 1845
    :cond_24
    const/4 v14, 0x0

    .line 1849
    .end local v9           #c:C
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aput v15, v2, v11

    .line 1832
    .end local v13           #j:I
    .end local v15           #n:I
    .end local v20           #revhex:Ljava/lang/String;
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 1851
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget-object v3, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v11

    goto :goto_1b

    .line 1854
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 1855
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 1856
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 1862
    :cond_28
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentAlbumList(Landroid/content/SharedPreferences;Z)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1866
    .local v17, pos:I
    if-ltz v17, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v17

    if-lt v0, v2, :cond_2a

    .line 1868
    :cond_29
    if-gez v17, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ltz v2, :cond_30

    .line 1872
    const/16 v17, 0x0

    .line 1883
    :cond_2a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 1884
    if-eqz v8, :cond_2c

    .line 1885
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1886
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 1889
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 1891
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "prealbum"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 1898
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "is_music>=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1923
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_31

    .line 1924
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImp: cursor = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    :goto_1d
    if-eqz v9, :cond_2d

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_32

    .line 1930
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    .line 1932
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: failed to get data from database."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    if-eqz v9, :cond_2e

    .line 1938
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1939
    const/4 v9, 0x0

    .line 1941
    :cond_2e
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #entries:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #len:I
    .end local v17           #pos:I
    .end local v19           #repmode:I
    .end local v23           #shufmode:I
    :goto_1e
    return-void

    .line 1858
    .restart local v8       #bRecoverQueue:Z
    .restart local v10       #entries:[Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v14       #len:I
    .restart local v19       #repmode:I
    .restart local v23       #shufmode:I
    :cond_2f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_1c

    .line 1875
    .restart local v17       #pos:I
    :cond_30
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1876
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 1877
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1878
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 1879
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueue -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1926
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_31
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueueImp: cursor length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 1944
    :cond_32
    if-eqz v9, :cond_33

    .line 1945
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1946
    const/4 v9, 0x0

    .line 1957
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1958
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -, song is playing now, don\'t do opencurrent.!!! return."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1972
    :cond_34
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1973
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 1974
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 1975
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "seekpos"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 1979
    .local v21, seekpos:J
    if-eqz v8, :cond_36

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v3, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 2059
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #entries:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #len:I
    .end local v17           #pos:I
    .end local v19           #repmode:I
    .end local v21           #seekpos:J
    .end local v23           #shufmode:I
    :goto_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    if-nez v2, :cond_35

    .line 2060
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2061
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 2062
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2064
    :cond_35
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1983
    .restart local v8       #bRecoverQueue:Z
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #entries:[Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v14       #len:I
    .restart local v17       #pos:I
    .restart local v19       #repmode:I
    .restart local v21       #seekpos:J
    .restart local v23       #shufmode:I
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v3, 0x0

    cmp-long v3, v21, v3

    if-ltz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v3

    cmp-long v3, v21, v3

    if-gez v3, :cond_37

    .end local v21           #seekpos:J
    :goto_20
    move-wide/from16 v0, v21

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    goto :goto_1f

    .restart local v21       #seekpos:J
    :cond_37
    const-wide/16 v21, 0x0

    goto :goto_20

    .line 1996
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #entries:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #len:I
    .end local v17           #pos:I
    .end local v19           #repmode:I
    .end local v21           #seekpos:J
    .end local v23           #shufmode:I
    :cond_38
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1997
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 1998
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1999
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_1f
.end method

.method private removeTracksInternal(II)I
    .locals 12
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 3901
    monitor-enter p0

    .line 3902
    :try_start_0
    const-string v8, "[MediaPlaybackService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeTracksInternal, first: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", last: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPlayListLen: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3903
    if-ge p2, p1, :cond_0

    .line 3904
    monitor-exit p0

    .line 3978
    :goto_0
    return v7

    .line 3905
    :cond_0
    if-gez p1, :cond_1

    .line 3906
    const/4 p1, 0x0

    .line 3907
    :cond_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v7, :cond_2

    .line 3908
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v7, -0x1

    .line 3910
    :cond_2
    const/4 v0, 0x0

    .line 3911
    .local v0, gotonext:Z
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_6

    .line 3912
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v4

    .line 3913
    .local v4, pos:I
    if-gt p1, v4, :cond_5

    if-gt v4, p2, :cond_5

    .line 3914
    const/4 v0, 0x1

    .line 3927
    .end local v4           #pos:I
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v7, p2

    add-int/lit8 v2, v7, -0x1

    .line 3928
    .local v2, num:I
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3929
    .local v3, playListLen:I
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_9

    .line 3930
    move v1, p1

    .local v1, i:I
    :goto_2
    if-gt v1, p2, :cond_8

    .line 3931
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v5

    .line 3932
    .local v5, position:I
    if-ltz v5, :cond_4

    if-ge v5, v3, :cond_4

    .line 3933
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 3934
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-static {v7, v3, v5}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 3935
    add-int/lit8 v3, v3, -0x1

    .line 3930
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3915
    .end local v1           #i:I
    .end local v2           #num:I
    .end local v3           #playListLen:I
    .end local v5           #position:I
    .restart local v4       #pos:I
    :cond_5
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    .line 3916
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3979
    .end local v0           #gotonext:Z
    .end local v4           #pos:I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3919
    .restart local v0       #gotonext:Z
    :cond_6
    :try_start_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v7, :cond_7

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v7, p2, :cond_7

    .line 3920
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3921
    const/4 v0, 0x1

    goto :goto_1

    .line 3922
    :cond_7
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v7, p2, :cond_3

    .line 3923
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3939
    .restart local v1       #i:I
    .restart local v2       #num:I
    .restart local v3       #playListLen:I
    :cond_8
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-direct {p0, v7, v3}, Lcom/htc/music/MediaPlaybackService;->shrinkShuffleAlbumList([II)V

    .line 3940
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 3942
    .end local v1           #i:I
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_a

    .line 3943
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 3944
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v8, p1, v1

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int/lit8 v10, p2, 0x1

    add-int/2addr v10, v1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 3942
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3946
    :cond_a
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3947
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3948
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3949
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lez v7, :cond_d

    .line 3950
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->shrinkAlbumList([II)V

    .line 3952
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v7, v11, :cond_c

    .line 3953
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 3962
    :goto_4
    if-eqz v0, :cond_b

    .line 3963
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v7, :cond_e

    .line 3964
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3965
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3978
    :cond_b
    :goto_5
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 3955
    :cond_c
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_4

    .line 3958
    :cond_d
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_4

    .line 3967
    :cond_e
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v7, v8, :cond_f

    .line 3968
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3970
    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 3971
    .local v6, wasPlaying:Z
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3972
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3973
    if-eqz v6, :cond_b

    .line 3974
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method private resetQueueAlbumList([I)V
    .locals 4
    .parameter "albumList"

    .prologue
    const/4 v3, 0x0

    .line 7840
    array-length v1, p1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 7842
    .local v0, combineId:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 7843
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7844
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7849
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 7851
    return-void

    .line 7847
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private restoreRecentAlbumList(I)V
    .locals 2
    .parameter "albumId"

    .prologue
    .line 7546
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 7549
    :goto_0
    return-void

    .line 7548
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreRecentPlayedPlaylist(I)V
    .locals 3
    .parameter "audioId"

    .prologue
    .line 7722
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecentPlayedPlaylist:audioId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7723
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 7726
    :goto_0
    return-void

    .line 7725
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 3589
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3590
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 3591
    .local v4, pos:J
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 3592
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 3593
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 3613
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 3599
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    .line 3601
    :cond_3
    const-wide/16 v4, 0x0

    .line 3605
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3606
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3607
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 3609
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3611
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 13
    .parameter "full"

    .prologue
    const/4 v12, 0x0

    .line 1342
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue: SdCardRemoved = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue: mQueueModified = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-boolean v9, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v9, :cond_0

    .line 1346
    iget-boolean v9, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    if-nez v9, :cond_0

    .line 1351
    const/4 p1, 0x0

    .line 1362
    :cond_0
    const-string v9, "Music"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1363
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1370
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v9, "version"

    const/4 v10, 0x4

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1374
    if-eqz p1, :cond_1a

    .line 1375
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-nez v9, :cond_2

    .line 1376
    :cond_1
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BadQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mShrinkAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1379
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1380
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 1381
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 1382
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 1385
    :cond_2
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1386
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 1387
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v7, v9, v4

    .line 1388
    .local v7, n:I
    if-gtz v7, :cond_3

    .line 1389
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BadQueue mAlbumList["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v7           #n:I
    :goto_1
    return-void

    .line 1386
    .restart local v4       #i:I
    .restart local v5       #l:I
    .restart local v7       #n:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1393
    .end local v7           #n:I
    :cond_4
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 1394
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_6

    .line 1395
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    aget v7, v9, v4

    .line 1396
    .restart local v7       #n:I
    if-gtz v7, :cond_5

    .line 1397
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BadQueue mShrinkAlbumList["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1394
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1401
    .end local v7           #n:I
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1409
    .local v8, q:Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1410
    .local v6, len:I
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_9

    .line 1412
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v7, v9, v4

    .line 1413
    .restart local v7       #n:I
    if-nez v7, :cond_7

    .line 1414
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1416
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 1417
    and-int/lit8 v1, v7, 0xf

    .line 1418
    .local v1, digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1419
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1421
    .end local v1           #digit:I
    :cond_8
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1425
    .end local v7           #n:I
    :cond_9
    const-string v9, "queue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1426
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1429
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1430
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_c

    .line 1432
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v7, v9, v4

    .line 1433
    .restart local v7       #n:I
    if-nez v7, :cond_a

    .line 1434
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1436
    :cond_a
    :goto_8
    if-eqz v7, :cond_b

    .line 1437
    and-int/lit8 v1, v7, 0xf

    .line 1438
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1439
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1441
    .end local v1           #digit:I
    :cond_b
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1444
    .end local v7           #n:I
    :cond_c
    const-string v9, "queuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1445
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1447
    invoke-direct {p0, v3, v8}, Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V

    .line 1448
    invoke-direct {p0, v3, v8}, Lcom/htc/music/MediaPlaybackService;->saveRecentPlayedPlaylist(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V

    .line 1450
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 1451
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mShrinkAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_f

    .line 1453
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget v7, v9, v4

    .line 1454
    .restart local v7       #n:I
    if-nez v7, :cond_d

    .line 1455
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1457
    :cond_d
    :goto_b
    if-eqz v7, :cond_e

    .line 1458
    and-int/lit8 v1, v7, 0xf

    .line 1459
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1460
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1462
    .end local v1           #digit:I
    :cond_e
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1465
    .end local v7           #n:I
    :cond_f
    const-string v9, "queueshrinkalbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1466
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1468
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 1469
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 1470
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_12

    .line 1471
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v7, v9, v4

    .line 1472
    .restart local v7       #n:I
    if-nez v7, :cond_10

    .line 1473
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1475
    :cond_10
    :goto_e
    if-eqz v7, :cond_11

    .line 1476
    and-int/lit8 v1, v7, 0xf

    .line 1477
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1478
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1480
    .end local v1           #digit:I
    :cond_11
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1483
    .end local v7           #n:I
    :cond_12
    const-string v9, "shufflequeue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1484
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1486
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 1487
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_15

    .line 1488
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v7, v9, v4

    .line 1489
    .restart local v7       #n:I
    if-nez v7, :cond_13

    .line 1490
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1492
    :cond_13
    :goto_11
    if-eqz v7, :cond_14

    .line 1493
    and-int/lit8 v1, v7, 0xf

    .line 1494
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1495
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1497
    .end local v1           #digit:I
    :cond_14
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1500
    .end local v7           #n:I
    :cond_15
    const-string v9, "shufflequeuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1501
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1503
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 1504
    const/4 v4, 0x0

    :goto_12
    if-ge v4, v6, :cond_18

    .line 1505
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget v7, v9, v4

    .line 1506
    .restart local v7       #n:I
    if-nez v7, :cond_16

    .line 1507
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1509
    :cond_16
    :goto_14
    if-eqz v7, :cond_17

    .line 1510
    and-int/lit8 v1, v7, 0xf

    .line 1511
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 1512
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 1514
    .end local v1           #digit:I
    :cond_17
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 1517
    .end local v7           #n:I
    :cond_18
    const-string v9, "shufflequeueshrinkalbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1518
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1522
    :cond_19
    const-string v9, "cardid"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1548
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v6           #len:I
    .end local v8           #q:Ljava/lang/StringBuilder;
    :cond_1a
    const-string v9, "curpos"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1549
    const-string v9, "prealbum"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1550
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1551
    const-string v9, "seekpos"

    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v10}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v10

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1553
    :cond_1b
    const-string v9, "repeatmode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1554
    const-string v9, "shufflemode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1565
    const/4 v0, 0x0

    .line 1567
    .local v0, className:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v9}, Lcom/htc/music/MusicPluginManager;->getCurrentPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 1568
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1c

    .line 1569
    const-string v9, "plugin"

    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    :cond_1c
    if-nez v0, :cond_1d

    .line 1574
    const-string v9, "plugin"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1580
    :cond_1d
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1581
    :catch_0
    move-exception v2

    .line 1582
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Exception in ed.apply: "

    invoke-static {v9, v10, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1573
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-nez v0, :cond_1e

    .line 1574
    const-string v10, "plugin"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1573
    :cond_1e
    throw v9
.end method

.method private saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "ed"
    .parameter "queue"

    .prologue
    .line 7485
    if-nez p2, :cond_0

    .line 7486
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7488
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 7489
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7490
    .local v2, len:I
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveQueue mLocalRecentAlbumId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7491
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 7492
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7493
    .local v3, n:I
    if-nez v3, :cond_2

    .line 7494
    const-string v4, "0;"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7491
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7495
    :cond_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 7499
    :goto_2
    if-eqz v3, :cond_3

    .line 7500
    and-int/lit8 v0, v3, 0xf

    .line 7501
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 7502
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v4, v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7504
    .end local v0           #digit:I
    :cond_3
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7508
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #n:I
    :cond_4
    const-string v4, "localrecentalbumid"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7509
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRecentAlbumList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7510
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7511
    return-void
.end method

.method private saveRecentPlayedPlaylist(Landroid/content/SharedPreferences$Editor;Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "ed"
    .parameter "queue"

    .prologue
    .line 7661
    if-nez p2, :cond_0

    .line 7662
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7664
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 7665
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7666
    .local v2, len:I
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveQueue mRecentPlayTrackId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7667
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 7668
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7669
    .local v3, n:I
    if-nez v3, :cond_2

    .line 7670
    const-string v4, "0;"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7667
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7671
    :cond_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 7675
    :goto_2
    if-eqz v3, :cond_3

    .line 7676
    and-int/lit8 v0, v3, 0xf

    .line 7677
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 7678
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v4, v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7680
    .end local v0           #digit:I
    :cond_3
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7684
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #n:I
    :cond_4
    const-string v4, "recentplayedplaylist"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7685
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRecentPlayedPlaylist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7686
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7687
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v8, 0x0

    .line 4708
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 4710
    if-nez p1, :cond_0

    .line 4711
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 4712
    iput-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 4736
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 4737
    return-void

    .line 4714
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_4

    .line 4716
    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    .line 4721
    :goto_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    sub-long v0, v2, p2

    .line 4722
    .local v0, newpos:J
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 4724
    const-wide/16 v0, 0x0

    .line 4726
    :cond_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    if-gez p1, :cond_3

    .line 4727
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 4728
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 4730
    :cond_3
    if-ltz p1, :cond_5

    .line 4731
    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 4719
    .end local v0           #newpos:J
    :cond_4
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v4

    const-wide/16 v6, 0x28

    mul-long/2addr v4, v6

    add-long p2, v2, v4

    goto :goto_1

    .line 4733
    .restart local v0       #newpos:J
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private scanForward(IJ)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v10, 0x1

    .line 4666
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 4667
    if-nez p1, :cond_0

    .line 4668
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 4669
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 4704
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 4705
    return-void

    .line 4671
    :cond_0
    cmp-long v4, p2, v6

    if-gez v4, :cond_4

    .line 4673
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 4678
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 4679
    .local v2, newpos:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 4685
    .local v0, duration:J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 4687
    move-wide v2, v0

    .line 4689
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v4, :cond_1

    .line 4690
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 4691
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 4694
    :cond_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-gez p1, :cond_3

    .line 4695
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 4696
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 4698
    :cond_3
    if-ltz p1, :cond_5

    .line 4699
    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 4676
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_4
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 4701
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private sendULogMessage(IJ)V
    .locals 3
    .parameter "purpose"
    .parameter "delayTime"

    .prologue
    const/16 v2, 0x11

    .line 7451
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 7452
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7453
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 7454
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7455
    return-void
.end method

.method private setAudioEffect(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "setting"
    .parameter "applyEffect"
    .parameter "saveStatus"

    .prologue
    const/4 v1, 0x0

    .line 7866
    packed-switch p3, :pswitch_data_0

    .line 7878
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7882
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7883
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7885
    :cond_0
    return-void

    .line 7868
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 7872
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7873
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 7866
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCategory(IIIILjava/lang/String;I)V
    .locals 4
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v3, -0x1

    .line 4946
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCategory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4947
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    .line 4948
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Category wrong in setCategory()."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4971
    :cond_1
    :goto_0
    return-void

    .line 4951
    :cond_2
    if-lt p2, v3, :cond_3

    if-lt p3, v3, :cond_3

    const/4 v0, -0x2

    if-lt p4, v0, :cond_3

    if-ge p6, v3, :cond_1

    .line 4952
    :cond_3
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Something wrong in setCategory()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCategory(Lcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 4943
    return-void
.end method

.method private setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter "views"

    .prologue
    .line 6814
    if-eqz p1, :cond_0

    .line 6815
    const v0, 0x7f080071

    const v1, 0x7f020057

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 6831
    :goto_0
    return-void

    .line 6829
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "RemoteViews is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastAudioEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "szSetting"

    .prologue
    .line 7892
    invoke-static {p0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V

    .line 7893
    return-void
.end method

.method private setOrientation(I)V
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 4903
    packed-switch p1, :pswitch_data_0

    .line 4920
    :goto_0
    return-void

    .line 4905
    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    .line 4908
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    .line 4911
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    .line 4914
    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    .line 4917
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOrientation:I

    goto :goto_0

    .line 4903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setShuffleAlbumList([II)V
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 2959
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v0

    .line 2960
    .local v0, shuffleAlbumList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 2961
    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7
    .parameter "len"
    .parameter "nFirst"

    .prologue
    .line 4185
    if-nez p1, :cond_0

    .line 4186
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4216
    :goto_0
    return-void

    .line 4190
    :cond_0
    if-lt p2, p1, :cond_1

    .line 4191
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq(), nFirst should be less than len, len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    const/4 p2, 0x0

    .line 4195
    :cond_1
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4196
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 4197
    .local v2, rnd:Ljava/util/Random;
    move v1, p2

    .line 4199
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 4200
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    .line 4199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4202
    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_3

    .line 4204
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    .line 4205
    .local v3, temp:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 4206
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    .line 4207
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    .line 4202
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4214
    .end local v3           #temp:I
    :cond_3
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    goto :goto_0
.end method

.method private showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "albumArt"
    .parameter "key"

    .prologue
    const/4 v2, 0x7

    .line 4895
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4896
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4897
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4898
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4899
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4900
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 4857
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 4858
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 4859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 4862
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 4863
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4864
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 4867
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 4868
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 4869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 4872
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 4873
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4874
    return-void
.end method

.method private showToastInUiThread(II)V
    .locals 4
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 4886
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4887
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4888
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4889
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4890
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4891
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4892
    return-void
.end method

.method private shrinkAlbumList([II)V
    .locals 5
    .parameter "list"
    .parameter "len"

    .prologue
    .line 2829
    const/4 v2, -0x1

    .line 2830
    .local v2, preAlbum:I
    const/4 v1, 0x0

    .line 2831
    .local v1, j:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 2832
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 2833
    aget v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 2834
    aget v2, p1, v0

    .line 2835
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    .line 2836
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    aget v4, p1, v0

    aput v4, v3, v1

    .line 2837
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 2838
    add-int/lit8 v1, v1, 0x1

    .line 2832
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2841
    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2842
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 2843
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 2848
    :goto_1
    return-void

    .line 2845
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 2846
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_1
.end method

.method private shrinkShuffleAlbumList([II)V
    .locals 5
    .parameter "list"
    .parameter "length"

    .prologue
    .line 2964
    const/4 v2, -0x1

    .line 2965
    .local v2, preAlbum:I
    const/4 v1, 0x0

    .line 2966
    .local v1, j:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 2967
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 2968
    aget v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 2969
    aget v2, p1, v0

    .line 2970
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureShuffleShrinkAlbumListCapacity(I)V

    .line 2971
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    aget v4, p1, v0

    aput v4, v3, v1

    .line 2972
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 2973
    add-int/lit8 v1, v1, 0x1

    .line 2967
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2976
    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2977
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 2978
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 2983
    :goto_1
    return-void

    .line 2980
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 2981
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_1
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 448
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startFFRWRepeat(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 4647
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 4649
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 4650
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4651
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x104

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4652
    return-void
.end method

.method private stop(Z)V
    .locals 2
    .parameter "remove_status_icon"

    .prologue
    const/4 v1, 0x1

    .line 3452
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3455
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3461
    :goto_0
    return-void

    .line 3457
    :cond_0
    monitor-enter p0

    .line 3458
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3459
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopActivePlugin()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 5006
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-nez v0, :cond_1

    .line 5017
    :cond_0
    :goto_0
    return-void

    .line 5008
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5009
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 5010
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    goto :goto_0

    .line 5012
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5013
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5014
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopFFRWRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4655
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 4656
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4657
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 4658
    return-void
.end method

.method private updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    .locals 9
    .parameter "albumArt"
    .parameter "key"

    .prologue
    .line 6935
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAlbumArtInNotification, albumArt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6937
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_0

    .line 6938
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "updateAlbumArtInNotification, not playing. return."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7001
    :goto_0
    return-void

    .line 6942
    :cond_0
    if-nez p1, :cond_1

    .line 6943
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "updateAlbumArtInNotification, albumArt is null, return."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6947
    :cond_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 6948
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eq v5, p2, :cond_3

    .line 6949
    :cond_2
    const-string v5, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, (mNotification == null || mNotification.hashCode() != key), return."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6950
    monitor-exit v6

    goto :goto_0

    .line 7000
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 6953
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_4

    .line 6954
    const-string v5, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification, mNotification.extras: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6955
    monitor-exit v6

    goto :goto_0

    .line 6958
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6960
    .local v3, resource:Landroid/content/res/Resources;
    const/16 v1, 0x48

    .line 6962
    .local v1, maxSideLen:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6964
    .local v4, views:Landroid/widget/RemoteViews;
    if-nez v4, :cond_5

    .line 6965
    const-string v5, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, (views == null) return."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6966
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6970
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v5, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v5, v1, :cond_7

    .line 6972
    :cond_6
    const/4 v5, 0x0

    invoke-static {p1, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6973
    .local v2, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6974
    const/4 p1, 0x0

    .line 6976
    const v5, 0x7f080071

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 6995
    .end local v2           #resizeBitmap:Landroid/graphics/Bitmap;
    :goto_1
    const/4 v5, 0x1

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v7}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7000
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 6986
    :cond_7
    const v5, 0x7f080071

    :try_start_4
    invoke-virtual {v4, v5, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 6997
    :catch_0
    move-exception v0

    .line 6998
    .local v0, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification. Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private updateNotification()V
    .locals 20

    .prologue
    .line 6839
    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f03005e

    invoke-direct {v13, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 6840
    .local v13, views:Landroid/widget/RemoteViews;
    const v14, 0x7f0800e7

    const-string v15, "common_icon_glance_pause_on"

    const v16, 0x2080915

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 6843
    const/4 v5, 0x0

    .local v5, artist:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, album:Ljava/lang/String;
    const/4 v12, 0x0

    .line 6845
    .local v12, track:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    .line 6847
    .local v6, audioID:I
    if-gez v6, :cond_7

    .line 6849
    const v14, 0x7f0800e8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6850
    const v14, 0x7f0800e9

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6851
    const v14, 0x7f080071

    const v15, 0x7f020057

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 6856
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 6857
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v12

    .line 6858
    const v14, 0x7f0800e8

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6859
    if-eqz v5, :cond_0

    const-string v14, "<unknown>"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 6860
    :cond_0
    const v14, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6862
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 6863
    if-eqz v3, :cond_2

    const-string v14, "<unknown>"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 6864
    :cond_2
    const v14, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6867
    :cond_3
    const v14, 0x7f0800e9

    const v15, 0x7f070215

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6869
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v4

    .line 6871
    .local v4, albumID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15

    .line 6872
    :try_start_0
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 6874
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v13, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6875
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget v0, v14, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    const/high16 v17, 0x4

    or-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v14, Landroid/app/Notification;->flags:I

    .line 6876
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const v16, 0x7f02006b

    move/from16 v0, v16

    iput v0, v14, Landroid/app/Notification;->icon:I

    .line 6877
    new-instance v11, Landroid/content/Intent;

    const-string v14, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6879
    .local v11, statusintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    const/16 v16, 0x0

    const/high16 v17, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 6881
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 6882
    .local v10, pauseIntent:Landroid/content/Intent;
    const-string v14, "command"

    const-string v16, "pause"

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6883
    const-string v14, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6885
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v16, 0x7f0800e7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 6889
    if-ltz v6, :cond_5

    .line 6891
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v14, :cond_8

    .line 6892
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 6893
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 6894
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 6895
    .local v9, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v14

    iput v14, v9, Landroid/os/Message;->arg1:I

    .line 6896
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v14, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6902
    .end local v9           #msg:Landroid/os/Message;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_track"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6903
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_artist"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6904
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_album"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v16, "music_albumid"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6908
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 6909
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6914
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 6915
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 6916
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v7

    .line 6917
    .local v7, bBeatsOn:Z
    if-eqz v7, :cond_9

    .line 6918
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v8, v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    .line 6932
    .end local v7           #bBeatsOn:Z
    :cond_6
    :goto_2
    return-void

    .line 6853
    .end local v4           #albumID:I
    .end local v8           #context:Landroid/content/Context;
    .end local v10           #pauseIntent:Landroid/content/Intent;
    .end local v11           #statusintent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 6899
    .restart local v4       #albumID:I
    .restart local v10       #pauseIntent:Landroid/content/Intent;
    .restart local v11       #statusintent:Landroid/content/Intent;
    :cond_8
    :try_start_1
    const-string v14, "[MediaPlaybackService]"

    const-string v16, "updateNotification, mNonUiHandler is null."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6909
    .end local v10           #pauseIntent:Landroid/content/Intent;
    .end local v11           #statusintent:Landroid/content/Intent;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 6921
    .restart local v7       #bBeatsOn:Z
    .restart local v8       #context:Landroid/content/Context;
    .restart local v10       #pauseIntent:Landroid/content/Intent;
    .restart local v11       #statusintent:Landroid/content/Intent;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 6922
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v8, v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 6924
    :cond_a
    invoke-static {v8}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 6925
    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    goto :goto_2

    .line 6928
    :cond_b
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_2
.end method

.method private waitForAnimation()V
    .locals 3

    .prologue
    .line 3781
    monitor-enter p0

    .line 3782
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 3783
    monitor-exit p0

    .line 3795
    :goto_0
    return-void

    .line 3784
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3785
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForAnimation mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3786
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 3787
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3788
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 3790
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_2

    .line 3791
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3792
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3794
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 4
    .parameter "newStatus"

    .prologue
    const/4 v3, 0x1

    .line 7177
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7178
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7180
    const-string v0, "SRS"

    .line 7181
    .local v0, style:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 7182
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7183
    const-string v0, "Original"

    .line 7187
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7188
    const-string v0, "Original"

    .line 7189
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7190
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7191
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v3, v3}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    .line 7203
    .end local v0           #style:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 7194
    .restart local v0       #style:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7195
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 4
    .parameter "newStatus"

    .prologue
    .line 7231
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeatsAudioStatusChanged, newStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7233
    if-eqz p1, :cond_1

    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    .line 7235
    .local v0, selectedStyleIndex:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyleByIndex(ILandroid/content/Context;)V

    .line 7236
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7237
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7239
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    .line 7240
    return-void

    .line 7233
    .end local v0           #selectedStyleIndex:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 4
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 7279
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnHdmiPlugReceiver bIsPluged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7280
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7281
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, Wired/BT headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7303
    :cond_0
    :goto_0
    return-void

    .line 7286
    :cond_1
    if-lez p2, :cond_3

    .line 7288
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7289
    .local v0, currentStyle:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "Original"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7290
    const-string v1, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7294
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 7298
    .end local v0           #currentStyle:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7299
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyleByIndex(ILandroid/content/Context;)V

    .line 7300
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SRS"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public activityGoSleep()V
    .locals 1

    .prologue
    .line 4286
    monitor-enter p0

    .line 4287
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 4288
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_0

    .line 4289
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->forcePlay()V

    .line 4291
    :cond_0
    monitor-exit p0

    .line 4292
    return-void

    .line 4291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityWakeup()V
    .locals 1

    .prologue
    .line 4295
    monitor-enter p0

    .line 4296
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 4297
    monitor-exit p0

    .line 4298
    return-void

    .line 4297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAlbumArtRequests()V
    .locals 1

    .prologue
    .line 5103
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5104
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearAlbumArtRequests()V

    .line 5106
    :cond_0
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1

    .prologue
    .line 5173
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5174
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearNowplayingQueueRequests()V

    .line 5178
    :cond_0
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 5
    .parameter "storagePath"

    .prologue
    .line 2389
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 2413
    :cond_0
    :goto_0
    return-void

    .line 2392
    :cond_1
    const/4 v1, 0x0

    .line 2394
    .local v1, path:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2399
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2401
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2402
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 2407
    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 2395
    :catch_0
    move-exception v0

    .line 2396
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2410
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 4607
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4608
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .line 4610
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public endAnimation()V
    .locals 2

    .prologue
    .line 4158
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "endAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4159
    monitor-enter p0

    .line 4160
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 4161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 4165
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    .line 4169
    :goto_0
    monitor-exit p0

    .line 4171
    return-void

    .line 4167
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Bad !! endAnimation is not pair"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueue([II)V
    .locals 2
    .parameter "list"
    .parameter "action"

    .prologue
    .line 2860
    monitor-enter p0

    .line 2861
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_3

    .line 2862
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 2863
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2877
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_2

    .line 2878
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2879
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 2880
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 2881
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 2882
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2884
    :cond_2
    monitor-exit p0

    .line 2885
    :goto_0
    return-void

    .line 2866
    :cond_3
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 2867
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2868
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2869
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2870
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 2871
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_4

    .line 2872
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 2873
    :cond_4
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2874
    monitor-exit p0

    goto :goto_0

    .line 2884
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 4484
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4485
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v10

    .line 4486
    .local v10, position:I
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 4487
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v10}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 4538
    .end local v10           #position:I
    :cond_0
    :goto_0
    return-object v0

    .line 4489
    .restart local v10       #position:I
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, v10}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4496
    .end local v10           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v9

    .line 4497
    .local v9, id:I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_3

    move-object v0, v11

    .line 4498
    goto :goto_0

    .line 4501
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    .line 4502
    .local v6, albumName:Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v0, "<unknown>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v11

    .line 4503
    goto :goto_0

    .line 4508
    :cond_5
    const/4 v8, 0x0

    .line 4510
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4512
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4515
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    .line 4516
    :cond_6
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4541
    if-eqz v8, :cond_7

    .line 4542
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4543
    const/4 v8, 0x0

    :cond_7
    move-object v0, v11

    .line 4517
    goto :goto_0

    .line 4520
    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4521
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 4522
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_b

    .line 4523
    :cond_9
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album art with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4541
    if-eqz v8, :cond_a

    .line 4542
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4543
    const/4 v8, 0x0

    :cond_a
    move-object v0, v11

    .line 4524
    goto/16 :goto_0

    .line 4528
    :cond_b
    :try_start_2
    const-string v0, "album_art"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4529
    .local v7, artColumnIndex:I
    if-gez v7, :cond_d

    .line 4530
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot find art column index"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4541
    if-eqz v8, :cond_c

    .line 4542
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4543
    const/4 v8, 0x0

    :cond_c
    move-object v0, v11

    .line 4531
    goto/16 :goto_0

    .line 4534
    :cond_d
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4535
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 4541
    if-eqz v8, :cond_0

    .line 4542
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4543
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4537
    :cond_e
    :try_start_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cannot move to first position"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4541
    if-eqz v8, :cond_f

    .line 4542
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4543
    const/4 v8, 0x0

    :cond_f
    move-object v0, v11

    .line 4538
    goto/16 :goto_0

    .line 4541
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #artColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_10

    .line 4542
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4543
    const/4 v8, 0x0

    .line 4541
    :cond_10
    throw v0
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 5147
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5148
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "shufflePosition"

    .prologue
    .line 5156
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5157
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 4436
    monitor-enter p0

    .line 4437
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4438
    monitor-exit p0

    .line 4443
    :goto_0
    return v0

    .line 4440
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 4441
    monitor-exit p0

    goto :goto_0

    .line 4446
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4443
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4421
    monitor-enter p0

    .line 4422
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4423
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 4429
    :goto_0
    return-object v0

    .line 4425
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 4426
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getAlbumName: mCursor == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4427
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4432
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4429
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueue()[I
    .locals 4

    .prologue
    .line 4257
    monitor-enter p0

    .line 4259
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4260
    const/4 v3, 0x1

    new-array v2, v3, [I

    monitor-exit p0

    .line 4267
    :goto_0
    return-object v2

    .line 4262
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 4263
    .local v1, len:I
    new-array v2, v1, [I

    .line 4264
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 4265
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 4264
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4267
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 4268
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAlbumQueuePosition()I
    .locals 2

    .prologue
    .line 4273
    monitor-enter p0

    .line 4275
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4276
    const/4 v0, 0x0

    monitor-exit p0

    .line 4281
    :goto_0
    return v0

    .line 4278
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v0, :cond_1

    .line 4279
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 4282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4281
    :cond_1
    const/4 v0, -0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueueSize()I
    .locals 1

    .prologue
    .line 4312
    monitor-enter p0

    .line 4314
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4315
    const/4 v0, 0x1

    monitor-exit p0

    .line 4317
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    monitor-exit p0

    goto :goto_0

    .line 4318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAnimationStatus()Z
    .locals 1

    .prologue
    .line 4174
    monitor-enter p0

    .line 4175
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 4407
    monitor-enter p0

    .line 4408
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4409
    monitor-exit p0

    .line 4414
    :goto_0
    return v0

    .line 4411
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 4412
    monitor-exit p0

    goto :goto_0

    .line 4417
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4414
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4392
    monitor-enter p0

    .line 4393
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4394
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 4400
    :goto_0
    return-object v0

    .line 4396
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 4397
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getArtistName: mCursor == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4403
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4400
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 2

    .prologue
    .line 4338
    monitor-enter p0

    .line 4339
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_2

    .line 4340
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    .line 4343
    :goto_0
    return v0

    .line 4342
    :cond_2
    monitor-exit p0

    .line 4343
    const/4 v0, -0x1

    goto :goto_0

    .line 4342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 4350
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4351
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAudioSessionId()I

    move-result v0

    .line 4353
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 5088
    monitor-enter p0

    .line 5089
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5090
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getBufferingPercent()I

    move-result v0

    monitor-exit p0

    .line 5093
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    monitor-exit p0

    goto :goto_0

    .line 5095
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5020
    monitor-enter p0

    .line 5021
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5022
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getComposer()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5025
    :goto_0
    return-object v0

    .line 5024
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5028
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5025
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "composer"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDrmConstraint(Landroid/net/Uri;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 2
    .parameter "uri"

    .prologue
    .line 4802
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "drmuri"

    .prologue
    .line 4740
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 4741
    .local v12, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    .line 4747
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 4748
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 4750
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4751
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4752
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 4753
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4754
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4756
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4758
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4761
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_header_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_trailor_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sd_content_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 4765
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 4766
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4767
    const/4 v11, 0x0

    .line 4771
    :cond_1
    return-object v10

    .line 4765
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 4766
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4767
    const/4 v11, 0x0

    .line 4765
    :cond_2
    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 5099
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5032
    monitor-enter p0

    .line 5033
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5034
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5037
    :goto_0
    return-object v0

    .line 5036
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5040
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5037
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 9

    .prologue
    .line 5044
    monitor-enter p0

    .line 5045
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5046
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getGenre()Ljava/lang/String;

    move-result-object v8

    monitor-exit p0

    .line 5071
    :goto_0
    return-object v8

    .line 5048
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    .line 5049
    .local v6, audioId:I
    const/4 v8, 0x0

    .line 5050
    .local v8, genre:Ljava/lang/String;
    if-ltz v6, :cond_2

    .line 5051
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 5055
    .local v2, CursorCols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5058
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5061
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 5062
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5063
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5066
    :cond_1
    if-eqz v7, :cond_2

    .line 5067
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5071
    .end local v2           #CursorCols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 5073
    .end local v6           #audioId:I
    .end local v8           #genre:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5077
    monitor-enter p0

    .line 5078
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5079
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getLocation()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5082
    :goto_0
    return-object v0

    .line 5081
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5084
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5082
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 4147
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getNowplayingQueue(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 5165
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5166
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getNowplayingQueue(I)V

    .line 5170
    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4327
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4328
    const-string v0, "plugin_file_path"

    .line 4330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 4
    .parameter "shufflePosition"

    .prologue
    const/4 v2, -0x1

    .line 5109
    monitor-enter p0

    .line 5110
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5111
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getPositionByShufflePosition(I)I

    move-result v1

    monitor-exit p0

    .line 5122
    :goto_0
    return v1

    .line 5113
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5115
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5117
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v0, v3, p1

    .line 5119
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5120
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 5124
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5119
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5122
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getQueue()[I
    .locals 4

    .prologue
    .line 3153
    monitor-enter p0

    .line 3154
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3155
    .local v1, len:I
    new-array v2, v1, [I

    .line 3156
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3157
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3159
    :cond_0
    monitor-exit p0

    return-object v2

    .line 3160
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 4362
    monitor-enter p0

    .line 4364
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4365
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    .line 4368
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    goto :goto_0

    .line 4369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 4301
    monitor-enter p0

    .line 4303
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4304
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    .line 4307
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    goto :goto_0

    .line 4308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 4137
    monitor-enter p0

    .line 4138
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4139
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getRepeatMode()I

    move-result v0

    monitor-exit p0

    .line 4141
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    monitor-exit p0

    goto :goto_0

    .line 4143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 4117
    monitor-enter p0

    .line 4118
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4119
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getShuffleMode()I

    move-result v0

    monitor-exit p0

    .line 4121
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    monitor-exit p0

    goto :goto_0

    .line 4123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 5128
    monitor-enter p0

    .line 5129
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5130
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getShufflePositionByPosition(I)I

    move-result v1

    monitor-exit p0

    .line 5141
    :goto_0
    return v1

    .line 5132
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 5134
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 5136
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v0, v3, p1

    .line 5138
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 5139
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 5143
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5138
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5141
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getTrackDetails(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 5181
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5182
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getTrackDetails(I)V

    .line 5186
    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4450
    monitor-enter p0

    .line 4451
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4452
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getTrackName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 4458
    :goto_0
    return-object v0

    .line 4454
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 4455
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getTrackName: mCursor == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4456
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4461
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4458
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 5
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 7244
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headSetStatusChanged, newStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBeatsHeadset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7246
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7275
    :cond_0
    :goto_0
    return-void

    .line 7255
    :cond_1
    if-nez p1, :cond_0

    .line 7257
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v1

    .line 7259
    .local v1, selectSoundStyleIndes:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7260
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v1, v2, :cond_0

    .line 7261
    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7262
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 7266
    :cond_2
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v2, :cond_0

    .line 7267
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v0

    .line 7269
    .local v0, effect:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 7270
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3496
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3497
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPlaying()Z

    move-result v0

    .line 3499
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 3

    .prologue
    .line 3776
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemReady= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 5
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3079
    monitor-enter p0

    .line 3080
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v2, :cond_0

    .line 3081
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v2, -0x1

    .line 3083
    :cond_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_1

    .line 3084
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    .line 3086
    :cond_1
    if-ge p1, p2, :cond_5

    .line 3087
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3088
    .local v1, tmp:I
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 3089
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3091
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3092
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_4

    .line 3093
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3109
    .end local v0           #i:I
    .end local v1           #tmp:I
    :cond_3
    :goto_1
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3110
    monitor-exit p0

    .line 3111
    return-void

    .line 3094
    .restart local v0       #i:I
    .restart local v1       #tmp:I
    :cond_4
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    .line 3095
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3110
    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3097
    :cond_5
    if-ge p2, p1, :cond_3

    .line 3098
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3099
    .restart local v1       #tmp:I
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 3100
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3099
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3102
    :cond_6
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3103
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_7

    .line 3104
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3105
    :cond_7
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p2, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p1, :cond_3

    .line 3106
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 3550
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 3551
    return-void
.end method

.method public next(ZZ)V
    .locals 2
    .parameter "force"
    .parameter "playAnim"

    .prologue
    .line 3554
    monitor-enter p0

    .line 3555
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3558
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3559
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3563
    :goto_0
    monitor-exit p0

    .line 3564
    return-void

    .line 3561
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V

    goto :goto_0

    .line 3563
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nextAlbum(Z)V
    .locals 3
    .parameter "force"

    .prologue
    const/4 v2, 0x1

    .line 3667
    monitor-enter p0

    .line 3668
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_0

    .line 3669
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "==========skip one next"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3670
    monitor-exit p0

    .line 3773
    :goto_0
    return-void

    .line 3673
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_1

    .line 3674
    const-string v0, "com.htc.music.rotatequickly"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3678
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3679
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 3680
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 3736
    :cond_2
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_6

    .line 3738
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 3740
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    .line 3741
    const-string v0, "com.htc.music.playbackcomplete"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3742
    monitor-exit p0

    goto :goto_0

    .line 3772
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3743
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    if-eqz p1, :cond_5

    .line 3744
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3750
    :cond_5
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3751
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_9

    .line 3752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 3754
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eq v0, v2, :cond_8

    .line 3755
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-eqz v0, :cond_7

    .line 3756
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 3760
    :goto_2
    const-string v0, "com.htc.music.rotateright"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3764
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 3772
    :goto_4
    monitor-exit p0

    goto :goto_0

    .line 3747
    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->getNextAlbumPos([II)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3758
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    goto :goto_2

    .line 3762
    :cond_8
    const-string v0, "com.htc.music.rotatecircle_next"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3

    .line 3767
    :cond_9
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3768
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_a

    .line 3769
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3770
    :cond_a
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2181
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2183
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2185
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-class v1, Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onBind IHtcMediaPlaybackService"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 2195
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 7901
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7902
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7904
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7905
    iget-object v0, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    .line 7907
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mCurrSkin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7908
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    .line 7910
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1152
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1154
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 1155
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1158
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 1159
    .local v6, status:Landroid/app/Notification;
    invoke-virtual {p0, v11, v6}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1160
    const-string v7, "Music"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1161
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 1162
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "plugin"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1164
    .local v2, lastPluginClass:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1165
    if-eqz v2, :cond_0

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1166
    :cond_0
    new-instance v7, Lcom/htc/music/MusicPluginManager;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 1171
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v7, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 1173
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "MediaPlaybackServiceWorker"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1174
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1175
    new-instance v7, Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1177
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 1180
    new-instance v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1181
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1188
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1191
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v7, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1192
    const-string v7, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1193
    const-string v7, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1194
    const-string v7, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1195
    const-string v7, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1196
    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1197
    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1198
    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1199
    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1202
    const-string v7, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1203
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1207
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1215
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1216
    .local v5, shutdownReceiver:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    const-string v7, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1218
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1221
    new-instance v7, Lcom/htc/music/MediaPlaybackService$DockEventListener;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackService$DockEventListener;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1222
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1223
    .local v1, dockEventReceiver:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1228
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1229
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v11, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1230
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1234
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1235
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1238
    const-wide/16 v7, 0x2710

    invoke-direct {p0, v11, v7, v8}, Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V

    .line 1241
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 1242
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1244
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1245
    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackService;->updateBeatsEffectSetting(Z)V

    .line 1248
    :cond_2
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onCreate finished"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    return-void

    .line 1168
    .end local v0           #commandFilter:Landroid/content/IntentFilter;
    .end local v1           #dockEventReceiver:Landroid/content/IntentFilter;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #pm:Landroid/os/PowerManager;
    .end local v5           #shutdownReceiver:Landroid/content/IntentFilter;
    :cond_3
    new-instance v7, Lcom/htc/music/MusicPluginManager;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v2, v8}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1254
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy Begin]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1263
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1265
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1266
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1268
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1270
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1275
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1278
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1279
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1280
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1281
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1282
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1285
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1286
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1288
    :cond_4
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Landroid/app/Notification;

    .line 1289
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_5

    .line 1290
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 1293
    :cond_5
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 1294
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1295
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 1298
    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 1299
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1300
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1303
    :cond_7
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    .line 1304
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1305
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1309
    :cond_8
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    .line 1310
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 1311
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 1314
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 1315
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1317
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1319
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1320
    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 1323
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_9

    .line 1324
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    .line 1325
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopHandlerThread()V

    .line 1329
    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1330
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy End]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    return-void
.end method

.method public onPluginSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 6729
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6730
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 6751
    :cond_0
    :goto_0
    return-void

    .line 6734
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6735
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 6738
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0

    .line 6741
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 6742
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 6743
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 6744
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 6746
    :cond_4
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 6747
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2201
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2202
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2204
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2205
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onRebind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2210
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iput p3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 2212
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2214
    if-nez p1, :cond_0

    .line 2215
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2216
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand intent NULL"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    const/4 v7, 0x1

    .line 2313
    :goto_0
    return v7

    .line 2220
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2221
    .local v0, action:Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2222
    .local v2, cmd:Ljava/lang/String;
    const-string v7, "forcePlay"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2223
    .local v3, forcePlay:Z
    const-string v7, "classname"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2224
    .local v1, className:Ljava/lang/String;
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 2225
    .local v6, tm:Landroid/telephony/TelephonyManager;
    if-nez v6, :cond_1

    .line 2226
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2227
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand TelephonyManager NULL"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const/4 v7, 0x1

    goto :goto_0

    .line 2230
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 2231
    .local v4, isPhoneIdle:Z
    :goto_1
    if-nez v4, :cond_3

    .line 2232
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2233
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand call state is not idle"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    const/4 v7, 0x1

    goto :goto_0

    .line 2230
    .end local v4           #isPhoneIdle:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 2237
    .restart local v4       #isPhoneIdle:Z
    :cond_3
    const-string v7, "next"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2238
    :cond_4
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDNEXT"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    if-eqz v3, :cond_5

    .line 2240
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2242
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 2310
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2311
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 2312
    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2313
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2243
    .end local v5           #msg:Landroid/os/Message;
    :cond_7
    const-string v7, "previous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2244
    :cond_8
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDPREVIOUS"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    if-eqz v3, :cond_9

    .line 2246
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2248
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    goto :goto_2

    .line 2249
    :cond_a
    const-string v7, "togglepause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2250
    :cond_b
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDTOGGLEPAUSE"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    .line 2256
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2257
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto :goto_2

    .line 2259
    :cond_c
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v7, :cond_6

    .line 2260
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_d

    .line 2261
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2262
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2264
    :cond_d
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2265
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2268
    :cond_e
    const-string v7, "pause"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2269
    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_2

    .line 2270
    :cond_10
    const-string v7, "play"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2271
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_2

    .line 2272
    :cond_11
    const-string v7, "stop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2273
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2274
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 2275
    const-string v7, "com.htc.music.playstatechanged"

    invoke-direct {p0, v7}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2276
    :cond_12
    const-string v7, "ffstart"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2277
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDFFSTART"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2279
    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2280
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2281
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x104

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2282
    .end local v5           #msg:Landroid/os/Message;
    :cond_13
    const-string v7, "rwstart"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2283
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDRWSTART"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2285
    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2286
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2287
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x104

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2288
    .end local v5           #msg:Landroid/os/Message;
    :cond_14
    const-string v7, "ffstop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "rwstop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2289
    :cond_15
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDFF/RWSTOP"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2292
    iget-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-eqz v7, :cond_6

    .line 2293
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_2

    .line 2296
    :cond_16
    const-string v7, "resume"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2297
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDRESUME"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    iget-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v7, :cond_6

    .line 2301
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    .line 2302
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2304
    :cond_17
    const-string v7, "bindplugin"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2305
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "onStartCommand CMDBINDPLUGIN"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 2318
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2321
    .local v0, action:Ljava/lang/String;
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_1

    .line 2322
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    :cond_0
    :goto_0
    return v5

    .line 2326
    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2327
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayback is onUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ref count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_0

    .line 2334
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    .line 2336
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v2, :cond_3

    .line 2339
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind isPlaying() || mResumeAfterCall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2346
    :cond_3
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2347
    :cond_4
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2348
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2349
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind mPlayListLen > 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2354
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 2355
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stopSelf(I)V

    .line 2357
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 12
    .parameter "path"
    .parameter "oneshot"

    .prologue
    const/4 v11, 0x1

    .line 3254
    monitor-enter p0

    .line 3255
    if-nez p1, :cond_0

    .line 3256
    :try_start_0
    monitor-exit p0

    .line 3428
    :goto_0
    return-void

    .line 3259
    :cond_0
    const/4 v9, 0x0

    .line 3260
    .local v9, drmFileToPlay:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 3261
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 3262
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_1

    .line 3263
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v2, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3265
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 3266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3267
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3268
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    .line 3272
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    if-nez v0, :cond_2

    .line 3273
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 3276
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v2, 0x0

    const/4 v5, -0x1

    aput v5, v0, v2

    .line 3277
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    const/4 v2, 0x0

    const/4 v5, -0x1

    aput v5, v0, v2

    .line 3278
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3279
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 3280
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 3281
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    .line 3285
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    .line 3286
    const/4 v7, 0x0

    .line 3291
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "content://media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3292
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3293
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 3294
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3315
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3316
    if-eqz v7, :cond_4

    .line 3317
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 3318
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3319
    const/4 v7, 0x0

    .line 3341
    :cond_4
    :goto_2
    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3346
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 3347
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3348
    .local v8, data:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3349
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 3350
    move-object p1, v8

    .line 3361
    .end local v8           #data:Ljava/lang/String;
    :cond_6
    :goto_4
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3362
    if-eqz v9, :cond_14

    .line 3363
    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drmFileToPlay= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_13

    .line 3368
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 3383
    :goto_5
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3384
    const/16 v10, 0xa

    .line 3385
    .local v10, min:I
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_7

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v11, :cond_7

    .line 3386
    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3389
    :cond_7
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lt v0, v10, :cond_16

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v11, :cond_16

    .line 3390
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_8

    .line 3391
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v2, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3399
    :cond_8
    :goto_6
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-ge v0, v10, :cond_9

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v11, :cond_9

    .line 3401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 3404
    :cond_9
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-le v0, v10, :cond_a

    .line 3405
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 3408
    :cond_a
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v0, :cond_c

    .line 3413
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v0, :cond_c

    .line 3414
    if-nez v9, :cond_b

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->hasValidRights()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3416
    :cond_b
    const v0, 0x7f07008b

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    .line 3427
    .end local v10           #min:I
    :cond_c
    :goto_7
    monitor-exit p0

    goto/16 :goto_0

    .end local v9           #drmFileToPlay:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3295
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #drmFileToPlay:Ljava/lang/String;
    :cond_d
    :try_start_3
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3296
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3297
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3300
    .restart local v3       #where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3304
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_e
    invoke-virtual {p0, p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3306
    .restart local v1       #uri:Landroid/net/Uri;
    :goto_8
    const-string v3, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3309
    .restart local v3       #where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3304
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_f
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_8

    .line 3321
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_10
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 3322
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3323
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3324
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v0, v2

    .line 3325
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3326
    const/4 v6, -0x1

    .line 3327
    .local v6, albumID:I
    if-eqz v7, :cond_11

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 3328
    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3331
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3332
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3333
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v2, 0x0

    aput v6, v0, v2

    .line 3334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    .line 3335
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 3336
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    const/4 v2, 0x0

    aput v6, v0, v2

    .line 3337
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    .line 3338
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 3342
    .end local v6           #albumID:I
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 3353
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_12
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3354
    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open, wasDrmContent, path: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", reset playlist length"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 3356
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3357
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_4

    .line 3372
    :cond_13
    const-string v0, "[MediaPlaybackService]"

    const-string v2, "drm setDataSource fail, because mPlayer = null."

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3375
    :cond_14
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_15

    .line 3376
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3378
    :cond_15
    const-string v0, "[MediaPlaybackService]"

    const-string v2, "setDataSource fail, because mPlayer = null."

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3394
    .restart local v10       #min:I
    :cond_16
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v0, :cond_8

    .line 3395
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v2, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto/16 :goto_6

    .line 3418
    :cond_17
    const v0, 0x7f07005d

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    goto/16 :goto_7

    .line 3423
    .end local v10           #min:I
    :cond_18
    if-nez v9, :cond_c

    .line 3424
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7
.end method

.method public open([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 2895
    monitor-enter p0

    .line 2896
    :try_start_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2897
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 2900
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    .line 2901
    .local v3, oldId:I
    array-length v1, p1

    .line 2903
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 2904
    .local v2, newlist:Z
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v4, v1, :cond_1

    .line 2906
    const/4 v2, 0x0

    .line 2907
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2908
    aget v4, p1, v0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_5

    .line 2909
    const/4 v2, 0x1

    .line 2915
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_3

    .line 2916
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v6, :cond_6

    .line 2917
    if-gez p2, :cond_2

    .line 2918
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v4, v1}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result p2

    .line 2922
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 2923
    const/4 p2, 0x0

    .line 2925
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 2926
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->shrinkShuffleAlbumList([II)V

    .line 2928
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2929
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 2930
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 2937
    :goto_1
    const/4 v4, -0x1

    invoke-direct {p0, p1, v4}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 2938
    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2941
    :cond_3
    if-ltz p2, :cond_7

    .line 2942
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2947
    :goto_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 2948
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 2950
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 2951
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 2952
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 2953
    const-string v4, "com.htc.music.metachanged"

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2955
    :cond_4
    monitor-exit p0

    .line 2956
    return-void

    .line 2907
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2932
    .end local v0           #i:I
    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2933
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 2934
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto :goto_1

    .line 2955
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2944
    .restart local v1       #listlength:I
    .restart local v2       #newlist:Z
    .restart local v3       #oldId:I
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public openAsync(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 3222
    monitor-enter p0

    .line 3223
    if-nez p1, :cond_0

    .line 3224
    :try_start_0
    monitor-exit p0

    .line 3244
    :goto_0
    return-void

    .line 3227
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3228
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3229
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->ensureShrinkAlbumListCapacity(I)V

    .line 3233
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 3234
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3235
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 3237
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3238
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 3239
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 3242
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 3243
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 3475
    monitor-enter p0

    .line 3476
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    .line 3477
    .local v0, isPluginMode:Z
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, isPluginMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    if-eqz v0, :cond_0

    .line 3480
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3481
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3487
    :goto_0
    monitor-exit p0

    .line 3488
    return-void

    .line 3483
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 3484
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->printATSPauseMusictoStopLog()V

    goto :goto_0

    .line 3487
    .end local v0           #isPluginMode:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3436
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 3438
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3441
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3443
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3444
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3445
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    .line 3449
    :goto_0
    return-void

    .line 3447
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    goto :goto_0
.end method

.method public playAlbum(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 4550
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-lt p1, v3, :cond_1

    .line 4551
    :cond_0
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Something bad happened"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    const/4 v1, -0x1

    .line 4598
    :goto_0
    return v1

    .line 4554
    :cond_1
    monitor-enter p0

    .line 4555
    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-ne v3, v4, :cond_5

    .line 4556
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 4557
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4559
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4560
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    .line 4562
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4564
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4565
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    .line 4567
    :cond_3
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v3, :cond_4

    .line 4568
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4569
    :cond_4
    const-string v3, "com.htc.music.metachanged"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4570
    monitor-exit p0

    goto :goto_0

    .line 4599
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4573
    :cond_5
    const/4 v1, 0x0

    .line 4574
    .local v1, i:I
    const/4 v0, 0x0

    .line 4575
    .local v0, albumindex:I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_6

    .line 4576
    if-ne v0, p1, :cond_a

    .line 4585
    :cond_6
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 4586
    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4587
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4588
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    .line 4590
    :cond_7
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4591
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4592
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z

    .line 4594
    :cond_8
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v3, :cond_9

    .line 4595
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4596
    :cond_9
    const-string v3, "com.htc.music.metachanged"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4598
    monitor-exit p0

    goto :goto_0

    .line 4579
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .line 4580
    .local v2, next:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v4, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v4, :cond_b

    .line 4581
    add-int/lit8 v0, v0, 0x1

    .line 4575
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    .line 6783
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 6792
    :cond_0
    :goto_0
    return-void

    .line 6785
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 6786
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 6788
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathshuffleupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6789
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6790
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6791
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginAlbumArtPathUpdated(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    .line 6771
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 6780
    :cond_0
    :goto_0
    return-void

    .line 6773
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 6774
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 6776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6777
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6778
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6779
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginNotifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x2

    .line 6754
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v2, :cond_2

    .line 6755
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6757
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6760
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginUpdateNotification()Landroid/app/Notification;

    move-result-object v1

    .line 6761
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6762
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6763
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6766
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #notification:Landroid/app/Notification;
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6768
    :cond_2
    return-void
.end method

.method public pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 6795
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p2, :cond_1

    .line 6802
    :cond_0
    :goto_0
    return-void

    .line 6797
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.nowplayingqueueupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6798
    .local v0, i:Landroid/content/Intent;
    const-string v1, "start"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6799
    const-string v1, "end"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6800
    const-string v1, "values"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6801
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V
    .locals 2
    .parameter "position"
    .parameter "values"

    .prologue
    .line 6805
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 6811
    :cond_0
    :goto_0
    return-void

    .line 6807
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.trackdetailsupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6808
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6809
    const-string v1, "values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6810
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 4618
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4619
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->position()J

    move-result-wide v0

    .line 4621
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 3530
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    .line 3531
    return-void
.end method

.method public prev(Z)V
    .locals 2
    .parameter "playAnim"

    .prologue
    .line 3534
    monitor-enter p0

    .line 3535
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3538
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3539
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3543
    :goto_0
    monitor-exit p0

    .line 3544
    return-void

    .line 3541
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0

    .line 3543
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prevAlbum()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3616
    monitor-enter p0

    .line 3617
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_0

    .line 3618
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "===========skip one prev"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    monitor-exit p0

    .line 3664
    :goto_0
    return-void

    .line 3623
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_1

    .line 3624
    const-string v0, "com.htc.music.rotatequickly"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3636
    :cond_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lez v0, :cond_3

    .line 3637
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->getPrevAlbumPos([II)I

    move-result v0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3642
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3643
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v0, :cond_6

    .line 3644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 3645
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eq v0, v2, :cond_5

    .line 3646
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3647
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 3650
    :goto_2
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    if-eq v0, v2, :cond_2

    .line 3651
    const-string v0, "com.htc.music.rotateleft"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3655
    :cond_2
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 3663
    :goto_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3639
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3649
    :cond_4
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    goto :goto_2

    .line 3653
    :cond_5
    const-string v0, "com.htc.music.rotatecircle_previous"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3

    .line 3658
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3659
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_7

    .line 3660
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3661
    :cond_7
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method printATSPauseMusictoStopLog()V
    .locals 0

    .prologue
    .line 7409
    return-void
.end method

.method printATSPlayMusicLog()V
    .locals 0

    .prologue
    .line 7384
    return-void
.end method

.method printATSStopMusicByPhoneCallLog()V
    .locals 0

    .prologue
    .line 7433
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 2421
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2422
    new-instance v1, Lcom/htc/music/MediaPlaybackService$8;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackService$8;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 2472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2473
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2474
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2475
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2476
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2477
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2478
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2480
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .prologue
    .line 1589
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    if-eqz v0, :cond_0

    .line 1591
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue: mIsReloadingQueue = true"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    monitor-enter p0

    .line 1597
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    :goto_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    return-void

    .line 1597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1599
    :cond_0
    monitor-enter p0

    .line 1600
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 1601
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadQueueImpl()V

    .line 1602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 1603
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public removeQueueTracks([I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 4011
    const/4 v1, 0x0

    .line 4012
    .local v1, numremoved:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4014
    monitor-enter p0

    .line 4015
    :try_start_0
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4016
    aget v2, p1, v0

    aget v3, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4015
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4018
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4020
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_1

    .line 4021
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4024
    :cond_1
    if-lez v1, :cond_3

    .line 4025
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4027
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    if-nez v2, :cond_2

    .line 4028
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4031
    :cond_2
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 4034
    :cond_3
    return v1

    .line 4018
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTrack(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 3989
    const/4 v1, 0x0

    .line 3990
    .local v1, numremoved:I
    monitor-enter p0

    .line 3991
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 3992
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 3993
    invoke-direct {p0, v0, v0}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 3994
    add-int/lit8 v0, v0, -0x1

    .line 3991
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3997
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3998
    if-lez v1, :cond_2

    .line 3999
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4001
    :cond_2
    return v1

    .line 3997
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 3893
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 3894
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 3895
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3897
    :cond_0
    return v0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 4044
    const/4 v3, 0x0

    .line 4045
    .local v3, numRemoved:I
    const/4 v0, 0x0

    .line 4046
    .local v0, countToBroadcast:I
    array-length v4, p1

    .line 4047
    .local v4, removeTrackCount:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4049
    monitor-enter p0

    .line 4050
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_5

    .line 4052
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v5, :cond_1

    .line 4053
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v5, v5, v2

    aget v6, p1, v1

    if-ne v5, v6, :cond_0

    .line 4054
    invoke-direct {p0, v2, v2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 4052
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4057
    :cond_1
    if-lez v3, :cond_2

    .line 4058
    add-int/lit8 v0, v0, 0x1

    .line 4060
    :cond_2
    const/16 v5, 0x32

    if-ne v0, v5, :cond_3

    .line 4061
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4062
    const/4 v0, 0x0

    .line 4064
    :cond_3
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_4

    .line 4065
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4050
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4068
    .end local v2           #j:I
    :cond_5
    monitor-exit p0

    .line 4069
    return v3

    .line 4068
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public seek(J)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 4632
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    .line 4634
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4636
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .local v0, mDuration:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 4637
    move-wide p1, v0

    .line 4639
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/MusicPluginManager;->seek(J)J

    move-result-wide v2

    .line 4642
    .end local v0           #mDuration:J
    :goto_0
    return-wide v2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 4248
    monitor-enter p0

    .line 4249
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToAlbumList([II)V

    .line 4250
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->shrinkAlbumList([II)V

    .line 4251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    .line 4252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4253
    monitor-exit p0

    .line 4254
    return-void

    .line 4253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaylist([IZ)V
    .locals 9
    .parameter "list"
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    .line 2996
    monitor-enter p0

    .line 2997
    :try_start_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 2998
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3000
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 3001
    .local v4, oldId:I
    array-length v2, p1

    .line 3003
    .local v2, listlength:I
    const/4 v3, 0x1

    .line 3007
    .local v3, newlist:Z
    if-nez p2, :cond_1

    .line 3008
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v2, :cond_1

    .line 3009
    const/4 v3, 0x0

    .line 3010
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3011
    aget v6, p1, v0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_8

    .line 3012
    const/4 v3, 0x1

    .line 3018
    .end local v0           #i:I
    :cond_1
    if-eqz v3, :cond_2

    .line 3019
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v6, v8, :cond_9

    .line 3021
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v6}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3023
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3024
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->shrinkShuffleAlbumList([II)V

    .line 3026
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3027
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 3028
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleShrinkAlbumListLen:I

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 3034
    :goto_1
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3035
    const-string v6, "com.htc.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3038
    :cond_2
    const/4 v5, 0x0

    .line 3039
    .local v5, playPosFound:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v6, :cond_3

    .line 3040
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_a

    .line 3041
    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3042
    const/4 v5, 0x1

    .line 3046
    :cond_3
    if-nez v5, :cond_5

    .line 3047
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3049
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3050
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 3051
    .local v1, isPlaying:Z
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3052
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3053
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3055
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3058
    .end local v1           #isPlaying:Z
    :cond_5
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 3059
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLastAlbumPos :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 3062
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3064
    if-nez v5, :cond_6

    .line 3065
    const-string v6, "com.htc.music.metachanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3067
    :cond_6
    iget-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v6, :cond_7

    .line 3068
    const-string v6, "com.htc.music.refresh"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3070
    :cond_7
    monitor-exit p0

    .line 3071
    return-void

    .line 3010
    .end local v5           #playPosFound:Z
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3030
    .end local v0           #i:I
    :cond_9
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3031
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 3032
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    goto/16 :goto_1

    .line 3070
    .end local v2           #listlength:I
    .end local v3           #newlist:Z
    .end local v4           #oldId:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3039
    .restart local v0       #i:I
    .restart local v2       #listlength:I
    .restart local v3       #newlist:Z
    .restart local v4       #oldId:I
    .restart local v5       #playPosFound:Z
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 4377
    monitor-enter p0

    .line 4378
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4379
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 4388
    :goto_0
    monitor-exit p0

    .line 4389
    return-void

    .line 4381
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4382
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4383
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4384
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 4385
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4386
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 4388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 4127
    monitor-enter p0

    .line 4128
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4129
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setRepeatMode(I)V

    .line 4134
    :goto_0
    monitor-exit p0

    .line 4135
    return-void

    .line 4131
    :cond_0
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 4132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0

    .line 4134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 4
    .parameter "shufflemode"

    .prologue
    const/4 v3, 0x1

    .line 4073
    monitor-enter p0

    .line 4074
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4075
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setShuffleMode(I)V

    .line 4113
    :cond_0
    :goto_0
    monitor-exit p0

    .line 4114
    :goto_1
    return-void

    .line 4077
    :cond_1
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_2

    .line 4078
    monitor-exit p0

    goto :goto_1

    .line 4113
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4080
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4081
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 4082
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4083
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode, shufflemode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", makeAutoShuffleList, reset playlist lenght."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4085
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 4086
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4087
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4088
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 4089
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4090
    :cond_3
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4091
    monitor-exit p0

    goto :goto_1

    .line 4094
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4097
    :cond_5
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v3, :cond_6

    .line 4099
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v0, v1, [I

    .line 4100
    .local v0, nonShufflePlayList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 4101
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_0

    .line 4102
    .end local v0           #nonShufflePlayList:[I
    :cond_6
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v1, :cond_0

    .line 4103
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 4104
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 4105
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumList:[I

    .line 4106
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleShrinkAlbumListLen:I

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShrinkAlbumListLen:I

    .line 4107
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4108
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 4109
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4110
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public showPluginToast(Ljava/lang/String;I)V
    .locals 4
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 4877
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4878
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4879
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4880
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4881
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4882
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4883
    return-void
.end method

.method shutdownServcieDelay()V
    .locals 4

    .prologue
    .line 4851
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4852
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4853
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4854
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 4151
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    monitor-enter p0

    .line 4153
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4154
    monitor-exit p0

    .line 4155
    return-void

    .line 4154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 3467
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "!!!! @@@@ stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3469
    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 5
    .parameter "list"

    .prologue
    .line 3114
    monitor-enter p0

    .line 3115
    :try_start_0
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncNowPlayingQueue :: mPlayPos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPlayListLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    if-nez p1, :cond_0

    .line 3118
    monitor-exit p0

    .line 3136
    :goto_0
    return-void

    .line 3120
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v1, v2, v3

    .line 3121
    .local v1, tmp:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 3126
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3128
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v1, v3}, Lcom/htc/music/MediaPlaybackService;->Search([III)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3129
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I

    .line 3130
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3132
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    if-eqz v2, :cond_2

    .line 3133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3135
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateBeatsEffectSetting(Z)V
    .locals 8
    .parameter "alwaysApplyEffect"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7306
    const/4 v0, 0x0

    .line 7307
    .local v0, bBeatsOn:Z
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 7309
    .local v2, context:Landroid/content/Context;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7310
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getBeatsLastState(Landroid/content/Context;)Z

    move-result v0

    .line 7311
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBeatsEffectSetting, bBeatsOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPlaying(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7312
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    invoke-static {v2, v0, v4}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    .line 7323
    :goto_0
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    .line 7325
    .local v3, styleIndex:I
    if-eqz v0, :cond_6

    .line 7326
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    .line 7357
    :cond_0
    :goto_1
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBeatsEffectSetting, set styleIndex :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7359
    const/4 v1, 0x1

    .line 7360
    .local v1, bSaveAudioStyle:Z
    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7362
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "updateBeatsEffectSetting, beatsBT plug, bSaveAudioStyle = false"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7363
    const/4 v1, 0x0

    .line 7365
    :cond_1
    if-eqz v1, :cond_2

    .line 7366
    invoke-static {v3, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyleByIndex(ILandroid/content/Context;)V

    .line 7369
    :cond_2
    if-eqz p1, :cond_b

    .line 7370
    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7378
    :cond_3
    :goto_2
    return-void

    .line 7314
    .end local v1           #bSaveAudioStyle:Z
    .end local v3           #styleIndex:I
    :cond_4
    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7315
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBeatsEffectSetting, beatsBT plug, isPlaying() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7316
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    invoke-static {v2, v7, v4, v7}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZI)V

    goto :goto_0

    .line 7319
    :cond_5
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "updateBeatsEffectSetting, Beats can\'t be enable, setAudioEffect : Original"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7320
    invoke-static {v2, v6, v6}, Lcom/htc/music/util/SoundEffectHelper;->setBeatsNotificationBar(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 7329
    .restart local v3       #styleIndex:I
    :cond_6
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7330
    invoke-static {v2}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7332
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_1

    .line 7336
    :cond_7
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_1

    .line 7339
    :cond_8
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7341
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    .line 7342
    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7344
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto/16 :goto_1

    .line 7347
    :cond_9
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 7349
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto/16 :goto_1

    .line 7353
    :cond_a
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto/16 :goto_1

    .line 7373
    .restart local v1       #bSaveAudioStyle:Z
    :cond_b
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7374
    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method wasDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 4775
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 7206
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7224
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->updateBeatsEffectSetting(Z)V

    .line 7226
    :cond_0
    return-void

    .line 7224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
