.class public Lcom/htc/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/AudioPreview$NonUiHandler;,
        Lcom/htc/music/AudioPreview$PreviewPlayer;,
        Lcom/htc/music/AudioPreview$ProgressRefresher;
    }
.end annotation


# static fields
.field private static final CMDFINISH:Ljava/lang/String; = "finish"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final DIALOG_DRM_CONFIRM:I = 0x0

.field private static final DIALOG_DRM_ERROR:I = 0x1

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x2

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x3

.field private static final KEY_PLAY_AT_GLANCE:Ljava/lang/String; = "playatglance"

.field private static final NONDRM:I = 0x0

.field private static final PROPERTIES:I = 0x2

.field private static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field private static final SET_ALBUMART:I = 0x1

.field private static final SET_DEFAULT_ALBUMART:I = 0x2

.field private static final SET_NAMES:I = 0x0

.field private static final SHARE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[AudioPreview]"

.field private static final TRACK_ENDED:I = 0x1

.field private static final USE_AS_CONTACT_RINGTONE:I = 0x3

.field private static final USE_AS_RINGTONE:I = 0x1


# instance fields
.field private mActivityPopup:Z

.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;

.field private mAlbumHeight:I

.field private mAlbumID:I

.field private mAlbumWidth:I

.field private mArtistName:Ljava/lang/String;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentAudioType:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDrmConsumed:Z

.field private mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaId:J

.field private mMsg:Ljava/lang/String;

.field private mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Ljava/lang/String;

