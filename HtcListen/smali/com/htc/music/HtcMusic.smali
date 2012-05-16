.class public Lcom/htc/music/HtcMusic;
.super Landroid/app/Activity;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;
.implements Lcom/htc/music/widget/IDismissBubbleInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;,
        Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;,
        Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;,
        Lcom/htc/music/HtcMusic$NonUiHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_INIT:I = 0x5

.field private static final AUDIO_BOOSTER:I = 0x25

.field private static final CHECK_ERROR_STATE:I = 0x6

.field private static final CHECK_PLUGIN_SERVICE_STATE:I = 0x4

.field private static final DIALOG_DOWNLOAD_ALBUMART:I = 0xd

.field private static final DIALOG_DRM_CONFIRM:I = 0x4

.field private static final DIALOG_DRM_ERROR:I = 0x3

.field private static final DIALOG_EQUALIZER_EFFECT:I = 0x11

.field private static final DIALOG_MODE_REPEAT_ALL:I = 0x0

.field private static final DIALOG_MODE_REPEAT_CURRENT:I = 0x1

.field private static final DIALOG_MODE_REPEAT_NONE:I = 0x2

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x6

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0xc

.field private static final DIALOG_SHARETEXT:I = 0x14

.field private static final DIALOG_SHARETYPE:I = 0x13

.field private static final DIALOG_SHARE_DRM_FILE:I = 0xf

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0xe

.field private static final DIALOG_SOUND_EFFECT:I = 0x10

.field private static final DIALOG_TRACK_OPTIONS:I = 0x12

.field private static final DMP_SEARCH_VIA_YOUTUBE:I = 0x24

.field private static final DMR_CHOOSER:I = 0x22

.field public static final EQ_TOAST_HEADSET_UNPLUGGED:I = 0x34

.field private static final KEY_PLAY_AT_GLANCE:Ljava/lang/String; = "playatglance"

.field private static final MENU_STATUS_HtcMusic:I = 0x1

.field private static final MENU_STATUS_NONE:I = 0x0

.field private static final MENU_STATUS_NowPlaying:I = 0x2

.field public static final NOW_PLAYING_SWITCH:Ljava/lang/String; = "NOW_PLAYING_SWITCH"

.field private static final PLAY_ALBUM:I = 0xa

.field private static final PROPERTIES:I = 0x1d

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final REFRESH_PLAYLIST:I = 0x1

.field public static final REFRESH_SOUND_EFFECT_LIST:I = 0x33

.field private static final RELOAD_QUEUE:I = 0x5

.field private static final REPEAT:I = 0x18

.field private static final SEARCH_VIA_YOUTUBE:I = 0x23

.field private static final SETTING:I = 0x26

.field private static final SET_PLUGIN_LISTENER:I = 0x9

.field private static final SET_SOUND_EFFECT:I = 0x3

.field private static final SHARE:I = 0x21

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field private static final START_ENHANCER_SERVICE_ONSTART:I = 0x8

.field private static final TAG:Ljava/lang/String; = "[HtcMusic]"

.field private static final TOGGLE_SHUFFLE:I = 0x1c

.field private static final UPDATE_TRACKINFO:I = 0x7

.field private static final USE_AS_NOTIFY_RINGTONE:I = 0x20

.field private static final USE_AS_PHONE_RINGTONE:I = 0x1f

.field private static final USE_AS_RINGTONE:I = 0x17

.field private static final USE_AS_RINGTONE_SUB:I = 0x1e

.field private static final VMM_UPLOAD:I = 0x27

.field private static mEnalbeOpeningAnimation:Z

.field private static mIsOutputTitleInited:Z

.field private static music_tooltip_perference_key:Ljava/lang/String;


# instance fields
.field private LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

.field private final MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

.field private final MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

.field private SetSoundEffectKey:Ljava/lang/String;

.field avi:I

.field private hint_layout_land:Landroid/view/View;

.field private isTooltipLaunched:Z

.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private m3DLayout:Landroid/widget/RelativeLayout;

.field protected mActivityPopup:Z

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBestsStrNotBeatsHeadset:Ljava/lang/String;

.field private mBestsStrWithBeatsHeadset:Ljava/lang/String;

.field private mBlockMenu:Z

.field mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentAudioId:I

.field private mCurrentAudioPath:Ljava/lang/String;

.field private mCurrentAudioType:I

.field private mCurrentSoundEffectIndicatorType:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDMRChooserAction:Landroid/view/View$OnClickListener;

.field private mDelayPlayDuration:I

.field private mDeviceInfo:Ljava/lang/String;

.field private mDirectMode:I

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaMode:I

.field private mDownloadAlbumArtDialog:Landroid/app/Dialog;

.field private mDownloadAlbumArtId:I

.field private mDuration:J

.field private mEQDialog:Lcom/htc/widget/HtcAlertDialog;

.field mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

.field private mEnalbeAutoPlay:Z

.field private mEnalbeDelayPlay:Z

.field private mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field private mGliderAdapter:Lcom/htc/music/GliderAdapter;

.field private mGliderState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mInitAP:Z

.field private mIsDialogActive:Z

.field private mIsEnhancerExist:Z

.field private mIsFromBTKeepPlaying:Z

.field private mIsMusicStoreEnable:Z

.field private mIsSeriveBinded:Z

.field private mIsSupportMMC:Z

.field private mLastPluginArtPath:Ljava/lang/String;

.field private mLastSeekEventTime:J

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field private mMenuStatus:I

.field public mMsg:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNeedBindSerive:Z

.field private mNextButton:Landroid/view/View;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

.field mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

.field protected mNowPlayingViewOn:Z

.field private mOrientation:I

.field private mPauseButton:Landroid/view/View;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPaused:Z

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field public mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field public mPresentationScale:F

.field private mPrevButton:Landroid/view/View;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Lcom/htc/widget/HtcSeekBar;

.field private mProgressLayout:Landroid/view/ViewGroup;

.field private mProgressPos:I

.field private mQueueClickListner:Landroid/view/View$OnClickListener;

.field private mQueueInfo:Ljava/lang/String;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRelaunchAfterConfigChange:Z

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRetryCount:I

.field private mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSeekmethod:I

.field public mSelectEQIndex:I

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShareDRMDialog:Landroid/app/Dialog;

.field private mShareNormaldialog:Landroid/app/Dialog;

.field private mShareText:Ljava/lang/String;

.field mShowDialog:Z

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

.field private mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSoundEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundEffectListener:Landroid/view/View$OnClickListener;

.field private mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

.field public mSoundEffectStyles:[Ljava/lang/String;

.field private mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field public mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field protected mTempSelectedEQIndex:I

.field private mTempSelectedSoundEffectStyle:Ljava/lang/String;

.field private mTempShowingEQIndex:I

.field public mTextHeight:I

.field public mTextWidth:I

.field mTitle:Lcom/htc/widget/HeaderBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTooltipListener:Landroid/view/View$OnClickListener;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackOptionButton:Landroid/widget/Button;

.field private mTrackOptionListener:Landroid/view/View$OnClickListener;

.field private mTrackball:Z

.field mTxtTitleName:Landroid/widget/TextView;

.field private mVolumeListener:Landroid/view/View$OnClickListener;

.field private m_iUserLastClickEffectIdx:I

.field mszLocalDevice:Ljava/lang/String;

.field private music_tooltip_preference:Landroid/content/SharedPreferences;

.field private nowHWAudioSetting:Ljava/lang/String;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/HtcMusic;->mIsOutputTitleInited:Z

    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    .line 219
    const-string v0, "music_tooltip_perference_key"

    sput-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 159
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 160
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 161
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 162
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 166
    iput v4, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    .line 167
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 168
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 169
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 171
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 175
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 177
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 178
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 179
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 180
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 181
    iput v2, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 182
    iput v4, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    .line 183
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 185
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    .line 186
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 211
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    .line 220
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 226
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 227
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 228
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 230
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 231
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 232
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    .line 233
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 234
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeDelayPlay:Z

    .line 235
    const/16 v0, 0x15e

    iput v0, p0, Lcom/htc/music/HtcMusic;->mDelayPlayDuration:I

    .line 245
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 248
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 249
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    .line 250
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 253
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 254
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mPresentationScale:F

    .line 256
    iput v4, p0, Lcom/htc/music/HtcMusic;->mTextHeight:I

    .line 257
    iput v4, p0, Lcom/htc/music/HtcMusic;->mTextWidth:I

    .line 317
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 318
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 319
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 321
    iput v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 324
    const-string v0, "com.htc.musicenhancer"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

    .line 325
    const-string v0, "com.htc.musicenhancer.EnhancerService"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

    .line 327
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 328
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 330
    new-instance v0, Lcom/htc/music/HtcMusic$1;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$1;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 342
    new-instance v0, Lcom/htc/music/HtcMusic$2;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$2;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1002
    new-instance v0, Lcom/htc/music/HtcMusic$3;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$3;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1084
    new-instance v0, Lcom/htc/music/HtcMusic$4;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$4;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1091
    new-instance v0, Lcom/htc/music/HtcMusic$5;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$5;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1097
    new-instance v0, Lcom/htc/music/HtcMusic$6;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$6;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1103
    new-instance v0, Lcom/htc/music/HtcMusic$7;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$7;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    .line 1115
    new-instance v0, Lcom/htc/music/HtcMusic$8;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$8;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectListener:Landroid/view/View$OnClickListener;

    .line 1121
    new-instance v0, Lcom/htc/music/HtcMusic$9;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$9;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeListener:Landroid/view/View$OnClickListener;

    .line 1130
    new-instance v0, Lcom/htc/music/HtcMusic$10;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$10;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 1162
    new-instance v0, Lcom/htc/music/HtcMusic$11;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$11;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 1168
    new-instance v0, Lcom/htc/music/HtcMusic$12;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$12;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1185
    new-instance v0, Lcom/htc/music/HtcMusic$13;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$13;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1201
    new-instance v0, Lcom/htc/music/HtcMusic$14;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$14;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1215
    new-instance v0, Lcom/htc/music/HtcMusic$15;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$15;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    .line 1278
    new-instance v0, Lcom/htc/music/HtcMusic$16;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$16;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    .line 1343
    new-instance v0, Lcom/htc/music/HtcMusic$17;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$17;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    .line 1351
    new-instance v0, Lcom/htc/music/HtcMusic$18;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$18;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mQueueClickListner:Landroid/view/View$OnClickListener;

    .line 1385
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1386
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1778
    iput v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2282
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 2578
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    .line 2662
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2718
    iput v4, p0, Lcom/htc/music/HtcMusic;->avi:I

    .line 3048
    new-instance v0, Lcom/htc/music/HtcMusic$21;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$21;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    .line 3545
    new-instance v0, Lcom/htc/music/HtcMusic$22;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$22;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    .line 3633
    new-instance v0, Lcom/htc/music/HtcMusic$23;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$23;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 3851
    new-instance v0, Lcom/htc/music/HtcMusic$24;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$24;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 3894
    new-instance v0, Lcom/htc/music/HtcMusic$25;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$25;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4158
    new-instance v0, Lcom/htc/music/HtcMusic$26;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$26;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 4783
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 4784
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 5520
    const-string v0, "My phone"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mszLocalDevice:Ljava/lang/String;

    .line 5521
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTxtTitleName:Landroid/widget/TextView;

    .line 5522
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    .line 5524
    new-instance v0, Lcom/htc/music/HtcMusic$35;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$35;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMRChooserAction:Landroid/view/View$OnClickListener;

    .line 5549
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    .line 5554
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 5557
    const-string v0, "SoundStyle"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    .line 5561
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 5566
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5567
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5569
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 5570
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 5572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    .line 5573
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 5574
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 5576
    new-instance v0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    .line 5591
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 5592
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 6166
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 6167
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 6217
    iput v5, p0, Lcom/htc/music/HtcMusic;->m_iUserLastClickEffectIdx:I

    .line 6482
    iput v4, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 6483
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    .line 6869
    return-void

    .line 2578
    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput p1, p0, Lcom/htc/music/HtcMusic;->m_iUserLastClickEffectIdx:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return p1
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/HtcMusic;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/StoreSwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/HtcMusic;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/RepeatingImageButton$RepeatListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/RepeatingImageButton$RepeatListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/HtcMusic;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput p1, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return p1
.end method

.method static synthetic access$3102(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput p1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPluginListListener()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doSearch()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$5802(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput p1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return p1
.end method

.method static synthetic access$5808(Lcom/htc/music/HtcMusic;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$6000(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/HtcMusic;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/htc/music/HtcMusic;Lcom/htc/music/util/SoundEffectItem;)Lcom/htc/music/util/SoundEffectItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return v0
.end method

.method static synthetic access$6602(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput p1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return p1
.end method

.method static synthetic access$6700(Lcom/htc/music/HtcMusic;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$7000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startUpdateAllAlbum()V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    return-void
.end method

.method private addtoPlaylist()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2440
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2441
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2442
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2443
    const-string v2, "pickermode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2444
    new-array v0, v4, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v3

    aput v3, v0, v2

    .line 2445
    .local v0, addToPlaylistData:[I
    const-string v2, "AddToPlaylistData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2446
    invoke-virtual {p0, v1, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2447
    return-void
.end method

.method private animationRefresh()V
    .locals 5

    .prologue
    .line 3419
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3420
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3421
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3422
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3430
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 3425
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3429
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    goto :goto_0

    .line 3426
    :catch_0
    move-exception v0

    .line 3427
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private attachNowPlayingView()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 4828
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4833
    .local v5, nowPlayingLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const v7, 0x7f0800ce

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4834
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 4835
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4836
    .local v2, height:I
    if-nez v2, :cond_0

    .line 4837
    const-string v7, "[HtcMusic]"

    const-string v8, "view.getHeight() is zero!!!!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4839
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 4840
    .local v3, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_0

    .line 4841
    const/4 v7, -0x2

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v7, v8, :cond_3

    .line 4842
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4843
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 4844
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 4852
    .end local v0           #backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4855
    .end local v2           #height:I
    :cond_1
    const v7, 0x7f08007c

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4856
    .local v1, glanceContainer:Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v7}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    .line 4857
    .local v4, nowPlaying:Landroid/view/ViewGroup;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4858
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4881
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 4882
    :cond_2
    return-void

    .line 4847
    .end local v1           #glanceContainer:Landroid/view/ViewGroup;
    .end local v4           #nowPlaying:Landroid/view/ViewGroup;
    .restart local v2       #height:I
    .restart local v3       #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private autoUpdateAlbumArt(I)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 6671
    const-string v2, "[HtcMusic]"

    const-string v3, "autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6672
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6673
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6674
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6675
    sget-object v2, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6676
    return-void
.end method

.method private canUseAsRingtone(IZ)Z
    .locals 7
    .parameter "audioType"
    .parameter "onErrorToast"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4199
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->checkSizeLimit(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4200
    if-eqz p2, :cond_0

    .line 4201
    const v4, 0x7f0700a3

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 4235
    :cond_0
    :goto_0
    return v3

    .line 4206
    :cond_1
    const/4 v2, 0x0

    .line 4207
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4210
    iget v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4211
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 4212
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 4213
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4216
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4217
    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4224
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v4, :cond_7

    :cond_4
    move v0, v4

    .line 4228
    .local v0, canUseAsRingtone:Z
    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 4229
    if-eqz v0, :cond_5

    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    .line 4232
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 4233
    const v3, 0x7f0700a4

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_6
    move v3, v0

    .line 4235
    goto :goto_0

    .end local v0           #canUseAsRingtone:Z
    :cond_7
    move v0, v3

    .line 4224
    goto :goto_1

    .restart local v0       #canUseAsRingtone:Z
    :cond_8
    move v0, v3

    .line 4229
    goto :goto_2
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 2489
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2490
    return-void
.end method

.method private cleanMessage()V
    .locals 2

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4153
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4155
    :cond_0
    return-void
.end method

.method private clearSoundEffectParameters()V
    .locals 1

    .prologue
    .line 6007
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6008
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 6009
    return-void
.end method

.method private createDownloadAlbumArtDialog()Landroid/app/Dialog;
    .locals 14

    .prologue
    const v13, 0x208005e

    const/4 v2, 0x0

    .line 6602
    const/4 v8, 0x0

    .line 6603
    .local v8, dialog:Landroid/app/Dialog;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6604
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6605
    .local v1, dialogView:Landroid/view/View;
    const v3, 0x7f0700d7

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6606
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6607
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 6608
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6609
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 6610
    const v3, 0x7f080068

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    .line 6612
    .local v6, autoUpdate:Landroid/widget/CheckedTextView;
    const v3, 0x7f0700d8

    invoke-virtual {v6, v3}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 6617
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "btn_check"

    const v5, 0x20800d5

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 6620
    .local v7, checkedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->getPaddingLeft()I

    move-result v9

    .line 6621
    .local v9, paddingLeft:I
    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v10, v3, v4

    .line 6622
    .local v10, paddingRight:I
    if-gez v10, :cond_0

    .line 6623
    const/4 v10, 0x0

    .line 6624
    :cond_0
    const-string v3, "list_selector_background"

    invoke-static {p0, v3, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 6627
    invoke-virtual {v6, v9, v2, v10, v2}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 6628
    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6630
    new-instance v3, Lcom/htc/music/HtcMusic$44;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$44;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v6, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6645
    const v3, 0x7f080069

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 6646
    .local v11, updateAllAlbum:Landroid/widget/TextView;
    const v3, 0x7f0700db

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6647
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    .line 6648
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    .line 6649
    const-string v3, "list_selector_background"

    invoke-static {p0, v3, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6652
    invoke-virtual {v11, v9, v2, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6653
    new-instance v3, Lcom/htc/music/HtcMusic$45;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$45;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6659
    const v3, 0x7f08006a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 6660
    .local v12, updateCurrAlbum:Landroid/widget/TextView;
    const v3, 0x7f0700da

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6661
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    .line 6662
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    .line 6663
    const-string v3, "list_selector_background"

    invoke-static {p0, v3, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6666
    invoke-virtual {v12, v9, v2, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6667
    return-object v8
.end method

.method private createEqualizerDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 6487
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6490
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6492
    .local v1, resource:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6495
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    new-instance v4, Lcom/htc/music/HtcMusic$40;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$40;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6505
    const v2, 0x20c013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$41;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$41;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6522
    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$42;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$42;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6530
    new-instance v2, Lcom/htc/music/HtcMusic$43;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$43;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6537
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6540
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v2
.end method

.method private createSoundEffectDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6230
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 6231
    const-string v2, "[HtcMusic]"

    const-string v4, "createSoundEffectDialog, mService is null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 6394
    :goto_0
    return-object v2

    .line 6235
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 6238
    .local v9, resource:Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6244
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6245
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6247
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 6248
    .local v7, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03005d

    invoke-virtual {v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6250
    .local v1, textEntryView:Landroid/view/View;
    const v3, 0x7f0800e6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 6253
    .local v8, list:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    .line 6255
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-nez v3, :cond_1

    .line 6256
    new-instance v3, Lcom/htc/music/widget/SoundEffectAdapter;

    const v4, 0x7f03005c

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/music/widget/SoundEffectAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 6260
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6262
    new-instance v3, Lcom/htc/music/HtcMusic$36;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$36;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 6303
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6305
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6306
    new-instance v2, Lcom/htc/music/HtcMusic$37;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$37;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6315
    const v2, 0x20c013c

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$38;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$38;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6378
    const v2, 0x20c013d

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$39;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$39;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 6388
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6390
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setOnSoundEffectDismissListener(Landroid/app/Dialog;)V

    .line 6394
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 6239
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #textEntryView:Landroid/view/View;
    .end local v7           #factory:Landroid/view/LayoutInflater;
    .end local v8           #list:Landroid/widget/ListView;
    :catch_0
    move-exception v6

    .line 6240
    .local v6, e:Landroid/os/RemoteException;
    const-string v2, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSoundEffectDialog, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 6241
    goto/16 :goto_0
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2922
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 2945
    :goto_0
    return-void

    .line 2926
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 2927
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 2928
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2929
    const v1, 0x7f07004b

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 2941
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    goto :goto_0

    .line 2942
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2930
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 2931
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2932
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2933
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 2934
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 2936
    :cond_2
    const v1, 0x7f07004a

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 2938
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2939
    const v1, 0x7f070049

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private deleteItem()V
    .locals 6

    .prologue
    .line 2450
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 2451
    const/4 v4, 0x1

    new-array v3, v4, [I

    .line 2452
    .local v3, list:[I
    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v5

    aput v5, v3, v4

    .line 2453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2455
    .local v0, b:Landroid/os/Bundle;
    :try_start_0
    const-string v4, "description"

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    const-string v4, "audioidlist"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2457
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2458
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/DeleteItemsActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2459
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2460
    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2466
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #list:[I
    :cond_0
    :goto_0
    return-void

    .line 2461
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v3       #list:[I
    :catch_0
    move-exception v1

    .line 2463
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private detachNowPlayingView()V
    .locals 3

    .prologue
    .line 4885
    const v2, 0x7f08007c

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4886
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 4893
    .local v1, nowPlayingIndex:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 4905
    return-void
.end method

.method private doPauseResume()V
    .locals 3

    .prologue
    .line 2871
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 2872
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2873
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 2874
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 2875
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2883
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 2887
    :cond_0
    :goto_1
    return-void

    .line 2877
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 2878
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 2879
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    .line 2880
    .local v0, next:J
    invoke-direct {p0, v0, v1}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2885
    .end local v0           #next:J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private doSearch()V
    .locals 2

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    return-void
.end method

.method private getAlbumQueuePosition()I
    .locals 3

    .prologue
    .line 4144
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4147
    :goto_0
    return v1

    .line 4145
    :catch_0
    move-exception v0

    .line 4146
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    const-string v2, " getAlbumQueuePosition() : "

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4147
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initConstant()V
    .locals 4

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 542
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 543
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 544
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 545
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 546
    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/music/HtcMusic;->mPresentationScale:F

    .line 547
    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mTextHeight:I

    .line 548
    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mTextWidth:I

    .line 553
    return-void
.end method

.method private initGlider()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 532
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 534
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 536
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 538
    :cond_0
    return-void
.end method

.method private initPlayerInfo()V
    .locals 4

    .prologue
    .line 597
    const v1, 0x7f080032

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    .line 598
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    .line 600
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 652
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 653
    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 677
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    .line 679
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    const-string v2, "music_info_btn"

    const v3, 0x7f020053

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 685
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    :cond_0
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSeekBar;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    .line 694
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 696
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 697
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    .line 705
    return-void
.end method

.method private initPresentation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 557
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v0, :cond_1

    .line 560
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 562
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 563
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 564
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnContainerClickListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;)V

    .line 565
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 566
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V

    .line 567
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 568
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 569
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x20801c1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setBackgroundResource(I)V

    .line 572
    :cond_1
    iget v0, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    if-ne v0, v2, :cond_3

    .line 578
    :goto_1
    sget-boolean v0, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    if-nez v0, :cond_4

    .line 579
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 580
    sput-boolean v2, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    .line 585
    :goto_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 587
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->deInit()V

    .line 588
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 591
    :cond_2
    new-instance v0, Lcom/htc/music/GliderAdapter;

    invoke-direct {v0, p0}, Lcom/htc/music/GliderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 592
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 593
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V

    goto :goto_0

    .line 575
    :cond_3
    sput-boolean v2, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    goto :goto_1

    .line 582
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    goto :goto_2
.end method

.method private initSoundEnhancer()V
    .locals 2

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 1000
    return-void
.end method

.method private initTaskbar()V
    .locals 8

    .prologue
    const v7, 0x2080088

    const v6, 0x2080086

    const/4 v5, 0x0

    const-wide/16 v3, 0x104

    .line 709
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    .line 711
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 712
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_2 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 719
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "music_icon_previous"

    const v2, 0x2080934

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 720
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    const-string v1, "common_transport_prev"

    invoke-static {p0, v1, v7}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 740
    :goto_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/RepeatingImageButton;

    if-eqz v0, :cond_7

    .line 742
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    .line 750
    :cond_1
    :goto_1
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    .line 751
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 752
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    .line 756
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    if-nez v0, :cond_2

    .line 757
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_4 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    .line 765
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "music_icon_next"

    const v2, 0x208090c

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 766
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    const-string v1, "common_transport_next"

    invoke-static {p0, v1, v6}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 786
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/RepeatingImageButton;

    if-eqz v0, :cond_9

    .line 788
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    .line 796
    :cond_4
    :goto_3
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    .line 797
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    .line 798
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 807
    :goto_4
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    .line 808
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    .line 809
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 848
    :goto_5
    return-void

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 727
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    const-string v1, "music_icon_previous"

    const v2, 0x7f02004e

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e4

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V

    .line 730
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    const-string v1, "common_transport_prev"

    invoke-static {p0, v1, v7}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 735
    :cond_6
    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recognize mPrevButton type!! mPrevButton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 743
    :cond_7
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-static {v0, v1, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->setRepeatListener(Landroid/view/View;Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    goto/16 :goto_1

    .line 772
    :cond_8
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    const-string v1, "music_icon_next"

    const v2, 0x7f02004a

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e3

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V

    .line 776
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    const-string v1, "common_transport_next"

    invoke-static {p0, v1, v6}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 789
    :cond_9
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 790
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-static {v0, v1, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->setRepeatListener(Landroid/view/View;Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    goto/16 :goto_3

    .line 804
    :cond_a
    const-string v0, "[HtcMusic]"

    const-string v1, "initTitleBar, mShuffleButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 815
    :cond_b
    const-string v0, "[HtcMusic]"

    const-string v1, "initTitleBar, mRepeatButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private initTitleBar()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 851
    const v9, 0x7f0800ce

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBar;

    .line 852
    .local v3, header:Lcom/htc/widget/HeaderBar;
    if-eqz v3, :cond_0

    .line 853
    invoke-virtual {v3, v12}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 856
    :cond_0
    const v9, 0x7f0800cf

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HeaderBarText;

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    .line 857
    const v9, 0x7f0800d0

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarImage;

    .line 858
    .local v6, queueButton:Lcom/htc/widget/HeaderBarImage;
    const v9, 0x7f0800d1

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarImage;

    .line 859
    .local v4, libraryButton:Lcom/htc/widget/HeaderBarImage;
    const v9, 0x7f0800d3

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    .line 860
    .local v7, storeButton:Lcom/htc/widget/HeaderBarImage;
    const v9, 0x7f0800d2

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HeaderBarImage;

    .line 862
    .local v8, volumeButton:Lcom/htc/widget/HeaderBarImage;
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v9, :cond_1

    .line 863
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    const v10, 0x7f07001b

    invoke-virtual {v9, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 864
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 865
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 868
    :cond_1
    if-eqz v6, :cond_2

    .line 869
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    .line 870
    .local v2, dlnaMode:I
    if-nez v2, :cond_8

    .line 871
    invoke-virtual {v6, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 872
    iget-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v9, :cond_6

    const v9, 0x20808fb

    :goto_0
    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 874
    iget-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v9, :cond_7

    const v9, 0x7f070105

    :goto_1
    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 876
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mQueueClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    const/16 v0, 0x708

    .line 881
    .local v0, UI_READY_TIME_FIRST_LAUNCH:I
    const/16 v1, 0x320

    .line 882
    .local v1, UI_READY_TIME_SECOND_LAUNCH:I
    const/4 v5, 0x0

    .line 883
    .local v5, nDelayTime:I
    sget-boolean v9, Lcom/htc/music/HtcMusic;->mIsOutputTitleInited:Z

    if-ne v12, v9, :cond_2

    .line 884
    sput-boolean v11, Lcom/htc/music/HtcMusic;->mIsOutputTitleInited:Z

    .line 885
    const/16 v5, 0x708

    .line 895
    .end local v0           #UI_READY_TIME_FIRST_LAUNCH:I
    .end local v1           #UI_READY_TIME_SECOND_LAUNCH:I
    .end local v2           #dlnaMode:I
    .end local v5           #nDelayTime:I
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 896
    invoke-virtual {v4, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 897
    const v9, 0x7f070006

    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 898
    const v9, 0x20808ea

    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 899
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    :cond_3
    if-eqz v7, :cond_4

    .line 903
    new-instance v9, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v9, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 904
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 905
    new-instance v9, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v10, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v10, p0, v11}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v9, p0, v10}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 913
    :goto_3
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v9, :cond_a

    .line 914
    invoke-virtual {v7, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 915
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 916
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 917
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 919
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 922
    if-eqz v8, :cond_4

    .line 923
    invoke-virtual {v8, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 924
    const/4 v8, 0x0

    .line 931
    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    .line 932
    invoke-virtual {v8, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 933
    const v9, 0x7f0700e0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 934
    const v9, 0x2080971

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 935
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    :cond_5
    return-void

    .line 872
    .restart local v2       #dlnaMode:I
    :cond_6
    const v9, 0x2080910

    goto/16 :goto_0

    .line 874
    :cond_7
    const v9, 0x7f0700df

    goto/16 :goto_1

    .line 891
    :cond_8
    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 909
    .end local v2           #dlnaMode:I
    :cond_9
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    .line 910
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_3

    .line 927
    :cond_a
    invoke-virtual {v7, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_4
.end method

.method private initToolTip()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 968
    sget-object v3, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    .line 970
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    if-nez v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 972
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 973
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    if-nez v3, :cond_0

    .line 974
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 978
    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    if-nez v3, :cond_1

    .line 979
    const v3, 0x7f080089

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 980
    .local v2, hit_stub:Landroid/view/ViewStub;
    invoke-virtual {v2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, hint_toast_library:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 984
    .local v1, hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f08008a

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    .line 985
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 986
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 987
    const v3, 0x7f08008c

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hint_toast_library:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 988
    .restart local v0       #hint_toast_library:Landroid/widget/TextView;
    const v3, 0x7f0700b8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 989
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 990
    const v3, 0x7f08008d

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hint_toast_playlisy:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 991
    .restart local v1       #hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f0700b9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 992
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x12c

    invoke-static {v3, v4, v5, v7, v6}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 996
    .end local v0           #hint_toast_library:Landroid/widget/TextView;
    .end local v1           #hint_toast_playlisy:Landroid/widget/TextView;
    .end local v2           #hit_stub:Landroid/view/ViewStub;
    :cond_1
    return-void
.end method

.method private initializeSoundEffectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6012
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectStyles()V

    .line 6014
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6017
    const/4 v2, 0x0

    .line 6018
    .local v2, item:Lcom/htc/music/util/SoundEffectItem;
    const-string v3, ""

    .line 6019
    .local v3, seStyle:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 6020
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v6, v0

    .line 6022
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6023
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 6038
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectIconResourceId(ILandroid/content/Context;)I

    move-result v6

    iput v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    .line 6040
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6026
    :cond_0
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v6, v0, :cond_1

    .line 6028
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 6029
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v6, v6, v8

    iput-object v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    .line 6030
    iput-boolean v9, v2, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    .line 6031
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 6033
    :cond_1
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    goto :goto_1

    .line 6047
    .end local v0           #i:I
    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v3           #seStyle:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v6, v7}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v4

    .line 6048
    .local v4, selectedStyleIndex:I
    const/4 v2, 0x0

    .line 6050
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6051
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v1

    .line 6054
    .local v1, isBeatHeadset:Z
    if-eqz v1, :cond_7

    .line 6055
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    if-ne v4, v6, :cond_3

    .line 6056
    sget v4, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    .line 6057
    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog, Just do protection for to correct selected item. SRS -> Original"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6067
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_16

    .line 6068
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6070
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    if-ne v4, v0, :cond_8

    .line 6071
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_4

    .line 6072
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6075
    :cond_4
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6076
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6081
    :goto_4
    if-eqz v1, :cond_a

    .line 6083
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_5

    .line 6084
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 6086
    :cond_5
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-eq v0, v6, :cond_6

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_9

    .line 6087
    :cond_6
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 6067
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6061
    .end local v0           #i:I
    :cond_7
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-ne v4, v6, :cond_3

    .line 6062
    sget v4, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    .line 6063
    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog, Just do protection for to correct selected item. Original -> SRS"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6078
    .restart local v0       #i:I
    :cond_8
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_4

    .line 6089
    :cond_9
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_5

    .line 6093
    :cond_a
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_b

    .line 6094
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 6096
    :cond_b
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    if-eq v0, v6, :cond_c

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_d

    .line 6097
    :cond_c
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_5

    .line 6099
    :cond_d
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_5

    .line 6104
    .end local v0           #i:I
    .end local v1           #isBeatHeadset:Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_15

    .line 6105
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6106
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 6107
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 6108
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_f

    .line 6109
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6112
    :cond_f
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6113
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6131
    :goto_7
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v0, v6, :cond_14

    .line 6132
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 6104
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6115
    :cond_10
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_7

    .line 6118
    :cond_11
    if-ne v4, v0, :cond_13

    .line 6119
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_12

    .line 6120
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6123
    :cond_12
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6124
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    goto :goto_7

    .line 6126
    :cond_13
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_7

    .line 6134
    :cond_14
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_8

    .line 6138
    :cond_15
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentEqualizerStyleIndex(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 6140
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 6141
    .local v5, soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    .line 6143
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v6, :cond_19

    .line 6144
    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    if-ne v6, v7, :cond_18

    .line 6145
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 6146
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    .line 6147
    iget v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iput v6, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 6158
    :goto_9
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 6161
    .end local v5           #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_16
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-eqz v6, :cond_17

    .line 6162
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v6}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    .line 6164
    :cond_17
    return-void

    .line 6150
    .restart local v5       #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_18
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 6151
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    goto :goto_9

    .line 6155
    :cond_19
    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog(), LocalizedEqualizerStylesFromDevice is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private launchProperty()V
    .locals 2

    .prologue
    .line 2547
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2548
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2550
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2551
    const-class v1, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2552
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 2557
    :goto_0
    return-void

    .line 2554
    :cond_0
    const-class v1, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2555
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "eqStyles"

    .prologue
    .line 6544
    if-nez p1, :cond_0

    .line 6545
    const-string v7, "[HtcMusic]"

    const-string v8, "localizeEqualizerStyles, eqStyles should not be null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6546
    const/4 p1, 0x0

    .line 6576
    .end local p1
    :goto_0
    return-object p1

    .line 6549
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 6550
    .local v6, resource:Landroid/content/res/Resources;
    const v7, 0x7f060013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 6552
    .local v2, eqStylesFromRes:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 6553
    const-string v7, "[HtcMusic]"

    const-string v8, "localizeEqualizerStyles, eqStylesFromRes should not be null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6557
    :cond_1
    array-length v1, p1

    .line 6558
    .local v1, eqStyleNum:I
    new-array v5, v1, [Ljava/lang/String;

    .line 6560
    .local v5, localizedEQStyles:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 6561
    const/4 v0, -0x1

    .line 6563
    .local v0, correspondingPos:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    sget-object v7, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 6564
    sget-object v7, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    aget-object v7, v7, v4

    aget-object v8, p1, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6565
    move v0, v4

    .line 6566
    aget-object v7, v2, v4

    aput-object v7, v5, v3

    .line 6570
    :cond_2
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 6571
    const-string v7, "[HtcMusic]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "localizeEqualizerStyles, no match, eqStyles["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6572
    aget-object v7, p1, v3

    aput-object v7, v5, v3

    .line 6560
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6563
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #correspondingPos:I
    .end local v4           #j:I
    :cond_5
    move-object p1, v5

    .line 6576
    goto :goto_0
.end method

.method private onAnimationRotateSelf(Z)V
    .locals 4
    .parameter "bNext"

    .prologue
    .line 3873
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 3892
    :goto_0
    return-void

    .line 3877
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3878
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 3881
    :cond_1
    iget v2, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 3882
    .local v0, bAnimated:Z
    :goto_1
    if-nez v0, :cond_3

    .line 3883
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 3884
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3889
    .end local v0           #bAnimated:Z
    :catch_0
    move-exception v1

    .line 3890
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3881
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3887
    .restart local v0       #bAnimated:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 3888
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->rotateSelf(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onServiceConnectedHandle()V
    .locals 27

    .prologue
    .line 3075
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->initSoundEnhancer()V

    .line 3078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 3079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3085
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 3089
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 3091
    const-string v23, "[HtcMusic]"

    const-string v24, "Enter DirectMode ..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3093
    .local v4, DMIntent:Landroid/content/Intent;
    const-string v23, "com.htc.dmc"

    const-string v24, "com.htc.dmc.DmrListActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3094
    const-string v23, "directmode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3097
    const/16 v23, 0x22

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3104
    :goto_0
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 3111
    .end local v4           #DMIntent:Landroid/content/Intent;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 3112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 3173
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 3174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 3175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3178
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 3179
    .local v16, intent1:Landroid/content/Intent;
    const-string v13, ""

    .line 3180
    .local v13, filename:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 3181
    .local v22, uri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 3182
    .local v17, isDRM:Z
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_b

    .line 3183
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    .line 3184
    .local v21, scheme:Ljava/lang/String;
    const-string v23, "file"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 3185
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 3187
    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyRights(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v9

    .line 3188
    .local v9, drmValidRights:Z
    if-nez v9, :cond_9

    .line 3189
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 3257
    .end local v9           #drmValidRights:Z
    .end local v21           #scheme:Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 3099
    .end local v13           #filename:Ljava/lang/String;
    .end local v16           #intent1:Landroid/content/Intent;
    .end local v17           #isDRM:Z
    .end local v22           #uri:Landroid/net/Uri;
    .restart local v4       #DMIntent:Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 3100
    .local v10, e:Ljava/lang/Exception;
    const-string v23, "[HtcMusic]"

    const-string v24, "dmc package is not exist"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3107
    .end local v4           #DMIntent:Landroid/content/Intent;
    .end local v10           #e:Ljava/lang/Exception;
    :cond_6
    const-string v23, "[HtcMusic]"

    const-string v24, "Not DirectMode, normal ..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3115
    :pswitch_0
    :try_start_1
    const-string v23, "DLNA"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 3116
    .local v20, pref:Landroid/content/SharedPreferences;
    const-string v23, "content"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3117
    .local v7, content:Ljava/lang/String;
    const-string v23, "switchLocal"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3121
    .local v6, bSwitch:Z
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_3

    if-eqz v7, :cond_3

    .line 3122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 3123
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3124
    .local v15, index:I
    const-string v23, "[HtcMusic]"

    const-string v24, "DLNA_LOCAL mode"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    const-string v23, "[HtcMusic]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "index from DMC = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 3128
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "content"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "switchLocal"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3130
    const-string v23, "[HtcMusic]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "update index to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3133
    .end local v6           #bSwitch:Z
    .end local v7           #content:Ljava/lang/String;
    .end local v15           #index:I
    .end local v20           #pref:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v10

    .line 3134
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3140
    .end local v10           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface/range {v23 .. v24}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3142
    const-string v23, "DLNA"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 3143
    .restart local v20       #pref:Landroid/content/SharedPreferences;
    const-string v23, "switchDMP"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 3145
    .local v5, Switch:Z
    if-eqz v5, :cond_3

    .line 3146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 3147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3149
    :cond_7
    new-instance v14, Landroid/content/Intent;

    const-class v23, Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3150
    .local v14, i:Landroid/content/Intent;
    const-string v23, "command"

    const-string v24, "com.htc.music.refreshplaylist"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3152
    const-string v11, ""

    .line 3153
    .local v11, emptyStr:Ljava/lang/String;
    const-string v23, "server"

    const-string v24, "server"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3154
    const-string v23, "container"

    const-string v24, "container"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3155
    const-string v23, "content"

    const-string v24, "content"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3156
    const-string v23, "startIdx"

    const-string v24, "startIdx"

    const-wide/16 v25, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3157
    const-string v23, "endIdx"

    const-string v24, "endIdx"

    const-wide/16 v25, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3158
    const-string v23, "direction"

    const-string v24, "direction"

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3159
    const-string v23, "dmsFilePath"

    const-string v24, "filepath"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3162
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3164
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "switchDMP"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 3167
    .end local v5           #Switch:Z
    .end local v11           #emptyStr:Ljava/lang/String;
    .end local v14           #i:Landroid/content/Intent;
    .end local v20           #pref:Landroid/content/SharedPreferences;
    :catch_2
    move-exception v10

    .line 3168
    .restart local v10       #e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3194
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v13       #filename:Ljava/lang/String;
    .restart local v16       #intent1:Landroid/content/Intent;
    .restart local v17       #isDRM:Z
    .restart local v21       #scheme:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3202
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 3203
    .local v8, curPath:Ljava/lang/String;
    if-eqz v8, :cond_a

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 3204
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mActivityPopup:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3210
    .end local v8           #curPath:Ljava/lang/String;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 3211
    if-eqz v13, :cond_b

    const-string v23, "content://drm/"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 3212
    const/16 v17, 0x1

    .line 3219
    .end local v21           #scheme:Ljava/lang/String;
    :cond_b
    if-eqz v17, :cond_e

    .line 3220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    if-eqz v22, :cond_d

    .line 3221
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->checkDrmFile(Landroid/net/Uri;)V

    .line 3235
    :cond_c
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 3206
    .restart local v21       #scheme:Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 3207
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 3224
    .end local v10           #e:Ljava/lang/Exception;
    .end local v21           #scheme:Ljava/lang/String;
    :cond_d
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 3226
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v18

    .line 3228
    .local v18, next:J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 3229
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 3230
    :catch_4
    move-exception v12

    .line 3231
    .local v12, ex:Ljava/lang/Exception;
    const-string v23, "[HtcMusic]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isDRM... Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3242
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v18           #next:J
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 3112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryUpdateAlbumArtSetting()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 6679
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6680
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "auto_download"

    aput-object v1, v2, v8

    .line 6681
    .local v2, mSettingColumns:[Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6683
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6684
    const-string v1, "auto_download"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v7

    .line 6687
    :goto_0
    return v1

    :cond_0
    move v1, v8

    .line 6684
    goto :goto_0

    :cond_1
    move v1, v8

    .line 6687
    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 3486
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    if-nez v1, :cond_0

    .line 3487
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3488
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3489
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3490
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3493
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private recoverNoEffectWithHDMI()V
    .locals 5

    .prologue
    .line 5971
    const/4 v1, 0x0

    .line 5974
    .local v1, recoverOriginal:Z
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5975
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 5976
    const/4 v1, 0x1

    .line 5980
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5981
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 5982
    const/4 v1, 0x1

    .line 5986
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    .line 5987
    .local v0, currentSoundSetting:I
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v0, v2, :cond_2

    .line 5988
    const/4 v1, 0x1

    .line 5992
    :cond_2
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v2, v3, :cond_3

    .line 5993
    const/4 v1, 0x1

    .line 5996
    :cond_3
    if-eqz v1, :cond_4

    .line 5997
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 6000
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 6001
    const-string v2, "Original"

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 6002
    const v2, 0x7f0700dc

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6004
    :cond_4
    return-void
.end method

.method private refreshNow()J
    .locals 12

    .prologue
    .line 3496
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_1

    .line 3497
    const-wide/16 v6, 0x1f4

    .line 3542
    :cond_0
    :goto_0
    return-wide v6

    .line 3499
    :cond_1
    :try_start_0
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    .line 3500
    .local v2, pos:J
    :goto_1
    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x3e8

    rem-long v10, v2, v10

    sub-long v6, v8, v10

    .line 3501
    .local v6, remaining:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_7

    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 3504
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_2

    .line 3505
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time escpae: scrollX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scrollY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3508
    :cond_2
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-static {p0, v9, v10}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3510
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_3

    .line 3511
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time left: scrollX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scrollY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3517
    :cond_3
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    sub-long v4, v8, v10

    .line 3519
    .local v4, remain:J
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_5

    .end local v4           #remain:J
    :goto_2
    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3521
    const-wide/16 v8, 0x3e8

    mul-long v0, v8, v2

    .line 3522
    .local v0, number:J
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-wide v9, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    cmp-long v9, v0, v9

    if-lez v9, :cond_6

    .end local v0           #number:J
    :goto_3
    iget-wide v9, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    div-long v9, v0, v9

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 3524
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 3525
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getBufferingPercent()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    div-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    .line 3540
    .end local v2           #pos:J
    .end local v6           #remaining:J
    :catch_0
    move-exception v8

    .line 3542
    const-wide/16 v6, 0x1f4

    goto/16 :goto_0

    .line 3499
    :cond_4
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto/16 :goto_1

    .line 3519
    .restart local v2       #pos:J
    .restart local v4       #remain:J
    .restart local v6       #remaining:J
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 3522
    .end local v4           #remain:J
    .restart local v0       #number:J
    :cond_6
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    goto :goto_3

    .line 3528
    .end local v0           #number:J
    :cond_7
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3529
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3530
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 3532
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3533
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    .line 3535
    :cond_8
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private resetCurrentAlbumArt()V
    .locals 11

    .prologue
    .line 6723
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 6724
    const-string v1, "[HtcMusic]"

    const-string v4, "mService is null while resetCurrentAlbumArt "

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6757
    :cond_0
    :goto_0
    return-void

    .line 6727
    :cond_1
    const-string v1, "[HtcMusic]"

    const-string v4, "resetCurrentAlbum"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6729
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6730
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 6731
    .local v6, currentAlbumId:I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "dl_data_backup"

    aput-object v4, v2, v1

    .line 6735
    .local v2, cols:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6736
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6738
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6739
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 6740
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6742
    .local v9, original_path:Ljava/lang/String;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6743
    const-string v1, "dl_data"

    const-string v4, ""

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6744
    const-string v1, "dl_data_backup"

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6745
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6747
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6749
    .end local v9           #original_path:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_0

    .line 6750
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Lcom/htc/music/GliderAdapter;->setDlAlbumArt(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 6752
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 6753
    .local v8, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6754
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 6755
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 2786
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 2827
    :cond_0
    :goto_0
    return-void

    .line 2789
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2793
    if-nez p1, :cond_2

    .line 2794
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 2795
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 2796
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 2825
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2798
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2799
    cmp-long v4, p2, v6

    if-gez v4, :cond_6

    .line 2801
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 2806
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 2807
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_3

    .line 2809
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 2810
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 2811
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 2812
    add-long/2addr v2, v0

    .line 2814
    .end local v0           #duration:J
    :cond_3
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    .line 2815
    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 2816
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 2818
    :cond_5
    if-ltz p1, :cond_7

    .line 2819
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 2823
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 2804
    .end local v2           #newpos:J
    :cond_6
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 2821
    .restart local v2       #newpos:J
    :cond_7
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 2830
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 2867
    :goto_0
    return-void

    .line 2833
    :cond_0
    if-nez p1, :cond_1

    .line 2834
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 2835
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 2836
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 2865
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2838
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2839
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 2841
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 2846
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 2847
    .local v2, newpos:J
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 2848
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 2850
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 2851
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 2852
    sub-long/2addr v2, v0

    .line 2854
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 2855
    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 2856
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 2858
    :cond_4
    if-ltz p1, :cond_6

    .line 2859
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 2863
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 2844
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 2861
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private seekMethod1(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 2602
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_b

    .line 2603
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 2604
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_9

    .line 2605
    const/4 v0, 0x0

    .line 2607
    .local v0, dir:I
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v2, v3, :cond_1

    .line 2608
    const/4 v0, 0x0

    .line 2628
    :cond_0
    :goto_2
    iput v1, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2629
    iput v2, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2631
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2635
    const/4 v3, 0x1

    .line 2641
    .end local v0           #dir:I
    .end local v2           #y:I
    :goto_4
    return v3

    .line 2609
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_2

    .line 2610
    const/4 v0, 0x1

    goto :goto_2

    .line 2611
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_3

    .line 2612
    const/4 v0, -0x1

    goto :goto_2

    .line 2614
    :cond_3
    if-ne v2, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_4

    .line 2615
    const/4 v0, -0x1

    goto :goto_2

    .line 2616
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_5

    .line 2617
    const/4 v0, 0x1

    goto :goto_2

    .line 2619
    :cond_5
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_6

    if-gt v1, v6, :cond_6

    .line 2620
    const/4 v0, 0x1

    goto :goto_2

    .line 2621
    :cond_6
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_7

    if-lt v1, v7, :cond_7

    .line 2622
    const/4 v0, -0x1

    goto :goto_2

    .line 2624
    :cond_7
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_8

    if-gt v1, v6, :cond_8

    .line 2625
    const/4 v0, -0x1

    goto :goto_2

    .line 2626
    :cond_8
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_0

    if-lt v1, v7, :cond_0

    .line 2627
    const/4 v0, 0x1

    goto :goto_2

    .line 2603
    .end local v0           #dir:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2602
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2639
    .end local v2           #y:I
    :cond_b
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2640
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2641
    const/4 v3, 0x0

    goto :goto_4

    .line 2632
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 2645
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 2658
    :cond_0
    :goto_0
    return v2

    .line 2647
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 2648
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 2649
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 2651
    .local v1, seekpercentage:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2654
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2655
    const/4 v2, 0x1

    goto :goto_0

    .line 2647
    .end local v1           #seekpercentage:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2652
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setAllSongsTitle()V
    .locals 0

    .prologue
    .line 3372
    return-void
.end method

.method private setOnDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 339
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 340
    return-void
.end method

.method private setOnSoundEffectDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 352
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 353
    return-void
.end method

.method private setPauseButtonImage()V
    .locals 3

    .prologue
    .line 3376
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3379
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 3380
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_pause_on"

    const v2, 0x2080915

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3381
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_transport_play"

    const v2, 0x2080087

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3415
    :cond_0
    :goto_0
    return-void

    .line 3386
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3387
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_icon_glance_pause_on"

    const v2, 0x2080915

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e5

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V

    goto :goto_0

    .line 3413
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3397
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 3398
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_play_on"

    const v2, 0x2080927

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3399
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_transport_play"

    const v2, 0x2080087

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3404
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_icon_glance_play_on"

    const v2, 0x2080927

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e6

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setPluginListListener()V
    .locals 8

    .prologue
    .line 4911
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4913
    .local v5, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 4915
    .local v4, serviceCount:I
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_1

    .line 4985
    :cond_0
    :goto_0
    return-void

    .line 4918
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->refreshPlugin()V

    .line 4919
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPluginCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4922
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 4923
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v2}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 4924
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 4925
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4922
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4929
    .end local v0           #description:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 4930
    const-string v6, "[HtcMusic]"

    const-string v7, "there is no plugin services with description shown"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4981
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 4982
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4934
    .end local v1           #e1:Landroid/os/RemoteException;
    .restart local v2       #i:I
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 4935
    const-string v6, "[HtcMusic]"

    const-string v7, "something error in setPluginListListener."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4940
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 4941
    .local v3, items:[Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4945
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4946
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 3

    .prologue
    .line 3287
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 3288
    const-string v0, "[HtcMusic]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    :goto_0
    return-void

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3293
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_disable"

    const v2, 0x2080943

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3318
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3298
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3313
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_disable"

    const v2, 0x2080943

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3301
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_on"

    const v2, 0x2080944

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3307
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_one_on"

    const v2, 0x2080945

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 4573
    packed-switch p1, :pswitch_data_0

    .line 4603
    :goto_0
    return-void

    .line 4576
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 4577
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4578
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 4579
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 4581
    :cond_0
    const v0, 0x7f07004a

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 4582
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4583
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4588
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 4589
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 4590
    const v0, 0x7f07004b

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4591
    :catch_1
    move-exception v0

    goto :goto_0

    .line 4596
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 4597
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 4598
    const v0, 0x7f070049

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 4599
    :catch_2
    move-exception v0

    goto :goto_0

    .line 4573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtone()V
    .locals 2

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_1

    .line 2486
    :cond_0
    :goto_0
    return-void

    .line 2476
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v0, :cond_2

    .line 2477
    new-instance v0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 2480
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_0

    .line 2481
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 2482
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 2483
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 2484
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private setShuffleButtonImage()V
    .locals 3

    .prologue
    .line 3324
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 3325
    const-string v0, "[HtcMusic]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    :goto_0
    return-void

    .line 3329
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3330
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_shuffle_disable"

    const v2, 0x2080968

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3353
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3336
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3348
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_shuffle_on"

    const v2, 0x2080969

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3339
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_shuffle_disable"

    const v2, 0x2080968

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setSoundEffect(Ljava/lang/String;I)V
    .locals 3
    .parameter "soundStyle"
    .parameter "saveStatus"

    .prologue
    const/4 v2, 0x3

    .line 5677
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_0

    .line 5678
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 5679
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5680
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5681
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savestatus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5683
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5688
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 5686
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "SetSoundEffect()...mNonUiHandler is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 5

    .prologue
    .line 2493
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v0

    .line 2496
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 2521
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2522
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2524
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 2499
    :pswitch_0
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal file case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 2510
    :pswitch_1
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD DRM case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 2496
    nop

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
    .line 2528
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 2530
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2531
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 2541
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2542
    return-void
.end method

.method private showHideOneShotMode()V
    .locals 1

    .prologue
    .line 3261
    const/4 v0, 0x0

    .line 3271
    .local v0, enableBtn:Z
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3272
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3273
    const/4 v0, 0x1

    .line 3281
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3282
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 3283
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2563
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2949
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    .line 2951
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 2952
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2953
    return-void
.end method

.method private startAutoDownloadAlbum()V
    .locals 2

    .prologue
    .line 6691
    const-string v0, "[HtcMusic]"

    const-string v1, "start download albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6692
    const-string v0, "action_auto_update_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 6693
    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1155
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1156
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1157
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1158
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1159
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 1160
    return-void
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 6887
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6888
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6891
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6896
    :goto_0
    return-void

    .line 6892
    :catch_0
    move-exception v0

    .line 6893
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6894
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startMusicEnhancerService(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 6760
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_0

    .line 6761
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6762
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v1, "com.htc.musicenhancer"

    const-string v2, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6764
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6766
    .end local v0           #downloadAlbumArtIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startPlayback()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 2956
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v10, :cond_0

    .line 3046
    :goto_0
    return-void

    .line 2958
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2959
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 2960
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 2961
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2962
    .local v6, oneShot:Z
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    if-nez v10, :cond_5

    .line 2965
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 2966
    .local v7, scheme:Ljava/lang/String;
    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2967
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2971
    :goto_1
    if-eqz v1, :cond_4

    const-string v10, "content://drm/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2972
    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 2973
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    .line 2974
    const v10, 0x7f07005d

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 2975
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 2969
    .end local v8           #status:I
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2977
    .restart local v8       #status:I
    :cond_2
    if-eq v8, v13, :cond_3

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 2979
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2980
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2981
    const-string v10, "drmuri"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2982
    const-string v10, "drmtargettomain"

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2983
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 2984
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 2989
    .end local v8           #status:I
    :cond_4
    const/4 v6, 0x1

    .line 2990
    :try_start_0
    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    if-nez v10, :cond_8

    .line 2991
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_7

    .line 2992
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3005
    :goto_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v1}, Lcom/htc/music/IMediaPlaybackService;->openfile(Ljava/lang/String;)V

    .line 3008
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3010
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 3011
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3019
    .end local v7           #scheme:Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v6, :cond_6

    .line 3021
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    .line 3022
    .local v3, isSystemReady:Z
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_9

    if-nez v3, :cond_9

    .line 3023
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v10, :cond_6

    .line 3024
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->IsReloadAllMusicForQueue(Landroid/content/Context;)Z

    move-result v10

    if-ne v10, v13, :cond_6

    .line 3025
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 3026
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3045
    .end local v3           #isSystemReady:Z
    :cond_6
    :goto_4
    iput-boolean v14, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    goto/16 :goto_0

    .line 3002
    .restart local v7       #scheme:Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3015
    :catch_0
    move-exception v0

    .line 3016
    .local v0, ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t start playback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3013
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_8
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3030
    .end local v7           #scheme:Ljava/lang/String;
    .restart local v3       #isSystemReady:Z
    :cond_9
    :try_start_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    .line 3031
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    .line 3033
    .local v4, next:J
    :try_start_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3034
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 3036
    :catch_1
    move-exception v0

    .line 3037
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 3040
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #isSystemReady:Z
    .end local v4           #next:J
    :catch_2
    move-exception v0

    .line 3041
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startUpdateAllAlbum()V
    .locals 2

    .prologue
    .line 6696
    const-string v0, "[HtcMusic]"

    const-string v1, "start update all albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6697
    const-string v0, "action_update_all_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 6698
    return-void
.end method

.method private stopDownloadAlbumArtService()V
    .locals 2

    .prologue
    .line 6701
    const-string v0, "[HtcMusic]"

    const-string v1, "stopDownloadAlbumArtService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6702
    const-string v0, "action_cancel_download"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 6705
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2890
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 2919
    :goto_0
    return-void

    .line 2894
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 2895
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 2896
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 2897
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2898
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2899
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 2905
    :cond_1
    const v1, 0x7f070047

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 2916
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    goto :goto_0

    .line 2917
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2906
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 2908
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 2909
    const v1, 0x7f070048

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 2911
    :cond_4
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private updateCurrentAlbum()V
    .locals 5

    .prologue
    .line 6708
    const-string v2, "[HtcMusic]"

    const-string v3, "updateCurrentAlbum"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6709
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_update_current_album"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6710
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6713
    :try_start_0
    const-string v2, "album_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6714
    const-string v2, "audio_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6715
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6720
    :goto_0
    return-void

    .line 6716
    :catch_0
    move-exception v1

    .line 6717
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in updateCurrentAlbum. Ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGlider()V
    .locals 10

    .prologue
    .line 3433
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    .line 3483
    :cond_0
    :goto_0
    return-void

    .line 3437
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 3438
    .local v0, albumIdArray:[I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v6

    .line 3439
    .local v6, selectedPos:I
    const/4 v4, 0x0

    .line 3440
    .local v4, nLength:I
    if-eqz v0, :cond_2

    .line 3441
    array-length v4, v0

    .line 3444
    :cond_2
    if-eqz v0, :cond_4

    if-lez v4, :cond_4

    .line 3445
    new-array v1, v4, [Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 3447
    .local v1, albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 3448
    new-instance v7, Lcom/htc/music/GliderAdapter$AlbumInfo;

    invoke-direct {v7}, Lcom/htc/music/GliderAdapter$AlbumInfo;-><init>()V

    aput-object v7, v1, v3

    .line 3449
    aget-object v7, v1, v3

    aget v8, v0, v3

    iput v8, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    .line 3447
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3451
    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3454
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    invoke-virtual {v7, v1, v8, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V

    .line 3462
    .end local v1           #albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .end local v3           #i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyDataSetChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3469
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v5

    .line 3470
    .local v5, nSelectPos:I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3471
    if-ltz v5, :cond_5

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 3472
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3473
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 3474
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3480
    .end local v5           #nSelectPos:I
    :catch_0
    move-exception v2

    .line 3481
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3456
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #albumIdArray:[I
    .restart local v4       #nLength:I
    .restart local v6       #selectedPos:I
    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3459
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3464
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :catch_1
    move-exception v2

    .line 3465
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 3476
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v5       #nSelectPos:I
    :cond_5
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3477
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 3478
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 940
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 943
    :cond_0
    const v1, 0x7f0800d0

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 944
    .local v0, queueButton:Lcom/htc/widget/HeaderBarImage;
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_1

    const v1, 0x20808fb

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 946
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    const v1, 0x7f070105

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 949
    return-void

    .line 944
    :cond_1
    const v1, 0x2080910

    goto :goto_0

    .line 946
    :cond_2
    const v1, 0x7f0700df

    goto :goto_1
.end method

.method private updateTrackInfoP()V
    .locals 28

    .prologue
    .line 3912
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3913
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 3914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4140
    :cond_1
    :goto_0
    return-void

    .line 3920
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 3922
    .local v21, path:Ljava/lang/String;
    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3927
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 3929
    .local v22, pluginIconGap:I
    if-eqz v21, :cond_14

    .line 3930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 3931
    .local v9, artistName:Ljava/lang/String;
    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3932
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3934
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    .line 3935
    .local v8, albumName:Ljava/lang/String;
    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3936
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3938
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v27

    .line 3941
    .local v27, trackName:Ljava/lang/String;
    if-nez v9, :cond_f

    if-nez v8, :cond_f

    if-nez v27, :cond_f

    .line 3942
    const-string v2, "[HtcMusic]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3943
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3945
    .local v15, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v15, :cond_6

    .line 3947
    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3949
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 3950
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 3951
    const/4 v2, 0x7

    invoke-virtual {v15, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v27

    .line 3957
    :goto_1
    :try_start_2
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3958
    const/4 v15, 0x0

    .line 3962
    :cond_6
    if-eqz v9, :cond_7

    .line 3963
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 3965
    :cond_7
    if-eqz v9, :cond_8

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3966
    :cond_8
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3969
    :cond_9
    if-eqz v8, :cond_a

    .line 3970
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 3972
    :cond_a
    if-eqz v8, :cond_b

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3973
    :cond_b
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3976
    :cond_c
    if-eqz v27, :cond_d

    .line 3977
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 3979
    :cond_d
    if-eqz v27, :cond_e

    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3981
    :cond_e
    const-string v2, "/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3982
    const/16 v16, -0x1

    .local v16, nBegin:I
    const/16 v17, -0x1

    .line 3984
    .local v17, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 3985
    const-string v2, "."

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 3987
    if-ltz v16, :cond_f

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_f

    .line 3988
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 3996
    .end local v15           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v16           #nBegin:I
    .end local v17           #nEnd:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3997
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    .line 3998
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    .line 3999
    if-eqz v8, :cond_10

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4001
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4005
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    if-gez v2, :cond_13

    const/16 v20, 0x1

    .line 4007
    .local v20, ntrack:I
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4011
    .local v19, nOfSongs:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 4012
    .local v25, res:Landroid/content/res/Resources;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4013
    .local v14, measureTextView:Landroid/widget/TextView;
    const/4 v2, 0x0

    const v3, 0x2050020

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4014
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v18, v2, v3

    .line 4017
    .local v18, nNofSongsLength:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 4019
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 4085
    .end local v27           #trackName:Ljava/lang/String;
    :cond_11
    :goto_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4088
    .local v26, temp:Ljava/lang/StringBuilder;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    if-gez v2, :cond_19

    const/16 v20, 0x1

    .line 4090
    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4091
    const-string v2, " / "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4093
    const-string v2, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4094
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4101
    :goto_6
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 4105
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 4107
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 3953
    .end local v14           #measureTextView:Landroid/widget/TextView;
    .end local v18           #nNofSongsLength:I
    .end local v19           #nOfSongs:Ljava/lang/String;
    .end local v20           #ntrack:I
    .end local v25           #res:Landroid/content/res/Resources;
    .end local v26           #temp:Ljava/lang/StringBuilder;
    .restart local v15       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v27       #trackName:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 3954
    .local v12, ex:Ljava/lang/RuntimeException;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 4137
    .end local v8           #albumName:Ljava/lang/String;
    .end local v9           #artistName:Ljava/lang/String;
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v15           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v21           #path:Ljava/lang/String;
    .end local v22           #pluginIconGap:I
    .end local v27           #trackName:Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 4138
    .local v12, ex:Landroid/os/RemoteException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 4004
    .end local v12           #ex:Landroid/os/RemoteException;
    .restart local v8       #albumName:Ljava/lang/String;
    .restart local v9       #artistName:Ljava/lang/String;
    .restart local v21       #path:Ljava/lang/String;
    .restart local v22       #pluginIconGap:I
    .restart local v27       #trackName:Ljava/lang/String;
    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4005
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v20, v2, 0x1

    goto/16 :goto_3

    .line 4021
    .end local v8           #albumName:Ljava/lang/String;
    .end local v9           #artistName:Ljava/lang/String;
    .end local v27           #trackName:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v24

    .line 4022
    .local v24, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v23

    .line 4023
    .local v23, position:I
    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    array-length v2, v0

    if-lez v2, :cond_1

    if-ltz v23, :cond_1

    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v23

    if-le v2, v0, :cond_1

    .line 4028
    const/16 v2, 0xb

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "artist_id"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "is_podcast"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "bookmark"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "composer"

    aput-object v3, v4, v2

    .line 4042
    .local v4, mCursorCols:[Ljava/lang/String;
    aget v2, v24, v23

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 4043
    .local v13, id:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v10

    .line 4045
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4049
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4050
    const-string v2, "artist"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4051
    .restart local v9       #artistName:Ljava/lang/String;
    if-eqz v9, :cond_15

    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4052
    :cond_15
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4054
    :cond_16
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    const-string v2, "album"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4057
    .restart local v8       #albumName:Ljava/lang/String;
    if-eqz v8, :cond_17

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4058
    :cond_17
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4060
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4062
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrackName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "title"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v20, v2, 0x1

    .line 4064
    .restart local v20       #ntrack:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4068
    .restart local v19       #nOfSongs:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 4069
    .restart local v25       #res:Landroid/content/res/Resources;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4070
    .restart local v14       #measureTextView:Landroid/widget/TextView;
    const/4 v2, 0x0

    const v3, 0x2050020

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4071
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v18, v2, v3

    .line 4074
    .restart local v18       #nNofSongsLength:I
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 4076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4078
    if-eqz v10, :cond_11

    .line 4079
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 4088
    .end local v4           #mCursorCols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v13           #id:Ljava/lang/String;
    .end local v23           #position:I
    .end local v24           #queue:[I
    .restart local v26       #temp:Ljava/lang/StringBuilder;
    :cond_19
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v2

    add-int/lit8 v20, v2, 0x1

    goto/16 :goto_5

    .line 4096
    :catch_2
    move-exception v11

    .line 4098
    .local v11, e:Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6
.end method

.method private wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 4192
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4193
    const/4 v0, 0x1

    .line 4195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 2
    .parameter "newStatus"

    .prologue
    .line 5692
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5693
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 5694
    const v1, 0x7f070097

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 5698
    :cond_0
    if-nez p1, :cond_1

    .line 5700
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    if-eqz v1, :cond_1

    .line 5707
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 5709
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5715
    :cond_1
    :goto_0
    return-void

    .line 5710
    :catch_0
    move-exception v0

    .line 5711
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 8
    .parameter "newStatus"

    .prologue
    .line 5763
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BeatsAudioStatusChanged, newStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5771
    if-eqz p1, :cond_0

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    .line 5773
    .local v3, selectedStyleIndex:I
    :goto_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 5775
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5776
    .local v4, styleSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 5777
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/SoundEffectItem;

    .line 5778
    .local v1, item:Lcom/htc/music/util/SoundEffectItem;
    if-ne v0, v3, :cond_2

    .line 5779
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 5780
    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 5776
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5771
    .end local v0           #i:I
    .end local v1           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v3           #selectedStyleIndex:I
    .end local v4           #styleSize:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0

    .line 5783
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/htc/music/util/SoundEffectItem;
    .restart local v3       #selectedStyleIndex:I
    .restart local v4       #styleSize:I
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_2

    .line 5786
    .end local v1           #item:Lcom/htc/music/util/SoundEffectItem;
    :cond_3
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x33

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5787
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5791
    .end local v0           #i:I
    .end local v2           #msg:Landroid/os/Message;
    .end local v4           #styleSize:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v5, v6, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 5793
    iput v3, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 5794
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 5795
    return-void
.end method

.method public CheckDLNAMode(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 5325
    const-string v6, "DLNA"

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5327
    .local v0, Preferences:Landroid/content/SharedPreferences;
    const-string v6, "Server"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5328
    .local v5, server:Ljava/lang/String;
    const-string v6, "Render"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5329
    .local v4, render:Ljava/lang/String;
    const-string v6, "container"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5330
    .local v1, container:Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5331
    .local v2, content:Ljava/lang/String;
    const-string v6, "playatglance"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 5333
    .local v3, playAtGlance:Z
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5334
    const-string v6, "[HtcMusic]"

    const-string v7, "Get info from intent"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5335
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5336
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5337
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5338
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5339
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent playAtGlance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5341
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 5342
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 5346
    :cond_0
    const-string v6, "[HtcMusic]"

    const-string v7, "All info from intent is null, get info from preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5348
    const-string v6, "server"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5349
    const-string v6, "Render"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5350
    const-string v6, "container"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5351
    const-string v6, "content"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5353
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5354
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5355
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5356
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 5436
    :goto_0
    return-void

    .line 5365
    :cond_1
    const-string v6, "[HtcMusic]"

    const-string v7, "content != null, called by DMC, need update local play position"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchLocal"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5378
    :cond_2
    :goto_1
    const-string v6, "[HtcMusic]"

    const-string v7, "save intent info to preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5379
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5380
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5381
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5382
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5383
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save startIdx ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "startIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5384
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save endIdx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "endIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5385
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save direction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "direction"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5386
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save filepath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5388
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "server"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Render"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "container"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "content"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "initialMusic"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5395
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {p0, v6, v7, v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 5396
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "initialMusic"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5410
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 5413
    :pswitch_0
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_LOCAL mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5369
    :cond_3
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 5370
    const-string v6, "[HtcMusic]"

    const-string v7, "server, container, content != null, called by DMC, need update DMP"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5371
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchDMP"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "filepath"

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "startIdx"

    const-string v8, "startIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "endIdx"

    const-string v8, "endIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "direction"

    const-string v8, "direction"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 5421
    :pswitch_1
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_DMP mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5426
    :pswitch_2
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_PUSH mode, finish Activity"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5427
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 5431
    :pswitch_3
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_DMC mode, finish Activity"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5432
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 5410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 3
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 5910
    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnHdmiPlugReceiver, bIsPluged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5912
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5913
    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5926
    :cond_0
    :goto_0
    return-void

    .line 5917
    :cond_1
    if-lez p2, :cond_0

    .line 5918
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5919
    const v0, 0x7f0700dc

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_0

    .line 5922
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0
.end method

.method protected afterPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4647
    const/4 v0, 0x0

    .line 4648
    .local v0, enableBtn:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4650
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 4651
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4652
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 4653
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4661
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 4662
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 4663
    const/4 v0, 0x1

    .line 4665
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 4666
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4667
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    .line 4668
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4674
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4693
    :goto_0
    return-void

    .line 4677
    :catch_0
    move-exception v2

    .line 4682
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    .line 4683
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 4684
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4685
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4686
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4687
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 4690
    invoke-virtual {p0, v4, v4}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    .line 4692
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0
.end method

.method canRewind()Z
    .locals 1

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 4774
    const/4 v0, 0x0

    .line 4776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canShare()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 4704
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 4769
    :goto_0
    return v0

    .line 4707
    :cond_1
    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4708
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 4709
    goto :goto_0

    .line 4711
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 4712
    :cond_3
    if-eqz v1, :cond_4

    .line 4713
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 4714
    goto :goto_0

    .line 4717
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4718
    const/4 v0, 0x0

    .line 4720
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 4721
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4724
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4726
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4727
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4732
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 4734
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 4735
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 4736
    const-string v9, "[HtcMusic]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4737
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4738
    const/4 v1, 0x0

    move v0, v8

    .line 4739
    goto :goto_0

    .line 4742
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 4743
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4745
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4747
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 4749
    :cond_8
    const/4 v0, 0x2

    .line 4753
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4766
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4767
    const/4 v1, 0x0

    .line 4769
    goto/16 :goto_0

    .line 4757
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4758
    const-string v8, "[HtcMusic]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4759
    const/4 v0, 0x0

    goto :goto_1

    .line 4763
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 4606
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4608
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 4609
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 4610
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 4640
    :goto_0
    return-void

    .line 4611
    :cond_0
    if-nez v5, :cond_3

    .line 4612
    invoke-static {v3, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 4613
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 4614
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 4615
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 4617
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 4618
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 4619
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 4621
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 4622
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 4626
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 4628
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4629
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 4633
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4634
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4635
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4636
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4637
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 4638
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 4631
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public dismissPopupBubble()V
    .locals 2

    .prologue
    .line 6880
    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 6881
    .local v0, storeButton:Lcom/htc/widget/HeaderBarImage;
    if-eqz v0, :cond_0

    .line 6882
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 6884
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 1381
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1382
    return-void
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 17
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 5799
    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, newStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isBeatsHeadset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5801
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5906
    :cond_0
    :goto_0
    return-void

    .line 5805
    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5806
    const-string v14, "[HtcMusic]"

    const-string v15, "headSetStatusChanged, headset is plugged out and HDMI is connected."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5807
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0

    .line 5811
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v13

    .line 5813
    .local v13, styleSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v14, v13, :cond_8

    .line 5817
    if-eqz p1, :cond_3

    .line 5818
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    if-ge v7, v13, :cond_5

    .line 5819
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 5820
    .local v5, enableItem:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 5818
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5824
    .end local v5           #enableItem:Lcom/htc/music/util/SoundEffectItem;
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/util/SoundEffectItem;

    .line 5826
    .local v6, equalizerSetting:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 5829
    iget-boolean v14, v6, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v14, :cond_5

    .line 5830
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v4

    .line 5831
    .local v4, effectType:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 5832
    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 5835
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 5836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 5837
    .local v2, defaultEffect:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 5838
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 5843
    .end local v2           #defaultEffect:Lcom/htc/music/util/SoundEffectItem;
    .end local v4           #effectType:I
    .end local v6           #equalizerSetting:Lcom/htc/music/util/SoundEffectItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/util/SoundEffectItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 5846
    const/4 v9, 0x0

    .line 5847
    .local v9, item:Lcom/htc/music/util/SoundEffectItem;
    const/4 v7, 0x1

    .restart local v7       #i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, iSize:I
    :goto_2
    if-ge v7, v8, :cond_7

    .line 5848
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v9, Lcom/htc/music/util/SoundEffectItem;

    .line 5849
    .restart local v9       #item:Lcom/htc/music/util/SoundEffectItem;
    if-nez v9, :cond_6

    .line 5847
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5853
    :cond_6
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v7, v14, :cond_c

    .line 5854
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 5859
    .end local v7           #i:I
    .end local v8           #iSize:I
    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    :catch_0
    move-exception v3

    .line 5860
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5861
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 5864
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x33

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 5865
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5868
    .end local v10           #msg:Landroid/os/Message;
    :cond_8
    if-nez p1, :cond_0

    .line 5869
    const/4 v11, 0x0

    .line 5870
    .local v11, recoverEffect:Z
    const/4 v12, 0x0

    .line 5873
    .local v12, showToast:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 5874
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 5876
    const/4 v12, 0x1

    .line 5880
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v1

    .line 5881
    .local v1, currentSoundSetting:I
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v14, :cond_a

    .line 5882
    const/4 v11, 0x1

    .line 5883
    const/4 v12, 0x1

    .line 5887
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v14, v15, :cond_b

    .line 5888
    const/4 v11, 0x1

    .line 5889
    const/4 v12, 0x1

    .line 5892
    :cond_b
    if-eqz v12, :cond_0

    .line 5893
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x34

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 5894
    .restart local v10       #msg:Landroid/os/Message;
    const v14, 0x7f070096

    iput v14, v10, Landroid/os/Message;->arg1:I

    .line 5895
    if-eqz v11, :cond_d

    .line 5896
    const/4 v14, 0x1

    iput v14, v10, Landroid/os/Message;->arg2:I

    .line 5900
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5856
    .end local v1           #currentSoundSetting:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #recoverEffect:Z
    .end local v12           #showToast:Z
    .restart local v7       #i:I
    .restart local v8       #iSize:I
    .restart local v9       #item:Lcom/htc/music/util/SoundEffectItem;
    :cond_c
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 5898
    .end local v7           #i:I
    .end local v8           #iSize:I
    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    .restart local v1       #currentSoundSetting:I
    .restart local v10       #msg:Landroid/os/Message;
    .restart local v11       #recoverEffect:Z
    .restart local v12       #showToast:Z
    :cond_d
    const/4 v14, 0x0

    iput v14, v10, Landroid/os/Message;->arg2:I

    goto :goto_4
.end method

.method protected initializeSoundEffectStyles()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 5595
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5597
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5598
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5599
    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 5600
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 5601
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 5650
    :cond_0
    :goto_0
    return-void

    .line 5606
    .end local v1           #resource:Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 5608
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    .line 5610
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5621
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 5622
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    .line 5625
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5626
    .restart local v1       #resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5627
    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 5629
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5630
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 5631
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto :goto_0

    .line 5612
    .end local v1           #resource:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 5613
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSoundEffectStyles, Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5617
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v2, "[HtcMusic]"

    const-string v3, "initializeSoundEffectStyles, mService is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5639
    .restart local v1       #resource:Landroid/content/res/Resources;
    :cond_5
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    const-string v3, "Beats audio"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public isShowNowPlaying()Z
    .locals 1

    .prologue
    .line 4788
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 29
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2286
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "receive activity result, requestCode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", resultCode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2292
    :cond_1
    const v25, 0xc351

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 2293
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->startListenStore()V

    goto :goto_0

    .line 2297
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 2298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v18

    .line 2299
    .local v18, result:Z
    if-nez v18, :cond_0

    .line 2302
    .end local v18           #result:Z
    :cond_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2317
    :sswitch_0
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2318
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v15, v0, [I

    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v15, v25

    .line 2321
    .local v15, list:[I
    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2322
    .local v16, playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v15, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2304
    .end local v15           #list:[I
    .end local v16           #playlist:I
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 2305
    .local v24, uri:Landroid/net/Uri;
    if-eqz v24, :cond_0

    .line 2306
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v15, v0, [I

    .line 2307
    .restart local v15       #list:[I
    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v15, v25

    .line 2308
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2309
    .restart local v16       #playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v15, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 2328
    .end local v15           #list:[I
    .end local v16           #playlist:I
    .end local v24           #uri:Landroid/net/Uri;
    :sswitch_2
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2329
    move-object/from16 v19, p3

    .line 2330
    .local v19, resultIntent:Landroid/content/Intent;
    new-instance v20, Lcom/htc/music/HtcMusic$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$20;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Intent;)V

    .line 2346
    .local v20, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v23, Ljava/lang/Thread;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2347
    .local v23, thread:Ljava/lang/Thread;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2352
    .end local v19           #resultIntent:Landroid/content/Intent;
    .end local v20           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v23           #thread:Ljava/lang/Thread;
    :sswitch_3
    const-string v25, "[HtcMusic]"

    const-string v26, "DMR_CHOOSER"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v25, "DLNA"

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 2358
    .local v17, pref:Landroid/content/SharedPreferences;
    const-string v25, "DMR"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2359
    .local v4, DMR:Ljava/lang/String;
    const-string v25, "server"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2361
    .local v5, DMS:Ljava/lang/String;
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMR = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "Render"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2365
    if-eqz v4, :cond_6

    .line 2366
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "switch"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2385
    :goto_1
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 2386
    const-string v25, "[HtcMusic]"

    const-string v26, "DMP mode change to DMS mode"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    const/4 v10, 0x0

    .line 2389
    .local v10, dmpPref:Landroid/content/SharedPreferences;
    const-string v25, "DMP"

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2393
    const-string v25, "container"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2394
    .local v6, container:Ljava/lang/String;
    const-string v25, "curContentId"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2395
    .local v7, curContentId:Ljava/lang/String;
    const-string v25, "startIdx"

    const-wide/16 v26, -0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 2396
    .local v21, startIdx:J
    const-string v25, "endIdx"

    const-wide/16 v26, -0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 2397
    .local v13, endIdx:J
    const-string v25, "direction"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2399
    .local v8, dir:I
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    const-wide/16 v25, -0x1

    cmp-long v25, v21, v25

    if-eqz v25, :cond_8

    if-eqz v8, :cond_8

    .line 2400
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 2401
    .local v12, ed:Landroid/content/SharedPreferences$Editor;
    const-string v25, "content"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2402
    const-string v25, "container"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2403
    const-string v25, "startIdx"

    move-object/from16 v0, v25

    move-wide/from16 v1, v21

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2404
    const-string v25, "endIdx"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2405
    const-string v25, "direction"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2406
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2414
    .end local v6           #container:Ljava/lang/String;
    .end local v7           #curContentId:Ljava/lang/String;
    .end local v8           #dir:I
    .end local v10           #dmpPref:Landroid/content/SharedPreferences;
    .end local v12           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v13           #endIdx:J
    .end local v21           #startIdx:J
    :cond_4
    :goto_2
    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v9

    .line 2417
    .local v9, dlnaMode:I
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "server"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMR = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "Render"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "container = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "container"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "content = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "content"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DLNA Mode = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_0

    .line 2427
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2433
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 2369
    .end local v9           #dlnaMode:I
    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "switch"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2371
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 2373
    const-string v25, "[HtcMusic]"

    const-string v26, "Service is playing"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2380
    :catch_0
    move-exception v11

    .line 2381
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 2378
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_7
    :try_start_2
    const-string v25, "[HtcMusic]"

    const-string v26, "Service is null or not playing"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2409
    .restart local v6       #container:Ljava/lang/String;
    .restart local v7       #curContentId:Ljava/lang/String;
    .restart local v8       #dir:I
    .restart local v10       #dmpPref:Landroid/content/SharedPreferences;
    .restart local v13       #endIdx:J
    .restart local v21       #startIdx:J
    :cond_8
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Some one value go wrong, container = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", curContentId = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", startIdx = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", dir = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2430
    .end local v6           #container:Ljava/lang/String;
    .end local v7           #curContentId:Ljava/lang/String;
    .end local v8           #dir:I
    .end local v10           #dmpPref:Landroid/content/SharedPreferences;
    .end local v13           #endIdx:J
    .end local v21           #startIdx:J
    .restart local v9       #dlnaMode:I
    :catch_1
    move-exception v11

    .line 2431
    .restart local v11       #e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 2302
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch

    .line 2423
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2567
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    .line 2568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2569
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2576
    :goto_0
    return-void

    .line 2574
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 482
    const-string v0, "[HtcMusic]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget v0, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 484
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 492
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 493
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 496
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 500
    :cond_3
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    .line 502
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 503
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 506
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 507
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 508
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 510
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 511
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 512
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 515
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    .line 516
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    .line 518
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 519
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 520
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 522
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 523
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 526
    :cond_4
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    goto :goto_0
.end method

.method public onContainerClick(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "clickedView"
    .parameter "nPosition"

    .prologue
    .line 5441
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 357
    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate() +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 363
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    .line 365
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 366
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10

    and-int/2addr v8, v9

    if-lez v8, :cond_0

    .line 367
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 373
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {p0, v12}, Lcom/htc/music/HtcMusic;->setVolumeControlStream(I)V

    .line 375
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->requestWindowFeature(I)Z

    .line 377
    const/4 v8, 0x2

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v12, v8, :cond_2

    .line 379
    :cond_1
    const-string v8, "[HtcMusic]"

    const-string v9, "DMC mode, return directly"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_0
    return-void

    .line 385
    :cond_2
    new-instance v8, Landroid/media/AudioManager;

    invoke-direct {v8, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    .line 387
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 388
    const v8, 0x7f030026

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    .line 390
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 393
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initGlider()V

    .line 394
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 395
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 396
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 398
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 399
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 400
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 403
    iput v10, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    .line 404
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    .line 406
    if-eqz p1, :cond_6

    .line 407
    const-string v8, "configchange"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 408
    const-string v8, "message"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 409
    const-string v8, "downloadalbumartid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 410
    const-string v8, "currentAudioId"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 411
    const-string v8, "currentAudioPath"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 413
    const-string v8, "tempSelectedEQIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, tempSelectedEQIndex:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 416
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_3
    :goto_1
    const-string v8, "tempSelectedSoundEffectIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 426
    const-string v8, "tempShowingEQIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 427
    .local v7, tempShowingEQIndex:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 429
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :cond_4
    :goto_2
    const-string v8, "ringtoneAudioPath"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, ringtoneAudioPath:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 437
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v8, :cond_5

    .line 438
    new-instance v8, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v8, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 440
    :cond_5
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v9, "ringtoneAudioId"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 441
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v8, v4}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 442
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v9, "ringtoneAudioType"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 447
    .end local v4           #ringtoneAudioPath:Ljava/lang/String;
    .end local v6           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v7           #tempShowingEQIndex:Ljava/lang/String;
    :cond_6
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "HtcMusicActivityWorker"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 448
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 449
    new-instance v8, Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;-><init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 451
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v8, :cond_7

    .line 452
    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_7
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v8, :cond_8

    .line 456
    const-string v8, "Music"

    invoke-virtual {p0, v8, v10}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 459
    :cond_8
    const/4 v2, 0x0

    .line 460
    .local v2, nowPlayingViewOn:Z
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "ShowNowPlaying"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 461
    .local v5, showNowPlaying:I
    if-ne v11, v5, :cond_a

    .line 462
    const/4 v2, 0x0

    .line 469
    :goto_3
    if-eqz v2, :cond_9

    .line 470
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 475
    :cond_9
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 477
    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate() -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    .end local v2           #nowPlayingViewOn:Z
    .end local v5           #showNowPlaying:I
    .restart local v6       #tempSelectedEQIndex:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 418
    .local v0, ex:Ljava/lang/Exception;
    iput v11, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    goto/16 :goto_1

    .line 430
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v7       #tempShowingEQIndex:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 431
    .restart local v0       #ex:Ljava/lang/Exception;
    iput v11, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    goto/16 :goto_2

    .line 463
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v6           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v7           #tempShowingEQIndex:Ljava/lang/String;
    .restart local v2       #nowPlayingViewOn:Z
    .restart local v5       #showNowPlaying:I
    :cond_a
    if-nez v5, :cond_b

    .line 464
    const/4 v2, 0x0

    goto :goto_3

    .line 466
    :cond_b
    const/4 v2, 0x1

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    .line 4241
    sparse-switch p1, :sswitch_data_0

    .line 4475
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 4243
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v5

    goto :goto_1

    .line 4248
    :sswitch_1
    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f07006f

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f07006e

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const v11, 0x7f0700ac

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 4253
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f07006d

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/music/HtcMusic$27;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$27;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v3, p1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 4270
    .local v5, repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-direct {p0, v5}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    goto :goto_1

    .line 4275
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v5           #repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_2
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1080027

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f07005d

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040013

    new-instance v12, Lcom/htc/music/HtcMusic$28;

    invoke-direct {v12, p0}, Lcom/htc/music/HtcMusic$28;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 4284
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v0

    .line 4285
    goto :goto_1

    .line 4287
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_3
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 4289
    const/4 v5, 0x0

    goto :goto_1

    .line 4292
    :cond_1
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1080027

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040013

    new-instance v12, Lcom/htc/music/HtcMusic$30;

    invoke-direct {v12, p0}, Lcom/htc/music/HtcMusic$30;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040009

    new-instance v12, Lcom/htc/music/HtcMusic$29;

    invoke-direct {v12, p0}, Lcom/htc/music/HtcMusic$29;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 4307
    .local v1, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v1

    .line 4308
    goto/16 :goto_1

    .line 4317
    .end local v1           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_4
    const/4 v10, 0x6

    if-ne p1, v10, :cond_4

    .line 4318
    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0700a9

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f0700aa

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const v11, 0x7f0700ab

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 4331
    .restart local v3       #items:[Ljava/lang/CharSequence;
    :goto_2
    const/4 v6, 0x0

    .line 4332
    .local v6, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v10, :cond_2

    .line 4333
    new-instance v10, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v10, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 4334
    const-string v10, "[HtcMusic]"

    const-string v11, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    :cond_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v10, :cond_3

    .line 4337
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/16 v11, 0x13

    invoke-virtual {v10, v3, v11}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 4339
    invoke-direct {p0, v6}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_3
    move-object v5, v6

    .line 4342
    goto/16 :goto_1

    .line 4324
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v6           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_4
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0700a9

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f0700aa

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .restart local v3       #items:[Ljava/lang/CharSequence;
    goto :goto_2

    .line 4345
    .end local v3           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 4346
    const-string v10, "[HtcMusic]"

    const-string v11, "onCreateDialog DIALOG_DOWNLOAD_ALBUMART"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4347
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    goto/16 :goto_1

    .line 4351
    :sswitch_6
    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 4357
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    if-eqz v10, :cond_5

    .line 4358
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 4360
    :cond_5
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    goto/16 :goto_1

    .line 4364
    :sswitch_7
    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x1

    invoke-static {p0, v10, v11, v12}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 4366
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    if-eqz v10, :cond_6

    .line 4367
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 4369
    :cond_6
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    goto/16 :goto_1

    .line 4373
    :sswitch_8
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v10, :cond_7

    .line 4374
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;

    move-result-object v8

    .line 4375
    .local v8, soundEffectDialog:Landroid/app/Dialog;
    if-eqz v8, :cond_0

    move-object v5, v8

    .line 4376
    goto/16 :goto_1

    .line 4379
    .end local v8           #soundEffectDialog:Landroid/app/Dialog;
    :cond_7
    const-string v10, "[HtcMusic]"

    const-string v11, "onCreateDialog, DIALOG_SOUND_EFFECT, mService is null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4385
    :sswitch_9
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 4386
    .local v2, equalizerDialog:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    move-object v5, v2

    goto/16 :goto_1

    .line 4391
    .end local v2           #equalizerDialog:Landroid/app/Dialog;
    :sswitch_a
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f07010d

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f07010e

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 4396
    .restart local v3       #items:[Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "dummy"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/music/HtcMusic$31;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$31;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v3, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 4411
    .local v7, shareTypeDialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v7}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v7

    .line 4412
    goto/16 :goto_1

    .line 4416
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v7           #shareTypeDialog:Landroid/app/AlertDialog;
    :sswitch_b
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v9

    .line 4419
    .local v9, textDialog:Landroid/app/Dialog;
    if-eqz v9, :cond_8

    .line 4420
    invoke-direct {p0, v9}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_8
    move-object v5, v9

    .line 4422
    goto/16 :goto_1

    .line 4427
    .end local v9           #textDialog:Landroid/app/Dialog;
    :sswitch_c
    const/4 v3, 0x0

    .line 4429
    .restart local v3       #items:[Ljava/lang/CharSequence;
    iget v10, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v10, :cond_a

    .line 4430
    const/4 v10, 0x4

    new-array v3, v10, [Ljava/lang/CharSequence;

    .end local v3           #items:[Ljava/lang/CharSequence;
    const/4 v10, 0x0

    const v11, 0x7f07004f

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x20c01f7

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const v11, 0x7f07004c

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x3

    const v11, 0x20c0138

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 4444
    .restart local v3       #items:[Ljava/lang/CharSequence;
    :cond_9
    :goto_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "dummy"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/music/HtcMusic$32;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$32;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v3, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 4471
    .local v4, optionDialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v4

    .line 4472
    goto/16 :goto_1

    .line 4437
    .end local v4           #optionDialog:Landroid/app/AlertDialog;
    :cond_a
    iget v10, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 4438
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/CharSequence;

    .end local v3           #items:[Ljava/lang/CharSequence;
    const/4 v10, 0x0

    const v11, 0x20c01f7

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x20c0138

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .restart local v3       #items:[Ljava/lang/CharSequence;
    goto :goto_3

    .line 4241
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_c
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0700ca

    const v4, 0x2080aac

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1783
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1785
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_2

    .line 1786
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v2, v1, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return v0

    .line 1790
    :cond_1
    iput v2, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 1791
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 1794
    :cond_2
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v0, v1, :cond_0

    .line 1797
    iput v0, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 1832
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_3

    .line 1833
    const/16 v1, 0x14

    const v2, 0x7f0700d7

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809fb

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1838
    :cond_3
    const v1, 0x7f07004f

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    const v2, 0x2080a69

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 1841
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1842
    const/16 v1, 0x22

    const v2, 0x7f0700bc

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809f9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1846
    :cond_4
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1847
    const/16 v1, 0x25

    const v2, 0x7f070071

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809d3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1852
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isYoutubeExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1853
    const/16 v1, 0x23

    invoke-interface {p1, v3, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1857
    :cond_6
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isYoutubeExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1858
    const/16 v1, 0x24

    invoke-interface {p1, v3, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1861
    :cond_7
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1862
    const/16 v1, 0x27

    const v2, 0x7f07000a

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080aa0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1866
    :cond_8
    const/16 v1, 0x21

    const v2, 0x20c01f7

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080337

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1869
    const/16 v1, 0x17

    const v2, 0x7f07004c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080a79

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1879
    const/16 v1, 0x1d

    const v2, 0x20c01fe

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080328

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1881
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1882
    const/16 v1, 0x26

    const v2, 0x20c0200

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080336

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1707
    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 1719
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cleanMessage()V

    .line 1721
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v0, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1723
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 1727
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1728
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1737
    :cond_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 1739
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 1740
    const-string v0, "Music"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 1742
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowNowPlaying"

    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1750
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_4

    .line 1751
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 1752
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 1755
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_5

    .line 1756
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->deInit()V

    .line 1757
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 1760
    :cond_5
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_6

    .line 1761
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 1762
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 1765
    :cond_6
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v0, :cond_7

    .line 1766
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    .line 1767
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 1770
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1771
    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2722
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 2724
    .local v0, repcnt:I
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2763
    :cond_0
    :goto_0
    return v1

    .line 2724
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2727
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 2763
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2729
    :sswitch_0
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    goto :goto_0

    .line 2733
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 2736
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2737
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2740
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    goto :goto_0

    .line 2743
    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 2746
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2747
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2751
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    goto :goto_0

    .line 2755
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto :goto_0

    .line 2727
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x2f -> :sswitch_3
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 2667
    sparse-switch p1, :sswitch_data_0

    .line 2715
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 2669
    :sswitch_0
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    .line 2672
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    .line 2673
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 2674
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2675
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 2684
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2685
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 2713
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2677
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 2680
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    .line 2681
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_2

    .line 2688
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    .line 2691
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 2692
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 2693
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 2699
    :cond_5
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2700
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 2695
    :cond_6
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    .line 2696
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_3

    .line 2703
    :sswitch_2
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2704
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    if-eqz v1, :cond_7

    .line 2705
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2706
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    goto/16 :goto_0

    .line 2708
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2709
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2667
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1572
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 1574
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_0

    .line 1576
    const-string v2, "ShowNowPlaying"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1577
    .local v0, showNowPlaying:Z
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1580
    .end local v0           #showNowPlaying:Z
    :cond_0
    if-eqz p1, :cond_2

    .line 1581
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1582
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1583
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 1584
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 1589
    :cond_1
    const-string v2, "directmode"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1590
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get (on new) intent directmode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 20
    .parameter "item"

    .prologue
    .line 2038
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v17

    .line 2278
    :goto_0
    return v17

    .line 2046
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 2278
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v17

    goto :goto_0

    .line 2048
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v12

    .line 2049
    .local v12, mode:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_2

    .line 2050
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2275
    .end local v12           #mode:I
    :catch_0
    move-exception v9

    .line 2276
    .local v9, ex:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2051
    .end local v9           #ex:Landroid/os/RemoteException;
    .restart local v12       #mode:I
    :cond_2
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_3

    .line 2052
    const/16 v17, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_1

    .line 2053
    :cond_3
    if-nez v12, :cond_1

    .line 2054
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_1

    .line 2057
    .end local v12           #mode:I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->launchProperty()V

    goto :goto_1

    .line 2061
    :pswitch_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2062
    .local v11, intent:Landroid/content/Intent;
    const-string v17, "com.htc.dmc"

    const-string v18, "com.htc.dmc.DmrListActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2065
    const/16 v17, 0x22

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2067
    :catch_1
    move-exception v8

    .line 2068
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v17, "[HtcMusic]"

    const-string v18, "dmc package is not exist"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2097
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_5

    .line 2098
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2100
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_6

    .line 2101
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2103
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 2106
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 2110
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_9

    .line 2111
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2113
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2114
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2116
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 2119
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setNotificationRingtone(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 2123
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_d

    .line 2124
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2126
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_e

    .line 2127
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2130
    :cond_e
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2131
    .restart local v11       #intent:Landroid/content/Intent;
    sget-object v17, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v18, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2132
    const/16 v17, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2137
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_10

    .line 2138
    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2140
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2141
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2145
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    .line 2146
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2149
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto/16 :goto_1

    .line 2153
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    .line 2154
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2158
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->deleteItem()V

    .line 2159
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2162
    :pswitch_c
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    .line 2163
    .local v7, dataPathArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v6

    .line 2164
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_11

    .line 2165
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2166
    const/16 v17, 0x0

    const-string v18, "_data"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v17

    .line 2167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2168
    const/4 v6, 0x0

    .line 2170
    :cond_11
    new-instance v14, Ljava/lang/String;

    const-string v17, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2172
    .local v14, szAction:Ljava/lang/String;
    :try_start_5
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "upload"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2177
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2173
    :catch_2
    move-exception v9

    .line 2175
    .local v9, ex:Ljava/lang/SecurityException;
    :try_start_6
    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "We do not have permission to start the service :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2180
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #dataPathArray:[Ljava/lang/String;
    .end local v9           #ex:Ljava/lang/SecurityException;
    .end local v14           #szAction:Ljava/lang/String;
    :pswitch_d
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 2181
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2184
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    goto :goto_3

    .line 2190
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->showSoundEffectDialog()V

    .line 2191
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2196
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-nez v17, :cond_14

    .line 2197
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2200
    :cond_14
    const/4 v15, 0x0

    .line 2201
    .local v15, title:Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 2203
    .local v13, query:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v16

    .line 2204
    .local v16, trackName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 2205
    .local v5, artistName:Ljava/lang/String;
    if-nez v16, :cond_15

    .line 2206
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2208
    :cond_15
    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Search Youtube: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2211
    .local v10, i:Landroid/content/Intent;
    const-string v17, "android.intent.action.MEDIA_SEARCH"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2212
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2213
    const-string v17, "android.intent.extra.title"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2215
    move-object/from16 v15, v16

    .line 2216
    if-eqz v5, :cond_16

    const-string v17, "<unknown>"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 2217
    :cond_16
    move-object/from16 v13, v16

    .line 2223
    :goto_4
    const-string v17, "android.intent.extra.focus"

    const-string v18, "audio/*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2224
    const v17, 0x7f070061

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2225
    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2226
    const-string v17, "com.google.android.youtube"

    const-string v18, "com.google.android.youtube.VideoListActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2229
    const/4 v4, 0x0

    .line 2231
    .local v4, activityNotFound:Z
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2232
    const/4 v4, 0x0

    .line 2238
    :goto_5
    if-eqz v4, :cond_17

    .line 2240
    :try_start_8
    const-string v17, "com.google.android.youtube"

    const-string v18, "com.google.android.youtube.ResultsActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2243
    const/4 v4, 0x0

    .line 2249
    :cond_17
    :goto_6
    if-eqz v4, :cond_18

    .line 2251
    const/16 v17, 0x0

    :try_start_9
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2253
    const-string v17, "com.google.android.youtube"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2255
    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 2262
    :cond_18
    :goto_7
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2219
    .end local v4           #activityNotFound:Z
    :cond_19
    :try_start_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2220
    const-string v17, "android.intent.extra.artist"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 2233
    .restart local v4       #activityNotFound:Z
    :catch_3
    move-exception v8

    .line 2234
    .local v8, e:Landroid/content/ActivityNotFoundException;
    const/4 v4, 0x1

    goto :goto_5

    .line 2244
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    :catch_4
    move-exception v8

    .line 2245
    .restart local v8       #e:Landroid/content/ActivityNotFoundException;
    const/4 v4, 0x1

    goto :goto_6

    .line 2256
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    :catch_5
    move-exception v8

    .line 2257
    .restart local v8       #e:Landroid/content/ActivityNotFoundException;
    const-string v17, "[HtcMusic]"

    const-string v18, "Cannot find com.google.android.youtube"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2266
    .end local v4           #activityNotFound:Z
    .end local v5           #artistName:Ljava/lang/String;
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    .end local v10           #i:Landroid/content/Intent;
    .end local v13           #query:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/CharSequence;
    .end local v16           #trackName:Ljava/lang/String;
    :pswitch_10
    const/16 v17, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2267
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2270
    :pswitch_11
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.htc.music.settings.Listen_Online_Setting"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2271
    .restart local v11       #intent:Landroid/content/Intent;
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    .line 2272
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1679
    const-string v0, "[HtcMusic]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 1685
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 1689
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 1693
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1694
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 1695
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 1699
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_3

    .line 1700
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->pauseDecoder()V

    .line 1702
    :cond_3
    const-string v0, "[HtcMusic]"

    const-string v1, "onPause finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4479
    packed-switch p1, :pswitch_data_0

    .line 4570
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4481
    .restart local p2
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4482
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4490
    .restart local p2
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 4495
    .restart local p2
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/htc/music/HtcMusic;->prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 4499
    :pswitch_4
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v0, v1, v3}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .line 4500
    .local v4, adapter:Lcom/htc/music/widget/SharedAdapter;
    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    .local v7, listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v0, p2

    .line 4501
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4502
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 4506
    .end local v4           #adapter:Lcom/htc/music/widget/SharedAdapter;
    .end local v7           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    .restart local p2
    :pswitch_5
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .line 4507
    .restart local v4       #adapter:Lcom/htc/music/widget/SharedAdapter;
    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    .restart local v7       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v0, p2

    .line 4508
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4509
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 4513
    .end local v4           #adapter:Lcom/htc/music/widget/SharedAdapter;
    .end local v7           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    .restart local p2
    :pswitch_6
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 4514
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    goto :goto_0

    .line 4517
    :cond_1
    const-string v0, "[HtcMusic]"

    const-string v1, "onPrepareDialog, DIALOG_SOUND_EFFECT, mService is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4522
    :pswitch_7
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 4523
    .local v8, listview:Landroid/widget/ListView;
    if-eqz v8, :cond_0

    .line 4524
    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v8, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 4525
    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 4533
    .end local v8           #listview:Landroid/widget/ListView;
    .restart local p2
    :pswitch_8
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4537
    .restart local p2
    :pswitch_9
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    .line 4538
    .restart local v4       #adapter:Lcom/htc/music/widget/SharedAdapter;
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-static {p0, v0, v4, p2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    .restart local v7       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    move-object v0, p2

    .line 4539
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4540
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 4544
    .end local v4           #adapter:Lcom/htc/music/widget/SharedAdapter;
    .end local v7           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    .restart local p2
    :pswitch_a
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4546
    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v0, :cond_0

    .line 4549
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4550
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 4552
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_2

    .line 4553
    const-string v0, "[HtcMusic]"

    const-string v1, "mCurrentAudioId < 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4559
    :catch_0
    move-exception v6

    .line 4560
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 4562
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 4563
    iput v3, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto/16 :goto_0

    .line 4557
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 4558
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1890
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_1

    .line 2032
    :cond_0
    :goto_0
    return v6

    .line 1894
    :cond_1
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v8, :cond_3

    .line 1895
    const/4 v6, 0x2

    iget v7, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v6, v7, :cond_2

    .line 1896
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1897
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1900
    :cond_2
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v6, p1}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    goto :goto_0

    .line 1903
    :cond_3
    iget v8, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v6, v8, :cond_4

    .line 1904
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1905
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1910
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1911
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 1916
    iget v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v8, :cond_5

    move v6, v7

    .line 1917
    goto :goto_0

    .line 1919
    :cond_5
    const/16 v8, 0x14

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1920
    .local v2, downloadAlbumArtMenu:Landroid/view/MenuItem;
    if-eqz v2, :cond_6

    .line 1921
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1931
    :cond_6
    :goto_1
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    if-ne v6, v8, :cond_8

    move v6, v7

    .line 1932
    goto :goto_0

    .line 1925
    .end local v2           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :cond_7
    const/16 v8, 0x14

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1926
    .restart local v2       #downloadAlbumArtMenu:Landroid/view/MenuItem;
    if-eqz v2, :cond_6

    .line 1927
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2026
    .end local v2           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :catch_0
    move-exception v3

    .line 2027
    .local v3, ex:Landroid/os/RemoteException;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2028
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2029
    iput v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto :goto_0

    .line 1935
    .end local v3           #ex:Landroid/os/RemoteException;
    .restart local v2       #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :cond_8
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 1936
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    .line 1953
    const/4 v4, 0x0

    .line 1955
    .local v4, menuItem:Landroid/view/MenuItem;
    const/16 v8, 0x18

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1956
    if-eqz v4, :cond_9

    .line 1957
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1959
    :cond_9
    const/16 v8, 0x1c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1960
    if-eqz v4, :cond_a

    .line 1961
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1963
    :cond_a
    const/16 v8, 0x25

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1964
    if-eqz v4, :cond_c

    .line 1965
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1966
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeatsBT(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1967
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v1}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadsetBT(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1968
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1974
    :cond_b
    :goto_2
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1978
    .end local v1           #context:Landroid/content/Context;
    :cond_c
    const/16 v8, 0x23

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1979
    .local v5, youtubeMenuItem:Landroid/view/MenuItem;
    if-eqz v5, :cond_d

    .line 1980
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-nez v8, :cond_13

    move v8, v6

    :goto_3
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1983
    :cond_d
    const/16 v8, 0x24

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1984
    .local v0, DmpYoutubeMenuItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_e

    .line 1985
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1991
    :cond_e
    const/16 v8, 0x17

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1992
    if-eqz v4, :cond_f

    .line 1993
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1994
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2000
    :cond_f
    :goto_4
    const/16 v8, 0x22

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2001
    if-eqz v4, :cond_10

    .line 2002
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isDMPMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2005
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2010
    :cond_10
    :goto_5
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2011
    if-eqz v4, :cond_11

    .line 2012
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2013
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2018
    :cond_11
    :goto_6
    const/16 v8, 0x27

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2019
    if-eqz v4, :cond_0

    .line 2020
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2021
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1971
    .end local v0           #DmpYoutubeMenuItem:Landroid/view/MenuItem;
    .end local v5           #youtubeMenuItem:Landroid/view/MenuItem;
    .restart local v1       #context:Landroid/content/Context;
    :cond_12
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .end local v1           #context:Landroid/content/Context;
    .restart local v5       #youtubeMenuItem:Landroid/view/MenuItem;
    :cond_13
    move v8, v7

    .line 1980
    goto :goto_3

    .line 1997
    .restart local v0       #DmpYoutubeMenuItem:Landroid/view/MenuItem;
    :cond_14
    iget v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-ltz v8, :cond_15

    move v8, v6

    :goto_7
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_15
    move v8, v7

    goto :goto_7

    .line 2007
    :cond_16
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 2015
    :cond_17
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 2023
    :cond_18
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1597
    const-string v7, "[HtcMusic]"

    const-string v8, "onResume +"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v7, :cond_0

    .line 1600
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v7}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    .line 1603
    :cond_0
    const/4 v7, 0x2

    iget v8, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v7, v8, :cond_1

    const/4 v7, 0x3

    iget v8, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v7, v8, :cond_2

    .line 1605
    :cond_1
    const-string v7, "[HtcMusic]"

    const-string v8, "DMC mode, return directly"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1675
    :goto_0
    return-void

    .line 1610
    :cond_2
    iput-boolean v11, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 1612
    iget-boolean v7, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v7, :cond_3

    .line 1613
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v7}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 1616
    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1619
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1621
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_4

    .line 1622
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->resumeDecoder()V

    .line 1625
    :cond_4
    iput-boolean v11, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 1627
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1630
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1631
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPluggedCacheValue()Z

    move-result v3

    .line 1632
    .local v3, isWiredPluggedLastTime:Z
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v2

    .line 1633
    .local v2, isWiredPlugged:Z
    if-eq v3, v2, :cond_5

    .line 1634
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->wiredHeadSetStatusChanged(Z)V

    .line 1646
    .end local v2           #isWiredPlugged:Z
    .end local v3           #isWiredPluggedLastTime:Z
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 1647
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v7, p0, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1650
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 1651
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 1652
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v4

    .line 1653
    .local v4, next:J
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_7

    .line 1655
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1656
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    :cond_7
    :goto_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkedInternalStorageWhenResume(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1663
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 1638
    .end local v4           #next:J
    :cond_8
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPluggedCacheValue()Z

    move-result v1

    .line 1639
    .local v1, headsetPreviousStatus:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    .line 1641
    .local v0, headsetLatestStatus:Z
    if-eq v1, v0, :cond_5

    .line 1642
    invoke-virtual {p0, v0, v11}, Lcom/htc/music/HtcMusic;->headSetStatusChanged(ZZ)V

    goto :goto_1

    .line 1667
    .end local v0           #headsetLatestStatus:Z
    .end local v1           #headsetPreviousStatus:Z
    .restart local v4       #next:J
    :cond_9
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/music/HtcMusic$19;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$19;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1672
    .local v6, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1674
    const-string v7, "[HtcMusic]"

    const-string v8, "onResume -"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1657
    .end local v6           #setHeadsetOwnerThread:Ljava/lang/Thread;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1466
    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1467
    const-string v0, "message"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string v0, "downloadalbumartid"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1470
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    :cond_1
    const-string v0, "currentAudioId"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    const-string v0, "currentAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1477
    const-string v0, "tempSelectedEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1481
    const-string v0, "tempShowingEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v0, "tempSelectedSoundEffectIndex"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    iget-object v1, v1, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_5

    .line 1486
    const-string v0, "ringtoneAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v0, "ringtoneAudioId"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1488
    const-string v0, "ringtoneAudioType"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1491
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1492
    return-void

    .line 1466
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 5446
    new-instance v0, Lcom/htc/music/HtcMusic$33;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$33;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5451
    return-void
.end method

.method public onSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 5455
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_0

    .line 5456
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 5458
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1496
    const-string v4, "[HtcMusic]"

    const-string v5, "[HtcMusic][onStart Begin]"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1499
    iget v4, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v8, v4, :cond_0

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v4, v5, :cond_1

    .line 1501
    :cond_0
    const-string v4, "[HtcMusic]"

    const-string v5, "DMC mode, return directly"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :goto_0
    return-void

    .line 1505
    :cond_1
    const/16 v4, 0x12

    iput v4, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 1508
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1509
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 1510
    const-string v4, "directmode"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1511
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get intent directmode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_3

    .line 1515
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1517
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1518
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1519
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1521
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1522
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1528
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1529
    .local v2, f2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1530
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1531
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1532
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1533
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1535
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1536
    .local v1, f:Landroid/content/IntentFilter;
    const-string v4, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1537
    const-string v4, "com.htc.music.metachanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1538
    const-string v4, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1539
    const-string v4, "com.htc.music.rotateleft"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1540
    const-string v4, "com.htc.music.rotateright"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1541
    const-string v4, "com.htc.music.rotatecircle_next"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1542
    const-string v4, "com.htc.music.rotatecircle_previous"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1543
    const-string v4, "com.htc.music.rotatequickly"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1544
    const-string v4, "com.htc.music.queuechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    const-string v4, "com.htc.music.shuffle"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    const-string v4, "com.htc.music.refresh"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1547
    const-string v4, "com.htc.music.changeart"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    const-string v4, "com.htc.music.onerror"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v4, v5}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1551
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1552
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v4, "action_complete_one_download"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1553
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1555
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 1556
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    .line 1558
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1559
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    .line 1560
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1563
    :cond_5
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_6

    .line 1564
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 1567
    :cond_6
    const-string v4, "[HtcMusic]"

    const-string v5, "[HtcMusic][onStart End]"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 5463
    new-instance v0, Lcom/htc/music/HtcMusic$34;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$34;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5468
    return-void
.end method

.method public onStateChangeUI(I)V
    .locals 8
    .parameter "nState"

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    .line 5473
    iput p1, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 5475
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 5510
    :cond_0
    :goto_0
    return-void

    .line 5476
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_0

    .line 5478
    if-ne v7, p1, :cond_2

    .line 5479
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 5481
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v3

    .line 5482
    .local v3, status:Z
    if-eqz v3, :cond_4

    .line 5483
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    .line 5497
    .end local v3           #status:Z
    :cond_2
    :goto_1
    const/4 v4, 0x3

    if-eq v4, p1, :cond_3

    const/16 v4, 0x9

    if-eq v4, p1, :cond_3

    const/16 v4, 0xb

    if-eq v4, p1, :cond_3

    const/4 v4, 0x2

    if-ne v4, p1, :cond_5

    .line 5501
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 5502
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_0

    .line 5503
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5507
    :catch_0
    move-exception v0

    .line 5508
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5484
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #status:Z
    :cond_4
    :try_start_1
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    if-ne v6, v4, :cond_2

    .line 5485
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v2

    .line 5486
    .local v2, position:I
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 5487
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_2

    .line 5488
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 5489
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 5490
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 5504
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #position:I
    .end local v3           #status:Z
    :cond_5
    if-ne v7, p1, :cond_0

    .line 5505
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1390
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1395
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    .line 1398
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1399
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1402
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_3

    .line 1403
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1405
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_2

    .line 1406
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 1408
    :cond_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1409
    .local v1, nowPlayingViewOn:Z
    if-eqz v1, :cond_6

    .line 1412
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1418
    .end local v1           #nowPlayingViewOn:Z
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1419
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1421
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1424
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1427
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1431
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    .line 1432
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1438
    :cond_4
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1439
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    if-eqz v2, :cond_5

    .line 1440
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1442
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1443
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1446
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1449
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 1454
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1455
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    return-void

    .line 1414
    .restart local v1       #nowPlayingViewOn:Z
    :cond_6
    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    goto :goto_0

    .line 1433
    .end local v1           #nowPlayingViewOn:Z
    :catch_0
    move-exception v0

    .line 1434
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 1446
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1444
    :catch_1
    move-exception v2

    .line 1446
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_5

    .line 1428
    :catch_2
    move-exception v2

    goto :goto_3

    .line 1425
    :catch_3
    move-exception v2

    goto :goto_2

    .line 1422
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public plugOutBeatsHeadsetHandle()V
    .locals 4

    .prologue
    .line 5930
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5931
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 5935
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5936
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->closeOptionsMenu()V

    .line 5967
    :goto_0
    return-void

    .line 5940
    :cond_1
    const/4 v0, 0x0

    .line 5941
    .local v0, iResourceID:I
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5943
    const v0, 0x7f070097

    .line 5945
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 5946
    const-string v1, "SRS"

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 5947
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 5966
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_0

    .line 5949
    :cond_2
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5951
    const v0, 0x7f0700dc

    .line 5953
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 5954
    const-string v1, "Original"

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 5955
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    goto :goto_1

    .line 5959
    :cond_3
    const v0, 0x7f070098

    .line 5961
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 5962
    const-string v1, "SRS"

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 5963
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    goto :goto_1
.end method

.method prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 6787
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->queryUpdateAlbumArtSetting()Z

    move-result v0

    .line 6788
    .local v0, isAutoUpdate:Z
    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V

    .line 6789
    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V

    .line 6790
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum(Landroid/app/Dialog;)V

    .line 6791
    return-void
.end method

.method setAsResetCurrentItem(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 6856
    const v0, 0x7f0700da

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6857
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6858
    new-instance v0, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6859
    const-string v0, "[HtcMusic]"

    const-string v1, "reset current albumart enable"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6860
    return-void
.end method

.method setAsUpdateCurrentItem(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 6849
    const v0, 0x7f0700d9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6850
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6851
    new-instance v0, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6852
    const-string v0, "[HtcMusic]"

    const-string v1, "update current albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6853
    return-void
.end method

.method public setEQSelectedIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 6478
    iput p1, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 6480
    return-void
.end method

.method public setNowPlayingVisible(Z)V
    .locals 5
    .parameter "setVisible"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4792
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-ne v1, p1, :cond_0

    .line 4825
    :goto_0
    return-void

    .line 4794
    :cond_0
    if-eqz p1, :cond_3

    .line 4795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4796
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4797
    const-string v1, "isnowplayinglist"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4799
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-nez v1, :cond_2

    .line 4800
    new-instance v1, Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {v1, p0}, Lcom/htc/music/NowPlayingViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 4801
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1, v0, v4}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4806
    :goto_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 4807
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 4809
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 4824
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_2
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    goto :goto_0

    .line 4803
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1, v0}, Lcom/htc/music/NowPlayingViewHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 4804
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onRestart()V

    goto :goto_1

    .line 4811
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_1

    .line 4812
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_4

    .line 4813
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 4815
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->requestLayout()V

    .line 4818
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 4819
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->finish()V

    .line 4820
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_2
.end method

.method public showSoundEffectDialog()V
    .locals 2

    .prologue
    const v1, 0x7f0700dc

    .line 6169
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 6170
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, mService is null!!! Can\'t show sound enhancer dialog."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6215
    :cond_0
    :goto_0
    return-void

    .line 6176
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6177
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6178
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, HDMI is plugged and Headset is Not plugged. return."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6188
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6189
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6190
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6194
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6195
    const v0, 0x7f070097

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6196
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support Bluetooth out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6199
    :cond_3
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6200
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6201
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support HDMI out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6205
    :cond_4
    const v0, 0x7f070098

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6206
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support Speaker out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6212
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 6213
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 6214
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2770
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2771
    .local v2, mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2772
    const-string v3, "content://servo_search/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2773
    const-string v3, "CATEGORY_ORDER"

    const-string v4, "media/audio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2774
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2776
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2777
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 2783
    :goto_0
    return-void

    .line 2779
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2780
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2781
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V
    .locals 2
    .parameter "dialog"
    .parameter "isAutoUpdate"

    .prologue
    .line 6794
    const v1, 0x7f080068

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 6796
    .local v0, autoUpdateCheckBox:Landroid/widget/CheckedTextView;
    if-eqz v0, :cond_0

    .line 6797
    invoke-virtual {v0, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 6799
    :cond_0
    return-void
.end method

.method syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V
    .locals 2
    .parameter "dialog"
    .parameter "isAutoUpdate"

    .prologue
    .line 6802
    const v1, 0x7f080069

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6803
    .local v0, updateAllAlbumArt:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 6804
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6806
    :cond_0
    return-void

    .line 6804
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method syncUpdateCurrentAlbum(Landroid/app/Dialog;)V
    .locals 11
    .parameter "dialog"

    .prologue
    .line 6809
    const/4 v7, 0x0

    .line 6811
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6812
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 6813
    .local v6, currentAlbumId:I
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 6814
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 6815
    iput v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 6817
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    .line 6820
    .local v2, cols:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6821
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6823
    const v1, 0x7f08006a

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 6824
    .local v10, textView:Landroid/widget/TextView;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6825
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6827
    .local v9, path:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 6828
    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setAsUpdateCurrentItem(Landroid/widget/TextView;)V

    .line 6832
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6841
    .end local v9           #path:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 6842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6843
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v10           #textView:Landroid/widget/TextView;
    :goto_2
    const/4 v7, 0x0

    .line 6846
    :cond_2
    return-void

    .line 6830
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #currentAlbumId:I
    .restart local v9       #path:Ljava/lang/String;
    .restart local v10       #textView:Landroid/widget/TextView;
    :cond_3
    :try_start_1
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setAsResetCurrentItem(Landroid/widget/TextView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6836
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    .line 6837
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6841
    if-eqz v7, :cond_2

    .line 6842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 6834
    .end local v8           #ex:Landroid/os/RemoteException;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #currentAlbumId:I
    .restart local v10       #textView:Landroid/widget/TextView;
    :cond_4
    :try_start_3
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setAsUpdateCurrentItem(Landroid/widget/TextView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 6838
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v10           #textView:Landroid/widget/TextView;
    :catch_1
    move-exception v8

    .line 6839
    .local v8, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6841
    if-eqz v7, :cond_2

    .line 6842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 6841
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 6842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6843
    const/4 v7, 0x0

    .line 6841
    :cond_5
    throw v1
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 5
    .parameter "newStatus"

    .prologue
    .line 5718
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5719
    if-eqz p1, :cond_4

    .line 5720
    const/4 v0, 0x0

    .line 5722
    .local v0, bBeatsOn:Z
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5723
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->getBeatsLastState(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v0

    .line 5726
    :cond_0
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wiredHeadSetStatusChanged, plug in wired headset, bBeatsOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5729
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    .line 5731
    .local v1, styleIndex:I
    if-eqz v0, :cond_2

    .line 5732
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    .line 5745
    :goto_0
    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 5746
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 5747
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wiredHeadSetStatusChanged, set nowHWAudioSetting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5749
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeatsBT(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5750
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadsetBT(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5751
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->closeOptionsMenu()V

    .line 5759
    .end local v0           #bBeatsOn:Z
    .end local v1           #styleIndex:I
    :cond_1
    :goto_1
    return-void

    .line 5735
    .restart local v0       #bBeatsOn:Z
    .restart local v1       #styleIndex:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5737
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_0

    .line 5741
    :cond_3
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0

    .line 5756
    .end local v0           #bBeatsOn:Z
    .end local v1           #styleIndex:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->plugOutBeatsHeadsetHandle()V

    goto :goto_1
.end method