.field private mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x6e

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    .line 104
    iput v4, p0, Lcom/htc/music/AudioPreview;->mAlbumWidth:I

    .line 105
    iput v4, p0, Lcom/htc/music/AudioPreview;->mAlbumHeight:I

    .line 108
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 109
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 110
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    .line 113
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 114
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;

    .line 115
    iput-object v2, p0, Lcom/htc/music/AudioPreview;->mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;

    .line 120
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    .line 140
    iput-boolean v3, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 427
    new-instance v0, Lcom/htc/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$2;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 526
    new-instance v0, Lcom/htc/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$3;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 561
    new-instance v0, Lcom/htc/music/AudioPreview$4;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$4;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    .line 1382
    new-instance v0, Lcom/htc/music/AudioPreview$9;

    invoke-direct {v0, p0}, Lcom/htc/music/AudioPreview$9;-><init>(Lcom/htc/music/AudioPreview;)V

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1483
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/AudioPreview;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/AudioPreview;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/htc/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/AudioPreview;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/AudioPreview;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/music/AudioPreview;->setPlayPause(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/music/AudioPreview;->mCurrentAudioType:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/AudioPreview;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/htc/music/AudioPreview;->canUseAsRingtone(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/music/AudioPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/music/AudioPreview;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/music/AudioPreview;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/AudioPreview;->getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/AudioPreview;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/htc/music/AudioPreview;->mAlbumID:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/AudioPreview;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    return-void
.end method

.method private appExist(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1331
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1332
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 1333
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method private canUseAsRingtone(IZ)Z
    .locals 7
    .parameter "audioType"
    .parameter "onErrorToast"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1273
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->checkSizeLimit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1274
    if-eqz p2, :cond_0

    .line 1275
    const v4, 0x7f0700a3

    invoke-direct {p0, v4}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1311
    :cond_0
    :goto_0
    return v3

    .line 1282
    :cond_1
    const/4 v2, 0x0

    .line 1283
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1286
    iget-wide v5, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v5, v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1287
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1288
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 1289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1292
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1293
    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1294
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1301
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v4, :cond_7

    :cond_4
    move v0, v4

    .line 1304
    .local v0, canUseAsRingtone:Z
    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 1305
    if-eqz v0, :cond_5

    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    .line 1308
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 1309
    const v3, 0x7f0700a4

    invoke-direct {p0, v3}, Lcom/htc/music/AudioPreview;->showToast(I)V

    :cond_6
    move v3, v0

    .line 1311
    goto :goto_0

    .end local v0           #canUseAsRingtone:Z
    :cond_7
    move v0, v3

    .line 1301
    goto :goto_1

    .restart local v0       #canUseAsRingtone:Z
    :cond_8
    move v0, v3

    .line 1305
    goto :goto_2
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 964
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    const-string v1, "[AudioPreview]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :goto_0
    return v0

    .line 969
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/AudioPreview;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 970
    const-string v1, "[AudioPreview]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSizeLimit()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1316
    const/4 v1, 0x0

    .line 1318
    .local v1, overSizeLimit:Z
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v0

    .line 1319
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 1320
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1321
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    mul-int/lit16 v5, v0, 0x400

    if-le v4, v5, :cond_1

    move v1, v2

    .line 1327
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 1321
    goto :goto_0

    .line 1323
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v4, v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getTrackSize(Landroid/content/Context;I)I

    move-result v4

    mul-int/lit16 v5, v0, 0x400

    if-le v4, v5, :cond_3

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1327
    goto :goto_1
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 978
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 979
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 980
    const-string v3, "[AudioPreview]"

    const-string v5, "drmCursor == null in consumeRights"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :goto_0
    return v4

    .line 984
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 985
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, filepath:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 989
    const/4 v0, 0x0

    .line 990
    invoke-static {p0, p1, v2, v3}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 991
    .local v1, error:I
    const-string v5, "[AudioPreview]"

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

    .line 992
    if-nez v1, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private createDrawableForTile(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "tileDrawable"
    .parameter "clip"

    .prologue
    .line 1360
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_0

    .line 1371
    .end local p1
    :goto_0
    return-object p1

    .line 1363
    .restart local p1
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1365
    .local v2, tileBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1367
    .local v1, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1369
    .local v0, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1371
    if-eqz p2, :cond_1

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v3

    .end local v1           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_1
    move-object p1, v1

    goto :goto_0
.end method

.method private getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "albumArtPath"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1458
    const/4 v3, 0x1

    .line 1459
    .local v3, sampleSize:I
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1460
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1461
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1463
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1464
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1466
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1468
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v2, v4, 0x1

    .line 1469
    .local v2, nextWidth:I
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v1, v4, 0x1

    .line 1470
    .local v1, nextHeight:I
    :goto_0
    if-le v2, p2, :cond_0

    if-le v1, p3, :cond_0

    .line 1471
    shl-int/lit8 v3, v3, 0x1

    .line 1472
    shr-int/lit8 v2, v2, 0x1

    .line 1473
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1476
    :cond_0
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1477
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1479
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private setPlayPause(Z)V
    .locals 3
    .parameter "bPlay"

    .prologue
    .line 509
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 510
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 511
    if-nez p1, :cond_1

    .line 512
    const-string v1, "common_icon_glance_pause_on"

    const v2, 0x2080915

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string v1, "common_icon_glance_play_on"

    const v2, 0x2080927

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 521
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showPostPrepareUI()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    .line 415
    iget v0, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 417
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 421
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 423
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    .line 425
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 888
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 889
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 459
    const-string v0, "[AudioPreview]"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 462
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->start()V

    .line 463
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 464
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->release()V

    .line 384
    iput-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 385
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 387
    :cond_1
    return-void
.end method

.method private updatePlayPause()V
    .locals 3

    .prologue
    .line 491
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 492
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 493
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    const-string v1, "common_icon_glance_pause_on"

    const v2, 0x2080915

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    const-string v1, "common_icon_glance_play_on"

    const v2, 0x2080927

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 503
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private wasDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 892
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


# virtual methods
.method canShare()I
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 1201
    iget-object v9, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    iget-wide v9, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 1269
    :goto_0
    return v0

    .line 1204
    :cond_1
    iget-wide v9, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v9, v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1205
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 1206
    goto :goto_0

    .line 1208
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 1209
    :cond_3
    if-eqz v1, :cond_4

    .line 1210
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 1211
    goto :goto_0

    .line 1214
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1215
    const/4 v0, 0x0

    .line 1218
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1219
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1222
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1224
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1225
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1229
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 1231
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 1232
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 1233
    const-string v9, "[AudioPreview]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1235
    const/4 v1, 0x0

    move v0, v8

    .line 1236
    goto :goto_0

    .line 1239
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 1240
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1242
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1244
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 1246
    :cond_8
    const/4 v0, 0x2

    .line 1250
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1266
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1267
    const/4 v1, 0x0

    .line 1269
    goto/16 :goto_0

    .line 1254
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1255
    const-string v8, "[AudioPreview]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const/4 v0, 0x0

    goto :goto_1

    .line 1261
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 929
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 931
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 932
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 933
    invoke-virtual {p0, v8}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    .line 961
    :goto_0
    return-void

    .line 934
    :cond_0
    if-nez v5, :cond_3

    .line 935
    invoke-static {v3, p1, v8}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 936
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 937
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->playDrm()V

    goto :goto_0

    .line 939
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    .line 940
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 941
    invoke-virtual {p0, v7}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->playDrm()V

    goto :goto_0

    .line 947
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 950
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 955
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 956
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 959
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 952
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public drmConsume()V
    .locals 3

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v1, :cond_0

    .line 1117
    const-string v1, "[AudioPreview]"

    const-string v2, "Check if the DRM File to play is legal"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    .line 1119
    .local v0, isLegal:Z
    if-nez v0, :cond_1

    .line 1120
    const-string v1, "[AudioPreview]"

    const-string v2, "Cannot play drm file because the rights has been expired."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const v1, 0x7f07008b

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1128
    .end local v0           #isLegal:Z
    :cond_0
    :goto_0
    return-void

    .line 1124
    .restart local v0       #isLegal:Z
    :cond_1
    const-string v1, "[AudioPreview]"

    const-string v2, "Legal rights to play drm file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 402
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 403
    return-void
.end method

.method public generateReflection(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "srcBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 849
    if-ltz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-gt v0, v2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-le v0, v2, :cond_2

    .line 850
    :cond_0
    const-string v2, "[AudioPreview]"

    const-string v4, "The reflection\'s width/height is out of bound"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/4 v12, 0x0

    .line 880
    :cond_1
    return-object v12

    .line 854
    :cond_2
    mul-int v2, p2, p3

    new-array v3, v2, [I

    .line 855
    .local v3, srcPix:[I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 856
    .local v16, srcHeight:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 857
    .local v12, bm:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .local v18, y:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 858
    mul-int v4, v18, p2

    const/4 v6, 0x0

    sub-int v2, v16, p3

    add-int v7, v18, v2

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 857
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 862
    :cond_3
    const/high16 v10, 0x3000

    .line 863
    .local v10, alpha:I
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 864
    const/16 v17, 0x0

    .local v17, x:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 865
    mul-int v2, v18, p2

    add-int v14, v2, v17

    .line 866
    .local v14, index:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v15, v2, 0xff

    .line 867
    .local v15, r:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v13, v2, 0xff

    .line 868
    .local v13, g:I
    aget v2, v3, v14

    and-int/lit16 v11, v2, 0xff

    .line 870
    .local v11, b:I
    shl-int/lit8 v2, v15, 0x10

    or-int/2addr v2, v10

    shl-int/lit8 v4, v13, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v11

    aput v2, v3, v14

    .line 864
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 872
    .end local v11           #b:I
    .end local v13           #g:I
    .end local v14           #index:I
    .end local v15           #r:I
    :cond_4
    const/high16 v2, 0x100

    add-int/2addr v10, v2

    .line 863
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 877
    .end local v17           #x:I
    :cond_5
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 878
    mul-int v4, v18, p2

    const/4 v6, 0x0

    sub-int v2, p3, v18

    add-int/lit8 v7, v2, -0x1

    const/4 v9, 0x1

    move-object v2, v12

    move/from16 v5, p2

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 877
    add-int/lit8 v18, v18, 0x1

    goto :goto_3
.end method

.method public getAlbumArtPath(I)Ljava/lang/String;
    .locals 10
    .parameter "albumId"

    .prologue
    const/4 v9, 0x0

    .line 1411
    move v8, p1

    .line 1412
    .local v8, id:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    move-object v0, v9

    .line 1452
    :cond_0
    :goto_0
    return-object v0

    .line 1417
    :cond_1
    const/4 v7, 0x0

    .line 1419
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1421
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1424
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1425
    :cond_2
    const-string v0, "[AudioPreview]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    if-eqz v7, :cond_3

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1452
    const/4 v7, 0x0

    :cond_3
    move-object v0, v9

    goto :goto_0

    .line 1429
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1430
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 1431
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_7

    .line 1432
    :cond_5
    const-string v0, "[AudioPreview]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album art with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    if-eqz v7, :cond_6

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1452
    const/4 v7, 0x0

    :cond_6
    move-object v0, v9

    goto/16 :goto_0

    .line 1437
    :cond_7
    :try_start_2
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1438
    .local v6, artColumnIndex:I
    if-gez v6, :cond_9

    .line 1439
    const-string v0, "[AudioPreview]"

    const-string v1, "Cannot find art column index"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1450
    if-eqz v7, :cond_8

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1452
    const/4 v7, 0x0

    :cond_8
    move-object v0, v9

    goto/16 :goto_0

    .line 1443
    :cond_9
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1444
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 1450
    if-eqz v7, :cond_0

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1452
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1446
    :cond_a
    :try_start_4
    const-string v0, "[AudioPreview]"

    const-string v1, "Cannot move to first position"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1450
    if-eqz v7, :cond_b

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1452
    const/4 v7, 0x0

    :cond_b
    move-object v0, v9

    goto/16 :goto_0

    .line 1450
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #artColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_c

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1452
    const/4 v7, 0x0

    :cond_c
    throw v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1376
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1379
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 1376
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "drmuri"

    .prologue
    .line 896
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

    .line 902
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 903
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 905
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 906
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 907
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 908
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 909
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 911
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 913
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 915
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

    .line 919
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 920
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 921
    const/4 v11, 0x0

    .line 925
    :cond_1
    return-object v10

    .line 919
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 920
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 921
    const/4 v11, 0x0

    :cond_2
    throw v0
.end method

.method public getReflectionBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "srcBitmap"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 830
    if-nez p1, :cond_0

    .line 846
    :goto_0
    return-object v2

    .line 833
    :cond_0
    iget v6, p0, Lcom/htc/music/AudioPreview;->mAlbumWidth:I

    iget v7, p0, Lcom/htc/music/AudioPreview;->mAlbumHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 836
    .local v0, baseBitmap:Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/htc/music/AudioPreview;->mAlbumWidth:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 837
    .local v4, scaleW:F
    iget v5, p0, Lcom/htc/music/AudioPreview;->mAlbumHeight:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 839
    .local v3, scaleH:F
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 840
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 841
    invoke-virtual {v1, p1, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 843
    iget v5, p0, Lcom/htc/music/AudioPreview;->mAlbumWidth:I

    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/htc/music/AudioPreview;->generateReflection(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 846
    .local v2, rBaseBitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 833
    .end local v0           #baseBitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #rBaseBitmap:Landroid/graphics/Bitmap;
    .end local v3           #scaleH:F
    .end local v4           #scaleW:F
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v1, -0x1

    .line 741
    if-eq p2, v1, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 747
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 749
    const-string v1, "SELECTED_ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 750
    .local v0, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/htc/music/AudioPreview;->mCurrentAudioType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 756
    :goto_1
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    invoke-static {v1, v2, v3, v0}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;)V

    goto :goto_1

    .line 745
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x1

    .line 549
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/htc/music/AudioPreview;->mDuration:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 555
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 556
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 558
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 150
    const-string v3, "[AudioPreview]"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v10, commandFilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.music.musicservicecommand"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/htc/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "AudioPreviewActivityWorker"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 159
    new-instance v3, Lcom/htc/music/AudioPreview$NonUiHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/htc/music/AudioPreview$NonUiHandler;-><init>(Lcom/htc/music/AudioPreview;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-nez v3, :cond_0

    .line 162
    const-string v3, "[AudioPreview]"

    const-string v4, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 166
    .local v13, intent:Landroid/content/Intent;
    if-nez v13, :cond_2

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 175
    :cond_3
    const-string v3, "[AudioPreview]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUri - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 178
    .local v18, scheme:Ljava/lang/String;
    const-string v3, "playatglance"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 179
    .local v16, playAtGlance:Z
    if-eqz v16, :cond_4

    .line 180
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 181
    .local v14, newIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/htc/music/HtcMusic;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 187
    .end local v14           #newIntent:Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->setVolumeControlStream(I)V

    .line 188
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->requestWindowFeature(I)Z

    .line 189
    const v3, 0x7f030007

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->setContentView(I)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 193
    const v3, 0x7f08002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f080030

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 195
    const v3, 0x7f080032

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mCurrentTime:Landroid/widget/TextView;

    .line 196
    const v3, 0x7f080033

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mTotalTime:Landroid/widget/TextView;

    .line 197
    const v3, 0x7f08002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    .line 199
    const v3, 0x7f080031

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 210
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 211
    const-string v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 214
    .local v17, player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    if-nez v17, :cond_8

    .line 215
    new-instance v3, Lcom/htc/music/AudioPreview$PreviewPlayer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/music/AudioPreview$PreviewPlayer;-><init>(Lcom/htc/music/AudioPreview$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/htc/music/AudioPreview;)V

    .line 218
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/AudioPreview;->mAlbumWidth:I

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/music/AudioPreview;->mAlbumHeight:I

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v3, :cond_6

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    .line 247
    :cond_6
    new-instance v2, Lcom/htc/music/AudioPreview$1;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/music/AudioPreview$1;-><init>(Lcom/htc/music/AudioPreview;Landroid/content/ContentResolver;)V

    .line 293
    .local v2, mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    const-string v3, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 295
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "artist"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "album_id"

    aput-object v8, v6, v7

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .end local v2           #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 223
    :catch_0
    move-exception v11

    .line 224
    .local v11, ex:Ljava/lang/Exception;
    const-string v3, "[AudioPreview]"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const v3, 0x7f07005d

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto/16 :goto_0

    .line 230
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/htc/music/AudioPreview;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v3}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->showPostPrepareUI()V

    goto/16 :goto_1

    .line 299
    .restart local v2       #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    :cond_9
    const-string v3, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/external/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 304
    .local v12, id:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "artist"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "album_id"

    aput-object v8, v6, v7

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v12, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    .end local v12           #id:Ljava/lang/String;
    :cond_a
    const-string v3, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 312
    .local v15, path:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "artist"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "album_id"

    aput-object v8, v6, v7

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v15           #path:Ljava/lang/String;
    :cond_b
    const-string v3, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sdcard/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 320
    .restart local v15       #path:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "artist"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "album_id"

    aput-object v8, v6, v7

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v19, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    .end local v15           #path:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v3}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AudioPreview;->setNames()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x1080027

    const v8, 0x1040013

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 997
    packed-switch p1, :pswitch_data_0

    .line 1102
    const/4 v4, 0x0

    invoke-super {p0, p1, v4}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 999
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1001
    const/4 v1, 0x0

    goto :goto_0

    .line 1004
    :cond_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/AudioPreview$6;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$6;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/htc/music/AudioPreview$5;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$5;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1018
    .local v1, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 1021
    .end local v1           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07005d

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/AudioPreview$7;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$7;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v1, v0

    .line 1029
    goto :goto_0

    .line 1033
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    if-ne p1, v5, :cond_1

    .line 1034
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/CharSequence;

    const v4, 0x7f0700a9

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const v4, 0x7f0700aa

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const v4, 0x7f0700ab

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1045
    .local v2, items:[Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f07004c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/AudioPreview$8;

    invoke-direct {v5, p0}, Lcom/htc/music/AudioPreview$8;-><init>(Lcom/htc/music/AudioPreview;)V

    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .local v3, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v1, v3

    .line 1100
    goto/16 :goto_0

    .line 1040
    .end local v2           #items:[Ljava/lang/CharSequence;
    .end local v3           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    new-array v2, v5, [Ljava/lang/CharSequence;

    const v4, 0x7f0700a9

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const v4, 0x7f0700aa

    invoke-virtual {p0, v4}, Lcom/htc/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .restart local v2       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 596
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 604
    const v0, 0x20c01f7

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080337

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 607
    const v0, 0x7f07004c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a79

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 610
    const/4 v0, 0x2

    const v1, 0x20c01fe

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080328

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 612
    return v3
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    const-string v1, "[AudioPreview]"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->stopPlayback()V

    .line 345
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/AudioPreview$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 347
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 352
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mHandlerThread:Landroid/os/HandlerThread;

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 357
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 367
    iput-object v3, p0, Lcom/htc/music/AudioPreview;->mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;

    .line 371
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 376
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[AudioPreview]"

    const-string v2, "unregister mIntentReceiver fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 764
    sparse-switch p1, :sswitch_data_0

    .line 789
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 767
    :sswitch_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 776
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 773
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    goto :goto_1

    .line 785
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->stopPlayback()V

    .line 786
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0

    .line 764
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 643
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 736
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :cond_0
    :goto_1
    return v5

    .line 645
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->canShare()I

    move-result v0

    .line 648
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_1

    .line 682
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 733
    .end local v0           #canShare:I
    .end local v3           #message:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 651
    .restart local v0       #canShare:I
    :pswitch_1
    const-string v6, "[AudioPreview]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "normal file case, mCurrentAudioPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-wide v6, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v8}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .line 653
    .local v4, sharedialog:Landroid/app/Dialog;
    if-eqz v4, :cond_2

    .line 654
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v6, :cond_1

    .line 656
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v6}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 657
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    .line 659
    :cond_1
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 662
    :cond_2
    const-string v6, "[AudioPreview]"

    const-string v7, "onOptionsItemSelected, case 1: sharedialog is null."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 666
    .end local v4           #sharedialog:Landroid/app/Dialog;
    :pswitch_2
    const-string v6, "[AudioPreview]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SD DRM case, mCurrentAudioPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-wide v6, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .line 668
    .restart local v4       #sharedialog:Landroid/app/Dialog;
    if-eqz v4, :cond_4

    .line 669
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v6, :cond_3

    .line 671
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v6}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 672
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    .line 674
    :cond_3
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 677
    :cond_4
    const-string v6, "[AudioPreview]"

    const-string v7, "onOptionsItemSelected, case 2: sharedialog is null."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 689
    .end local v0           #canShare:I
    .end local v4           #sharedialog:Landroid/app/Dialog;
    :pswitch_3
    iget-wide v6, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 692
    iget v6, p0, Lcom/htc/music/AudioPreview;->mCurrentAudioType:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/htc/music/AudioPreview;->canUseAsRingtone(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 696
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z

    move-result v1

    .line 698
    .local v1, enableUseAsNotifyRingtone:Z
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v6, :cond_5

    .line 699
    iget-object v6, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v6}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 700
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    .line 703
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 704
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    goto/16 :goto_1

    .line 709
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.htc.ringtonetrimmer"

    const-string v7, "com.htc.ringtonetrimmer.RingtoneSetAs"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v6, "audio_id"

    iget-wide v7, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->appExist(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 713
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 714
    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 716
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 718
    :cond_7
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/AudioPreview;->showDialog(I)V

    goto/16 :goto_1

    .line 724
    .end local v1           #enableUseAsNotifyRingtone:Z
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    .line 725
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 726
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 727
    const-string v5, "track"

    iget-wide v6, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v5, "audiopreview"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 648
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1106
    packed-switch p1, :pswitch_data_0

    .line 1113
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1108
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1109
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 628
    iget-wide v1, p0, Lcom/htc/music/AudioPreview;->mMediaId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 637
    :goto_0
    return v0

    .line 631
    :cond_0
    iput v0, p0, Lcom/htc/music/AudioPreview;->mCurrentAudioType:I

    .line 633
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getDrmType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/AudioPreview;->mCurrentAudioType:I

    .line 637
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    .end local p1
    :goto_0
    return-void

    .line 407
    .restart local p1
    :cond_0
    check-cast p1, Lcom/htc/music/AudioPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 408
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->setNames()V

    .line 409
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->start()V

    .line 410
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 336
    .local v0, player:Lcom/htc/music/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    .line 337
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 397
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 398
    return-void

    .line 396
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview;->mActivityPopup:Z

    goto :goto_0
.end method

.method public playDrm()V
    .locals 5

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1134
    .local v0, drmFileToPlay:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1135
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/music/AudioPreview;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    :cond_0
    if-eqz v0, :cond_1

    .line 1139
    const-string v2, "[AudioPreview]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drmFileToPlay= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->drmConsume()V

    .line 1142
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1143
    iget-object v2, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V

    .line 1156
    :cond_1
    :goto_0
    return-void

    .line 1145
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    .line 1146
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v1

    .line 1149
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[AudioPreview]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const v2, 0x7f07005d

    invoke-direct {p0, v2}, Lcom/htc/music/AudioPreview;->showToast(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview;->finish()V

    goto :goto_0
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    .line 591
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->updatePlayPause()V

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/AudioPreview;->wasDrmContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/AudioPreview;->mDrmConsumed:Z

    if-nez v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/htc/music/AudioPreview;->checkDrmFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 588
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/AudioPreview;->start()V

    goto :goto_1
.end method

.method public setMusicInfoFromMetadataRetriever()V
    .locals 6

    .prologue
    .line 1159
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1160
    const/4 v3, 0x0

    .line 1161
    .local v3, trackName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1162
    .local v0, artistName:Ljava/lang/String;
    const-string v4, "[AudioPreview]"

    const-string v5, "get metadata from MediaMetadataRetriever"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1165
    .local v2, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v2, :cond_0

    .line 1168
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, p0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1170
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 1171
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1176
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1177
    const/4 v2, 0x0

    .line 1180
    :cond_0
    if-eqz v3, :cond_1

    .line 1181
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1182
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    :cond_1
    if-eqz v0, :cond_2

    .line 1186
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1187
    iget-object v4, p0, Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    .end local v0           #artistName:Ljava/lang/String;
    .end local v2           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v3           #trackName:Ljava/lang/String;
    :cond_2
    return-void

    .line 1172
    .restart local v0       #artistName:Ljava/lang/String;
    .restart local v2       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v3       #trackName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1173
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "[AudioPreview]"

    const-string v5, "Retrieve metadata fail"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    .line 471
    :cond_0
    return-void
.end method

.method public tileify(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    .line 1337
    instance-of v6, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_4

    move-object v1, p1

    .line 1338
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 1339
    .local v1, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 1340
    .local v0, N:I
    new-array v5, v0, [Landroid/graphics/drawable/Drawable;

    .line 1342
    .local v5, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1343
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 1344
    .local v3, id:I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v6, 0x102000d

    if-eq v3, v6, :cond_0

    const v6, 0x102000f

    if-ne v3, v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, v7, v6}, Lcom/htc/music/AudioPreview;->createDrawableForTile(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1344
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1348
    .end local v3           #id:I
    :cond_2
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1350
    .local v4, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1351
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1350
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1354
    :cond_3
    move-object p1, v4

    .line 1356
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v2           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_4
    return-object p1
.end method
